//  Created by Halit Bakır on 30.05.2023.

import Foundation

let cevherler = [
    "DMR": ("Demir", 1500),
    "KRM": ("Krom", 5000),
    "BKR": ("Bakır", 3000),
    "KMR": ("Kömür", 500)
]

func taneEtkisi(taneKodu: Int) -> Double {
    let etkiler = [
        1: -15.0,
        2: -10.0,
        3: 0.0
    ]
    
    return etkiler[taneKodu] ?? 0.0
}

func birimFiyat(cevherKodu: String, taneKodu: Int, temizlikOrani: Double) -> Double {
    let cevher = cevherler[cevherKodu]!
    let cevherFiyat = Double(cevher.1)
    let taneEtki = taneEtkisi(taneKodu: taneKodu)
    let fiyatDegisimOrani = (taneEtki + temizlikOrani) / 100.0
    
    return cevherFiyat + (cevherFiyat * fiyatDegisimOrani)
}

// main
print("*** Cevher v1.0 ***")
print("Müşterinin adını ve soyadını girin:")
if let musteriAdiSoyadi = readLine() {
    print("Satılacak olan cevherin kodunu girin:")
    if let cevherKodu = readLine() {
        print("Tane büyüklüğünün kodunu girin:")
        if let taneKoduStr = readLine(), let taneKodu = Int(taneKoduStr) {
            print("Temizlik oranını girin (%):")
            if let temizlikOraniStr = readLine(), let temizlikOrani = Double(temizlikOraniStr) {
                let fiyat = birimFiyat(cevherKodu: cevherKodu, taneKodu: taneKodu, temizlikOrani: temizlikOrani)
                let miktar = 1.0 // Satılan cevher miktarı, burada 1 olarak varsayıldı
                let toplam = fiyat * miktar
                let kdv = toplam * 0.18
                let genelToplam = toplam + kdv
                
                print("-------- FATURA --------")
                print("Müşteri: \(musteriAdiSoyadi)")
                print("Cevher: \(cevherler[cevherKodu]!.0)")
                print("Tane: \(taneKodu)")
                print("Temizlik Oranı: \(temizlikOrani)%")
                print("Birim Fiyat: \(fiyat) TL")
                print("Miktar: \(miktar)")
                print("Toplam: \(toplam) TL")
                print("KDV (%18): \(kdv) TL")
                print("Genel Toplam: \(genelToplam) TL")
                print("------------------------")
            } else {
                print("Hatalı temizlik oranı girişi!")
            }
        } else {
            print("Hatalı tane kodu girişi!")
        }
    } else {
        print("Hatalı cevher kodu girişi!")
    }
} else {
    print("Hatalı müşteri adı ve soyadı girişi!")
}
