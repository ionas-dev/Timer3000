//
//  ClockViewModelProtocol.swift
//  Timer3000
//
//  Created by Jonas Kaiser on 10.04.21.
//

import SwiftUI

protocol ClockViewModelProtocol: ObservableObject {
    var minutes_left_double: CGFloat { get set }
    var minutes_knob_angle: CGFloat { get }
    var minutes_total_double: CGFloat { get }
    var minutes_circle_radius: CGFloat { get }
    
    var seconds_left_double: CGFloat { get set }
    var seconds_knob_angle: CGFloat { get }
    var seconds_total_double: CGFloat { get }
    var seconds_circle_radius: CGFloat { get }
    
    var hours_left_double: CGFloat { get set }
    var hours_knob_angle: CGFloat { get }
    var hours_total_double: CGFloat { get }
    var hours_circle_radius: CGFloat { get }
    
    var minimum_value: CGFloat { get }
    var knob_radius: CGFloat { get }
    
    var paused: Bool { get set }
    var start_pause: String { get }
    
    var speaker_image: String { get }
    
    func minutes_slider_change(location: CGPoint)
    func seconds_slider_change(location: CGPoint)
    func hours_slider_change(location: CGPoint)
    
    func timer_start_stop()
    
    func mute_unmute()
    
    func get_defaults()
}