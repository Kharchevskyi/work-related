////: Playground - noun: a place where people can play
//
//import UIKit
//import PlaygroundSupport
//import XCTest
//
///*
//var str = "Hello, playground"
//
//let rects = [
//    CGRect(x: 0, y: 0, width: 100, height: 10),
//    CGRect(x: 0, y: 0, width: 100, height: 200),
//    CGRect(x: 0, y: 0, width: 100, height: 20)
//]
//
//let x = rects.compactMap { $0.height }
//
//x
//
//x.reduce(x[0],  + )
//
//
//let array = [10.0, 200.0, 20.0]
//var total = 0.0в
//
//var result = [0.0] + array.map { value -> Double in
//    total += value
//    return total
//}
//
//result.removeLast()
//
//
//print(result)
//
//class ViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//    }
//}
//let vc = ViewController()
//PlaygroundPage.current.liveView = vc
//
//
//public func duration(_ block: () -> ()) -> TimeInterval {
//    let startTime = Date()
//    block()
//    return Date().timeIntervalSince(startTime)
//}
//
//
//let ads = 0
//let frequent = 3
//var postsArray = Array(1...10)
//
//print(postsArray)
//let indexes = Array(stride(from: 0, through: postsArray.count, by: frequent))
//
//indexes.forEach { postsArray.insert(ads, at: $0) }
//print(postsArray)
//
//let indexToInsert = postsArray.index(0, offsetBy: frequent)
////indexToInsert.forEach { postsArray.insert(ads, at: $0) }
//
//duration {
//    let a = Array(stride(from: 0, through: postsArray.count, by: frequent))
//    print("a \(a)")
//}
//
//duration {
//    let b = postsArray.enumerated().filter { $0.element == 0 }
//    b.last?.offset ?? 0 % frequent == 0
//    print("b = \(b)")
//}
//
//*/
//
//
//
//
//
//
//
////public extension UIColor {
////    @objc func colorDescription() -> String {
////        return "Printing rainbow colours."
////    }
////    private static let swizzleDesriptionImplementation: Void = {
////        let instance: UIColor = UIColor.red
////        let aClass: AnyClass! = object_getClass(instance)
////        let originalMethod = class_getInstanceMethod(aClass, #selector(description))
////        let swizzledMethod = class_getInstanceMethod(aClass, #selector(colorDescription))
////        if let originalMethod = originalMethod, let swizzledMethod = swizzledMethod {
////            // switch implementation..
////            method_exchangeImplementations(originalMethod, swizzledMethod)
////        }
////    }()
////    public static func swizzleDesription() {
////        _ = self.swizzleDesriptionImplementation
////    }
////}
////
////extension UIViewController {
////    private static func swizzleAppearance() {
////        let instance = UIViewController()
////        let aClass: AnyClass! = object_getClass(instance)
////        let originalMethod = class_getInstanceMethod(aClass, #selector(getter: self.shouldAutomaticallyForwardAppearanceMethods))
////        let swizzledMethod = class_getInstanceMethod(aClass, #selector(should))
////        if let originalMethod = originalMethod, let swizzledMethod = swizzledMethod {
////            // switch implementation..
////            method_exchangeImplementations(originalMethod, swizzledMethod)
////        }
////    }
////
////    @objc func should() -> Bool {
////        return true
////    }
////
////    static func swizzleDesription() {
////        self.swizzleAppearance()
////    }
////}
//
//
//
//
//
//
//
//
//
////struct Future<T> {
////    private let f: (@escaping (T) -> Void) -> Void
////
////    init(_ g: @escaping (@escaping (T) -> Void) -> Void) {
////        self.f = g
////    }
////
////    func exec(_ g: @escaping (T) -> Void) {
////        self.f(g)
////    }
////
////    func map<U>(_ g: @escaping (T) -> U) -> Future<U> {
////        return Future<U> { (c: @escaping (U) -> Void) in
////            self.f { v in
////                c(g(v))
////            }
////        }
////    }
////
////    func flatMap<U>(_ g: @escaping ((T) -> Future<U>)) -> Future<U> {
////        return Future<U> { c in
////            self.f { v in
////                g(v).exec(c)
////            }
////        }
////    }
////}
////
////let x = Future<Int?> { c in
////    c(42)
////}
////
////x.exec { v in
////    print(v)
////}
////
////x.flatMap { v in
////    return Future { c in
////        c(v.map { $0 * 2 })
////    }
////    }.exec { v in
////        print(v)
////}
////
////x.map { v in
////    v.map { $0 * 4 }
////    }.exec { v in
////        print(v)
////    }
//
//
//
//
//
////class ViewController: UIViewController {
////
////    override var inputView: UIView? {
////        let view = UITextField(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
////        view.backgroundColor = .red
////        return view
////    }
////
////    override var canBecomeFirstResponder: Bool {
////        return true
////    }
////
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        view.addSubview(inputView ?? UIView())
////        view.backgroundColor = .white
////
////        let buttonTitle = NSMutableAttributedString.medium(
////            string: "offer_merchant_question".localized(),
////            size: 13,
////            textColor: .niblack
////        )
////        buyButton.setAttributedTitle(buttonTitle, for: .normal)
////    }
////
////
////
////}
//
////PlaygroundPage.current.liveView = ViewController()
//
//
//
//
////let 𝜋 = CGFloat.pi
////let ɸ: CGFloat = (1 + sqrt(5))/2
////
//////(1.3+(sin(2t+3pi/2)+1)/3)*t
////
////func drawGoldenSpiral(_ tileCount: Int, _ height: CGFloat) -> UIImage {
////
////    UIGraphicsBeginImageContext(CGSize(width: height * ɸ, height: height))
////
////    drawTiles(tileCount, height, UIGraphicsGetCurrentContext()!)
////
////    let spiralImage = UIGraphicsGetImageFromCurrentImageContext()
////
////    UIGraphicsEndImageContext()
////
////    return spiralImage!
////}
////
////func drawTiles(_ tileCount: Int, _ height: CGFloat, _ context: CGContext) {
////    context.setFillColor(UIColor.red.cgColor)
////
////    context.fill(CGRect(x: 0, y: 0, width: height, height: height))
////
////
////    let arc = UIBezierPath()
////    let center = CGPoint(x: height, y: height)
////
////    arc.addArc(withCenter: center, radius: height, startAngle: -𝜋, endAngle: -𝜋/2, clockwise: true)
////
////    arc.stroke()
////
////    let scale = 1 / ɸ
////    if (tileCount > 0){
////        context.rotate(by: 𝜋/2)
////        context.translateBy(x: 0, y: -height*(1+scale))
////        context.scaleBy(x: scale, y: scale)
////        drawTiles( (tileCount-1), height, context)
////    }
////}
////
////let spiralImage = drawGoldenSpiral(12, 300)
//
////final class SpiralContainerView: UIView {
////
////    /// value of max tet
////    let thetaMax: CGFloat = 8 * .pi
////
////    let stepAway = radius / thetaMax
////}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////extension UIColor {
////    static func random() -> UIColor {
////        return UIColor(red:   .random(),
////                       green: .random(),
////                       blue:  .random(),
////                       alpha: 1.0)
////    }
////}
////extension CGFloat {
////    static func random() -> CGFloat {
////        return CGFloat(arc4random()) / CGFloat(UInt32.max)
////    }
////}
////
////typealias ItemForSpiral = Int
////
////final class SpiralContainerView: UIView {
////
////    struct MediaContent {
////        let count: Int
////        let size: CGSize
////    }
////
////    private let mediaContent: [MediaContent] = [
////        MediaContent(count: 1, size: CGSize(width: 100, height: 120)),
////        MediaContent(count: 3, size: CGSize(width: 80, height: 100)),
////        MediaContent(count: 9, size: CGSize(width: 60, height: 75)),
////        MediaContent(count: 10, size: CGSize(width: 44, height: 54)),
////        MediaContent(count: 100, size: CGSize(width: 32, height: 40))
////    ]
////
////
////
////    private lazy var itemSizes: [CGSize] = {
////        return Array(mediaContent.flatMap { Array(repeating: $0.size, count: $0.count) })
////    }()
////
////    private var items: [ItemForSpiral]  = []
////
////    /// coils - Number of coils or full rotations.
////    var coils: CGFloat = 4
////
////    private func calculatePointsForSpiral(_ itemsCount: Int) -> [CGPoint] {
////        // value of theta corresponding to end of last coil
////        let thetaMax: CGFloat = coils * 2 * .pi
////
////        let xOffset: CGFloat = min(bounds.size.width, bounds.size.height) / max(bounds.size.width, bounds.size.height)  // 320.0/500 // CGFloat((sin(2*t + 3*Double.pi/2) + 1)/2.6) // 1.0
////        let yOffset: CGFloat = 1
////
////        let radius: CGFloat = self.bounds.size.width * 0.7
////
////        // How far to step away from center for each side.
////        let awayStep: CGFloat = radius / thetaMax
////
////        /// chord - Initial chord between points
////
////        var chord: CGFloat = max(bounds.size.width, bounds.size.height) * 0.2 * 1-CGFloat(itemsCount)*0.5
////
////        let minimalChord: CGFloat = 30
////
////        var theta = chord / awayStep
////
////        var points = [CGPoint(x: self.bounds.midX, y: self.bounds.midY)]
////
////        while points.count < itemsCount && theta < thetaMax {
////            let away = awayStep * theta
////            let thetaNew = theta
////            print(away)
////            let xNew: CGFloat = self.center.x + cos(thetaNew) * away * xOffset
////            let yNew: CGFloat = self.center.y + sin(thetaNew) * away * yOffset
////
////            let point = CGPoint(x: xNew, y: yNew)
////
////            points.append(point)
////
////            let newChord = chord * 0.99
////            chord = max(minimalChord, newChord)
////            theta += chord/away
////            print(chord)
////        }
////
////        return points
////    }
////
////    func addInitialItems(with items: [ItemForSpiral]) {
////        self.items = items
////        let points: [CGPoint] = calculatePointsForSpiral(items.count)
////
////        let views = items.prefix(points.count)
////            .enumerated()
////            .map { (offset, element) -> UIView in
////                let v = UIView(frame: rectForPoints(points, index: offset))
////                v.backgroundColor = .random()
////
////                let label = UILabel(frame: CGRect(x: 0, y: 0, width: v.frame.size.width, height: v.frame.size.height))
////                label.text = "\(offset)"
////                v.addSubview(label)
////                return v
////            }
////
////        views.forEach { v in
////            addSubview(v)
////            sendSubviewToBack(v)
//////            v.alpha = 0.0
////            v.transform = CGAffineTransform.init(scaleX: 0.01, y: 0.01)
////        }
////
////        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
////            views.forEach { v in
////                UIView.animate(
////                withDuration: Double.random(in: (0.3...1.0)),
////                delay: Double.random(in: (1...2.0)),
////                options: [],
////                animations: {
////                    v.alpha = 1.0
////                    v.transform = .identity
////                }, completion: nil)
////            }
////        }
////    }
////
////    private func rectForPoints(_ points: [CGPoint], index: Int) -> CGRect {
////        let sizes = itemSizes.prefix(items.count)
////
////        return CGRect(
////            x: points[index].x - sizes[index].width / 2,
////            y: points[index].y - sizes[index].height / 2,
////            width: sizes[index].width,
////            height: sizes[index].height
////        )
////    }
////
////    func addNewItem(_ item: ItemForSpiral) {
////        self.items.append(item)
////        let points = calculatePointsForSpiral(self.items.count)
////        let rect = rectForPoints(points, index: self.items.count-1)
////        let view = UIView(frame: rect)
////        view.backgroundColor = .red
////        addSubview(view)
////        self.sendSubviewToBack(view)
////    }
////
////    override init(frame: CGRect) {
////        super.init(frame: frame)
////
////        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
////        button.addTarget(self, action: #selector(a), for: UIControl.Event.touchUpInside)
////        addSubview(button)
////        button.backgroundColor = .red
////    }
////
////    required init?(coder aDecoder: NSCoder) {
////        super.init(coder: aDecoder)
////    }
////    @objc func a() {
////        addNewItem(1)
////    }
////}
////
////let view = SpiralContainerView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
////view.backgroundColor = .white
////////
////view.addInitialItems(with: Array(0...30))
////PlaygroundPage.current.liveView = view
////
////
//
//
//
//
//
//
//
//
//
////enum Type {
////    case a,b,c
////}
////
////struct Post {
////    let nim: Int
////    let rank: Int
////    let type: Type
////}
////
////let posts = [
////    Post(nim:1, rank:1, type: .a),
////    Post(nim:5, rank:1, type: .c),
////    Post(nim:1, rank:3, type: .a),
////    Post(nim:10, rank:3, type: .c),
////    Post(nim:1, rank:2, type: .a),
////    Post(nim:10, rank:2, type: .b),
////    Post(nim:10, rank:5, type: .a),
////    Post(nim:111, rank:5, type: .a),
////    Post(nim:1222, rank:5, type: .c),
////    Post(nim:4, rank:5, type: .b),
////]
////
////
////
////
////
////let s = Dictionary(grouping: posts) {
////    $0.rank
////}
////let x = s.sorted(by: { $0.key > $1.key })
////    .flatMap({ $0.value.sorted(by: { $0.nim > $1.nim }) })
////
////var result: [Post] = []
////
////x.forEach {
////    switch $0.type {
////    case .a:
////        if result.filter({ $0.type == .a }).count < 3 {
////            result.append($0)
////        }
////    default: break
////    }
////}
////
////
////let n = s.map { $0.value.sorted(by: { $0.nim > $1.nim })}
////let a = x.filter({ $0.type == .a }).prefix(3)
////let b = x.filter({ $0.type == .b }).prefix(1)
////let c = x.filter({ $0.type == .c }).prefix(1)
////
////
////
//////let score1 = s[1]?.prefix(1)
////
////
////
//////s[5]
////
////
////let sorted = posts.sorted(by: {
////    return $0.rank > $1.rank
////}).sorted(by: { $0.nim > $1.nim })
////
////x.forEach {
////    print("rank \($0.rank) nim \($0.nim) type \($0.type)")
////}
////
////print("$$$$$$")
////a.forEach {
////    print("rank \($0.rank) nim \($0.nim) type \($0.type)")
////}
////
////print("$$$$$$")
////b.forEach {
////    print("rank \($0.rank) nim \($0.nim) type \($0.type)")
////}
////
////print("$$$$$$")
////result.forEach {
////    print("rank \($0.rank) nim \($0.nim) type \($0.type)")
////}
////
////// a -3 b - 1 c - 1
//
//
//
//
////
////
////
////class AA: UIViewController {
////    override func viewDidAppear(_ animated: Bool) {
////        super.viewDidAppear(animated)
////        view
////        let label = UILabel(frame: .zero)
////        view.addSubview(label)
////        label.backgroundColor = .red
////        label.translatesAutoresizingMaskIntoConstraints = false
////        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 16).isActive = true
////        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
////
////        label.text = "amsdnkasfasfa"
////        label.layer.shadowColor = UIColor.white.cgColor
////        label.layer.masksToBounds = false
////        label.layer.shadowOffset = CGSize(width: 32, height: 12)
////        label.layer.shadowRadius = 42
////
////    }
////}
////
////class TabBarController: UITabBarController {
////    override func viewDidAppear(_ animated: Bool) {
////        super.viewDidAppear(animated)
////        let frames = tabBar.subviews.map({ $0.self })
////        print("\(frames)")
////
////        let createButton = UIView(frame: .zero)
////        createButton.backgroundColor = .red
////
////        tabBar.addSubview(createButton)
////    }
////}
////
////let vc1 = UIViewController()
////vc1.view.backgroundColor = .red
////vc1.edgesForExtendedLayout = .bottom
////vc1.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.favorites, tag: 0)
////let vc2 = UIViewController()
////vc2.edgesForExtendedLayout = []
////vc2.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.favorites, tag: 0)
////let vc3 = UIViewController()
////vc3.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.favorites, tag: 0)
////let vc4 = UIViewController()
////vc4.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.favorites, tag: 0)
////let vc5 = UIViewController()
////vc5.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.favorites, tag: 0)
////
////let vc = TabBarController()
////vc.viewControllers = [vc1,vc2,vc3,vc4,vc5]
////print(vc1.view.frame)
////print(vc2.view.frame)
////
////
////
////
////PlaygroundPage.current.liveView = TestViewController()
//
//
////enum Size: CustomStringConvertible, Equatable {
////    var description: String {
////        switch self {
////        case .big: return("big")
////        case .regular: return("regular")
////        case .split: return("split")
////        }
////    }
////
////    case regular, big, split
////
////}
////
////extension Array {
////    func chunked(_ size: Int) -> [[Element]] {
////        return stride(from: 0, to: count, by: size).map {
////            Array(self[$0 ..< Swift.min($0 + size, count)])
////        }
////    }
////}
////
////var isBig = true
////
////enum ImageSize: CustomStringConvertible {
////    var description: String {
////        switch self {
////        case .big: return("big")
////        case .regular: return("regular")
////        case .split: return("split")
////        }
////    }
////
////    case regular(Int), big(Int), split((Int, Int?))
////}
////
////
////let s = Array((0...20))
////
////let a = s.chunked(3)
////
////struct Grid {
////    let first: Int?
////    let ssecond: Int?
////    let third: Int?
////}
////
////let d = a.map {
////    return Grid(first: $0.first, ssecond: $0[1], third: $0.last)
////}
//
//
//
//
//    //.chunked(6)
//
//
////    .map { array in
////        array.enumerated().map { (offset: Int, element: Int) -> (Size, Int) in
////            if offset > 0, offset % 4 == 0 {
////                return (Size.split, element)
////            }
////            if offset > 0, offset % 5 == 0 {
////                return (Size.split, element)
////            }
////            if offset > 0, offset % 3 == 0 {
////                return (Size.big, element)
////            }
////            return (Size.regular, element)
////        }
////    }.map {
////        $0.split(whereSeparator: )
////        return ($0.dropFirst(4), $0.dropLast(2))
////    }
////    .flatMap { $0 }
////
////let a = s.dropFirst(4)
////let d = s.dropLast(2)
//
//
//
////print("\(s)")
////   print("\(f)")
//
//
////class RadialGradientView: UIView {
////    var colors = [
////        UIColor.white.withAlphaComponent(0.1),
////        UIColor.white.withAlphaComponent(0.2),
////        UIColor.white.withAlphaComponent(0.4),
////        UIColor.white.withAlphaComponent(1.0)
////        ]
////        {
////        didSet {
////            setNeedsDisplay()
////        }
////    }
////    var gradient: CGGradient?
////    var locations: [CGFloat] = [0.0, 0.25, 0.39, 0.8] {
////        didSet {
////            setNeedsDisplay()
////        }
////    }
////
////    override func draw(_ rect: CGRect) {
////        super.draw(rect)
////        print(locations)
////        guard let context = UIGraphicsGetCurrentContext() else { return }
////
////        let circleRect = CGRect(origin: .zero, size: rect.size)
////        let circle = UIBezierPath(
////            roundedRect: circleRect,
////            cornerRadius: circleRect.size.width * 0.5
////        )
////        circle.addClip()
////        context.addPath(circle.cgPath)
////
////        gradient = CGGradient(
////            colorsSpace: CGColorSpaceCreateDeviceRGB(),
////            colors: colors.map { $0.cgColor } as CFArray,
////            locations: locations
////        )
////
////        let gradCenter = CGPoint(x: rect.midX, y: rect.midY)
////
////        context.drawRadialGradient(
////            gradient!,
////            startCenter: gradCenter,
////            startRadius: 0,
////            endCenter: gradCenter,
////            endRadius: min(rect.size.height, rect.size.width),
////            options: [CGGradientDrawingOptions.drawsAfterEndLocation]
////        )
////    }
////}
//
//
////class NimBubbleView: UIView {
////    override init(frame: CGRect) {
////        super.init(frame: frame)
////        setupUI()
////    }
////
////    required init?(coder aDecoder: NSCoder) {
////        super.init(frame: .zero)
////    }
////
////    private func setupUI() {
////        let path = UIBezierPath(
////            roundedRect: bounds.inset(by: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)),
////            cornerRadius: bounds.size.width/2
////        )
////
////        let shapeLayer = CAShapeLayer()
////        shapeLayer.path = path.cgPath
////
////
////        shapeLayer.fillColor = UIColor.blue.cgColor
////        shapeLayer.strokeColor = UIColor.red.cgColor
////        shapeLayer.lineWidth = 3
////        shapeLayer.shadowPath = UIBezierPath(
////            roundedRect: bounds,
////            cornerRadius: bounds.size.width/2
////            ).cgPath
////        shapeLayer.shadowRadius = 3
////        shapeLayer.strokeColor = UIColor.white.cgColor
////        layer.addSublayer(shapeLayer)
////    }
////}
//
//
////
////
////class UI: UIViewController {
////    let pulse = UIView()
////
////    override func viewDidLoad() {
////        super.viewDidLoad()
////
////        view.backgroundColor = .white
////        view.addSubview(pulse)
////        view.backgroundColor = .black
////        let tap = UITapGestureRecognizer(target: self, action: #selector(addPulse))
////        view.addGestureRecognizer(tap)
////
////        view.addSubview(pulse)
////    }
////
////    override func viewDidAppear(_ animated: Bool) {
////        super.viewDidAppear(animated)
////        pulse.frame = CGRect(x: 40, y: 140, width: 100, height: 100)
////    }
////
////    @objc func addPulse(){
////        let pulsing = PulsingRadialLayer(radius: 200, position: view.center)
////
////        view.layer.addSublayer(pulsing)
////    }
////
////    @objc private func nim() {
////
////    }
////}
////
//
//
//
//
//
////final class ProfileProgressView: UIView {
////    var arcWidth: CGFloat = 4 {
////        didSet {
////            circleLayer.lineWidth = arcWidth
////        }
////    }
////    var arcColor = UIColor.white {
////        didSet {
////            circleLayer.strokeColor = arcColor.cgColor
////        }
////    }
////
////    private let circleLayer: CAShapeLayer = CAShapeLayer()
////
////    override func draw(_ rect: CGRect) {
////        super.draw(rect)
////        circleLayer.removeFromSuperlayer()
////        self.backgroundColor = UIColor.clear
////
////        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
////        let radius: CGFloat = max(bounds.width, bounds.height)
////
////        let startAngle: CGFloat = .pi * 3 / 2
////        let endAngle: CGFloat = .pi * 3 / 2 - 0.01
////
////        let circlePath = UIBezierPath(
////            arcCenter: center,
////            radius: radius/2 - arcWidth/2,
////            startAngle: startAngle,
////            endAngle: endAngle,
////            clockwise: true
////        )
////
////        circleLayer.path = circlePath.cgPath
////        circleLayer.fillColor = UIColor.clear.cgColor
////        circleLayer.strokeColor = UIColor.white.cgColor
////        circleLayer.lineWidth = arcWidth
////        circleLayer.strokeEnd = 0.0
////
////        layer.addSublayer(circleLayer)
////    }
////
////    func animateCircle(duration: TimeInterval, from: CGFloat = 0.0, progress: CGFloat) {
////        let animation = CABasicAnimation(keyPath: "strokeEnd")
////
////        animation.duration = duration
////
////        animation.fromValue = from
////        animation.toValue = progress
////        animation.timingFunction = CAMediaTimingFunction(name: .linear)
////        animation.beginTime = CACurrentMediaTime() + 1
////        animation.fillMode = .forwards
////        animation.isRemovedOnCompletion = false
////
////        circleLayer.strokeEnd = progress
////        circleLayer.removeAllAnimations()
////        circleLayer.add(animation, forKey: "animateCircle")
////    }
////}
////let v = ProfileProgressView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
////v.animateCircle(duration: 1, progress: 0.5)
////
////
////
////
////
////enum CountingMethod {
////    case easeInOut, easeIn, easeOut, linear
////}
////
////enum AnimationDuration {
////    case laborious, plodding, strolling, brisk, noAnimation
////
////    var value: TimeInterval {
////        switch self {
////        case .laborious: return 20.0
////        case .plodding: return 15.0
////        case .strolling: return 8.0
////        case .brisk: return 2.0
////        case .noAnimation: return 0.0
////        }
////    }
////}
////
////enum DecimalPoints {
////    case zero, one, two, ridiculous
////
////    var format: String {
////        switch self {
////        case .zero: return "%.0f"
////        case .one: return "%.1f"
////        case .two: return "%.2f"
////        case .ridiculous: return "%f"
////        }
////    }
////}
////
////final class AnimatedLabel: UILabel {
////    typealias OptionalCallback = (() -> Void)
////    typealias OptionalFormatBlock = (() -> String)
////
////    var completion: OptionalCallback?
////    var animationDuration: AnimationDuration = .brisk
////    var decimalPoints: DecimalPoints = .zero
////    var countingMethod: CountingMethod = .easeInOut
////    var customFormatBlock: OptionalFormatBlock?
////
////    private var currentValue: Float {
////        if progress >= totalTime { return destinationValue }
////        return startingValue + (update(t: Float(progress / totalTime)) * (destinationValue - startingValue))
////    }
////
////    private var rate: Float = 0
////    private var startingValue: Float = 0
////    private var destinationValue: Float = 0
////    private var progress: TimeInterval = 0
////    private var lastUpdate: TimeInterval = 0
////    private var totalTime: TimeInterval = 0
////    private var easingRate: Float = 0
////    private var timer: CADisplayLink?
////
////    func count(from: Float, to: Float, duration: AnimationDuration = .strolling) {
////        startingValue = from
////        destinationValue = to
////        timer?.invalidate()
////        timer = nil
////
////        if duration.value == 0.0 {
////            setTextValue(value: to)
////            completion?()
////            return
////        }
////
////        easingRate = 3.0
////        progress = 0.0
////        totalTime = duration.value
////        lastUpdate = Date.timeIntervalSinceReferenceDate
////        rate = 3.0
////
////        addDisplayLink()
////    }
////
////    func countFromCurrent(to: Float, duration: AnimationDuration = .strolling) {
////        count(from: currentValue, to: to, duration: duration)
////    }
////
////    func countFromZero(to: Float, duration: AnimationDuration = .strolling) {
////        count(from: 0, to: to, duration: duration)
////    }
////
////    func stop() {
////        timer?.invalidate()
////        timer = nil
////        progress = totalTime
////        completion?()
////    }
////
////    private func addDisplayLink() {
////        timer = CADisplayLink(target: self, selector: #selector(self.updateValue(timer:)))
////        timer?.add(to: .main, forMode: .default)
////        timer?.add(to: .main, forMode: .tracking)
////    }
////
////    private func update(t: Float) -> Float {
////        var t = t
////
////        switch countingMethod {
////        case .linear:
////            return t
////        case .easeIn:
////            return powf(t, rate)
////        case .easeInOut:
////            var sign: Float = 1
////            if Int(rate) % 2 == 0 { sign = -1 }
////            t *= 2
////            return t < 1 ? 0.5 * powf(t, rate) : (sign*0.5) * (powf(t-2, rate) + sign*2)
////        case .easeOut:
////            return 1.0-powf((1.0-t), rate);
////        }
////    }
////
////    @objc private func updateValue(timer: Timer) {
////        let now: TimeInterval = Date.timeIntervalSinceReferenceDate
////        progress += now - lastUpdate
////        lastUpdate = now
////
////        if progress >= totalTime {
////            self.timer?.invalidate()
////            self.timer = nil
////            progress = totalTime
////        }
////
////        setTextValue(value: currentValue)
////        if progress == totalTime { completion?() }
////    }
////
////    private func setTextValue(value: Float) {
////        text = String(format: customFormatBlock?() ?? decimalPoints.format, value)
////    }
////}
////
////
////let myLabel = AnimatedLabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
////myLabel.textColor = .white
////myLabel.count(from: 400, to: 500)
////PlaygroundPage.current.liveView = myLabel
//
//
////
////protocol ProfileFakeBalanceService {
////    var balanceDifference: Int { get }
////    var getNimProgress: CGFloat { get }
////    var canGetNims: Bool { get }
////    func saveLastTimestamp()
////    func clearLastTimestamp()
////}
////
////final class ProfileFakeBalanceServiceImpl: ProfileFakeBalanceService {
////    private enum Constants {
////        static let lastEventDateKey = "kLastEventDateKey"
////        static let minutesPerHour: CGFloat = 60
////        static let minutesPerDay: CGFloat = 60 * 24
////    }
////
////    static let shared = ProfileFakeBalanceServiceImpl(
////        userDefaults: .standard,
////        calendar: .current
////    )
////
////    private let userDefaults: UserDefaults
////    private let calendar: Calendar
////
////    private var lasSavedDate: Date? {
////        get {
////            return userDefaults.object(forKey: Constants.lastEventDateKey) as? Date
////        }
////        set {
////            userDefaults.set(newValue, forKey: Constants.lastEventDateKey)
////        }
////    }
////
////    /// normalized progress from 0 to 1
////    var getNimProgress: CGFloat {
////        let progress = CGFloat(balanceDifference) / Constants.minutesPerDay
////
////        return progress > 100.0
////            ? 100.0
////            : progress
////    }
////
////    var canGetNims: Bool {
////        return getNimProgress >= 1.0
////    }
////
////    /// difference for balance
////    var balanceDifference: Int {
////        guard let lasSavedDate = lasSavedDate else {
////            return 0
////        }
////        return Int(Date().timeIntervalSince(lasSavedDate)) / Int(Constants.minutesPerHour)
////    }
////
////    private init(userDefaults: UserDefaults, calendar: Calendar) {
////        self.userDefaults = userDefaults
////        self.calendar = calendar
////    }
////
////    func saveLastTimestamp() {
////        lasSavedDate = Date()
////    }
////
////    func clearLastTimestamp() {
////        lasSavedDate = nil
////    }
////}
////
////let service = ProfileFakeBalanceServiceImpl.shared
//////service.saveLastTimestamp()
//////service.clearLastTimestamp()
////
////print(service.balanceDifference)
////print(service.getNimProgress)
////print(service.canGetNims)
//
//
//
//final class TextInsetsLabel: UILabel {
//    var textInsets = UIEdgeInsets(top: 4, left: 10, bottom: 4, right: 10)
//
//    override func drawText(in rect: CGRect) {
//        super.drawText(in: rect.inset(by: textInsets))
//    }
//
//    override var intrinsicContentSize: CGSize {
//        var size = super.intrinsicContentSize
//        size.height += abs(textInsets.top) + abs(textInsets.bottom)
//        size.width += abs(textInsets.left) + abs(textInsets.right)
//        return size
//    }
//}
//
////private func urlWithRequest(apiRequest: APIRequestType) -> URLRequest? {
////    //register user method
////    guard let baseURL = baseURL else {
////        print("^^ Error: Invalid base url")
////        return nil
////    }
////    guard var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true) else {
////        print("^^ Error: Invalid component")
////        return nil
////    }
////    //        Post params login and password in x-www-form-urlencoded format.
////    components.path = apiRequest.endpoint.path
////    components.queryItems = apiRequest.parameters?
////        .flatMap(URLEncoder.queryComponents)
////        .map(URLQueryItem.init)
////
////    guard let url = components.url else {
////        print("^^ Error: Invalid component")
////        return nil
////    }
////
////    var urlRequest = URLRequest(url: url)
////
////
////    if case let .allowed(token) = apiRequest.authorization {
////        urlRequest.setValue(token, forHTTPHeaderField: "AuthToken")
////    }
////    urlRequest.url = components.url
////    urlRequest.httpMethod = apiRequest.method.rawValue
////
////    return urlRequest
////}
//
//
////
////let urlString = "https://maps.googleapis.com/maps/api/staticmap?center=50.451873%2C30.473737&format=png&key=AIzaSyCImhffeg3BbshikCY4X3TJgzmKoj9Oed0&scale=4&size=1024x512&style=feature%3Aadministrative%7Celement%3Alabels.text.fill%7Ccolor%3A0x444444&style=feature%3Alandscape%7Celement%3Aall%7Ccolor%3A0xf2f2f2&style=feature%3Alandscape.natural%7Celement%3Alabels.text%7Ccolor%3A0x000000&style=feature%3Alandscape.natural%7Celement%3Alabels.text.fill%7Ccolor%3A0x656565&style=feature%3Alandscape.natural%7Celement%3Alabels.text.stroke%7Ccolor%3A0xffffff&style=feature%3Apoi%7Celement%3Aall%7Cvisibility%3Aoff&style=feature%3Apoi.park%7Celement%3Ageometry.fill%7Cvisibility%3Aon%7Ccolor%3A0xc2ebaf&style=feature%3Apoi.park%7Celement%3Alabels.text%7Cvisibility%3Aon&style=feature%3Aroad%7Celement%3Aall%7Csaturation%3A-100%7Clightness%3A45&style=feature%3Aroad%7Celement%3Ageometry.fill%7Cvisibility%3Aon%7Ccolor%3A0xffffff&style=feature%3Aroad%7Celement%3Ageometry.stroke%7Cvisibility%3Aon%7Ccolor%3A0xe1e1e1&style=feature%3Aroad.highway%7Celement%3Ageometry.fill%7Cvisibility%3Aon%7Ccolor%3A0xffffff&style=feature%3Aroad.highway%7Celement%3Ageometry.stroke%7Cvisibility%3Aon%7Ccolor%3A0xe2e2e2&style=feature%3Aroad.arterial%7Celement%3Ageometry.fill%7Cvisibility%3Aon%7Ccolor%3A0xffffff&style=feature%3Aroad.arterial%7Celement%3Ageometry.stroke%7Cvisibility%3Aon%7Ccolor%3A0xe1e1e1&style=feature%3Aroad.arterial%7Celement%3Alabels.icon%7Cvisibility%3Aoff%7Csaturation%3A0&style=feature%3Aroad.local%7Celement%3Ageometry.stroke%7Cvisibility%3Aon%7Ccolor%3A0xe1e1e1&style=feature%3Aroad.local%7Celement%3Alabels.icon%7Cvisibility%3Aoff&style=feature%3Atransit%7Celement%3Aall%7Cvisibility%3Aoff&style=feature%3Awater%7Celement%3Aall%7Cvisibility%3Aon%7Ccolor%3A0x46bcec&style=feature%3Awater%7Celement%3Ageometry.fill%7Cvisibility%3Aon%7Csaturation%3A0%7Ccolor%3A0xaadaff&zoom=15&signature=wWKfwskZAUU6AOpjmAfXabX_3fA="
////
////if let url = URL(string: urlString) {
////    var componentes = URLComponents(url: url, resolvingAgainstBaseURL: false)
////    var queryItems = componentes?.queryItems
////
////    if let index = queryItems?.firstIndex(where: { $0.name == "size" }) {
////        print("\(index)")
////        queryItems?[index] = URLQueryItem(name: "size", value: "100x100")
////        componentes?.queryItems = queryItems
////        print(componentes?.url)
////    }
////
////
////} else {
////    print("url")
////}
////
//
////Array((0...100))
////let s = stride(from: 1, to: 61, by: 25)
////s.forEach({ print($0) })
//
////final class SlideShowOverlayView: UIView {
////
////    private let topGradientLayer = CAGradientLayer()
////    private let bottomGradientLayer = CAGradientLayer()
////
////    override init(frame: CGRect) {
////        super.init(frame: frame)
////        setup()
////    }
////
////    required init?(coder aDecoder: NSCoder) {
////        super.init(coder: aDecoder)
////        setup()
////    }
////
////    private func setup() {
////        layer.addSublayer(topGradientLayer)
////        topGradientLayer.colors = [
////            UIColor.black.cgColor,
////            UIColor.black.withAlphaComponent(0.2).cgColor,
////            UIColor.clear.cgColor,
////            UIColor.black.withAlphaComponent(0.2).cgColor,
////            UIColor.black.cgColor
////        ]
////        topGradientLayer.locations = [
////            1.0,
////            0.9,
////            0.2,
////            0.1,
////            0
////        ]
////        layer.addSublayer(bottomGradientLayer)
////    }
////
////    override func layoutSubviews() {
////        super.layoutSubviews()
////        topGradientLayer.frame = bounds
////        //        bottomGradientLayer.frame = bounds
////    }
////
////}
////
////
////let v = SlideShowOverlayView(frame: CGRect(x: 0, y: 0, width: 444, height: 444))
//
////class ArcView: UIView {
////    var arcHeight: CGFloat = 50 { didSet { setNeedsLayout()} }
////    var color: UIColor = .red { didSet { setNeedsLayout() } }
////
////    override init(frame: CGRect) {
////        super.init(frame: frame)
////        backgroundColor = .clear
////    }
////
////    required init?(coder aDecoder: NSCoder) {
////        fatalError("init(coder:) has not been implemented")
////    }
////
////    override func draw(_ rect: CGRect) {
////        let path = UIBezierPath()
////        let startPoint = CGPoint.zero
////
////        path.move(to: CGPoint(x: frame.maxX, y: 0))
////        path.addLine(to: CGPoint(x: frame.maxX, y: frame.maxY))
////        path.addLine(to: CGPoint(x: 0, y: frame.maxY))
////        path.addLine(to: startPoint)
////        let endPoint = CGPoint(x: bounds.size.width, y: startPoint.y)
////        let controlPoint = CGPoint(x: bounds.size.width / 2, y: arcHeight - startPoint.y)
////        path.addQuadCurve(to: endPoint, controlPoint: controlPoint)
////        color.setFill()
////        path.fill()
////
////        layer.shadowColor = UIColor.blue.cgColor
////        layer.shadowOffset = CGSize(width: 0, height: -3)
////        layer.shadowOpacity = 1.0
////        layer.shadowRadius = 3
////    }
////}
//
//
////class ShimmerView: UIView {
////
////    private var gradientLayer: CAGradientLayer = CAGradientLayer()
////
////    override init(frame: CGRect) {
////        super.init(frame: frame)
////        initialize()
////    }
////
////    required init?(coder aDecoder: NSCoder) {
////        super.init(coder: aDecoder)
////        initialize()
////    }
////
////    private func initialize() {
////        let alpha = UIColor(red: 1/255, green: 245/255, blue: 245/255, alpha: 1).cgColor
////        let light = UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: 1).cgColor
////        gradientLayer.colors = [alpha, light, alpha]
////        gradientLayer.frame = CGRect(x: -self.bounds.size.width, y: 0, width: 3 * self.bounds.size.width, height: self.bounds.size.height)
////        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
////        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.525)
////        gradientLayer.locations = [0.2, 0.5, 0.7]
////        layer.addSublayer(gradientLayer)
////    }
////
////    override func layoutSublayers(of layer: CALayer) {
////        super.layoutSublayers(of: layer)
////        gradientLayer.frame = CGRect(x: -self.bounds.size.width, y: 0, width: 3 * self.bounds.size.width, height: self.bounds.size.height)
////    }
////
////    func startAnimating() {
////        let animation = CABasicAnimation(keyPath: "locations")
////        animation.fromValue = [0.0, 0.3, 0.6]
////        animation.toValue = [0.5, 0.7, 1.0]
////        animation.duration = 1.5
////        animation.autoreverses = true
////        animation.fillMode = CAMediaTimingFillMode.forwards
////        animation.isRemovedOnCompletion = false
////        animation.repeatCount = .infinity
////        gradientLayer.add(animation, forKey: "shimmer")
////    }
////
////    func stopShimmering() {
////        gradientLayer.removeAllAnimations()
////    }
////
////}
//
//
//
//
////import CoreImage
////
////extension UIImage {
////
////
////    func centered(in targetSize: CGSize) -> UIImage? {
////        let point = CGPoint(
////            x: ((targetSize.width - size.width)/2).rounded(),
////            y: ((targetSize.height - size.height)/2).rounded()
////        )
////
////        let drawing = {
////            self.draw(at: point, blendMode: .normal, alpha: 1.0)
////        }
////
////        if #available(iOS 10.0, *) {
////            return UIGraphicsImageRenderer(size: targetSize).image { context in
////                drawing()
////            }
////        } else {
////            UIGraphicsBeginImageContextWithOptions(targetSize, false, scale)
////            defer { UIGraphicsEndImageContext() }
////            drawing()
////            return UIGraphicsGetImageFromCurrentImageContext()
////        }
////    }
////
////    func rounded() -> UIImage? {
////        let rect = CGRect(origin: .zero, size: size)
////        let drawing = {
////            let path = UIBezierPath(roundedRect: rect, cornerRadius: self.size.height / 2)
////            path.addClip()
////            UIColor.black.setStroke()
////            path.lineWidth = 4
////            path.stroke()
////            self.draw(in: rect)
////        }
////
////        if #available(iOS 10.0, *) {
////            return UIGraphicsImageRenderer(size: size).image { context in
////
////                drawing()
////            }
////        } else {
////            UIGraphicsBeginImageContextWithOptions(size, false, scale)
////            defer { UIGraphicsEndImageContext() }
////            drawing()
////            return UIGraphicsGetImageFromCurrentImageContext()
////        }
////    }
//
////    func bordered(with color: UIColor, isRounded: Bool) -> UIImage? {
////        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
////        defer { UIGraphicsEndImageContext() }
////
////
////        let bounds = CGRect(origin: CGPoint.zero, size: size)
////        let context = UIGraphicsGetCurrentContext()
////        context?.setStrokeColor(color.cgColor)
////
////        if isRounded {
////            let rectPath = UIBezierPath(ovalIn: bounds)
////            let circlePath = UIBezierPath(ovalIn: bounds)
////            rectPath.lineWidth = 1
////            rectPath.usesEvenOddFillRule = true
////            rectPath.stroke()
////
////        } else {
////            context?.stroke(bounds)
////        }
////
////        draw(at: .zero)
////        return UIGraphicsGetImageFromCurrentImageContext()
////    }
//
////    func circularImage(size: CGSize?) -> UIImage? {
////        let newSize = size ?? self.size
////
////        let minEdge = min(newSize.height, newSize.width)
////        let size = CGSize(width: minEdge, height: minEdge)
////
////        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
////        defer { UIGraphicsEndImageContext() }
////
////        if let context = UIGraphicsGetCurrentContext() {
////            draw(in: CGRect(origin: CGPoint.zero, size: size), blendMode: .copy, alpha: 1.0)
////
////            context.setBlendMode(.copy)
////            context.setFillColor(UIColor.clear.cgColor)
////
////            let bounds = CGRect(origin: CGPoint.zero, size: size)
////            let rectPath = UIBezierPath(rect: bounds)
////            let circlePath = UIBezierPath(ovalIn: bounds)
////            rectPath.append(circlePath)
////            rectPath.usesEvenOddFillRule = true
////            rectPath.fill()
////        }
////
////        return UIGraphicsGetImageFromCurrentImageContext()
////    }
////
////    func roundedWith(borderColor: UIColor, borderWidth: CGFloat) -> UIImage? {
////        let imageWidth = size.width
////        let imageHeight = size.height
////
////        let diameter = min(imageWidth, imageHeight)
////        print(diameter)
////        let isLandscape = imageWidth > imageHeight
////
////        let xOffset = isLandscape ? (imageWidth - diameter) / 2 : 0
////        let yOffset = isLandscape ? 0 : (imageHeight - diameter) / 2
////
////        let imageSize = CGSize(width: diameter, height: diameter)
////
////        let drawing = {
////            let ovalPath = UIBezierPath(ovalIn: CGRect(origin: .zero, size: imageSize))
////            ovalPath.addClip()
////            self.draw(at: CGPoint(x: -xOffset, y: -yOffset))
////            borderColor.setStroke()
////            ovalPath.lineWidth = borderWidth
////            ovalPath.stroke()
////        }
////
////
////        if #available(iOS 10.0, *) {
////            return UIGraphicsImageRenderer(size: imageSize).image { _ in
////                drawing()
////            }
////        } else {
////            UIGraphicsBeginImageContextWithOptions(size, false, scale)
////            defer { UIGraphicsEndImageContext() }
////
////            drawing()
////
////            return UIGraphicsGetImageFromCurrentImageContext()
////        }
////    }
////
////    func rendered(with tintColor: UIColor) -> UIImage? {
////        let bounds = CGRect(origin: .zero, size: size)
////        if #available(iOS 10.0, *) {
////            return UIGraphicsImageRenderer(size: size).image { [weak self] context in
////                tintColor.setFill()
////                context.fill(bounds)
////                self?.draw(at: .zero, blendMode: .normal, alpha: 1.0)
////            }
////        } else {
////            UIGraphicsBeginImageContextWithOptions(size, false, scale)
////            defer { UIGraphicsEndImageContext() }
////
////            guard let context = UIGraphicsGetCurrentContext() else { return nil }
////            tintColor.setFill()
////            context.fill(bounds)
////            draw(at: .zero, blendMode: .normal, alpha: 1.0)
////
////            return UIGraphicsGetImageFromCurrentImageContext()
////        }
////    }
////}
////
////
////let view = UIView(frame: CGRect(x: 0, y: 0, width: 130, height: 130))
////let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
////view.backgroundColor = .red
////view.addSubview(imageView)
////imageView.center = view.center
////
////
////imageView.image = UIImage(named: "nu.png")!
////    .centered(in: CGSize(width: 100, height: 100))?
////    .rendered(with: .black)?
////    .roundedWith(borderColor: .white, borderWidth: 8.2)
//////    .rounded()
////
////
//////imageView.tintColor = .yellow
////imageView.backgroundColor = .white
////
////
////
////PlaygroundPage.current.liveView = view
//
//final class PulsingRadialLayer: CAGradientLayer {
//    private let animationGroup = CAAnimationGroup()
//
//    var animationDuration: TimeInterval = 1.5
//    var radius: CGFloat = 200
//    var numberOfPulses = Float.infinity
//    var gradientColors = [
//        UIColor.white.withAlphaComponent(0.2).cgColor,
//        UIColor.white.withAlphaComponent(0.3).cgColor,
//        UIColor.white.withAlphaComponent(0.4).cgColor,
//        UIColor.white.withAlphaComponent(0.54).cgColor
//    ]
//
//    override init(layer: Any) {
//        super.init(layer: layer)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//
//    init(numberOfPulses: Float = Float.infinity, radius: CGFloat, position: CGPoint) {
//        super.init()
//
//        self.radius = radius
//        self.numberOfPulses = numberOfPulses
//        self.position = position
//        backgroundColor = UIColor.blue.cgColor
//        contentsScale = UIScreen.main.scale
//        opacity = 1
//        type = .radial
//
//        startPoint = CGPoint(x: 0.5, y: 0.5)
//        endPoint = CGPoint(x: 1, y: 1)
//        colors = gradientColors
//        locations = [0.3, 0.6, 0.7, 0.9]
//
//        bounds = CGRect(x: 0, y: 0, width: radius * 2, height: radius * 2)
//        cornerRadius = radius
//
//        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
//            self.setupAnimationGroup()
//
//            DispatchQueue.main.async {
//                self.add(self.animationGroup, forKey: "pulse")
//            }
//        }
//    }
//
//    private func createScaleAnimation () -> CABasicAnimation {
//        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale.xy")
//        scaleAnimation.fromValue = NSNumber(value: 0.0)
//        scaleAnimation.toValue = NSNumber(value: 1.0)
//        scaleAnimation.duration = animationDuration
//        return scaleAnimation
//    }
//
//    private func createOpacityAnimation() -> CAKeyframeAnimation {
//        let opacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
//        opacityAnimation.duration = animationDuration
//        opacityAnimation.values = [0.1, 1.0, 0]
//        opacityAnimation.keyTimes = [0, 0.2, 1]
//        return opacityAnimation
//    }
//
//    private func createGradientAnimation() -> CABasicAnimation {
//        let gradientAnimation = CABasicAnimation(keyPath: "locations")
//        gradientAnimation.fromValue = [0.3, 0.6, 0.7, 0.9]
//        gradientAnimation.toValue = [0.5, 0.8, 0.9, 0.95]
//        gradientAnimation.duration = animationDuration
//        return gradientAnimation
//    }
//
//    private func setupAnimationGroup() {
//        animationGroup.duration = animationDuration
//        animationGroup.repeatCount = numberOfPulses
//
//        let defaultCurve = CAMediaTimingFunction(name: .default)
//        animationGroup.timingFunction = defaultCurve
//
//        animationGroup.animations = [
//            createScaleAnimation(),
//            createGradientAnimation(),
//            createOpacityAnimation()
//        ]
//    }
//}
//
//
//
//
//
////PlaygroundPage.current.liveView = Bootrstrap()
