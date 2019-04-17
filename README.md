# PaginatedTableView

![Swift 5](https://img.shields.io/badge/Swift-5-orange.svg?style=flat)
[![Version](https://img.shields.io/cocoapods/v/PaginatedTableView.svg?style=flat)](https://cocoapods.org/pods/PaginatedTableView)
[![License](https://img.shields.io/cocoapods/l/PaginatedTableView.svg?style=flat)](https://cocoapods.org/pods/PaginatedTableView)
[![Platform](https://img.shields.io/cocoapods/p/PaginatedTableView.svg?style=flat)](https://cocoapods.org/pods/PaginatedTableView)
![Country](https://img.shields.io/badge/Made%20with%20%E2%9D%A4-pakistan-green.svg)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Demo
<br>
<img height="400" src="https://raw.githubusercontent.com/salmaanahmed/PaginatedTableView/master/demo.gif" />
<br>

Pagination or Infinite scroll is a very necessary feature in modern apps. This library makes it super easy to implement infinite scroll.  
All you have to do is, assign `PaginatedTableView` class to your tableView and implement `paginatedDelegate` as well as `paginatedDataSource`.  
You will get a callback with page number, page size, from where you shall call api.  
No need to keep the page number or show/hide loader logic within the ViewController, it will stay as clean as you have simple table view.  
Guess what, it comes with pull to refresh by default ;)

## Installation

PaginatedTableView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PaginatedTableView'
```

## Author

Salmaan Ahmed, salmaan.ahmed@hotmail.com

## License

PaginatedTableView is available under the MIT license. See the LICENSE file for more info.
