//
//  LoginViewController.swift
//  Susi
//
//  Created by Chashmeet Singh on 2017-03-13.
//  Copyright © 2017 FOSSAsia. All rights reserved.
//

import UIKit
import Material
import M13Checkbox
import RealmSwift
import Toast_Swift

class LoginViewController: GeneralViewController {

    @IBOutlet weak var susiLogo: UIImageView!
    @IBOutlet weak var emailTextField: TextField!
    @IBOutlet weak var passwordTextField: TextField!
    @IBOutlet weak var personalServerButton: M13Checkbox!
    @IBOutlet weak var loginButton: RaisedButton!
    @IBOutlet weak var forgotPassword: FlatButton!
    @IBOutlet weak var skipButton: FlatButton!
    @IBOutlet weak var signUpButton: FlatButton!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var addressTextField: TextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        UIApplication.shared.statusBarStyle = .lightContent

        setupTheme()
        addTapGesture()
        prepareEmailField()
        preparePasswordField()
        prepareLoginButton()
        prepareSkipButton()
        prepareAddressField()

        checkSession()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
    override func localizeStrings() {
        emailTextField.placeholder = ControllerConstants.Login.emailAddress.localized()
        passwordTextField.placeholder = ControllerConstants.Login.password.localized()
        addressTextField.placeholder = ControllerConstants.customServerURL.localized()
        loginButton.setTitle(ControllerConstants.Login.login.localized(), for: .normal)
        forgotPassword.setTitle(ControllerConstants.Login.forgotPassword.localized(), for: .normal)
        skipButton.setTitle(ControllerConstants.Login.skip.localized(), for: .normal)
        signUpButton.setTitle(ControllerConstants.Login.signUpForSusi.localized(), for: .normal)

    }

}
