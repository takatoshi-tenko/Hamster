//
//  ContentView.swift
//  Hamster
//
//  Created by 天孝高俊 on 2024/02/12.
//

import SwiftUI
import CoreBluetooth

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        VStack {
            Button("他の端末と連携する") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("連携する"), message: Text("他の端末と連携する"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
