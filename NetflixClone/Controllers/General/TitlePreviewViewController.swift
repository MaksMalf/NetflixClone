//
//  TitlePreviewViewController.swift
//  NetflixClone
//
//  Created by Maksim Malofeev on 9/30/22.
//

import UIKit
import WebKit

class TitlePreviewViewController: UIViewController {
    
    private let titleLable: UILabel = {
        let lable = UILabel()
        lable.font = .systemFont(ofSize: 22, weight: .bold)
        lable.text = "Harry Potter"
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    private let overviewLable: UILabel = {
        let lable = UILabel()
        lable.font = .systemFont(ofSize: 18, weight: .regular)
        lable.text = "This is the best movie"
        lable.numberOfLines = 0
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    private let downlaodButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Download", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let webView: WKWebView = {
        let view = WKWebView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .systemBackground
        view.addSubview(webView)
        view.addSubview(titleLable)
        view.addSubview(overviewLable)
        view.addSubview(downlaodButton)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.heightAnchor.constraint(equalToConstant: 250),
            
            titleLable.topAnchor.constraint(equalTo: webView.bottomAnchor, constant: 20),
            titleLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            overviewLable.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 15),
            overviewLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            overviewLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            downlaodButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            downlaodButton.topAnchor.constraint(equalTo: overviewLable.bottomAnchor, constant: 25),
            downlaodButton.widthAnchor.constraint(equalToConstant: 140),
            downlaodButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func configure(with model: TitlePreviewViewModel) {
        titleLable.text = model.title
        overviewLable.text = model.titleOverview
        
        guard let url = URL(string: "https://www.youtube.com/embed/\(model.youtubeView.id.videoId)") else {
            return
        }
        
        webView.load(URLRequest(url: url))
    }
}
