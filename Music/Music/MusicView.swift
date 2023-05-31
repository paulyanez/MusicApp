//
//  MusicView.swift
//  MusicApp
//
//  Created by Paul Yanez on 5/31/23.
//

import SwiftUI

struct MusicView: View {
    @State var selectedIndex = 4
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                Music2()
                    .tabItem {
                        Label("Listen Now", systemImage: "play.circle.fill")
                    }.tag(0)
                
                Music2()
                    .tabItem {
                        Label("Browse", systemImage: "square.grid.2x2.fill")
                    }.tag(1)
                
                Music2()
                    .tabItem {
                        Label("Radio", systemImage: "dot.radiowaves.left.and.right")
                    }.tag(2)
                
                Music2()
                    .tabItem {
                        Label("Library", systemImage: "square.stack.fill")
                    }.tag(3)
                
                    .toolbarBackground(.visible, for: .tabBar)
                
                Music2()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }.tag(4)
            }
            .tint(Color.pink)
            .statusBarHidden(true)
        }
    }
}

struct Music2: View {
    @Environment(\.colorScheme) var colorScheme
   
    var body: some View {
        NavigationView {
            VStack {
                topNav
                    .overlay{
                        overlay
                            .offset(y: 62)
                    }

                ZStack {
                    musicListView
                    playertView
                }
            }
            .accentColor(.pink)
        }
    }
    
    var topNav: some View {
        VStack {
            ZStack {
                Image("Music")
                    .resizable()
                    .scaledToFill()
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .ignoresSafeArea()
                    .toolbar {
                        ToolbarItemGroup(placement: .navigationBarLeading) {
                            HStack(spacing: 0.0) {
                                Button(action: {
                                    // action to perform when button is tapped
                                }) {
                                    Image(systemName: "chevron.backward.circle.fill")
                                        .font(.title2)
                                        .symbolRenderingMode(colorScheme == .dark ? .hierarchical : .palette)
                                        .fontWeight(.regular)
                                        .foregroundStyle(.pink, .white)
                                }
                            }
                        }
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            HStack(spacing: 0.0) {
                                Button(action: {
                                    // action to perform when button is tapped
                                }) {
                                    Image(systemName: "star.circle.fill")
                                        .font(.title2)
                                        .symbolRenderingMode(colorScheme == .dark ? .hierarchical : .palette)
                                        .fontWeight(.thin)
                                        .foregroundStyle(.pink, .white)
                                }
                                
                                Button(action: {
                                    // code
                                }) {
                                    Image(systemName: "ellipsis.circle.fill")
                                        .font(.title2)
                                        .symbolRenderingMode(colorScheme == .dark ? .hierarchical : .palette)
                                        .fontWeight(.thin)
                                        .foregroundStyle(.pink, .white)

                                }
                            }
                        }
                    }
    
                Spacer()
            }
        }
    }
    
    
    var overlay: some View {
        VStack {
            VStack(spacing: 4.0) {
                Text("Tití Me Preguntó")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                Text("Bad Bunny")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                
                Text("MADISON SQUARE GARDEN - 2023")
                    .font(.caption2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white.opacity(0.7))
                    .padding(2)
            }
            .padding(.bottom, 14)
            
            HStack(spacing: 12.0) {
                Button(action: {
                    // code
                }) {
                    HStack {
                        Image(systemName: "play.fill")
                            .foregroundColor(Color.pink)
                        
                        Text("Play")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(.pink)
                            .padding(.vertical, 11)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.white)
                    }
                }
                
                Button(action: {
                    // code
                }) {
                    HStack {
                        Image(systemName: "shuffle")
                            .fontWeight(.medium)
                            .foregroundColor(Color.pink)
                        
                        Text("Shuffle")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(.pink)
                            .padding(.vertical, 11)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.white)
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width - 40)
        .frame(height: 170)
        .background(.black.opacity(0.65))
        .background(.thickMaterial.opacity(0.05))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .offset(y: 6)
    }
    
    // Music list
    var musicListView: some View {
        VStack(alignment: .leading) {
            List {
                HStack {
                    Image("music-14")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Human Behavior")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Bjork")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("artist-melanie")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("The Contortionist")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Melanie Martinez")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
    
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                
                HStack {
                    Image("music-5")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Basket Case")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Green Day")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                
                HStack {
                    Image("artist-kanye")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Gold Digger")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Kanye")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                
                HStack {
                    Image("artist-21savage")
                        .resizable()
                        .scaledToFill()
                        .scaleEffect(x: 1.2, y: 1.2)
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Creepin'")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("21 Savage")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("music-8")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Loser")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Beck")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("artist-harry")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Sign of the Times")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Harry Styles")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                        
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("music-12")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("High Horse")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Kacey Musgraves")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("artist-rihanna")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 4.0) {
                        Text("Diamonds")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Rihanna")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                HStack {
                    Image("music-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 65)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Optimistic")
                            .font(.callout)
                            .fontWeight(.medium)
                        
                        Text("Kid A")
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.horizontal, 6)
                    
                    Spacer()
                }
                .frame(height: 50)
                .padding(.bottom, 80)
            }
            .padding(.top, -40)
            .listStyle(.plain)
            .environment(\.defaultMinListRowHeight, 1)
            .scrollIndicators(.hidden)
        }
    }
    
    // Player control
    var playertView: some View {
        VStack(spacing: 0.0) {
            Spacer()
            ZStack {
                HStack {
                    Image("music-14")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    
                    Text("Bjork - Homogenic")
                        .font(.callout)
                        .lineLimit(1)
                        .foregroundColor(.primary)
                        .padding(.horizontal, 6)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "pause.fill")
                                .font(.title2)
                                .foregroundColor(Color.primary)
                        }
                    }
                    .padding(.trailing, 6)
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "forward.fill")
                                .font(.title2)
                                .foregroundColor(Color.primary)
                        }
                    }
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(.ultraThinMaterial.opacity(1))
                
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 2)
                        .offset(y: 40)
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(.pink)
                                .frame(width: 240, alignment: .leading)
                                .frame(height: 2)
                                .offset(y: 40)
                        }
                    
                }
            }
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
            //.preferredColorScheme(.dark)
    }
}
