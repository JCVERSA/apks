package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;

public class Lyrics3Image extends AbstractDataType {
    private String description;
    private String filename;
    private Lyrics3TimeStamp time;

    public Lyrics3Image(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
        this.time = null;
        this.description = "";
        this.filename = "";
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Lyrics3Image)) {
            return false;
        }
        Lyrics3Image lyrics3Image = (Lyrics3Image) obj;
        if (!this.description.equals(lyrics3Image.description) || !this.filename.equals(lyrics3Image.filename)) {
            return false;
        }
        Lyrics3TimeStamp lyrics3TimeStamp = this.time;
        if (lyrics3TimeStamp == null) {
            if (lyrics3Image.time != null) {
                return false;
            }
        } else if (!lyrics3TimeStamp.equals(lyrics3Image.time)) {
            return false;
        }
        return super.equals(obj);
    }

    public String getDescription() {
        return this.description;
    }

    public String getFilename() {
        return this.filename;
    }

    @Override
    public int getSize() {
        int length = this.filename.length() + 2 + this.description.length() + 2;
        Lyrics3TimeStamp lyrics3TimeStamp = this.time;
        return lyrics3TimeStamp != null ? length + lyrics3TimeStamp.getSize() : length;
    }

    public Lyrics3TimeStamp getTimeStamp() {
        return this.time;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        readString(bArr.toString(), i);
    }

    public void readString(String str, int i) {
        if (str == null) {
            throw new NullPointerException("Image string is null");
        }
        if (i < 0 || i >= str.length()) {
            throw new IndexOutOfBoundsException("Offset to image string is out of bounds: offset = " + i + ", string.length()" + str.length());
        }
        int iIndexOf = str.indexOf("||", i);
        this.filename = str.substring(i, iIndexOf);
        int i2 = iIndexOf + 2;
        int iIndexOf2 = str.indexOf("||", i2);
        this.description = str.substring(i2, iIndexOf2);
        String strSubstring = str.substring(iIndexOf2 + 2);
        if (strSubstring.length() == 7) {
            Lyrics3TimeStamp lyrics3TimeStamp = new Lyrics3TimeStamp("Time Stamp");
            this.time = lyrics3TimeStamp;
            lyrics3TimeStamp.readString(strSubstring);
        }
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setFilename(String str) {
        this.filename = str;
    }

    public void setTimeStamp(Lyrics3TimeStamp lyrics3TimeStamp) {
        this.time = lyrics3TimeStamp;
    }

    public String toString() {
        String str = "filename = " + this.filename + ", description = " + this.description;
        if (this.time != null) {
            str = str + ", timestamp = " + this.time.toString();
        }
        return str + "\n";
    }

    @Override
    public byte[] writeByteArray() {
        return writeString().getBytes(StandardCharsets.ISO_8859_1);
    }

    public String writeString() {
        String str;
        String str2;
        if (this.filename == null) {
            str = "||";
        } else {
            str = this.filename + "||";
        }
        if (this.description == null) {
            str2 = str + "||";
        } else {
            str2 = str + this.description + "||";
        }
        if (this.time == null) {
            return str2;
        }
        return str2 + this.time.writeString();
    }

    public Lyrics3Image(Lyrics3Image lyrics3Image) {
        super(lyrics3Image);
        this.time = null;
        this.description = "";
        this.filename = "";
        this.time = new Lyrics3TimeStamp(lyrics3Image.time);
        this.description = lyrics3Image.description;
        this.filename = lyrics3Image.filename;
    }
}
