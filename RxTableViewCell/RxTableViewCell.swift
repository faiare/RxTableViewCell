//
//  RxTableViewCell.swift
//  RxTableViewCell
//
//  Created by toda on 2017/10/06.
//  Copyright © 2017年 D-Forest. All rights reserved.
//

import UIKit
import RxSwift

public class RxTableViewCell: UITableViewCell {
    
    private(set) var disposeBag = DisposeBag()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        disposeBag = DisposeBag()
    }
}
