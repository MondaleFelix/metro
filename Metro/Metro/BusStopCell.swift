//
//  BusStopCell.swift
//  Metro
//
//  Created by Mondale on 3/17/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class BusStopCell: UITableViewCell {

    let busStopNumber = UILabel()
    let busStopName = UILabel()
    let firstArrivalTime = UILabel()
    let secondArrivalTime = UILabel()
    let thirdArrivalTime = UILabel()

    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureLabels()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

    
    private func configureLabels(){
        contentView.addSubview(busStopName)
        contentView.addSubview(busStopNumber)
        contentView.addSubview(firstArrivalTime)
        contentView.addSubview(secondArrivalTime)
        contentView.addSubview(thirdArrivalTime)
        
        
        NSLayoutConstraint.activate([
        
        
        
        
        
        
        
        
        
        
        ])
    }
}
