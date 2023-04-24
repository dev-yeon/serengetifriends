//
//  ContentView.swift
//  MyFriends
//
//  Created by yeon on 2023/04/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var friendStore : FriendStore = FriendStore() //초기화
    
    
    var body: some View {
        NavigationStack {
            List (friendStore.friends) {
            friend in
                NavigationLink {
//                    Text("Hello, \(friend.name)")
                    DetailView(friend: friend)
                } label : {
                    VStack(alignment: .leading) {
                        Text("\(friend.name)")
                            .font(.headline)
                        
                        HStack (alignment: .top) {
                            Text("\(friend.preDescription)")
                            
                            Spacer()
                            
                            Image("\(friend.imageName)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width : 80)
                            
                        }
                    }
                }
            }
            .navigationTitle("Serengeti Friends")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
