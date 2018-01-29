//
//  CurrentTime.swift
//  Alarm2018
//
//  Created by 比江嶋龍也 on 2018/01/10.
//  Copyright © 2018年 比江嶋龍也. All rights reserved.
//実行したら、現在の時、分、秒の３つのInt型が自由にもらえるようなのをつくる。
//実現はクラスメゾッドという機能をつかった。わざわざこのクラスの内部変数などを保持する必要を感じず、インスタンス化する必要もないと感じたからです
/*
 使い方としては、現在の時間（時、分、秒）を何らかの変数に取り込みたいときは、
 var currentHour = CurrentTime.getCurrentHour()
 とすればいいとおもいます。上では時を表していますが、分の場合は下のメゾッドを
 getCurrentMinute()と、秒の場合はgetCurrentSecond()とつかってください。。
*/

import Foundation

class CurrentTime{
    static func getCurrentHour() -> Int{
        let myDate = Date()
        let myCalendar = Calendar.current
        let Chour = myCalendar.component(.hour, from: myDate)
        return Chour
    }
    
    static func getCurrentMinute() -> Int{
        let myDate = Date()
        let myCalendar = Calendar.current
        let Cminute = myCalendar.component(.minute, from: myDate)
        return Cminute
    }
    
    static func getCurrentSecond() -> Int{
        let myDate = Date()
        let myCalendar = Calendar.current
        let Csecond = myCalendar.component(.second, from: myDate)
        return Csecond
    }
    
}



