//
// Created by Justin Lange on 21/10/2020.
//

import Alamofire
import SwiftyJSON

public class Communication {
    public func doLogin(email: String, password: String, completion: @escaping (_ user: User?,_ success: Bool?) -> Void) -> User {
        var user : User? = nil
        var success = true

        let parameters  = ["email": email, "password": password]
        let header : HTTPHeaders = ["Content-Type": "application/x-www-form-urlencoded"]

        AF.request(serverURL, method: .post, parameters: parameters, headers: header).responseData { response in
            guard let data = response.data else {
                return
            }

            let json = try? JSON(data:data)

            // Print json data - should be removed in production
            print(json!)

            // Check if there is an error
            if (json?["error"].bool) == true {
                success = false
            } else {
                // set up user session
                user = User(id: (json?["user_id"].int)!, email: (json?["email"].string)!)

                UserDefaults.standard.setLoggedIn(value: true)
                UserDefaults.standard.setUserID(value: (json?["user_id"].int)!)
                UserDefaults.standard.setEmail(value: (json?["email"].string)!)
                UserDefaults.standard.setFirstName(value: (json?["first_name"].string)!)
                UserDefaults.standard.setSurname(value: (json?["surname"].string)!)
                UserDefaults.standard.setUniversityName(value: (json?["university_name"].string)!)
                UserDefaults.standard.setRiskLevel(value: (json?["risk_level"].int)!)
            }

            completion(user, success)
        }

        return user ?? User(id: 0, email: "error")
    }
}