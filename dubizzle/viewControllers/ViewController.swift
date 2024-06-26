//
//  ViewController.swift
//  dubizzle
//
//  Created by Kuldeep Singh on 6/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var getStartedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customizeSearchBar()
        customizegetStartedView()
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
                searchTextField.layer.borderWidth = 0.5
                searchTextField.layer.borderColor = UIColor.lightGray.cgColor
                searchTextField.layer.cornerRadius = 15
                searchTextField.clipsToBounds = true
            }
        
        }
    
    func customizegetStartedView(){
        getStartedView.layer.borderWidth = 0.5
        getStartedView.layer.borderColor = UIColor.systemGray.cgColor
        getStartedView.layer.cornerRadius = 5
        getStartedView.layer.shadowColor = UIColor.systemGray.cgColor
        getStartedView.layer.shadowRadius = 5
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
            cell.categoryName.text = categoryList[indexPath.row].categoryName
            cell.layer.borderWidth = 0.5
            cell.layer.borderColor = UIColor.systemGray.cgColor
            cell.layer.cornerRadius = 5
            cell.layer.shadowColor = UIColor.systemGray.cgColor
            cell.layer.shadowOpacity = 0.7
            cell.layer.shadowRadius = 5
            cell.layer.shadowOffset = CGSize(width: 0, height: 5)
            cell.layer.masksToBounds = false
            return cell
        } else if collectionView == popularCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularCollectionViewCell", for: indexPath)
            cell.layer.borderWidth = 0.5
            cell.layer.borderColor = UIColor.systemGray.cgColor
            cell.layer.cornerRadius = 10
            cell.layer.shadowColor = UIColor.systemGray.cgColor
            cell.layer.shadowOpacity = 0.7
            cell.layer.shadowRadius = 5
            cell.layer.shadowOffset = CGSize(width: 0, height: 5)
            return cell
        }
        return UICollectionViewCell()
    }
    
}

