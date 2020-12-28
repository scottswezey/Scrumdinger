//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Scott on 12/27/20.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
	@State private var scrums = DailyScrum.data
	
	var body: some Scene {
		WindowGroup {
			NavigationView {
				ScrumsView(scrums: $scrums)
			}
		}
	}
}
