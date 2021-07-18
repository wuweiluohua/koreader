-- we can read Lua syntax here!
local Device = require("device")

return {
    gesture_fm = {
        tap_top_left_corner = nil,
        tap_top_right_corner = nil,
        tap_right_bottom_corner = nil,
        tap_left_bottom_corner = Device:hasFrontlight() and {toggle_frontlight = true,} or nil,
        hold_top_left_corner = nil,
        hold_top_right_corner = {refresh_content = true,},
        hold_bottom_left_corner = nil,
        hold_bottom_right_corner = nil,
        one_finger_swipe_left_edge_down = Device:hasFrontlight() and {decrease_frontlight = 0,} or nil,
        one_finger_swipe_left_edge_up = Device:hasFrontlight() and {increase_frontlight = 0,} or nil,
        one_finger_swipe_right_edge_down = Device:hasNaturalLight() and {decrease_frontlight_warmth = 0,} or nil,
        one_finger_swipe_right_edge_up = Device:hasNaturalLight() and {increase_frontlight_warmth = 0,} or nil,
        one_finger_swipe_top_edge_right = nil,
        one_finger_swipe_top_edge_left = nil,
        one_finger_swipe_bottom_edge_right = nil,
        one_finger_swipe_bottom_edge_left = nil,
        double_tap_left_side = nil,
        double_tap_right_side = nil,
        double_tap_top_left_corner = nil,
        double_tap_top_right_corner = nil,
        double_tap_bottom_left_corner = nil,
        double_tap_bottom_right_corner = nil,
        two_finger_tap_top_left_corner = nil,
        two_finger_tap_top_right_corner = nil,
        two_finger_tap_bottom_left_corner = nil,
        two_finger_tap_bottom_right_corner = nil,
        short_diagonal_swipe = {full_refresh = true,},
        multiswipe = {},
        multiswipe_west_east = {},
        multiswipe_east_west = {},
        multiswipe_north_east = {},
        multiswipe_north_west = {folder_shortcuts = true,},
        multiswipe_north_south = {folder_up = true,},
        multiswipe_east_north = {history = true,},
        multiswipe_west_north = {},
        multiswipe_east_south = {go_to = true,},
        multiswipe_south_north = {},
        multiswipe_south_east = {},
        multiswipe_south_west = {show_frontlight_dialog = true,},
        multiswipe_west_south = {back = true,},
        multiswipe_north_south_north = {},
        multiswipe_south_north_south = {},
        multiswipe_west_east_west = {open_previous_document = true,},
        multiswipe_east_west_east = {favorites = true,},
        multiswipe_east_north_west = {},
        multiswipe_south_east_north = {},
        multiswipe_east_north_west_east = {},
        multiswipe_south_east_north_south = {},
        multiswipe_east_south_west_north = {full_refresh = true,},
        multiswipe_southeast_northeast = {},
        multiswipe_northwest_southwest_northwest = Device:hasWifiToggle() and {toggle_wifi = true,} or {},
        multiswipe_southeast_southwest_northwest = Device:hasWifiToggle() and {wifi_off = true,} or {},
        multiswipe_southeast_northeast_northwest = Device:hasWifiToggle() and {wifi_on = true,} or {},
        two_finger_swipe_east = nil,
        two_finger_swipe_west = {folder_shortcuts = true,},
        two_finger_swipe_south = Device:hasFrontlight() and {decrease_frontlight = 0,} or nil,
        two_finger_swipe_north = Device:hasFrontlight() and {increase_frontlight = 0,} or nil,
        two_finger_swipe_northeast = nil,
        two_finger_swipe_northwest = nil,
        two_finger_swipe_southeast = nil,
        two_finger_swipe_southwest = nil,
        spread_gesture = nil,
        pinch_gesture = nil,
    },
    gesture_reader = {
        tap_top_left_corner = {toggle_page_flipping = true,},
        tap_top_right_corner = {toggle_bookmark = true,},
        tap_right_bottom_corner = nil,
        tap_left_bottom_corner = Device:hasFrontlight() and {toggle_frontlight = true,} or nil,
        hold_top_left_corner = nil,
        hold_top_right_corner = nil,
        hold_bottom_left_corner = nil,
        hold_bottom_right_corner = nil,
        one_finger_swipe_left_edge_down = Device:hasFrontlight() and {decrease_frontlight = 0,} or nil,
        one_finger_swipe_left_edge_up = Device:hasFrontlight() and {increase_frontlight = 0,} or nil,
        one_finger_swipe_right_edge_down = Device:hasNaturalLight() and {decrease_frontlight_warmth = 0,} or nil,
        one_finger_swipe_right_edge_up = Device:hasNaturalLight() and {increase_frontlight_warmth = 0,} or nil,
        one_finger_swipe_top_edge_right = nil,
        one_finger_swipe_top_edge_left = nil,
        one_finger_swipe_bottom_edge_right = nil,
        one_finger_swipe_bottom_edge_left = nil,
        double_tap_left_side = {page_jmp = -10,},
        double_tap_right_side = {page_jmp = 10,},
        double_tap_top_left_corner = nil,
        double_tap_top_right_corner = nil,
        double_tap_bottom_left_corner = nil,
        double_tap_bottom_right_corner = nil,
        two_finger_tap_top_left_corner = nil,
        two_finger_tap_top_right_corner = nil,
        two_finger_tap_bottom_left_corner = nil,
        two_finger_tap_bottom_right_corner = nil,
        short_diagonal_swipe = {full_refresh = true,},
        multiswipe = {}, -- otherwise registerGesture() won't pick up on multiswipes
        multiswipe_west_east = {previous_location = true,},
        multiswipe_east_west = {latest_bookmark = true,},
        multiswipe_north_east = {toc = true,},
        multiswipe_north_west = {bookmarks = true,},
        multiswipe_north_south = {},
        multiswipe_east_north = {history = true,},
        multiswipe_west_north = {book_status = true,},
        multiswipe_east_south = {go_to = true,},
        multiswipe_south_north = {skim = true,},
        multiswipe_south_east = {toggle_reflow = true,},
        multiswipe_south_west = {show_frontlight_dialog = true,},
        multiswipe_west_south = {back = true,},
        multiswipe_north_south_north = {prev_chapter = true,},
        multiswipe_south_north_south = {next_chapter = true,},
        multiswipe_west_east_west = {open_previous_document = true,},
        multiswipe_east_west_east = {favorites = true,},
        multiswipe_east_north_west = {zoom = "contentwidth",},
        multiswipe_south_east_north = {zoom = "contentheight",},
        multiswipe_east_north_west_east = {zoom = "pagewidth",},
        multiswipe_south_east_north_south = {zoom = "pageheight",},
        multiswipe_east_south_west_north = {full_refresh = true,},
        multiswipe_southeast_northeast = {follow_nearest_link = true,},
        multiswipe_northwest_southwest_northwest = Device:hasWifiToggle() and {toggle_wifi = true,} or {},
        multiswipe_southeast_southwest_northwest = Device:hasWifiToggle() and {wifi_off = true,} or {},
        multiswipe_southeast_northeast_northwest = Device:hasWifiToggle() and {wifi_on = true,} or {},
        two_finger_swipe_east = {toc = true,},
        two_finger_swipe_west = {bookmarks = true,},
        two_finger_swipe_south = Device:hasFrontlight() and {decrease_frontlight = 0,} or nil,
        two_finger_swipe_north = Device:hasFrontlight() and {increase_frontlight = 0,} or nil,
        two_finger_swipe_northeast = nil,
        two_finger_swipe_northwest = nil,
        two_finger_swipe_southeast = nil,
        two_finger_swipe_southwest = nil,
        spread_gesture = {increase_font = 0,},
        pinch_gesture = {decrease_font = 0,},
    },
    custom_multiswipes = {},
}
