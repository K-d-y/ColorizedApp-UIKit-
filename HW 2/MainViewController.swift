//
//  MainViewController.swift
//  HW 2
//
//  Created by Dmitry Knauer on 20.03.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import UIKit

protocol SettingViewControllerDelegate {
    func setNewColor(for colorView: UIView)
}

class MainViewController: UIViewController {

    @IBOutlet var mainColorView: UIView!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.mainColorView = mainColorView
        settingVC.delegate = self
    }
}

// MARK: - SettingViewControllerDelegate
extension MainViewController: SettingViewControllerDelegate {
    func setNewColor(for colorView: UIView) {
        mainColorView.backgroundColor = colorView.backgroundColor
    }
}
