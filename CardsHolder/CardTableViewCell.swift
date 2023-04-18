//
//  CardTableViewCell.swift
//  CardsHolder
//
//  Created by Павел Яковенко on 13.04.2023.
//

import Foundation
import UIKit

class CardTableViewCell: UITableViewCell {
    
    private let cardCellView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Bonus Money"
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let logoCardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "creditcard.circle.fill")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let lineViewTop: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let valueBallLabel: UILabel = {
        let label = UILabel()
        label.text = "200"
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ballLabel: UILabel = {
        let label = UILabel()
        label.text = "баллов"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = #colorLiteral(red: 0.5803921569, green: 0.5803921569, blue: 0.5803921569, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let cashBackLabel: UILabel = {
        let label = UILabel()
        label.text = "Кешбэк"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.5803921569, green: 0.5803921569, blue: 0.5803921569, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let levelLabel: UILabel = {
        let label = UILabel()
        label.text = "Уровень"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.5803921569, green: 0.5803921569, blue: 0.5803921569, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let valueCashBackLabel: UILabel = {
        let label = UILabel()
        label.text = "1%"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let levelTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Базовый уровень текст"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let lineViewBottom: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let reviewImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "eye")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let deleteImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "trash")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let moreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Подробнее", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.1751098931, green: 0.6135229468, blue: 0.9383910298, alpha: 1), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(moreButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        addSubview(cardCellView)
        cardCellView.addSubview(nameLabel)
        cardCellView.addSubview(logoCardImageView)
        cardCellView.addSubview(lineViewTop)
        cardCellView.addSubview(valueBallLabel)
        cardCellView.addSubview(ballLabel)
        cardCellView.addSubview(cashBackLabel)
        cardCellView.addSubview(levelLabel)
        cardCellView.addSubview(valueCashBackLabel)
        cardCellView.addSubview(levelTextLabel)
        cardCellView.addSubview(lineViewBottom)
        cardCellView.addSubview(reviewImageView)
        cardCellView.addSubview(deleteImageView)
        cardCellView.addSubview(moreButton)
    }
    
    @objc private func moreButtonTapped() {
        
    }
}

extension CardTableViewCell {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: cardCellView.topAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            
            cardCellView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            cardCellView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            cardCellView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            cardCellView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            lineViewTop.heightAnchor.constraint(equalToConstant: 1),
            lineViewTop.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            lineViewTop.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            lineViewTop.trailingAnchor.constraint(equalTo: cardCellView.trailingAnchor, constant: -20),
            
            logoCardImageView.topAnchor.constraint(equalTo: cardCellView.topAnchor, constant: 20),
            logoCardImageView.trailingAnchor.constraint(equalTo: cardCellView.trailingAnchor, constant: -20),
            logoCardImageView.bottomAnchor.constraint(equalTo: lineViewTop.topAnchor, constant: -10),
            
            valueBallLabel.topAnchor.constraint(equalTo: lineViewTop.bottomAnchor, constant: 20),
            valueBallLabel.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            
            ballLabel.leadingAnchor.constraint(equalTo: valueBallLabel.trailingAnchor, constant: 10),
            ballLabel.topAnchor.constraint(equalTo: lineViewTop.bottomAnchor, constant: 23),
            
            cashBackLabel.topAnchor.constraint(equalTo: valueBallLabel.bottomAnchor, constant: 20),
            cashBackLabel.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            
            levelLabel.topAnchor.constraint(equalTo: valueBallLabel.bottomAnchor, constant: 20),
            levelLabel.leadingAnchor.constraint(equalTo: cashBackLabel.trailingAnchor, constant: 30),
            
            valueCashBackLabel.topAnchor.constraint(equalTo: cashBackLabel.bottomAnchor, constant: 10),
            valueCashBackLabel.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            
            levelTextLabel.topAnchor.constraint(equalTo: cashBackLabel.bottomAnchor, constant: 10),
            levelTextLabel.leadingAnchor.constraint(equalTo: valueCashBackLabel.trailingAnchor, constant: 52),
            
            lineViewBottom.heightAnchor.constraint(equalToConstant: 1),
            lineViewBottom.topAnchor.constraint(equalTo: valueCashBackLabel.bottomAnchor, constant: 10),
            lineViewBottom.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            lineViewBottom.trailingAnchor.constraint(equalTo: cardCellView.trailingAnchor, constant: -20),
            
            reviewImageView.topAnchor.constraint(equalTo: lineViewBottom.bottomAnchor, constant: 20),
            reviewImageView.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            
            deleteImageView.centerYAnchor.constraint(equalTo: reviewImageView.centerYAnchor),
            deleteImageView.leadingAnchor.constraint(equalTo: reviewImageView.trailingAnchor, constant: 40),
            
            moreButton.topAnchor.constraint(equalTo: lineViewBottom.bottomAnchor, constant: 10),
            moreButton.trailingAnchor.constraint(equalTo: cardCellView.trailingAnchor, constant: -20)
        ])
    }
}
