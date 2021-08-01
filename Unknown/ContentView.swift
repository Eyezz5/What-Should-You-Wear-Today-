//
//  ContentView.swift
//  Unknown
//
//  Created by Kareem Almomen on 7/31/21.
//

import SwiftUI

struct ContentView: View {
    @State private var degrees = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("What Should You Wear Today?")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                Spacer()
            TextField("Enter Temperature Here", text: $degrees)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
                Spacer()
                    Spacer()
                .onChange(of: degrees, perform : { value in
                    if let value = Int(value) {
                        if value < 60 {
                            imageName = "Coat"
                        }
                        if value >= 60 {
                            imageName = "Shirt"
                        }
                        if value >= 80 {
                            imageName = "Towel"
                        }
                    }
                })
            Image(imageName)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
