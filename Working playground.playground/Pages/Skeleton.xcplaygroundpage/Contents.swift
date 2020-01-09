//: [Previous](@previous)

import UIKit
import PlaygroundSupport
 
// Present the view controller in the Live View window

class SkeletonView: UIView {

    var startLocations: [NSNumber] = [-1.0,-0.5, 0.0]
    var endLocations: [NSNumber] = [1.0,1.5, 2.0]

    var gradientBackgroundColor : CGColor = UIColor(white: 0.8, alpha: 1.0).cgColor
    var gradientMovingColor : CGColor = UIColor(white: 0.7, alpha: 1.0).cgColor

    var movingAnimationDuration : CFTimeInterval = 0.8
    var delayBetweenAnimationLoops : CFTimeInterval = 1.0

    lazy var gradientLayer : CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.colors = [
            gradientBackgroundColor,
            gradientMovingColor,
            gradientBackgroundColor
        ]
        gradientLayer.locations = self.startLocations
        self.layer.addSublayer(gradientLayer)
        return gradientLayer
    }()


    func startAnimating(){
        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = self.startLocations
        animation.toValue = self.endLocations
        animation.duration = self.movingAnimationDuration
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)


        let animationGroup = CAAnimationGroup()
        animationGroup.duration = self.movingAnimationDuration + self.delayBetweenAnimationLoops
        animationGroup.animations = [animation]
        animationGroup.repeatCount = .infinity
        self.gradientLayer.add(animationGroup, forKey: animation.keyPath)
    }

    func stopAnimating() {
        self.gradientLayer.removeAllAnimations()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}

class ShimmerView: UIView {

    var topStack = UIStackView()

    func setup() -> Self {
        let topSubviews = (0...30).map { (index: Int) -> UIView in
            let view = SkeletonView()
            view.startAnimating()
            view.translatesAutoresizingMaskIntoConstraints = false


            view.tag = index


            if index == 0 {
                view.widthAnchor.constraint(equalToConstant: 100).isActive = true
                view.heightAnchor.constraint(equalToConstant: 100).isActive = true
            } else {
                let height:CGFloat = index > 4 ? 6 : 12
                view.heightAnchor.constraint(equalToConstant: height).isActive = true
            }

            return view
        }
        topStack = UIStackView(arrangedSubviews: topSubviews)
        topStack.axis = .vertical
        topStack.spacing = 6
        topStack.distribution = .fill

        topStack.setCustomSpacing(12, after: topSubviews.first(where: { $0.tag == 4})!)
        addSubview(topStack)

        topStack.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            topStack.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            topStack.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            topStack.topAnchor.constraint(equalTo: topAnchor, constant: 32)
        ])

        return self
    }
}


class ArticleCell: UICollectionViewCell {
    lazy var skeletonView: SkeletonView = {
        let skeletonView = SkeletonView()
        skeletonView.startAnimating()
        addSubview(skeletonView)
        return skeletonView
    }()

    lazy var titleView: SkeletonView = {
        let skeletonView = SkeletonView()
        skeletonView.startAnimating()
        addSubview(skeletonView)
        return skeletonView
    }()

    lazy var subtitleView: SkeletonView = {
        let skeletonView = SkeletonView()
        skeletonView.startAnimating()
        addSubview(skeletonView)
        return skeletonView
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        skeletonView.frame = CGRect(
            x: 0,
            y: 0,
            width: bounds.height * 4 / 3,
            height: bounds.height
        )

        titleView.frame = CGRect(
            x: Int(skeletonView.bounds.maxX + 16.0),
            y: 16,
            width: Int.random(in: (100...160)),
            height: 10
        )

        subtitleView.frame = CGRect(
            x: Int(skeletonView.bounds.maxX + 16.0),
            y: 16 + 10 + 8,
            width: Int.random(in: (150...250)),
            height: 10
        )
        
        skeletonView.layer.cornerRadius = 4
        skeletonView.layer.masksToBounds = true
    }
}

class LargeArticleCell: UICollectionViewCell {
    lazy var skeletonView: SkeletonView = {
        let skeletonView = SkeletonView()
        skeletonView.startAnimating()
        addSubview(skeletonView)
        return skeletonView
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        skeletonView.frame = bounds
        skeletonView.layer.cornerRadius = 4
        skeletonView.layer.masksToBounds = true
    }
}

