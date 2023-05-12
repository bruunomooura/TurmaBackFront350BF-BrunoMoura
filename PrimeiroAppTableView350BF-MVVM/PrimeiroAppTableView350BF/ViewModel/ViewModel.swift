//
//  ViewModel.swift
//  PrimeiroAppTableView350BF
//
//  Created by Caio Fabrini on 11/05/23.
//

import UIKit

class ViewModel {
    
    private var personList: [Person] = [Person(name: "Caio", surname: "Test1"),
                                Person(name: "Felipe", surname: "Test2"),
                                Person(name: "Anderson", surname: "Test3"),
                                Person(name: "Andressa", surname: "Test4"),
                                Person(name: "Lucas", surname: "Test5"),
    ]
    
    var numberOfRowsInSection: Int {
        return personList.count
    }
    
    
    func loadCurrentPerson(indexPath: IndexPath) -> Person {
        return personList[indexPath.row]
    }
    
}
