//
//  ViewController.swift
//  dubizzle
//
//  Created by Kuldeep Singh on 6/6/24.
//

import UIKit

struct Category {
    let categoryName: String
    let categoryImageName: String
}

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    let categoryList = [
    Category(categoryName: "Property for Rent", categoryImageName: "house"),
    Category(categoryName: "Property for Sale", categoryImageName: "house"),
    Category(categoryName: "Off-Plan Properties", categoryImageName: "house"),
    Category(categoryName: "Rooms for Rent", categoryImageName: "house"),
    Category(categoryName: "Motors", categoryImageName: "house"),
    Category(categoryName: "Jobs", categoryImageName: "house"),
    Category(categoryName: "Classified", categoryImageName: "house"),
    Category(categoryName: "Furniture & Garden", categoryImageName: "house"),
    Category(categoryName: "Community", categoryImageName: "house")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customizeSearchBar()
        categoryCollectionView.dataSource = self
        popularCollectionView.dataSource = self
    }
    
    func customizeSearchBar() {
            if let searchTextField = searchBar.value(forKey: "searchField") as? UITextField {
                searchTextField.leftViewMode = .always
                let imageView = UIImageView(image: UIImage(systemName: "house.and.flag.fill"))
                imageView.tintColor = .red
                searchTextField.leftView = imageView
                searchTextField.backgroundColor = .white
                searchTextField.layer.borderWidth = 1
                searchTextField.layer.borderColor = UIColor.lightGray.cgColor
                searchTextField.layer.cornerRadius = 10
                searchTextField.clipsToBounds = true
            }
        
        }


}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == categoryCollectionView {
                    return categoryList.count
                } else if collectionView == popularCollectionView {
                    return 5
                }
                return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == categoryCollectionView {
            let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
            //        cell.categoryImage.image = UIImage(named: categoryList[indexPath.row].categoryImageName)
            cell.categoryName.text = categoryList[indexPath.row].categoryName
            return cell
        } else if collectionView == popularCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularCollectionViewCell", for: indexPath)
            return cell
        }
        return UICollectionViewCell()
    }
    
}

