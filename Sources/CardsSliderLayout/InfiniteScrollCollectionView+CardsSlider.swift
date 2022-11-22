//
//  InfiniteScrollCollectionView+CardsSlider.swift
//  CardsSliderLayout
//
//  Created by P.Nam on 22/11/2022.
//

import UIKit
import InfiniteScrollCollectionView

extension InfiniteScrollCollectionView {
    @objc open override var infiniteIndexPathsForVisibleItems: [IndexPath] {
        if let layout = collectionViewLayout as? CardsSliderLayout {
            return [[0, layout.selectedItem]]
        } else {
            return super.indexPathsForVisibleItems
        }
    }
    
    @objc open override func infiniteScrollToItem(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition) {
        if let layout = collectionViewLayout as? CardsSliderLayout {
            layout.selectedItem = indexPath.item
        } else {
            super.scrollToItem(at: indexPath, at: scrollPosition, animated: false)
        }
    }
}
