;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Emulate OSX keymap layout
; on a Windows Keyboard
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; # Win
; ! Alt
; ^ Control
; + Shift

;Command-backspace deletes whole line
#BS::Send {LShift down}{Home}{LShift Up}{Del}

;alt-delete deletes previous word
!BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}

; Navigation of smaller chunks (skip word)
#Left::Send {ctrl down}{Left}{ctrl up}
#Right::Send {ctrl down}{Right}{ctrl up}

; Navigation using of bigger chunks (Skip to start/end of line/paragraph/document)
!Left::Send {Home}
!Right::Send {End}
!Up::Send {LCtrl down}{Home}{LCtrl up}
!Down::Send {LCtrl down}{End}{LCtrl up}

; Selection (uses a combination of the above with shift)
<#+Left::Send {ctrl down}{shift down}{Left}{shift up}{ctrl up}
<#+Right::Send {ctrl down}{shift down}{Right}{shift up}{ctrl up}
!+Left::Send {shift down}{Home}{shift up}
!+Right::Send {shift down}{End}{shift up}
;!+Up::Send {ctrl down}{shift down}{Up}{shift up}{ctrl up}
;!+Down::Send {ctrl down}{shift down}{Down}{shift up}{ctrl up}
!+Up::Send {Lctrl down}{shift down}{Home}{shift up}{Lctrl up}
!+Down::Send {Lctrl down}{shift down}{End}{shift up}{Lctrl up}

;Closing windows and programs (using the Win Key)
!w::Send {LCtrl down}{F4}{LCtrl up}
!q::!F4

;The following section replaces Ctrl+Key with  Win+Key
!a::Send {LCtrl down}{a}{LCtrl up}
!b::Send {LCtrl down}{b}{LCtrl up}
!c::Send {LCtrl down}{c}{LCtrl up}
!d::Send {LCtrl down}{d}{LCtrl up}
!e::Send {LWin down}{e}{LWin up}
;following won't remap using the normal method
!f::Send {LCtrl down}{f}{LCtrl up}
!g::Send {LCtrl down}{g}{LCtrl up}
!h::Send {LCtrl down}{h}{LCtrl up}
!i::Send {LCtrl down}{i}{LCtrl up}
!j::Send {LCtrl down}{j}{LCtrl up}
!k::Send {LCtrl down}{k}{LCtrl up}
;#l::Send {LCtrl down}{l}{LCtrl up} ;disabled, I like winkey-L
!m::Send {LCtrl down}{m}{LCtrl up}
!n::Send {LCtrl down}{n}{LCtrl up}
!o::Send {LCtrl down}{o}{LCtrl up}
!p::Send {LCtrl down}{p}{LCtrl up}
!r::Send {LCtrl down}{r}{LCtrl up}
!s::Send {LCtrl down}{s}{LCtrl up}
!t::Send {LCtrl down}{t}{LCtrl up}
!u::Send {LCtrl down}{u}{LCtrl up}
!v::Send {LCtrl down}{v}{LCtrl up}
!x::Send {LCtrl down}{x}{LCtrl up}
!y::Send {LCtrl down}{y}{LCtrl up}
!z::Send {LCtrl down}{z}{LCtrl up}
!1::Send {LCtrl down}{1}{LCtrl up}
!2::Send {LCtrl down}{2}{LCtrl up}
!3::Send {LCtrl down}{3}{LCtrl up}
!4::Send {LCtrl down}{4}{LCtrl up}
!5::Send {LCtrl down}{5}{LCtrl up}
!6::Send {LCtrl down}{6}{LCtrl up}
!7::Send {LCtrl down}{7}{LCtrl up}
!8::Send {LCtrl down}{8}{LCtrl up}
!9::Send {LCtrl down}{9}{LCtrl up}
!0::Send {LCtrl down}{0}{LCtrl up}