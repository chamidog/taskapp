//
//  Task.swift
//  taskapp
//
//  Created by 三坂真治 on 2019/07/05.
//  Copyright © 2019 shinji.misaka. All rights reserved.
//
//Realmのモデルは、Swiftのクラスとして定義します。KVOとはプロパティの変更を監視するための仕組み
import RealmSwift

class Task: Object {
    
    // 管理用 ID。プライマリーキー
    @objc dynamic var id = 0
    
    // タイトル
    @objc dynamic var title = ""
    
    // 内容
    @objc dynamic var contents = ""
    
    // 日時
    @objc dynamic var date = Date()
    
    // カテゴリ
    @objc dynamic var category = ""
    
    /**
     id をプライマリーキーとして設定
     */
    //データベースでそれぞれのデータを一意に識別するためのID
    override static func primaryKey() -> String? {
        return "id"
    }
    
}
