package com.transsion.audiotagger.audio.mp4.atom;

public class NullPadding extends Mp4BoxHeader {
    public NullPadding(long j, long j2) {
        setFilePos(j);
        this.length = (int) (j2 - j);
    }
}
