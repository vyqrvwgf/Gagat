//
//  ArchiveTableCellView.swift
//  Gagat
//
//  Created by Tim Andersson on 2017-06-03.
//  Copyright © 2017 Cocoabeans Software. All rights reserved.
//

import UIKit

class ArchiveTableCellView: UITableViewCell {

	struct Style {
		var backgroundColor: UIColor
		var titleTextColor: UIColor
		var descriptionTextColor: UIColor

		static let light = Style(
			backgroundColor: .white,
			titleTextColor: .black,
			descriptionTextColor: UIColor(white: 0.4, alpha: 1.0)
		)

		static let dark = Style(
			backgroundColor: UIColor(white: 0.2, alpha: 1.0),
			titleTextColor: .white,
			descriptionTextColor: UIColor(white: 0.6, alpha: 1.0)
		)
	}

    @IBOutlet fileprivate weak var titleLabel: UILabel?
    @IBOutlet fileprivate weak var artworkImageView: UIImageView?
	@IBOutlet fileprivate weak var descriptionLabel: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        artworkImageView?.layer.cornerRadius = 10.0
    }

    func apply(style: Style) {
        backgroundColor = style.backgroundColor
        titleLabel?.textColor = style.titleTextColor
		descriptionLabel?.textColor = style.descriptionTextColor
    }

}
