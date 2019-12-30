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
No need to keep the page number or show/hide loader logic within the ViewController, it will stay as clean as you have simple table view. :+1:  
Guess what, it comes with pull to refresh by default ;)

## Usage

**Step 1:** Assign custom class
```swift
  // Assign custom class to table view in storyboard
  @IBOutlet weak var tableView: PaginatedTableView!
``` 
  
**Step 2:** Remember to assign paginated delegate and data source ONLY, DO NOT assign `tableViewDelegate` or `tableViewDataSource`
```swift
  // Add paginated delegates only
  tableView.paginatedDelegate = self
  tableView.paginatedDataSource = self
```
  
**Step 3:** On `ViewDidLoad` call the load method with refresh true optional parameter
```swift
  tableView.loadData(refresh: true)
```
  
**Step 4:** Implement stub and call api
```swift
    func loadMore(_ pageNumber: Int, _ pageSize: Int, onSuccess: ((Bool) -> Void)?, onError: ((Error) -> Void)?) {
        // Call your api here
        // Send true in onSuccess in case new data exists, sending false will disable pagination
        
        // If page number is first, reset the list
        if pageNumber == 1 { self.list = [Model]() }
        
        // else append the data to list
        self.list.append(apiResponseList)
        
        // If Api responds with error
        onError?(apiError)        

        // Else end success with flag true if more data available
        let moreDataAvailable = !apiResponseList.isEmpty
        onSuccess?(moreDataAvailable)
    }
```
The latest release supports swiping cells and listening to scroll changes, please see example for more features.

**Step 5: Enjoy**  
Yeah! Thats all. You now have paginated table view with infinite scroll along with pull to refresh :heart:   
Simple, isnt it? 

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
