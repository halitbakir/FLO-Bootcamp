//
//  IkinciViewController.swift
//  FamousQuotes
//
//  Created by Halit Bakır on 21.06.2023.
//

import UIKit

class IkinciViewController: UIViewController {

    @IBOutlet weak var erkek: UIImageView!
    @IBOutlet weak var cerceve: UIImageView!
    
    @IBOutlet weak var ozluSoz: UITextView!
    @IBOutlet weak var yazar: UILabel!
    
    let ozluSozler = [
        "I'm not here to be perfect, I'm here to be real." ,
        "I'm not interested in money. I just want to be wonderful." ,
        "The only thing that feels better than winning is winning when nobody thought you could.",
        "Success is not final, failure is not fatal: It is the courage to continue that counts.",
        "If you can dream it, you can do it.",
        "If you want something done, ask a busy person to do it.",
        "If your actions inspire others to dream more, learn more, do more and become more, you are a leader.",
        "The best way to find out if you can trust somebody is to trust them.",
        "The only Limit to our realization of tomorrow will be our doubts of today.",
        "We may encounter many defeats but we must not be defeated.",
        "The most important thing is to enjoy your life - to be happy - it's all that matters.",
        "Your time is limited, don't waste it living someone else's life.",
        "The best way to find out what you want in life is to try a lot of things.",
        "In order to be truly happy, you must pursue your dreams and goals.",
        "You can have anything you want if you are willing to give up everything you have.",
        "Don't let anyone tell you what you can't do. Follow your dreams and persist.",
        "If you want something you've never had, you must be willing to do something you've never done.",
        "Everything happens for a reason." ,
        "You only live once, but if you do it right, once is enough.",
        "Life is what we make it and how we make it – whether we realize it or not.",
        "The road to success is always under construction.",
        "I'm not a self-made man. I've had a lot of help.",
        "If you don't build your dream, someone else will hire you to help them build theirs.",
        "You've got to be in it to win it.",
        "Success is stumbling from failure to failure with no loss of enthusiasm.",
        "People often say that motivation doesn't last. Well, neither does bathing. That's why we recommend it daily.",
        "If you want to make your dreams come true, the first thing you have to do is wake up.",
        "The only limit to our realization of tomorrow will be our doubts of today.",
        "We may encounter many defeats but we must not be defeated.",
        "Be persistent and never give up hope.",
        "The best way to find out if you can trust somebody is to trust them.",
        "The only way to do great work is to love what you do.",
        "If you want to live a happy life, tie it to a goal, not to people or things.",
        "If you can't handle me at my worst, then you sure as hell don't deserve me at my best.",
        "I can't change the direction of the wind, but I can adjust my sails to always reach my destination.",
        "The only Limit to our realization of tomorrow will be our doubts of today.",
        "Don't let yesterday take up too much of today.",
        "It is never too late to be what you might have been.",
        "Don't walk in front of me; I may not follow. Don't walk behind me; I may not lead. Walk beside me; just be my friend.",
        "I can accept failure, everyone fails at something. But I can't accept not trying.",
        "I have a dream.",
        "The greatest glory in living lies not in never falling, but in rising every time we fall.",
        "The way to get started is to quit talking and begin doing.",
        "So we beat on, boats against the current, borne back ceaselessly into the past.",
        "A journey of a thousand miles begins with a single step.",
        "Don't judge each day by the harvest you reap but by the seeds that you plant.",
        "If you want to make your dreams come true, the first thing you have to do is wake up.",
        "I can't change the direction of the wind, but I can adjust my sails to always reach my destination.",
        "Believe you can and you're halfway there.",
        "The best and most beautiful things in the world cannot be seen or even heard, but must be felt with the heart."
    ]
    
    let yazarlar = [
        "Lady Gaga",
        "Marilyn Monroe",
        "Hank Aaron",
        "Winston Churchill",
        "Walt Disney",
        "Laura Ingalls Wilder",
        "John Quincy Adams",
        "Ernest Hemingway",
        "Franklin D. Roosevelt",
        "Maya Angelou",
        "Steve Jobs",
        "Steve Jobs",
        "Oprah Winfrey",
        "Oprah Winfrey",
        "Oprah Winfrey",
        "Barack Obama",
        "Unknown",
        "Unknown",
        "Mae West",
        "Napoleon Hill",
        "Lily Tomlin",
        "Stan Lee",
        "Tony Gaskins",
        "Tony Robbins",
        "Winston Churchill",
        "Zig Ziglar",
        "J.M. Power",
        "Franklin D. Roosevelt",
        "Maya Angelou",
        "George Lucas",
        "Ernest Hemingway",
        "Steve Jobs",
        "Albert Einstein",
        "Marilyn Monroe",
        "Jimmy Dean",
        "Franklin D. Roosevelt",
        "Will Rogers",
        "George Eliot",
        "Albert Camus",
        "Michael Jordan",
        "Martin Luther King Jr.",
        "Nelson Mandela",
        "Walt Disney",
        "F. Scott Fitzgerald",
        "Lao Tzu",
        "Robert Louis Stevenson",
        "J.M. Power",
        "Jimmy Dean",
        "Theodore Roosevelt",
        "Helen Keller"
        ]
    
    let kadinYazar = [
        "Lady Gaga",
        "Marilyn Monroe",
        "Laura Ingalls Wilder",
        "Maya Angelou",
        "Oprah Winfrey",
        "Mae West",
        "Lily Tomlin",
        "Helen Keller"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func yenidenGetirTiklandi(_ sender: Any) {
        let randomIndex = Int.random(in: 0..<ozluSozler.count)
        ozluSoz.text = ozluSozler[randomIndex]
        yazar.text = yazarlar[randomIndex]
        
        
        let secilenYazar = yazarlar[randomIndex]
        
        if kadinYazar.contains(secilenYazar) {
            erkek.image = UIImage(named: "kadin.png")
        } else {
            erkek.image = UIImage(named: "erkek.png")
        }
        
        
    }
    
    
}
