'**********************************************************
'**  Audio Player Example Application - Audio Playback
'**  November 2009
'**  Copyright (c) 2009 Roku Inc. All Rights Reserved.
'**********************************************************

' Kexp support routines

Function CreateERSongList() as Object
    aa = CreateObject("roAssociativeArray")
    aa.posteritems = CreateObject("roArray", 10, true)
    song = CreateSong("Enternity Radio","Live MP3 Internet Radio Stream","Many", "mp3", "http://eternityreadyradio.out.airtime.pro:8000/eternityreadyradio_b","https://www.eternityreadyradio.com/player/tmp/images/logo.1599501258.png")
    aa.posteritems.push(song)
    m.screen.Show()
    return aa
End Function

Sub DoKexp(from as string)
    'Since there is only one item, go right into playing the Kexp stream
    SongList = CreateKexpSongList()
    Show_Audio_Screen(songlist.posteritems[0], from)
End Sub
