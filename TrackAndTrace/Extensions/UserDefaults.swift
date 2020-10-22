//
// Created by Justin Lange on 21/10/2020.
//

import Foundation

extension UserDefaults {
    func setLoggedIn(value: Bool) {
        set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }

    func isLoggedIn()-> Bool {
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }

    func setUserID(value: Int) {
        set(value, forKey: UserDefaultsKeys.userID.rawValue)
    }

    func getUserID() -> Int {
        return integer(forKey: UserDefaultsKeys.userID.rawValue)
    }

    func setEmail(value: String) {
        set(value, forKey: UserDefaultsKeys.email.rawValue)
    }

    func getEmail() -> String {
        return string(forKey: UserDefaultsKeys.email.rawValue) ?? "unknown"
    }

    func setFirstName(value: String) {
        set(value, forKey: UserDefaultsKeys.first_name.rawValue)
    }

    func getFirstName() -> String {
        return string(forKey: UserDefaultsKeys.first_name.rawValue) ?? "unknown"
    }

    func setSurname(value: String) {
        set(value, forKey: UserDefaultsKeys.surname.rawValue)
    }

    func getSurname() -> String {
        return string(forKey: UserDefaultsKeys.surname.rawValue) ?? "unknown"
    }

    func setUniversityName(value: String) {
        set(value, forKey: UserDefaultsKeys.university_name.rawValue)
    }

    func getUniversityName() -> String {
        return string(forKey: UserDefaultsKeys.university_name.rawValue) ?? "unknown"
    }

    func setRiskLevel(value: Int) {
        set(value, forKey: UserDefaultsKeys.risk_level.rawValue)
    }

    func getRiskLevel() -> Int {
        return integer(forKey: UserDefaultsKeys.risk_level.rawValue)
    }
}