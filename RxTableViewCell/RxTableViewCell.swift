//
//  RxTableViewCell.swift
//  RxTableViewCell
//
//  Created by toda on 2017/10/06.
//  Copyright © 2017年 D-Forest. All rights reserved.
//

import UIKit
import RxSwift

open class RxTableViewCell: UITableViewCell {
    
    private(set) open var disposeBag = DisposeBag()
    
    override open func prepareForReuse() {
        super.prepareForReuse()
        disposeBag = DisposeBag()
    }
}
