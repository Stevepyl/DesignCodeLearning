//
//  AccountView.swift
//  DesignCode
//
//  Created by SteveLiu on 2022/7/22.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    @State var isPinned = false
    
    var body: some View {
        NavigationView {
            List{
                profile
                menu
                website
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
    
    var profile: some View {
        VStack(spacing: 8) {
            Image(systemName: "person.crop.circle.badge.checkmark")
                .symbolVariant(.fill)
                .font(.largeTitle)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(
                    HexagonView()
                        .offset(x: -50, y: -100)
                )
            Text("Steve Liu")
                .font(.title.weight(.semibold))
            HStack {
                Image(systemName: "location")
                    .imageScale(.small)
                Text("Singapore")
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
    
    var menu: some View {
        Section {
            NavigationLink
            { ContentView() } label: {
                Label("Settings", systemImage: "gear")
            }
            
            NavigationLink {
                Text("Billing")
            } label: {
                Label("Billing", systemImage: "creditcard")
            }
            
            NavigationLink { ContentView() } label: {
                Label("Help", systemImage: "questionmark")
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
        .listRowSeparatorTint(.blue)
    }
    
    var website: some View {
        Section {
            if false == isDeleted {
                Link(destination: URL(string: "https://apple.com")!) {
                    HStack {
                        Label("Website", systemImage: "house")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                    }
                }
                .swipeActions(edge: .leading ,allowsFullSwipe: true) {
                    deleteBtn
                    pinBtn
                }
            }
            /// button to bilibili.com
            Link(destination: URL(string: "https://bilibili.com")!) {
                HStack {
                    Label("bilibili", systemImage: "tv")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                pinBtn
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    
    var deleteBtn: some View {
        Button(action: { isDeleted = true }) {
            Label("Delete", systemImage: "trash")
        }.tint(.red.opacity(0.75))
    }
    
    var pinBtn: some View {
        Button { isPinned.toggle() } label: {
            if isPinned {
                Label("Unpin", systemImage: "pin.slash")
            } else {
                Label("Pin", systemImage: "pin")
            }
        }.tint(isPinned ? .gray :  .yellow.opacity(0.75))
    }
}


struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
