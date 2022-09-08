import Foundation
import Capacitor
import CoreSwift

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CoreCapacitorPlugin)
public class CoreCapacitorPlugin: CAPPlugin {
    @objc func testFunction(_ call: CAPPluginCall) {
        call.resolve([
            "value": CoreFunctionality.testFunction()
        ])
    }
}
