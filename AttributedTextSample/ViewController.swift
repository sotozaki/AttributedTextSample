import UIKit

class ViewController: UIViewController {

    // AutoLayoutでUILabelを配置している
    // UILabel高さはTextの内容に応じて自動的に設定される
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    let font = UIFont.systemFont(ofSize: 20)
//    let font = UIFont(name: "HiraKakuProN-W3", size: 20)! //フォントを指定すると余計なスペースは表示されない
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.font = font
        label2.font = font
        label3.font = font
        label1.numberOfLines = 0
        label2.numberOfLines = 0
        label3.numberOfLines = 0

        //行間をフォントサイズをつかって広めにあけたい。
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = font.pointSize * 1.4

        let attributes = [
            NSFontAttributeName: font,
            NSForegroundColorAttributeName: UIColor.white,
            NSParagraphStyleAttributeName: paragraphStyle
        ]

        let attributedString1 = NSAttributedString(string: "English is fine", attributes: attributes)
        let attributedString2 = NSAttributedString(string: "日本語一行は↓にスペース", attributes: attributes)
        let attributedString3 = NSAttributedString(string: "複数行では上下のスペースは空かずに表示される。", attributes: attributes)
//        let attributedString = NSAttributedString(string: "你好", attributes: att)
//        let attributedString = NSAttributedString(string: "你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好", attributes: att)

        label1.attributedText = attributedString1
        label2.attributedText = attributedString2
        label3.attributedText = attributedString3
    }
}

