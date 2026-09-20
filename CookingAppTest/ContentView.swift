import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            let myCustomColor = Color(
                red: 75/255,
                green: 35/255,
                blue: 10/255
            )

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
                    Text("Recipe Title")
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
                            
                            Text("- chicken\n- rice\n- salt\n- pepper")
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

                        Text("1. Preheat oven to 375\n2. Make the marinade\n3. Mix")
                            .foregroundColor(.white)
                            .font(.body)
                            .padding(.horizontal, 10)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 15)


                Spacer()


                // Next user
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
                    
                    VStack {
                        Text("looks good!")
                            .foregroundColor(.white)
                            .padding(.leading, 20)

                    }
                    
                }
                .padding(.horizontal, 15)
            }
            
            
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .leading
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