class WidgetCell: UICollectionViewCell {
    lazy var skeletonView: UIStackView = {
        let arrangedSubviews = (0...4).map { (_: Int) -> SkeletonView in
            let skeletonView = SkeletonView()
            skeletonView.startAnimating()

            skeletonView.translatesAutoresizingMaskIntoConstraints = false

            skeletonView.widthAnchor.constraint(equalToConstant: 25).isActive = true
            skeletonView.heightAnchor.constraint(equalToConstant: 25).isActive = true

            return skeletonView
        }

        let stack = UIStackView(arrangedSubviews: arrangedSubviews)
        stack.axis = .horizontal
        stack.spacing = 8
        stack.distribution = .fill

        addSubview(stack)
        return stack
    }()

    lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(white: 0.8, alpha: 1.0)
        return line
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        skeletonView.frame = CGRect(
            x: 30,
            y: 20,
            width: bounds.width - 60,
            height: 26
        )
        
        let spacing = ((bounds.width - 60) - (26 * 5))/4
        print(spacing)
        skeletonView.spacing = 39
        
        
        skeletonView.subviews.forEach {
            $0.frame.size = CGSize(width: 26, height: 26)
            $0.layer.cornerRadius = 13
            $0.layer.masksToBounds = true
        }
    }
}

final class SkeletonViewController: UIViewController {
    let sideInset: CGFloat = 16

    enum Parts: Int, CaseIterable {
        case widgets, largeArticle, smallArticles
    }

    private var parts: [Parts] = Parts.allCases

    let collectionViewLayout: UICollectionViewFlowLayout = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.scrollDirection = .vertical
        return collectionViewLayout
    }()

    lazy var collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: collectionViewLayout
    )

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(WidgetCell.self, forCellWithReuseIdentifier: "WidgetCell")
        collectionView.register(ArticleCell.self, forCellWithReuseIdentifier: "ArticleCell")
        collectionView.register(LargeArticleCell.self, forCellWithReuseIdentifier: "LargeArticleCell")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))

        collectionView.isScrollEnabled = false
    }

    @objc func tap(_ notification: NSNotification) {
        UIView.animate(
            withDuration: 0.3,
            animations: {
                self.view.alpha = 0
            },
            completion: { _ in
                UIView.animate(
                    withDuration: 0.2,
                    animations: {
                        self.parent?.view.alpha = 1
                    },
                    completion: { _ in
                        self.removeFromParent()
                })
        })
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
}



extension SkeletonViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        parts.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(section)
        guard let part = Parts(rawValue: section) else { return .zero }
        switch part {
        case .widgets:
            return 1
        case .largeArticle:
            return 1
        case .smallArticles:
            return 100
        }

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let part = Parts(rawValue: indexPath.section) else { return UICollectionViewCell() }

        switch part {
        case .widgets:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WidgetCell", for: indexPath)
            return cell
        case .largeArticle:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LargeArticleCell", for: indexPath)
            return cell
        case .smallArticles:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArticleCell", for: indexPath)
            return cell
        }
    }
}

extension SkeletonViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        guard let part = Parts(rawValue: section) else { return .zero }
        switch part {
        case .widgets:
            return UIEdgeInsets(top: 0, left: sideInset, bottom: 0, right: sideInset)
        case .largeArticle:
            return UIEdgeInsets(top: 8, left: sideInset, bottom: 1, right: sideInset)
        case .smallArticles:
            return UIEdgeInsets(top: 10, left: sideInset, bottom: 10, right: sideInset)
        }

    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        guard let part = Parts(rawValue: indexPath.section) else { return .zero }
        let width = collectionView.frame.size.width - 2 * sideInset
        switch part {
        case .widgets:
            return CGSize(width: width, height: 50)
        case .largeArticle:
            return CGSize(width: width, height: width * (9/16))
        case .smallArticles:
            return CGSize(width: width, height: 64)
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        8
    }
}



PlaygroundPage.current.liveView = SkeletonViewController()
