//
//  MusicApp.swift
//  Music
//
//  Created by Paul Yanez on 5/31/23.
//

import SwiftUI

@main
struct MusicApp: App {
    var body: some Scene {
        WindowGroup {
            MusicView()
                .preferredColorScheme(.light)
        }
    }
}
