//
//  ViewController.swift
//  TaskTechFilter
//
//  Created by Anuj Soni on 04/05/23.
//
    
import UIKit

class ViewController: UIViewController {
    
    private let itemsPerRow: CGFloat = 2
    private let sectionInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(MyCustomCell.self, forCellWithReuseIdentifier:"cell")
        cv.backgroundColor = .red
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Pinterest"
        setupView()
    }

    func setupView(){
        view.addSubview(collectionView)
        setupconstraint()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func setupconstraint(){
        collectionView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo:view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo:view.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension ViewController : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for:indexPath)
        as! MyCustomCell
        //cell.backgroundColor = .red
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthperItem = availableWidth / itemsPerRow
        return CGSize(width:widthperItem, height:150)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
}

