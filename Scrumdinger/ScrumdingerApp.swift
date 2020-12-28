//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Scott on 12/27/20.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
	@ObservedObject private var data = ScrumData()
	
	var body: some Scene {
		WindowGroup {
			NavigationView {
				ScrumsView(scrums: $data.scrums) {
					data.save()
				}
			}
			.onAppear(perform: data.load)
		}
	}
}
