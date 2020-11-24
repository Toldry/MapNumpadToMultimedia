#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#InstallKeybdHook
#InstallMouseHook
#KeyHistory 100
;;;;;;;; https://www.maketecheasier.com/schedule-autohotkey-startup-windows/
;;;;;;;; https://wiki.hydrogenaud.io/index.php?title=Foobar2000:Preferences:General:Keyboard_Shortcuts

#Include %A_ScriptDir%
#Include Spotify.ahk
spoofy := new Spotify


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


	
Numpad0::OpenAndFocusOnSpotify()
NumpadIns::OpenAndFocusOnSpotify()

OpenAndFocusOnSpotify() 
{
  IfWinActive, ahk_exe Spotify.exe 
  {
    WinMinimize
  }
  else 
  {
    IfWinExist ahk_exe Spotify.exe
    {
      WinActivate, ahk_exe Spotify.exe
    }
    else 
    {
      Run, C:\Users\Alon Eitan\AppData\Roaming\Spotify\Spotify.exe    
    }
  }
  return
}

Numpad1::Volume_Mute
NumpadEnd::Volume_Mute

Numpad2::Volume_Down
NumpadDown::Volume_Down

Numpad3::Volume_Up
NumpadPgDn::Volume_Up
	
Numpad4::Media_Prev
NumpadLeft::Media_Prev

Numpad5::Media_Stop
NumpadClear::Media_Stop

Numpad6::Media_Next
NumpadRight::Media_Next

NumpadDiv:: 
spoofy.Player.SaveCurrentlyPlaying() ; Alias for .Player.GetCurrentPlaybackInfo().Track.Save()
Return

NumpadMult::
spoofy.Player.UnSaveCurrentlyPlaying() ; Alias for .Player.GetCurrentPlaybackInfo().Track.Save()
Return

NumpadAdd::Media_Play_Pause
NumpadEnter::Media_Play_Pause