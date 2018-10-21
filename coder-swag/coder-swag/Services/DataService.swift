//
//  DataService.swift
//  coder-swag
//
//  Created by Achim Munene on 21/10/2018.
//  Copyright © 2018 Achim Munene. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Deveslopes Logo Graphics Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Deveslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Deveslopes Logo Hat white", price: "$22", imageName: "hat03.png"),
        Product(title: "Deveslopes Logo Hat Snapback", price: "$20", imageName: "hat04.png"),
    ]
    
    private let hoodies = [
        Product(title: "Deveslopes Logo Hoodie Grey", price: "$38", imageName: "hoodie01.png"),
        Product(title: "Deveslopes Logo Hoodie Black", price: "$38", imageName: "hoodie02.png"),
        Product(title: "Deveslopes Logo Hoodie white", price: "$38", imageName: "hoodie03.png"),
        Product(title: "Deveslopes Logo Hoodie Snapback", price: "$38", imageName: "hoodie04.png"),
    ]
    
    private let shirts = [
        Product(title: "Deveslopes Logo Shirt Grey", price: "$18", imageName: "shirt01.png"),
        Product(title: "Deveslopes Logo Shirt Black", price: "$18", imageName: "shirt02.png"),
        Product(title: "Deveslopes Logo Shirt white", price: "$18", imageName: "shirt03.png"),
        Product(title: "Deveslopes Logo Shirt Snapback", price: "$18", imageName: "Shirt04.png"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
    
    
}
