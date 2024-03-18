//
//  SettingView.swift
//  MyTimer
//
//  Created by natsuko mizuno on 2024/03/11.
//

import SwiftUI

struct SettingView: View {
    
    @AppStorage("timer_value") var timeValue = 10
    
    var body: some View {
        ZStack {
            Color("backgroundSetting")
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                Text("\(timeValue)秒")
                    .font(.largeTitle)
                Spacer()
                
                Picker(selection: $timeValue) {
                    Text("10")
                        .tag(10)
                    Text("20")
                        .tag(20)
                    Text("30")
                        .tag(30)
                    Text("40")
                        .tag(40)
                    Text("50")
                        .tag(50)
                    Text("60")
                        .tag(10)
                } label: {
                    Text("秒数選択")
                }
                .pickerStyle(.wheel)
                
                Spacer()
            } //VStack
        } //ZStack
    }
}

#Preview {
    SettingView()
}
