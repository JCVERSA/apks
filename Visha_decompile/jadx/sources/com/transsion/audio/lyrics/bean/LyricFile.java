package com.transsion.audio.lyrics.bean;

import java.util.List;

public class LyricFile {
    List<String> allLines;
    int offset;

    public List<String> getAllLines() {
        return this.allLines;
    }

    public int getOffset() {
        return this.offset;
    }

    public void setAllLines(List<String> list) {
        this.allLines = list;
    }

    public void setOffset(int i) {
        this.offset = i;
    }
}
