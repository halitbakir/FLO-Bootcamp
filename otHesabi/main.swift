//  Created by Halit Bakır on 25.05.2023.
import Foundation

func tazelikEtkisi(tazelik: Double, fiyat: Double) -> Double {
    if tazelik == 1 {
        return fiyat * 0.1
    } else {
        return fiyat * -0.2
    }
}

func otBirimFiyat() {
    let otTurleri = ["Keklik Otu", "Nane Otu", "Fesleğen Otu", "Reyhan Otu"]
    let fiyatlar = [10.0, 8.0, 12.0, 15.0]
    
    print("Otlar:")
    for (index, ot) in otTurleri.enumerated() {
        print("\(index + 1). \(ot)")
    }
    
    print("Müşteri Bilgileri:")
    print("------------------")
    
    print("Ot Türü: ")
    let otTuru = Int(readLine()!) ?? 0
    
    print("Miktar: ")
    let miktar = Double(readLine()!) ?? 0.0
    
    print("Tazelik Durumu (1 - Taze, 0 - Değil): ")
    let tazelik = Double(readLine()!) ?? 0.0
    
    let secilenOtIndex = otTuru - 1
    
    if secilenOtIndex >= 0 && secilenOtIndex < otTurleri.count {
        let fiyat = fiyatlar[secilenOtIndex]
        let tazelikEtkisi = tazelikEtkisi(tazelik: tazelik, fiyat: fiyat)
        
        var toplamTutar = fiyat * miktar
        
        toplamTutar += tazelikEtkisi
        
        print("Toplam Tutar: \(toplamTutar) TL")
    }
}

otBirimFiyat()
