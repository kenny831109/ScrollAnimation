//
//  CustomHeader.swift
//  ScrollAnimation
//
//  Created by 逸唐陳 on 2019/1/25.
//  Copyright © 2019 逸唐陳. All rights reserved.
//

import UIKit

class CustomHeader: UICollectionReusableView {
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "CowboySteak")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    var animator: UIViewPropertyAnimator!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//        backgroundColor = .red
        setupBlurView()
    }
    
    func setupBlurView() {
        animator = UIViewPropertyAnimator(duration: 3, curve: UIView.AnimationCurve.linear, animations: { [weak self] in
            guard let strongSelf = self else { return }
            let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.regular)
            let effectView = UIVisualEffectView(effect: blurEffect)
            effectView.translatesAutoresizingMaskIntoConstraints = false
            strongSelf.addSubview(effectView)
            effectView.leadingAnchor.constraint(equalTo: strongSelf.leadingAnchor).isActive = true
            effectView.trailingAnchor.constraint(equalTo: strongSelf.trailingAnchor).isActive = true
            effectView.topAnchor.constraint(equalTo: strongSelf.topAnchor).isActive = true
            effectView.bottomAnchor.constraint(equalTo: strongSelf.bottomAnchor).isActive = true
        })
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
