//
//  SSLivePersonViewController.swift
//  OptLivePersonFramework
//
//  Created by Muthu Rama on 31/1/19.
//  Copyright © 2019 Muthu Rama. All rights reserved.
//

import UIKit
import LPMessagingSDK
import LPInfra


class SSLivePersonViewController: UIViewController {



        override func viewDidLoad() {
            super.viewDidLoad()

            do {
                try LPMessagingSDK.instance.initialize("70958976")
            } catch {
                return
            }
        }


        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)

            let conversationQuery = LPMessagingSDK.instance.getConversationBrandQuery("70958976")
            let conversationViewParams = LPConversationViewParams(conversationQuery: conversationQuery, isViewOnly: false)
            LPMessagingSDK.instance.showConversation(conversationViewParams, authenticationParams: nil)


        }
    }


