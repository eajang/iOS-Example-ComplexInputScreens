//
//  SelectRoomTypeTableViewController.swift
//  ComplexInputScreensDemo
//
//  Created by Eunae Jang on 17/09/2019.
//  Copyright © 2019 Eunae Jang. All rights reserved.
//

import UIKit

protocol SelectRoomTypeTableViewControllerDelegate: class {
    func didSelect(roomType: RoomType)
}

class SelectRoomTypeTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        accessoryType = selected ? .checkmark : .none
    }
}

class SelectRoomTypeTableViewController: UITableViewController {
    
    var roomType: RoomType?
    
    weak var delegate: SelectRoomTypeTableViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44.0
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return RoomType.all.count
        } else {
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomCell", for: indexPath) as! SelectRoomTypeTableViewCell
        
        let roomTypes = RoomType.all
        cell.titleLabel?.text = roomTypes[indexPath.row].name
        cell.detailLabel?.text = "$ "+String(roomTypes[indexPath.row].price)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRoomType: RoomType = RoomType.all[indexPath.row]
        delegate?.didSelect(roomType: selectedRoomType)
    }

}
