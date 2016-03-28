//
//  Movies.swift
//  MidTerm
//
//  Created by Ted on 3/28/16.
//  Copyright © 2016 Ted.Company. All rights reserved.
//

import Foundation

class Movies {
    var movieName: String?
    var showDate: String?
    var movieDetail: String?
    var coverImage: String?
}

class AllMovies {
    var arrayMovie: [Movies] = []
    init () {
        let movieOne: Movies = Movies()
        movieOne.movieName = "美國隊長：戰爭"
        movieOne.showDate = "2017 年 9 月 3 號"
        movieOne.movieDetail = "很多很多很多個超人在很多很多很多的場地用了很多很多很多的特殊能力以及很多很多很多的武器來跟其他很多很多很多的超人打了很多很多很多的架"
        movieOne.coverImage = "aMovie"
        
        let movieTwo: Movies = Movies()
        movieTwo.movieName = "蝙蝠俠與超人的特殊關係"
        movieTwo.showDate = "2016 年 3 月 25 號"
        movieTwo.movieDetail = "小時候蝙蝠俠跟超人都不認識長大以後他們互相相知相惜但是因為有一天他們為了搶一份報紙頭條相互看不順眼就打了起來結果蝙蝠俠作弊差點做掉了超人但是超人被女人救了然後又突然跑出一位辣妹超人結果他們就一起去執行人獸大戰"
        movieTwo.coverImage = "bMovie"
     
        arrayMovie = [movieOne, movieTwo]
        
    }
}