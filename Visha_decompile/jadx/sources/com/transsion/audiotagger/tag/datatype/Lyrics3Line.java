package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import java.util.Iterator;
import java.util.LinkedList;

public class Lyrics3Line extends AbstractDataType {
    private String lyric;
    private LinkedList<Lyrics3TimeStamp> timeStamp;

    public Lyrics3Line(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
        this.timeStamp = new LinkedList<>();
        this.lyric = "";
    }

    public void addLyric(String str) {
        this.lyric += str;
    }

    public void addTimeStamp(Lyrics3TimeStamp lyrics3TimeStamp) {
        this.timeStamp.add(lyrics3TimeStamp);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Lyrics3Line)) {
            return false;
        }
        Lyrics3Line lyrics3Line = (Lyrics3Line) obj;
        return this.lyric.equals(lyrics3Line.lyric) && this.timeStamp.equals(lyrics3Line.timeStamp) && super.equals(obj);
    }

    public String getLyric() {
        return this.lyric;
    }

    @Override
    public int getSize() {
        Iterator<Lyrics3TimeStamp> it = this.timeStamp.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().getSize();
        }
        return size + this.lyric.length();
    }

    public Iterator<Lyrics3TimeStamp> getTimeStamp() {
        return this.timeStamp.iterator();
    }

    public boolean hasTimeStamp() {
        return !this.timeStamp.isEmpty();
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        readString(bArr.toString(), i);
    }

    public void readString(String str, int i) {
        if (str == null) {
            throw new NullPointerException("Image is null");
        }
        if (i < 0 || i >= str.length()) {
            throw new IndexOutOfBoundsException("Offset to line is out of bounds: offset = " + i + ", line.length()" + str.length());
        }
        this.timeStamp = new LinkedList<>();
        int iIndexOf = str.indexOf("[", i);
        while (iIndexOf >= 0) {
            i = str.indexOf("]", iIndexOf) + 1;
            Lyrics3TimeStamp lyrics3TimeStamp = new Lyrics3TimeStamp("Time Stamp");
            lyrics3TimeStamp.readString(str.substring(iIndexOf, i));
            this.timeStamp.add(lyrics3TimeStamp);
            iIndexOf = str.indexOf("[", i);
        }
        this.lyric = str.substring(i);
    }

    public void setLyric(String str) {
        this.lyric = str;
    }

    public void setTimeStamp(Lyrics3TimeStamp lyrics3TimeStamp) {
        this.timeStamp.clear();
        this.timeStamp.add(lyrics3TimeStamp);
    }

    public String toString() {
        Iterator<Lyrics3TimeStamp> it = this.timeStamp.iterator();
        String str = "";
        while (it.hasNext()) {
            str = str + it.next().toString();
        }
        return "timeStamp = " + str + ", lyric = " + this.lyric + "\n";
    }

    @Override
    public byte[] writeByteArray() {
        return writeString().getBytes(StandardCharsets.ISO_8859_1);
    }

    public String writeString() {
        Iterator<Lyrics3TimeStamp> it = this.timeStamp.iterator();
        String str = "";
        while (it.hasNext()) {
            str = str + it.next().writeString();
        }
        return str + this.lyric;
    }

    public void addLyric(ID3v2LyricLine iD3v2LyricLine) {
        this.lyric += iD3v2LyricLine.getText();
    }

    public void setLyric(ID3v2LyricLine iD3v2LyricLine) {
        this.lyric = iD3v2LyricLine.getText();
    }

    public Lyrics3Line(Lyrics3Line lyrics3Line) {
        super(lyrics3Line);
        this.timeStamp = new LinkedList<>();
        this.lyric = "";
        this.lyric = lyrics3Line.lyric;
        for (int i = 0; i < lyrics3Line.timeStamp.size(); i++) {
            this.timeStamp.add(new Lyrics3TimeStamp(lyrics3Line.timeStamp.get(i)));
        }
    }
}
