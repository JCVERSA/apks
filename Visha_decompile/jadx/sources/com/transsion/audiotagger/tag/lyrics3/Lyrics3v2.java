package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.TagException;
import com.transsion.audiotagger.tag.TagNotFoundException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.id3.AbstractID3v2Frame;
import com.transsion.audiotagger.tag.id3.AbstractTag;
import com.transsion.audiotagger.tag.id3.ID3v1Tag;
import com.transsion.audiotagger.tag.id3.ID3v24Tag;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Iterator;

public class Lyrics3v2 extends AbstractLyrics3 {
    private HashMap<String, Lyrics3v2Field> fieldMap;

    public Lyrics3v2() {
        this.fieldMap = new HashMap<>();
    }

    private int seekSize(ByteBuffer byteBuffer) {
        return -1;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof Lyrics3v2) && this.fieldMap.equals(((Lyrics3v2) obj).fieldMap) && super.equals(obj);
    }

    public Lyrics3v2Field getField(String str) {
        return this.fieldMap.get(str);
    }

    public int getFieldCount() {
        return this.fieldMap.size();
    }

    @Override
    public String getIdentifier() {
        return "Lyrics3v2.00";
    }

    @Override
    public int getSize() {
        Iterator<Lyrics3v2Field> it = this.fieldMap.values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().getSize();
        }
        return size + 11;
    }

    public boolean hasField(String str) {
        return this.fieldMap.containsKey(str);
    }

    @Override
    public Iterator<Lyrics3v2Field> iterator() {
        return this.fieldMap.values().iterator();
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws TagException {
        if (!seek(byteBuffer)) {
            throw new TagNotFoundException("Lyrics3v2.00 Tag Not Found");
        }
        int iSeekSize = seekSize(byteBuffer);
        seek(byteBuffer);
        byteBuffer.position();
        this.fieldMap = new HashMap<>();
        while (byteBuffer.position() < iSeekSize - 11) {
            try {
                setField(new Lyrics3v2Field(byteBuffer));
            } catch (InvalidTagException unused) {
            }
        }
    }

    public void removeField(String str) {
        this.fieldMap.remove(str);
    }

    @Override
    public boolean seek(ByteBuffer byteBuffer) {
        return false;
    }

    public void setField(Lyrics3v2Field lyrics3v2Field) {
        this.fieldMap.put(lyrics3v2Field.getIdentifier(), lyrics3v2Field);
    }

    public String toString() {
        Iterator<Lyrics3v2Field> it = this.fieldMap.values().iterator();
        String str = getIdentifier() + " " + getSize() + "\n";
        while (it.hasNext()) {
            str = str + it.next().toString() + "\n";
        }
        return str;
    }

    public void updateField(String str) {
        if (str.equals(Lyrics3v2Fields.FIELD_V2_INDICATIONS)) {
            boolean zContainsKey = this.fieldMap.containsKey(Lyrics3v2Fields.FIELD_V2_LYRICS_MULTI_LINE_TEXT);
            setField(new Lyrics3v2Field(new FieldFrameBodyIND(zContainsKey, zContainsKey ? ((FieldFrameBodyLYR) this.fieldMap.get(Lyrics3v2Fields.FIELD_V2_LYRICS_MULTI_LINE_TEXT).getBody()).hasTimeStamp() : false)));
        }
    }

    @Override
    public void write(RandomAccessFile randomAccessFile) throws IOException {
        byte[] bArr = new byte[15];
        new ID3v1Tag();
        delete(randomAccessFile);
        randomAccessFile.seek(randomAccessFile.length());
        long filePointer = randomAccessFile.getFilePointer();
        for (int i = 0; i < 11; i++) {
            bArr[i] = (byte) "LYRICSBEGIN".charAt(i);
        }
        randomAccessFile.write(bArr, 0, 11);
        updateField(Lyrics3v2Fields.FIELD_V2_INDICATIONS);
        this.fieldMap.get(Lyrics3v2Fields.FIELD_V2_INDICATIONS).write(randomAccessFile);
        for (Lyrics3v2Field lyrics3v2Field : this.fieldMap.values()) {
            String identifier = lyrics3v2Field.getIdentifier();
            boolean lyrics3SaveField = TagOptionSingleton.getInstance().getLyrics3SaveField(identifier);
            if (!identifier.equals(Lyrics3v2Fields.FIELD_V2_INDICATIONS) && lyrics3SaveField) {
                lyrics3v2Field.write(randomAccessFile);
            }
        }
        long filePointer2 = randomAccessFile.getFilePointer() - filePointer;
        getSize();
        String string = Long.toString(filePointer2);
        for (int i2 = 0; i2 < 6 - string.length(); i2++) {
            bArr[i2] = 48;
        }
        int length = 6 - string.length();
        for (int i3 = 0; i3 < string.length(); i3++) {
            bArr[i3 + length] = (byte) string.charAt(i3);
        }
        int length2 = length + string.length();
        for (int i4 = 0; i4 < 9; i4++) {
            bArr[i4 + length2] = (byte) "LYRICS200".charAt(i4);
        }
        randomAccessFile.write(bArr, 0, length2 + 9);
    }

    public boolean seek(RandomAccessFile randomAccessFile) throws IOException {
        long filePointer;
        byte[] bArr = new byte[11];
        randomAccessFile.seek(randomAccessFile.length() - 137);
        randomAccessFile.read(bArr, 0, 9);
        if (new String(bArr, 0, 9).equals("LYRICS200")) {
            filePointer = randomAccessFile.getFilePointer();
        } else {
            randomAccessFile.seek(randomAccessFile.length() - 9);
            randomAccessFile.read(bArr, 0, 9);
            if (!new String(bArr, 0, 9).equals("LYRICS200")) {
                return false;
            }
            filePointer = randomAccessFile.getFilePointer();
        }
        long j = filePointer - 15;
        randomAccessFile.seek(j);
        randomAccessFile.read(bArr, 0, 6);
        randomAccessFile.seek(j - ((long) Integer.parseInt(new String(bArr, 0, 6))));
        randomAccessFile.read(bArr, 0, 11);
        return new String(bArr, 0, 11).equals("LYRICSBEGIN");
    }

    public Lyrics3v2(Lyrics3v2 lyrics3v2) {
        super(lyrics3v2);
        this.fieldMap = new HashMap<>();
        for (String str : lyrics3v2.fieldMap.keySet()) {
            this.fieldMap.put(str, new Lyrics3v2Field(lyrics3v2.fieldMap.get(str)));
        }
    }

    public Lyrics3v2(AbstractTag abstractTag) {
        this.fieldMap = new HashMap<>();
        if (abstractTag != null) {
            if (!(abstractTag instanceof Lyrics3v2)) {
                if (abstractTag instanceof Lyrics3v1) {
                    Lyrics3v2Field lyrics3v2Field = new Lyrics3v2Field(new FieldFrameBodyLYR(((Lyrics3v1) abstractTag).getLyric()));
                    this.fieldMap.put(lyrics3v2Field.getIdentifier(), lyrics3v2Field);
                    return;
                } else {
                    Iterator it = new ID3v24Tag(abstractTag).iterator();
                    while (it.hasNext()) {
                        try {
                            Lyrics3v2Field lyrics3v2Field2 = new Lyrics3v2Field((AbstractID3v2Frame) it.next());
                            this.fieldMap.put(lyrics3v2Field2.getIdentifier(), lyrics3v2Field2);
                        } catch (TagException unused) {
                        }
                    }
                    return;
                }
            }
            throw new UnsupportedOperationException("Copy Constructor not called. Please type cast the argument");
        }
    }

    public Lyrics3v2(ByteBuffer byteBuffer) throws TagNotFoundException, IOException {
        this.fieldMap = new HashMap<>();
        try {
            read(byteBuffer);
        } catch (TagException e) {
            e.printStackTrace();
        }
    }
}
