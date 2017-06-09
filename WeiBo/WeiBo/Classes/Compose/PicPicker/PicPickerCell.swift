//
//  PicPickerCell.swift
//  
//
//  Created by 渠晓友 on 2017/6/9.
//
//

import UIKit

class PicPickerCell: UICollectionViewCell {
    
    
    var image : UIImage?{
        didSet{
            // 让自己Btn展示对应的图片
            if image != nil {
                addBtn.setBackgroundImage(image, for: .normal)
                addBtn.isUserInteractionEnabled = false
                deleteBtn.isHidden = false
            }else{
                addBtn.setBackgroundImage(UIImage(named : "compose_pic_add"), for: .normal)
                addBtn.isUserInteractionEnabled = true
                deleteBtn.isHidden = true
            }
            
        }
    }
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var deleteBtn: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}



// MARK: - 事件监听
extension PicPickerCell{
    
    
    /// 添加Btn点击
    @IBAction func addPicBtnClick() {

        NotificationCenter.default.post(name: picPickerAddPhotoNote, object: nil)
    }
    
    /// 删除按钮的点击
    @IBAction func deletePciBtnClick() {
        
        NotificationCenter.default.post(name: picPickerDeletePhotoNote, object: nil)

    }
    
}
