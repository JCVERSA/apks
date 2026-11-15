package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.TagException;
import com.transsion.audiotagger.tag.TagNotFoundException;
import com.transsion.audiotagger.tag.id3.AbstractTag;
import com.transsion.audiotagger.tag.id3.ID3Tags;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.Iterator;

public class Lyrics3v1 extends AbstractLyrics3 {
    private String lyric;

    public Lyrics3v1() {
        this.lyric = "";
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof Lyrics3v1) && this.lyric.equals(((Lyrics3v1) obj).lyric) && super.equals(obj);
    }

    @Override
    public String getIdentifier() {
        return "Lyrics3v1.00";
    }

    public String getLyric() {
        return this.lyric;
    }

    @Override
    public int getSize() {
        return this.lyric.length() + 20;
    }

    @Override
    public boolean isSubsetOf(Object obj) {
        return (obj instanceof Lyrics3v1) && ((Lyrics3v1) obj).lyric.contains(this.lyric);
    }

    @Override
    public Iterator iterator() {
        throw new UnsupportedOperationException("Method iterator() not yet implemented.");
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws TagException {
        byte[] bArr = new byte[5120];
        if (!seek(byteBuffer)) {
            throw new TagNotFoundException("ID3v1 tag not found");
        }
        byteBuffer.get(bArr);
        String str = new String(bArr);
        this.lyric = str.substring(0, str.indexOf("LYRICSEND"));
    }

    @Override
    public boolean seek(ByteBuffer byteBuffer) {
        return false;
    }

    public void setLyric(String str) {
        this.lyric = ID3Tags.truncate(str, 5100);
    }

    public String toString() {
        return (getIdentifier() + " " + getSize() + "\n") + this.lyric;
    }

    @Override
    public void write(RandomAccessFile randomAccessFile) throws IOException {
        delete(randomAccessFile);
        randomAccessFile.seek(randomAccessFile.length());
        byte[] bArr = new byte[this.lyric.length() + 20];
        for (int i = 0; i < 11; i++) {
            bArr[i] = (byte) "LYRICSBEGIN".charAt(i);
        }
        String strTruncate = ID3Tags.truncate(this.lyric, 5100);
        for (int i2 = 0; i2 < strTruncate.length(); i2++) {
            bArr[i2 + 11] = (byte) strTruncate.charAt(i2);
        }
        int length = strTruncate.length();
        int i3 = 11 + length;
        for (int i4 = 0; i4 < 9; i4++) {
            bArr[i4 + i3] = (byte) "LYRICSEND".charAt(i4);
        }
        randomAccessFile.write(bArr, 0, length + 20);
    }

    public boolean seek(RandomAccessFile randomAccessFile) throws IOException {
        long filePointer;
        byte[] bArr = new byte[5120];
        randomAccessFile.seek(randomAccessFile.length() - 137);
        randomAccessFile.read(bArr, 0, 9);
        if (new String(bArr, 0, 9).equals("LYRICSEND")) {
            filePointer = randomAccessFile.getFilePointer();
        } else {
            randomAccessFile.seek(randomAccessFile.length() - 9);
            randomAccessFile.read(bArr, 0, 9);
            if (!new String(bArr, 0, 9).equals("LYRICSEND")) {
                return false;
            }
            filePointer = randomAccessFile.getFilePointer();
        }
        long j = filePointer - 5120;
        randomAccessFile.seek(j);
        randomAccessFile.read(bArr);
        int iIndexOf = new String(bArr).indexOf("LYRICSBEGIN");
        if (iIndexOf == -1) {
            return false;
        }
        randomAccessFile.seek(j + ((long) iIndexOf) + 11);
        return true;
    }

    public Lyrics3v1(Lyrics3v1 lyrics3v1) {
        super(lyrics3v1);
        this.lyric = "";
        this.lyric = lyrics3v1.lyric;
    }

    public Lyrics3v1(AbstractTag abstractTag) {
        Lyrics3v2 lyrics3v2;
        this.lyric = "";
        if (abstractTag != null) {
            if (!(abstractTag instanceof Lyrics3v1)) {
                if (abstractTag instanceof Lyrics3v2) {
                    lyrics3v2 = (Lyrics3v2) abstractTag;
                } else {
                    lyrics3v2 = new Lyrics3v2(abstractTag);
                }
                this.lyric = ((FieldFrameBodyLYR) lyrics3v2.getField(Lyrics3v2Fields.FIELD_V2_LYRICS_MULTI_LINE_TEXT).getBody()).getLyric();
                return;
            }
            throw new UnsupportedOperationException("Copy Constructor not called. Please type cast the argument");
        }
    }

    public Lyrics3v1(ByteBuffer byteBuffer) throws TagNotFoundException, IOException {
        this.lyric = "";
        try {
            read(byteBuffer);
        } catch (TagException e) {
            e.printStackTrace();
        }
    }
}
