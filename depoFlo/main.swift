//  Created by Halit Bakır on 26.05.2023.
//
import Foundation

var stoklar: [String: Int] = [:]

func menuGoster() {
    print("---- DepoFLO v1.0 ----")
    print("1- Mal Ekle")
    print("2- Mal Çıkart")
    print("3- Stok Listele")
    print("Seçim:")
}

func malEkle() {
    let urunKodu = malTuruMenu()
    let miktar = miktarGir()
    
    stoklar[urunKodu, default: 0] += miktar
    print("Mal stoklara eklendi.")
}

func malCikart() {
    let urunKodu = malTuruMenu()
    let miktar = miktarGir()
    
    if let stokMiktari = stoklar[urunKodu], stokMiktari >= miktar {
        stoklar[urunKodu] = stokMiktari - miktar
        print("Mal stoklardan çıkartıldı.")
    } else {
        print("Stokta yeterli ürün bulunmamaktadır.")
    }
}

func malTuruMenu() -> String {
    print("1- Ayakkabı (U01)")
    print("2- Çanta (U02)")
    print("3- Gözlük (U03)")
    print("Seçim=")
    
    let secim = Int(readLine() ?? "") ?? 0
    
    switch secim {
    case 1:
        return "U01"
    case 2:
        return "U02"
    case 3:
        return "U03"
    default:
        return ""
    }
}

func miktarGir() -> Int {
    print("Miktar=")
    
    return Int(readLine() ?? "") ?? 0
}

func listele() {
    for (urunKodu, stokMiktari) in stoklar {
        print("\(urunKodu) stok miktarı: \(stokMiktari)")
    }
}

var secim = 0

while secim != 4 {
    menuGoster()
    
    secim = Int(readLine() ?? "") ?? 0
    
    switch secim {
    case 1:
        malEkle()
    case 2:
        malCikart()
    case 3:
        listele()
    case 4:
        print("Program sonlandırıldı.")
    default:
        print("Geçersiz seçim.")
    }
}


