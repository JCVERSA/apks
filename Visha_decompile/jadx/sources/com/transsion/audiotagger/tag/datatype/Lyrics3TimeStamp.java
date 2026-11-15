package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;

public class Lyrics3TimeStamp extends AbstractDataType {
    private long minute;
    private long second;

    public Lyrics3TimeStamp(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
        this.minute = 0L;
        this.second = 0L;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Lyrics3TimeStamp)) {
            return false;
        }
        Lyrics3TimeStamp lyrics3TimeStamp = (Lyrics3TimeStamp) obj;
        return this.minute == lyrics3TimeStamp.minute && this.second == lyrics3TimeStamp.second && super.equals(obj);
    }

    public long getMinute() {
        return this.minute;
    }

    public long getSecond() {
        return this.second;
    }

    @Override
    public int getSize() {
        return 7;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        readString(bArr.toString(), i);
    }

    public void readString(String str) {
    }

    public void setMinute(long j) {
        this.minute = j;
    }

    public void setSecond(long j) {
        this.second = j;
    }

    public void setTimeStamp(long j, byte b) {
        long j2 = j / 1000;
        this.minute = j2 / 60;
        this.second = j2 % 60;
    }

    public String toString() {
        return writeString();
    }

    @Override
    public byte[] writeByteArray() {
        return writeString().getBytes(StandardCharsets.ISO_8859_1);
    }

    public String writeString() {
        String str;
        String str2;
        long j = this.minute;
        String str3 = "[";
        if (j < 0) {
            str = "[00";
        } else {
            if (j < 10) {
                str3 = "[0";
            }
            str = str3 + Long.toString(this.minute);
        }
        String str4 = str + ':';
        long j2 = this.second;
        if (j2 < 0) {
            str2 = str4 + "00";
        } else {
            if (j2 < 10) {
                str4 = str4 + '0';
            }
            str2 = str4 + Long.toString(this.second);
        }
        return str2 + ']';
    }

    public void readString(String str, int i) {
        if (str == null) {
            throw new NullPointerException("Image is null");
        }
        if (i < 0 || i >= str.length()) {
            throw new IndexOutOfBoundsException("Offset to timeStamp is out of bounds: offset = " + i + ", timeStamp.length()" + str.length());
        }
        String strSubstring = str.substring(i);
        if (strSubstring.length() == 7) {
            this.minute = Integer.parseInt(strSubstring.substring(1, 3));
            this.second = Integer.parseInt(strSubstring.substring(4, 6));
        } else {
            this.minute = 0L;
            this.second = 0L;
        }
    }

    public Lyrics3TimeStamp(String str) {
        super(str, null);
        this.minute = 0L;
        this.second = 0L;
    }

    public Lyrics3TimeStamp(Lyrics3TimeStamp lyrics3TimeStamp) {
        super(lyrics3TimeStamp);
        this.minute = 0L;
        this.second = 0L;
        this.minute = lyrics3TimeStamp.minute;
        this.second = lyrics3TimeStamp.second;
    }
}
