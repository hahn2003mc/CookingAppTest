import SwiftUI

struct ContentView: View {
    let myCustomColor = Color(
        red: 60/255,
        green: 30/255,
        blue: 5/255
    )
    
    var body: some View {
        ZStack(alignment: .top) {
            // Background to cover the safe areas completely
            myCustomColor
                .ignoresSafeArea()

            // Main Scrollable Area
            ScrollView {
                ZStack {
                    myCustomColor
                        .ignoresSafeArea()
                    
                    VStack(alignment: .leading, spacing: 0) {
                        
                        // Profile picture and username
                        HStack {
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                            
                            Text("sample_user_12")
                                .foregroundColor(.white)
                                .font(.title2)
                                .bold()
                        }
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
                        
                        
                        // Image of post
                        HStack {
                            Image("birria")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400)
                                .clipped()
                        }
                        .padding(.bottom, 5)
                        
                        // Likes comments etc
                        HStack {
                            HStack {
                                Image(systemName: "heart")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                
                                Text("2.7k")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .bold()
                            }
                            .padding(.horizontal, 10)
                            
                            HStack {
                                Image(systemName: "paperplane")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                
                                Text("361")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .bold()
                            }
                            .padding(.horizontal, 10)
                            
                            HStack {
                                Image(systemName: "star")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                
                                Text("4.3")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .bold()
                            }
                            .padding(.horizontal, 10)
                        }
                        
                        
                        // Recipe information
                        VStack(alignment: .leading, spacing: 2) {
                            
                            // Title
                            Text("Birria Quesadillas")
                                .foregroundColor(.white)
                                .font(.title)
                                .bold()
                            
                            
                            // Ingredients and overview
                            HStack {
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Ingredients")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .bold()
                                    
                                    Text("- 2lb Chuck Roast\n- Ancho Chiles\n- Salt (or substitute adobo\n- Tortillas or taco shells")
                                        .foregroundColor(.white)
                                        .font(.body)
                                        .padding(.horizontal, 10)
                                }
                                Spacer()
                                VStack(spacing: 5) {
                                    Text("Overview")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .bold()
                                    VStack (spacing: 5) {
                                        Text("6-8 hours")
                                            .foregroundColor(.white)
                                            .font(.body)
                                            .padding(.horizontal, 10)
                                        Text("Serves 8")
                                            .foregroundColor(.white)
                                            .font(.body)
                                            .padding(.horizontal, 10)
                                    }
                                }.padding(.trailing, 30)
                            }
                            
                            
                            // Steps
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Steps")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .bold()
                                
                                Text("1. Pour broth and chiles into crockpot, turn to low\n2. Oil a pan and place on high heat, sear the roast 1 min each side\n3. Place beef into crockpot and cover with the remainder of chiles and fajita vegatables\n4. Cook for 6 hours on LOW or 4 hours on HIGH\n5. Dip tortilla in consomme and sear on medium high heat, adding toppings after 1 minute")
                                    .foregroundColor(.white)
                                    .font(.body)
                                    .padding(.horizontal, 10)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 5)
                        
                        
                        Spacer()
                        
                        
                        // Comments section
                        VStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text("Comments")
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title2)
                            }
                            VStack(spacing: 5) {
                                VStack {
                                    HStack {
                                        Image(systemName: "globe")
                                            .imageScale(.large)
                                            .foregroundColor(.white)
                                        
                                        Text("sample_user_28")
                                            .foregroundColor(.white)
                                            .bold()
                                        //.background(.white)
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        Text("looks good!")
                                            .foregroundColor(.white)
                                            .padding(.leading, 20)
                                        
                                    }
                                }
                                VStack {
                                    HStack {
                                        Image(systemName: "globe")
                                            .imageScale(.large)
                                            .foregroundColor(.white)
                                        
                                        Text("sample_user_28")
                                            .foregroundColor(.white)
                                            .bold()
                                        //.background(.white)
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        Text("wow!")
                                            .foregroundColor(.white)
                                            .padding(.leading, 20)
                                        
                                        
                                    }
                                }
                                
                                VStack {
                                    HStack {
                                        Image(systemName: "globe")
                                            .imageScale(.large)
                                            .foregroundColor(.white)
                                        
                                        Text("sample_user_28")
                                            .foregroundColor(.white)
                                            .bold()
                                        //.background(.white)
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        Text("totally making this!")
                                            .foregroundColor(.white)
                                            .padding(.leading, 20)
                                        
                                        
                                    }
                                }
                            }
                            .padding(.leading, 10)
                            
                        }
                        .padding(.bottom, 15)
                    }
                    .padding(.horizontal, 10)
                    
                    
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .leading
                    )
                }
            }
            .padding(.top, 60) // space between header and scrollview
            .ignoresSafeArea(edges: .top)
            
            // Top header
            HStack {
                Text("Recirepo")
                    .foregroundColor(.white)
                    .font(.title3)
                    .bold()
                
                Spacer()
                
                Text(Date(), style: .time)
                    .foregroundColor(.white)
                    .font(.headline)
                    .bold()
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .padding(.top, 5)
            .padding(.leading, 25)
            .padding(.trailing, 25)
            .background(myCustomColor)
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
