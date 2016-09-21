//
//  MapMapViewController.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 22/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

import UIKit

class MapViewController: BaseViewController {

    //MARK: - Properties

    weak var assembler = ViperAssembler<MapModuleAssembly>()

    var output: MapViewOutput!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

// MARK: - View Input

extension MapViewController: MapViewInput {
    func setupInitialState() {
    
    }
}

//MARK: - ModuleInputeProvider

extension MapViewController: ModuleInputProvider {
    var moduleInput: ModuleInput! {
        return output as? ModuleInput
    }
}
