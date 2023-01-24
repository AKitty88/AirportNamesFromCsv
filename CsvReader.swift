//
//  CsvReader.swift
//  Airport
//
//  Created by User on 17/2/21.
//

import Foundation

class CsvReader : NSObject {
    func readData() -> [[String]] {
        do {
            let bundle = Bundle.main
            let path = bundle.path(forResource: "airport", ofType: "csv")
            
            let data = try String(contentsOfFile: path ?? "")
            var result: [[String]] = []
            let rows = data.components(separatedBy: "\n")
            
            for row in rows {
                let columns = row.components(separatedBy: "\t")
                result.append(columns)
            }
            return result
        }
        catch {
            return []
        }
    }
}
