//
//  DayliStrerchView.swift
//  Sumo sport
//
//  Created by Improve on 11.12.2024.
//

import SwiftUI

struct DayliStrerchView: View {
    @AppStorage("wasTrained") var wasTrained = false
    
    var wgrvergv = "sfvg efg"
    var rwv3rgv = 355
    func wrver() -> Double {
        return 2524524
    }
    func wfrvcwrfv() {
        print("wverwvgfr")
    }
    var wrfcrw = [242424:"wrfcwrfc"]
    var hrunfcr = 3434
    
    var body: some View {
        VStack {
            Image("stretch.start")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                NavigationLink {
                    TrainingViewGarasport(sportType: .stretch)
                } label: {
                    Text("Start")
                        .withFont(size: 18, weight: .medium, color: .hex("2E023F"))
                        .padding(.vertical, 11)
                        .padding(.horizontal, 30)
                        .background(Color.hex("FEE600"))
                        .cornerRadius(13.17)
                }.grayscale(wasTrained ? 1: 0)
                    .disabled(wasTrained)
                
                if wasTrained {
                    Text("Come back tomorrow")
                        .withFont(size: 15, weight: .bold)
                }
            }
        }
    }
}

#Preview {
    ContentViewGarasport(showLoading: false, selectedTab: .stretch)
}
