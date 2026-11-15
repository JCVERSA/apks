package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.datatype.ID3v2LyricLine;
import com.transsion.audiotagger.tag.datatype.Lyrics3Line;
import com.transsion.audiotagger.tag.datatype.Lyrics3TimeStamp;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodySYLT;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUSLT;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class FieldFrameBodyLYR extends AbstractLyrics3v2FieldFrameBody {
    private ArrayList<Lyrics3Line> lines;

    public FieldFrameBodyLYR() {
        this.lines = new ArrayList<>();
    }

    private void readString(String str) {
        int iIndexOf = str.indexOf(Lyrics3v2Fields.CRLF);
        this.lines = new ArrayList<>();
        int i = 0;
        while (iIndexOf >= 0) {
            String strSubstring = str.substring(i, iIndexOf);
            Lyrics3Line lyrics3Line = new Lyrics3Line("Lyric Line", this);
            lyrics3Line.setLyric(strSubstring);
            this.lines.add(lyrics3Line);
            String str2 = Lyrics3v2Fields.CRLF;
            int length = iIndexOf + str2.length();
            int iIndexOf2 = str.indexOf(str2, length);
            i = length;
            iIndexOf = iIndexOf2;
        }
        if (i < str.length()) {
            String strSubstring2 = str.substring(i);
            Lyrics3Line lyrics3Line2 = new Lyrics3Line("Lyric Line", this);
            lyrics3Line2.setLyric(strSubstring2);
            this.lines.add(lyrics3Line2);
        }
    }

    private String writeString() {
        Iterator<Lyrics3Line> it = this.lines.iterator();
        String str = "";
        while (it.hasNext()) {
            str = str + it.next().writeString() + Lyrics3v2Fields.CRLF;
        }
        return str;
    }

    public void addLyric(FrameBodySYLT frameBodySYLT) {
        Iterator it = frameBodySYLT.iterator();
        HashMap map = new HashMap();
        while (it.hasNext()) {
            ID3v2LyricLine iD3v2LyricLine = new ID3v2LyricLine((ID3v2LyricLine) it.next());
            Lyrics3TimeStamp lyrics3TimeStamp = new Lyrics3TimeStamp("Time Stamp", this);
            lyrics3TimeStamp.setTimeStamp(iD3v2LyricLine.getTimeStamp(), (byte) frameBodySYLT.getTimeStampFormat());
            if (map.containsKey(iD3v2LyricLine.getText())) {
                ((Lyrics3Line) map.get(iD3v2LyricLine.getText())).addTimeStamp(lyrics3TimeStamp);
            } else {
                Lyrics3Line lyrics3Line = new Lyrics3Line("Lyric Line", this);
                lyrics3Line.setLyric(iD3v2LyricLine);
                lyrics3Line.setTimeStamp(lyrics3TimeStamp);
                map.put(iD3v2LyricLine.getText(), lyrics3Line);
                this.lines.add(lyrics3Line);
            }
        }
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof FieldFrameBodyLYR) && this.lines.equals(((FieldFrameBodyLYR) obj).lines) && super.equals(obj);
    }

    @Override
    public String getIdentifier() {
        return Lyrics3v2Fields.FIELD_V2_LYRICS_MULTI_LINE_TEXT;
    }

    public String getLyric() {
        return writeString();
    }

    @Override
    public int getSize() {
        Iterator<Lyrics3Line> it = this.lines.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().getSize() + 2;
        }
        return size;
    }

    public boolean hasTimeStamp() {
        Iterator<Lyrics3Line> it = this.lines.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (it.next().hasTimeStamp()) {
                z = true;
            }
        }
        return z;
    }

    @Override
    public boolean isSubsetOf(Object obj) {
        if (!(obj instanceof FieldFrameBodyLYR)) {
            return false;
        }
        ArrayList<Lyrics3Line> arrayList = ((FieldFrameBodyLYR) obj).lines;
        Iterator<Lyrics3Line> it = this.lines.iterator();
        while (it.hasNext()) {
            if (!arrayList.contains(it.next())) {
                return false;
            }
        }
        return super.isSubsetOf(obj);
    }

    @Override
    public Iterator<Lyrics3Line> iterator() {
        return this.lines.iterator();
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws InvalidTagException {
        byte[] bArr = new byte[5];
        byteBuffer.get(bArr, 0, 5);
        int i = Integer.parseInt(new String(bArr, 0, 5));
        if (i == 0 && !TagOptionSingleton.getInstance().isLyrics3KeepEmptyFieldIfRead()) {
            throw new InvalidTagException("Lyircs3v2 Field has size of zero.");
        }
        byte[] bArr2 = new byte[i];
        byteBuffer.get(bArr2);
        readString(new String(bArr2));
    }

    public void setLyric(String str) {
        readString(str);
    }

    @Override
    public void setupObjectList() {
    }

    @Override
    public String toString() {
        String str = getIdentifier() + " : ";
        Iterator<Lyrics3Line> it = this.lines.iterator();
        while (it.hasNext()) {
            str = str + it.next().toString();
        }
        return str;
    }

    @Override
    public void write(RandomAccessFile randomAccessFile) throws IOException {
        byte[] bArr = new byte[5];
        int size = getSize();
        String string = Integer.toString(size);
        for (int i = 0; i < 5 - string.length(); i++) {
            bArr[i] = 48;
        }
        int length = 5 - string.length();
        for (int i2 = 0; i2 < string.length(); i2++) {
            bArr[i2 + length] = (byte) string.charAt(i2);
        }
        randomAccessFile.write(bArr, 0, 5);
        if (size > 0) {
            String strWriteString = writeString();
            byte[] bArr2 = new byte[strWriteString.length()];
            for (int i3 = 0; i3 < strWriteString.length(); i3++) {
                bArr2[i3] = (byte) strWriteString.charAt(i3);
            }
            randomAccessFile.write(bArr2);
        }
    }

    public FieldFrameBodyLYR(FieldFrameBodyLYR fieldFrameBodyLYR) {
        super(fieldFrameBodyLYR);
        this.lines = new ArrayList<>();
        for (int i = 0; i < fieldFrameBodyLYR.lines.size(); i++) {
            this.lines.add(new Lyrics3Line(fieldFrameBodyLYR.lines.get(i)));
        }
    }

    public FieldFrameBodyLYR(String str) {
        this.lines = new ArrayList<>();
        readString(str);
    }

    public FieldFrameBodyLYR(FrameBodySYLT frameBodySYLT) {
        this.lines = new ArrayList<>();
        addLyric(frameBodySYLT);
    }

    public FieldFrameBodyLYR(FrameBodyUSLT frameBodyUSLT) {
        this.lines = new ArrayList<>();
        addLyric(frameBodyUSLT);
    }

    public void addLyric(FrameBodyUSLT frameBodyUSLT) {
        Lyrics3Line lyrics3Line = new Lyrics3Line("Lyric Line", this);
        lyrics3Line.setLyric(frameBodyUSLT.getLyric());
        this.lines.add(lyrics3Line);
    }

    public FieldFrameBodyLYR(ByteBuffer byteBuffer) throws InvalidTagException {
        this.lines = new ArrayList<>();
        read(byteBuffer);
    }
}
