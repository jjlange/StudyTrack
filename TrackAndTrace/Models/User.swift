//
// Created by Justin Lange on 21/10/2020.
//

import Foundation

let userDefault = UserDefaults.standard

public class User: Codable, NSCoding {
    var id: Int
    var email: String

    init(id: Int, email: String) {
        self.id = id
        self.email = email
    }

    required public init(coder decoder: NSCoder) {
        self.id = decoder.decodeInteger(forKey: "id")
        self.email = decoder.decodeObject(forKey: "email") as? String ?? ""
    }

    public func encode(with coder: NSCoder) {
        coder.encode(id, forKey: "id")
        coder.encode(email, forKey: "email")
    }
}