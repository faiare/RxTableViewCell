#  RxTableViewCell

[![Build Status](https://travis-ci.org/faiare/RxTableViewCell.svg?branch=master)](https://travis-ci.org/faiare/RxTableViewCell)

RxTableViewCell is a wrapper for UITableViewCell with DisposeBag for RxSwift.

## Features

* When UITableViewCell is reused, disposeBag is released automatically.

## System Requirements
iOS 8.0 or above

## Examples

``` swift
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RxTableViewCell
    user.name.asObservable().bind(to: (cell.viewWithTag(10) as! UILabel).rx.text).disposed(by: cell.disposeBag)
    return cell
}
```

## Installation

#### Carthage

Add the following to your Cartfile:

```
github "faiare/RxTableViewCell"
```

#### Manual Installation

Please copy RxTableViewCell.swift to your project.

## License

[MIT](http://b4b4r07.mit-license.org)
