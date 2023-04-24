//
//  DetailView.swift
//  MyFriends
//
//  Created by yeon on 2023/04/24.
//

import SwiftUI

struct DetailView: View {
    var friend : Friend =  Friend (
        name: "Cheetah",
        description: "The cheetah (Acinonyx jubatus) is a large cat native to Africa and Southwest Asia (today restricted to central Iran). It is the fastest land animal, capable of running at 80 to 98 km/h (50 to 61 mph), as such has evolved specialized adaptations for speed, including a light build, long thin legs and a long tail. It typically reaches 67–94 cm (26–37 in) at the shoulder, and the head-and-body length is between 1.1 and 1.5 m (3 ft 7 in and 4 ft 11 in). Adults weigh between 21 and 72 kg (46 and 159 lb). Its head is small and rounded, with a short snout and black tear-like facial streaks. The coat is typically tawny to creamy white or pale buff and is mostly covered with evenly spaced, solid black spots. Four subspecies are recognised.",
        imageName: "Cheetah",
        link: "https://en.wikipedia.org/wiki/Cheetah")
    
    var body: some View {
        Form {
            Section {
                Image("\(friend.imageName)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("\(friend.description)")
            }
            Section {
                Button {
                    let url = URL(string : "\(friend.link)")!
                    
                    UIApplication.shared.open(url)
                    
                } label: {
                    Text("Read more no Wikipedia")
                }

            }
        }
        .navigationTitle("\(friend.name)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView()
        }
    }
}
