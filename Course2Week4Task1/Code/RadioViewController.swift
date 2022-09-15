//
//  RadioViewController.swift
//  Course2Week4Task1
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class RadioViewController: UIViewController {
    
    private var container: UIView!
    private var imageView: UIImageView! = {
        let imageView = UIImageView()
        let image = UIImage.init(named: "cover")
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
        
        return imageView
    }()
    
    private var progressView: UIProgressView! = {
        let progressView = UIProgressView()
        progressView.progress = 0.5
        progressView.heightAnchor.constraint(equalToConstant: 4).isActive = true
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private var volume: UISlider! = {
        let volume = UISlider()
        volume.translatesAutoresizingMaskIntoConstraints = false
        volume.minimumValue = 0
        volume.maximumValue = 1
        volume.value = 0.5
        volume.heightAnchor.constraint(equalToConstant: 31).isActive = true
        
        return volume
    }()
    
    private var label: UILabel! = {
        let label = UILabel()
        label.text = "Aerosmith - Hole In My Soul"
        label.textAlignment = .center
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var verticalStackView: UIStackView! = {
        let verticalStackView = UIStackView()
        verticalStackView.axis = .vertical
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        return verticalStackView
    }()
    
    private lazy var horizontalStackView: UIStackView! = {
        let horizontalStackView = UIStackView()
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 16
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView.distribution = .fill
        return horizontalStackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        //check orientation
        if UIDevice.current.orientation.isLandscape {
            print("landscape")
            addLandscapeSubviews()
        } else {
            print("portrait")
            addPortraitSubviews()
        }
    }
    
    func addPortraitSubviews(){
        view.addSubview(imageView)
        view.addSubview(verticalStackView)
        verticalStackView.addArrangedSubview(progressView)
        verticalStackView.addArrangedSubview(label)
        verticalStackView.addArrangedSubview(volume)
        configurePortrainConstraints()
    }
    
    func addLandscapeSubviews(){
        view.addSubview(verticalStackView)
        verticalStackView.addArrangedSubview(progressView)
        verticalStackView.addArrangedSubview(horizontalStackView)
        verticalStackView.addArrangedSubview(volume)
        horizontalStackView.insertArrangedSubview(imageView, at: 0)
        horizontalStackView.addArrangedSubview(label)
        configureLandscapeConstraints()
    }
    
    var verticalStackViewTopAnchor: NSLayoutConstraint?
    var verticalStackViewLeadingAnchor: NSLayoutConstraint?
    var verticalStackViewTrailingAnchor: NSLayoutConstraint?
    var verticalStackViewBottomAnchor: NSLayoutConstraint?
    var imageViewLeadingAnchor: NSLayoutConstraint?
    var imageViewTrailingAnchor: NSLayoutConstraint?
    var imageViewTopAnchor: NSLayoutConstraint?
    
    func configurePortrainConstraints(){
        //set image constraints
        imageViewLeadingAnchor = imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        imageViewTrailingAnchor = imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        imageViewTopAnchor =  imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        
        //set vertical stack constraints
        verticalStackViewTopAnchor = verticalStackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30)
        verticalStackViewLeadingAnchor = verticalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        verticalStackViewTrailingAnchor = verticalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        verticalStackViewBottomAnchor = verticalStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24)
        var progressHeight = progressView.heightAnchor.constraint(equalToConstant: 1)
        progressHeight.priority = .defaultHigh
        
        
        //enable image, stack constraints
        imageViewLeadingAnchor?.isActive = true
        imageViewTrailingAnchor?.isActive = true
        imageViewTopAnchor?.isActive = true
        verticalStackViewTopAnchor?.isActive = true
        verticalStackViewLeadingAnchor?.isActive = true
        verticalStackViewTrailingAnchor?.isActive = true
        verticalStackViewBottomAnchor?.isActive = true
        
    }
    
    func configureLandscapeConstraints(){
        verticalStackViewTopAnchor?.isActive = false
        verticalStackViewLeadingAnchor?.isActive = false
        verticalStackViewTrailingAnchor?.isActive = false
        verticalStackViewBottomAnchor?.isActive = false
    
        verticalStackViewTopAnchor = verticalStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16)
        verticalStackViewLeadingAnchor = verticalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        verticalStackViewTrailingAnchor = verticalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        verticalStackViewBottomAnchor = verticalStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24)
        verticalStackView.spacing = 16
        verticalStackView.distribution = .fillProportionally
        
        verticalStackViewTopAnchor?.isActive = true
        verticalStackViewLeadingAnchor?.isActive = true
        verticalStackViewTrailingAnchor?.isActive = true
        verticalStackViewBottomAnchor?.isActive = true
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        if UIDevice.current.orientation.isLandscape {
            print("Get Landscape Orientation")
            verticalStackView.removeFromSuperview()
            
            
            // clear vertical stack and view
            imageView.removeFromSuperview()
            volume.removeFromSuperview()
            label.removeFromSuperview()
            progressView.removeFromSuperview()
            
            addLandscapeSubviews()
        } else {
            print("Get Portrait Orientation")
            
            // clear vertical stack
            verticalStackView.removeFromSuperview()
            horizontalStackView.removeFromSuperview()
            volume.removeFromSuperview()
            progressView.removeFromSuperview()
            
            // clear horizontal stack
            label.removeFromSuperview()
            imageView.removeFromSuperview()
            
            addPortraitSubviews()
        }
    }
}
