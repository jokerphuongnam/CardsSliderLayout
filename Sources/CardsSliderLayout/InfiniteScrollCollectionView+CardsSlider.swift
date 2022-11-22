//
//  File.swift
//  
//
//  Created by P.Nam on 22/11/2022.
//

import UIKit
import InfiniteScrollCollectionView

extension InfiniteScrollCollectionView {
    open override func scrollToItem(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition, animated: Bool) {
        if let layout = collectionViewLayout as? CardsSliderLayout {
            layout.selectedItem = indexPath.item
        } else {
            super.scrollToItem(at: indexPath, at: scrollPosition, animated: animated)
        }
    }
    
    open override var visibleCells: [UICollectionViewCell] {
        if let layout = collectionViewLayout as? CardsSliderLayout {
            if let cell = cellForItem(at: IndexPath(item: layout.selectedItem, section: 0)) {
                return [cell]
            } else {
                return []
            }
        } else {
            return super.visibleCells
        }
    }
}
