//
//  ContentView.swift
//  Bullseye
//
//  Created by Yusuf Berkay Girgin on 12.05.2022.
//

// course link: https://www.raywenderlich.com/28797859-your-first-ios-swiftui-app-polishing-the-app/lessons/1
import SwiftUI

struct ContentView: View {
  
  // states
  @State private var isAlertVisible: Bool = false
  @State private var sliderValue: Double = 50.0
  
  // create game instance
  @State private var game: Game = Game()
  
  var body: some View {
    VStack {
        VStack {
          Text("🎯🎯🎯 \n PUT THE BULLSEYE AS CLOSE AS YOU CAN DO")
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
          
          Text(String(game.target)) 
            .font(.largeTitle)
            .fontWeight(.black)
        }
        HStack {
          Text("1")
            .bold()
          Slider(value: self.$sliderValue, in: 1.0...100.0)
          Text("100").bold()
        }.padding()
      
      // action butonun direkt olarak içinde tanımlanıyor
      // eğitimdeki gibi herhangi bir action parametresi vermeye
      // gerek yok
      Button("Hit Me!") {
        isAlertVisible = true
      }.alert(isPresented: $isAlertVisible) {
        let roundedValue: Int = Int(self.sliderValue.rounded())
        
        return Alert(title: Text("🎉🎉🎉"),
              message: Text("The Current Value of Slider's is \(roundedValue) \n" + "You scored in this section: \(self.game.points(sliderValue: roundedValue))"),
              dismissButton: .default(Text("Awesome!!")))
      }
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewInterfaceOrientation(.portrait)
  }
}
