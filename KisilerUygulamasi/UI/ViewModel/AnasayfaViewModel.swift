//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by Mahmut Arslan on 11.05.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
   
    var krepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    init(){
        veriTabaniKopyala()
        kisilerListesi = krepo.kisilerListesi
        kisileriYukle()
        
        
    }
    
    func sil(kisi_id: Int){
        krepo.sil(kisi_id: kisi_id)
        kisileriYukle()

    }
    func ara(aramakelimesi:String){
        krepo.ara(aramKelimesi: aramakelimesi)
    }
    
    func kisileriYukle(){
        krepo.kisileriYukle()

    }
    
    func veriTabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "rehber", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: kopyalanacakYer.path){
            print("Veritabanı zaten var")
        }else {
            do {
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }catch{}
        }
    }

    
}
