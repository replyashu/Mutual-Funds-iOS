//
//  MutualFund.swift
//  fund
//
//  Created by Ashutosh Sharma on 16/09/23.
//

import Foundation

struct MutualFund: Identifiable, Decodable {
    let schemeCode: String
    var id: String { schemeCode }
    var schemeName: String
}
