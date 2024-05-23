//
//  KisiDetayViewModel.swift
//  KisilerUygulamasi
//
//  Created by Mahmut Arslan on 11.05.2024.
//

import Foundation


class KisiDetayViewModel {
    var grepo = KisilerDaoRepository()
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String){
        grepo.guncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)

}
    
    
}
