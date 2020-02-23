#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

;;;;;;;; https://www.maketecheasier.com/schedule-autohotkey-startup-windows/
;;;;;;;; https://wiki.hydrogenaud.io/index.php?title=Foobar2000:Preferences:General:Keyboard_Shortcuts


; Multimedia keys
;;	Browser_Back (Back)
;;	Browser_Forward (Forward)
;;	Browser_Refresh (Refresh)
;;	Browser_Stop (Stop)
;;	Browser_Search (Search)
;;	Browser_Favorites (Favorites)
;;	Browser_Home (Homepage)
;;	Volume_Mute (Mute the volume)
;;	Volume_Down (Lower the volume)
;;	Volume_Up (Increase the volume)
;;	Media_Next (Next Track)
;;	Media_Prev (Previous Track)
;;	Media_Stop (Stop)
;;	Media_Play_Pause (Play/Pause)
;;	Launch_Mail (Launch default e-mail program)
;;	Launch_Media (Launch default media player)
;;	Launch_App1 (Launch My Computer)
;;	Launch_App2 (Launch Calculator)


; Numpad keys
;;	Numpad0
;;	NumpadIns
;;	
;;	Numpad1
;;	NumpadEnd
;;	
;;	Numpad2
;;	NumpadDown
;;	
;;	Numpad3
;;	NumpadPgDn
;;	
;;	Numpad4
;;	NumpadLeft
;;	
;;	Numpad5
;;	NumpadClear
;;	
;;	Numpad6
;;	NumpadRight
;;	
;;	Numpad7
;;	NumpadHome
;;	
;;	Numpad8
;;	NumpadUp
;;	
;;	Numpad9
;;	NumpadPgUp
;;	
;;	NumpadDot
;;	NumpadDel
;;	
;;	NumpadDiv
;;	NumpadMult
;;	NumpadAdd
;;	NumpadSub
;;	NumpadEnter
;;	NumLock 


	
Numpad0::
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe
;;Run, C:\Users\Alon Eitan\AppData\Roaming\Spotify\Spotify.exe
return
NumpadIns::
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe
;;Run, C:\Users\Alon Eitan\AppData\Roaming\Spotify\Spotify.exe
return

Numpad1::Volume_Up
NumpadEnd::Volume_Up

Numpad2::Volume_Down
NumpadDown::Volume_Down

Numpad3::Volume_Mute
NumpadPgDn::Volume_Mute
	
Numpad4::Media_Prev
NumpadLeft::Media_Prev

Numpad5::Media_Stop
NumpadClear::Media_Stop

Numpad6::Media_Next
NumpadRight::Media_Next
;;	
;;	Numpad7::
;;	NumpadHome::
;;	
;;	Numpad8::
;;	NumpadUp::
;;	
;;	Numpad9::
;;	NumpadPgUp::
;;	
;;	NumpadDot::
;;	NumpadDel::
;;	
;;	NumLock ::


NumpadDiv::
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe /command:"Pause"
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe /command:"Show now playing in playlist"
;;Run, C:\Program Files (x86)\foobar2000\foobar2000.exe /playing_command:"Remove from playback queue"
Sleep, 100
Send, {Delete} ; Press delete key since the above line doesn't work for some reason
Sleep, 100
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe /next
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe /command:"Stop after current"
Sleep, 100
Send, {Alt down}
Send, {Tab}
Send, {Alt up}
return

;;NumpadMult::

NumpadSub::
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe /pause
;;Run, C:\Program Files (x86)\foobar2000\foobar2000.exe /playing_command:"Delete file(s)"
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe /command:"Show now playing in playlist"
Sleep, 100
Send, {F8} ;; I added F8 as a keybind in foobar's preferences to the "Delete file(s)" command
Sleep, 100
Send, {Left}
Sleep, 100
Send, {Enter}
Sleep, 100
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe /next
Run, C:\Program Files (x86)\foobar2000\foobar2000.exe /command:"Stop after current"
Sleep, 100
Send, {Alt down}
Send, {Tab}
Send, {Alt up}
return

NumpadAdd::Media_Play_Pause
NumpadEnter::Media_Play_Pause

#KeyHistory 0