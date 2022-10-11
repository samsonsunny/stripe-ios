//
//  FinancialConnectionsInstitution.swift
//  StripeFinancialConnections
//
//  Created by Vardges Avetisyan on 6/6/22.
//

import Foundation
@_spi(STP) import StripeCore

struct FinancialConnectionsInstitution: Decodable, Hashable, Equatable {
    
    struct Image: Decodable, Equatable, Hashable {
        let `default`: String?
    }
    
    let id: String
    let name: String
    let url: String?
    let icon: Image?
    let logo: Image?
    
    init(id: String, name: String, url: String?, smallImageUrl: String? = nil) {
        self.id = id
        self.name = name
        self.url = url
        self.icon = nil
        self.logo = nil
    }
}

// MARK: - Institution List

struct FinancialConnectionsInstitutionList: Decodable {
    let data: [FinancialConnectionsInstitution]
    let hasMore: Bool
    let count: Int
}
