//
//  KisiKayitVeiwModel.swift
//  KisilerUygulamasi
//
//  Created by Mahmut Arslan on 11.05.2024.
//

import Foundation

class KisiKayitVeiwModel {
    var krepo = KisilerDaoRepository()
    
    func kaydet(kisi_ad:String,kisi_tel:String){
        krepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)

}
}
