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
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        cardCellView.addSubview(lineView)
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
            
            lineView.heightAnchor.constraint(equalToConstant: 1),
            lineView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            lineView.leadingAnchor.constraint(equalTo: cardCellView.leadingAnchor, constant: 20),
            lineView.trailingAnchor.constraint(equalTo: cardCellView.trailingAnchor, constant: -20)
        ])
    }
}
