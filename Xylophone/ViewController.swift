

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(title: sender.currentTitle!)
    }
    

    func playSound(title:String) {
        guard let path = Bundle.main.path(forResource: title, ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    

}

