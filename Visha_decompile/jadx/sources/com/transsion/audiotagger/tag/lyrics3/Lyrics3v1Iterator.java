package com.transsion.audiotagger.tag.lyrics3;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class Lyrics3v1Iterator implements Iterator<String> {
    private int lastIndex = 0;
    private int removeIndex = 0;
    private Lyrics3v1 tag;

    public Lyrics3v1Iterator(Lyrics3v1 lyrics3v1) {
        this.tag = lyrics3v1;
    }

    @Override
    public boolean hasNext() {
        return this.tag.getLyric().indexOf(10, this.lastIndex) >= 0 || this.lastIndex <= this.tag.getLyric().length();
    }

    @Override
    public void remove() {
        this.tag.setLyric(this.tag.getLyric().substring(0, this.removeIndex) + this.tag.getLyric().substring(this.lastIndex));
    }

    @Override
    public String next() {
        int iIndexOf = this.tag.getLyric().indexOf(10, this.lastIndex);
        int i = this.lastIndex;
        this.removeIndex = i;
        if (i < 0) {
            throw new NoSuchElementException("Iteration has no more elements.");
        }
        String strSubstring = iIndexOf >= 0 ? this.tag.getLyric().substring(this.lastIndex, iIndexOf) : this.tag.getLyric().substring(this.lastIndex);
        this.lastIndex = iIndexOf;
        return strSubstring;
    }
}
