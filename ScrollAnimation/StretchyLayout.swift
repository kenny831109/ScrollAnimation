//
//  StretchyLayout.swift
//  ScrollAnimation
//
//  Created by 逸唐陳 on 2019/1/25.
//  Copyright © 2019 逸唐陳. All rights reserved.
//

import UIKit

class StretchyLayout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let layoutAttributes = super.layoutAttributesForElements(in: rect)
        layoutAttributes?.forEach({ (attributes) in
            if attributes.representedElementKind == UICollectionView.elementKindSectionHeader && attributes.indexPath.section == 0 {
                guard let collectionView = collectionView else {return}
                let offsetY = collectionView.contentOffset.y
                if offsetY > 0 {
                    return
                }
                let width = collectionView.frame.width
                let height = attributes.frame.height - offsetY
                attributes.frame = CGRect(x: 0, y: offsetY, width: width, height: height)
            }
        })
        
        
        
        return layoutAttributes
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
    
}
