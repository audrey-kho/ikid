//
//  ContentView.swift
//  iKid
//
//  Created by stlp on 5/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                ZStack {
                    Text("What is the opposite of a croissant?").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center)
                        .padding()
                        .tag(1)
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            NavigationLink(
                                destination: GoodView()) {
                                Text("Next").font(.system(size: 16)).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding(15)
                            }
                        }
                    }
                }
            }.navigationViewStyle(StackNavigationViewStyle()).tabItem { Label("Good", systemImage: "checkmark.seal") }
            
            NavigationView {
                ZStack {
                    Text("What sound did the dog make when it hit the wall?").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center)
                        .padding()
                        .tag(2)
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            NavigationLink(
                                destination: PunView()) {
                                Text("Next").font(.system(size: 16)).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding(15)
                            }
                        }
                    }
                }
            }.navigationViewStyle(StackNavigationViewStyle()).tabItem { Label("Pun", systemImage: "textformat") }
            
            NavigationView {
                ZStack {
                    Text("What do Alexander the Great and Winnie the Pooh have in common?").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center)
                        .padding()
                        .tag(3)
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            NavigationLink(
                                destination: DadView()) {
                                Text("Next").font(.system(size: 16)).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding(15)
                            }
                        }
                    }
                }
            }.navigationViewStyle(StackNavigationViewStyle()).tabItem { Label("Dad", systemImage: "person") }
            
            NavigationView {
                ZStack {
                    Text("Knock knock!").font(.title
                    ).multilineTextAlignment(.center)
                        .padding()
                        .tag(4)
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            NavigationLink(
                                destination: KnockView()) {
                                Text("Next").font(.system(size: 16)).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding(15)
                            }
                        }
                    }
                }
            }.navigationViewStyle(StackNavigationViewStyle()).tabItem { Label("Knock x2", systemImage: "speaker.2") }
            
            Image("meme")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .tag(5)
                .tabItem { Label("Meme", systemImage: "smiley") }
        }
    }
}

struct GoodView: View {
    
    var body: some View {
        Text("A happy uncle").font(.title
        ).multilineTextAlignment(.center)
            .padding()
    }
}

struct PunView: View {
    
    var body: some View {
        Text("PUG!").font(.title
        ).multilineTextAlignment(.center)
            .padding()
    }
}

struct DadView: View {
    
    var body: some View {
        Text("They have the same middle name").font(.title
        ).multilineTextAlignment(.center)
            .padding()
    }
}

struct KnockView: View {
    @State var text:[String] = ["Who's there?", "Control freak", "Con...", "Okay, now you say \"Control freak who?\""]
    @State var index:Int = 0
    @State var label:String = "Next"
    
    var body: some View {
        ZStack {
            Text(text[index])
                .font(.title
                ).multilineTextAlignment(.center)
                    .padding()
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        if (index < 3) {
                            index += 1
                            if (index == 3) {
                                label = ""
                            }
                        }
                    }, label: {
                        Text(label).font(.system(size: 16)).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding(15)
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
