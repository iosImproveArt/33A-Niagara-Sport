


import SwiftUI

struct HomeViewGarasport: View {
    @AppStorage("secondsWaste") var secondsWaste = 0
    @AppStorage("wasTrained") var wasTrained = false
    
    @AppStorage("favourite") var favourite = ""
    
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
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    NavigationLink {
                        TrainingViewGarasport(sportType: .cricket)
                    } label: {
                        Image("cricket.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewGarasport(sportType: .football)
                    } label: {
                        Image("football.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewGarasport(sportType: .basketball)
                    } label: {
                        Image("basketball.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewGarasport(sportType: .volleyball)
                    } label: {
                        Image("volleyball.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewGarasport(sportType: .rugby)
                    } label: {
                        Image("rugby.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                }.padding(.horizontal, 8)

            }.padding(.horizontal, -12)
                .padding(.top)
                .scrollIndicators(.hidden)
            
            NavigationLink {
                TrainingViewGarasport(sportType: SportTypes(rawValue: favourite) ?? .basketball )
            } label: {
                Image("favourite.workout")
            }.padding(.vertical)
                .disabled(favourite == "")
                .grayscale(favourite == "" ? 1 : 0)
            
            ScrollView {
                statsView
                    .padding(.top, isSE ? 12: 30)
                    .padding(.bottom)
            }.gradientTopAndBottom()
                .scrollIndicators(.hidden)
                .padding(.top, -15)
            Spacer()
            
        }
    }
    
    private var statsView: some View {
        VStack(spacing: isSE ? 12: 20) {
            VStack {
                Image("workouts.label")
                Image("homefield.label")
                    .overlay {
                        Text(wasTrained ? "1": "0")
                            .withFont(size: 22.66, weight: .regular)
                    }
            }
            
            VStack {
                Image("workouttime.label")
                Image("homefield.label")
                    .overlay {
                        Text("\(secondsWaste / 60) min")
                            .withFont(size: 22.66, weight: .regular)
                    }
            }
            
            VStack {
                Image("lastworkout.label")
                Image("homefield.label")
                    .overlay {
                        Text(wasTrained ? formattedDateString(): "-")
                            .withFont(size: 22.66, weight: .regular)
                    }
            }
            
            VStack {
                Image("rating.label")
                Image("homefield.label")
                    .overlay {
                        Text(wasTrained ? "987/1000": "-/1000")
                            .withFont(size: 22.66, weight: .regular)
                    }
            }
        }
    }
}

#Preview {
    ContentViewGarasport(showLoading: false, selectedTab: .home)
}


enum Sports: String {
    case cricket = "Cricket"
    case football = "Football"
    case volleyball = "Volleyball"
    case basketball = "Basketball"
    case rugby = "Rugby"
    case fitneGarasport = "FitneGarasport"
    case yoga = "Yoga"
    case pilates = "Pilates"
    case stretch = "Stretch"
}
