//
//  main.swift
//  yatirimRobot
//
//  Created by Halit Bakır on 30.05.2023.
//

import Foundation

let dolarKur = 8.3
let dolarDegisimOrani = 20
let avroKur = 10.1
let avroDegisimOrani = 10
let altinKur = 510
let altinDegisimOrani = 15
let gumusKur = 7.5
let gumusDegisimOrani = 20
let faizOrani = 15
let bitcoinKur = 1000
let bitcoinDegisimOrani = 25

func hesaplaYatirimSonucu(ad: String, soyad: String, yatirimTutari: Double, riskIstahi: Int) {
    let yatirimSecenekleri = ["Dolar", "Avro", "Altın", "Gümüş", "Faiz", "Bitcoin"]
    let yatirimSecimi = yatirimSecenekleri[riskIstahi-1]
    var gelir: Double = 0
    
    print("Yatırımcı: \(ad) \(soyad)")
    print("Yatırım Tutarı: \(yatirimTutari) TL")
    print("Risk İştahı: \(riskIstahi)")
    print("Yatırım Seçimi: \(yatirimSecimi)")
    
    switch yatirimSecimi {
    case "Dolar":
        gelir = yatirimTutari * Double(dolarDegisimOrani) / 100
        print("Dolar Yatırımı Sonucu:")
    case "Avro":
        gelir = yatirimTutari * Double(avroDegisimOrani) / 100
        print("Avro Yatırımı Sonucu:")
    case "Altın":
        gelir = yatirimTutari * Double(altinDegisimOrani) / 100
        print("Altın Yatırımı Sonucu:")
    case "Gümüş":
        gelir = yatirimTutari * Double(gumusDegisimOrani) / 100
        print("Gümüş Yatırımı Sonucu:")
    case "Faiz":
        gelir = yatirimTutari * Double(faizOrani) / 100
        print("Faiz Yatırımı Sonucu:")
    case "Bitcoin":
        gelir = yatirimTutari * Double(bitcoinDegisimOrani) / 100
        print("Bitcoin Yatırımı Sonucu:")
    default:
        print("Geçersiz bir yatırım seçimi yapıldı.")
        return
    }
    
    let toplamTutar = yatirimTutari + gelir
    let karYuzdesi = (gelir / yatirimTutari) * 100
    
    print("Yatırım Getirisi: \(gelir) TL")
    print("Toplam Tutar: \(toplamTutar) TL")
    print("Kar Yüzdesi: \(karYuzdesi)%")
}

print("*** Yatırım v1.0 ***")
print("Yatırımcının Adı: ")
let ad = readLine() ?? ""
print("Yatırımcının Soyadı: ")
let soyad = readLine() ?? ""
print("Yatırım Tutarı: ")
let yatirimTutariString = readLine() ?? ""
let yatirimTutari = Double(yatirimTutariString) ?? 0
print("Risk İştahı (1-6 arası): ")
let riskIstahiString = readLine() ?? ""
let riskIstahi = Int(riskIstahiString) ?? 0

print("** Yatırım Sonucu **")

hesaplaYatirimSonucu(ad: ad, soyad: soyad, yatirimTutari: yatirimTutari, riskIstahi: riskIstahi)

