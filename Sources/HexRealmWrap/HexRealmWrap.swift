import Foundation
import RealmSwift

public struct HexRealmWrap {
    
    public var dbName: String
    
    public init(name: String?) {
        self.dbName = name ?? "default"
        
        let fileURL = FileManager.default
                        .containerURL(forSecurityApplicationGroupIdentifier: "group.myuniqueid.shared.database")!
                        .appendingPathComponent("\(dbName).realm")
        
        let config = Realm.Configuration(fileURL: fileURL, readOnly: false)
        
        Realm.Configuration.defaultConfiguration = config
    }
    
}
