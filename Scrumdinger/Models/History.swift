//
//  History.swift
//  Scrumdinger
//
//  Created by Scott on 12/27/20.
//

import Foundation

struct History: Identifiable, Codable {
	let id: UUID
	let date: Date
	var attendees: [String]
	var lengthInMinutes: Int
	
	init(id: UUID = UUID(), date: Date = Date(), attendees: [String], lengthInMinutes: Int) {
		self.id 							= id
		self.date 						= date
		self.attendees 				= attendees
		self.lengthInMinutes 	= lengthInMinutes
	}
}
