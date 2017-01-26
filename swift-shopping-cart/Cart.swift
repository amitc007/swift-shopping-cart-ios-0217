//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items:[Item] = []
    
    //1
    func totalPriceInCents()->Int {
        var totalPrice = 0
        for itm in items {
            totalPrice += itm.priceInCents
        }
        return totalPrice
    }
    
    //2
    func add(item:Item) {
        items.append(item)
    }
    
    //3
    func remove(item:Item) {
        for (idx,itm) in items.enumerated() {
            if itm == item {
                items.remove(at: idx)
                break
            }
        }
        
    }
    
    //4
    func items(withName name:String)->[Item] {
        var sameNameItm:[Item] = []
        for itm in items {
            if itm.name == name {
                sameNameItm.append(itm)
            }
            
        }
        return sameNameItm
    }
    
    //5
    func items(withMinPrice price:Int)->[Item] {
        var samePriceItems:[Item] = []
        for itm in items {
            if itm.priceInCents >= price {
                samePriceItems.append(itm)
            }
        }
        return samePriceItems
    }
    
    //6
    func items(withMaxPrice price:Int)->[Item] {
        var itemsList:[Item] = []
        for itm in items {
            if itm.priceInCents <= price {
                itemsList.append(itm)
            }
        }
        return itemsList
    }
}
