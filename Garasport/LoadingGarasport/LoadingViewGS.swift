//
//  LoadingView.swift
//  Sg western star
//
//  Created by Uniqit on 16.07.2024.
//
import SwiftUI

struct LoadingViewGarasport: View {
    @AppStorage("firstInApp") var firstInApp = true
    var jnir = 235
    @Binding var showView: Bool
    @State var rotation: CGFloat = 0
    
      var wgrvergv = "sfvg efg"
    var rwv3rgv = 355
    func wrver() -> Double {
        return 2524524
    }
    func wfrvcwrfv() {
        print("wverwvgfr")
    }
    var wrfcrw = [242424:"wrfcwrfc"]
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                
                Image("loading 2")
                    .rotationEffect(.degrees(rotation))
                    .animation(.linear, value: rotation)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 0.004, repeats: true) { timer in
                            guard showView else { timer.invalidate(); return }
                            
                            rotation += 1
                        }
                    }
               
                
                Text("Loading...")
                    .withFont(size: 30, weight: .medium)
                    .padding(.bottom, 30)
                
                Spacer()
            }.background(2)
            
            PrivacyViewGarasport(showLoading: $showView)
                .opacity(firstInApp ? 1: 0)
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    if !firstInApp {
                        showView = false
                    }
                }
            }
        }
    }
    
}


#Preview {
    LoadingViewGarasport(showView: .constant(true))
}

