//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

//Write a method named totalPriceInCents() that takes no arguments and returns an Int. This method should return the total cost of all the items in the items array.
//Write a method named add(item:) that takes one argument of type Item and provides no return. This method should add the argument to the end of the items property array.
//Write a method named remove(item:) that takes one argument of type Item and provides no return. This method should remove an instance from the items array that matches the argument item.
//Write a method named items(withName:) that takes one string argument (called name) and returns an array of type Item. This method should collect all of the items in the items property array whose name property matches the submitted string argument.
//Write a method named items(withMinPrice:) that takes one integer argument (called price) and returns an array of type Item. This method should collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.
//Write a method named items(withMaxPrice:) that take one integer argument (called price) and return an array of type Item. The method should collect all of the items in the items property array whose priceInCents property is less than or equal to the submitted integer argument.



class Cart {
    
    var items: [Item] = [ ]
    
    func totalPriceInCents()-> Int {
        var total: Int = 0
        
        for item in items{
            total += item.priceInCents
        }
        return total
    }
    
    
    // This function will take in an object of type Item.  It should add that object to the items property on the cart or something.
    func add(_ object:Item){
        items.append(object)
        }
    
    func remove(_ name: String) {
        for (index, item) in items.enumerated() {
            if name == item.name {
                items.remove(at: index)
            }
        }
    }
    
    
    func items(_ withName:String)->[Item]{
       var newArray: [Item] = [ ]
        for (_,withName) in items.enumerated(){
            if withName == withName{
                newArray.append(withName)
        }
            
        }
        return newArray
    }
    
    func withMinPrice(_ price:Int)->[Item]{
        var priceArray : [Item] = [ ]
        
        for (_,item) in items.enumerated(){
            if item.priceInCents >= price {
                priceArray.append(item)
            }
        }
        return priceArray
        
    }
    
    func withMaxPrice(_ price:Int)-> [Item]{
        var priceArray: [Item] = [ ]
        for (_,item) in items.enumerated(){
            if item.priceInCents <= price{
          
                priceArray.append(item)
            }
        }
        return priceArray
    }
    
    }

