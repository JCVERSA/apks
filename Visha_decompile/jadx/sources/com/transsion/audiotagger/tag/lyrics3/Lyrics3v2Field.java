package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.TagException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.id3.AbstractID3v2Frame;
import com.transsion.audiotagger.tag.id3.AbstractTagFrame;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.framebody.AbstractFrameBodyTextInfo;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyCOMM;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodySYLT;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyUSLT;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;

public class Lyrics3v2Field extends AbstractTagFrame {
    public Lyrics3v2Field() {
    }

    private AbstractLyrics3v2FieldFrameBody readBody(String str, ByteBuffer byteBuffer) throws InvalidTagException {
        if (str.equals(Lyrics3v2Fields.FIELD_V2_AUTHOR)) {
            return new FieldFrameBodyAUT(byteBuffer);
        }
        if (str.equals(Lyrics3v2Fields.FIELD_V2_ALBUM)) {
            return new FieldFrameBodyEAL(byteBuffer);
        }
        if (str.equals(Lyrics3v2Fields.FIELD_V2_ARTIST)) {
            return new FieldFrameBodyEAR(byteBuffer);
        }
        if (str.equals(Lyrics3v2Fields.FIELD_V2_TRACK)) {
            return new FieldFrameBodyETT(byteBuffer);
        }
        if (str.equals(Lyrics3v2Fields.FIELD_V2_IMAGE)) {
            return new FieldFrameBodyIMG(byteBuffer);
        }
        if (str.equals(Lyrics3v2Fields.FIELD_V2_INDICATIONS)) {
            return new FieldFrameBodyIND(byteBuffer);
        }
        if (str.equals(Lyrics3v2Fields.FIELD_V2_ADDITIONAL_MULTI_LINE_TEXT)) {
            return new FieldFrameBodyINF(byteBuffer);
        }
        return str.equals(Lyrics3v2Fields.FIELD_V2_LYRICS_MULTI_LINE_TEXT) ? new FieldFrameBodyLYR(byteBuffer) : new FieldFrameBodyUnsupported(byteBuffer);
    }

    @Override
    public String getIdentifier() {
        AbstractTagFrameBody abstractTagFrameBody = this.frameBody;
        return abstractTagFrameBody == null ? "" : abstractTagFrameBody.getIdentifier();
    }

    @Override
    public int getSize() {
        return this.frameBody.getSize() + 5 + getIdentifier().length();
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws InvalidTagException {
        byte[] bArr = new byte[6];
        while (byteBuffer.get() == 0) {
        }
        byteBuffer.position(byteBuffer.position() - 1);
        byteBuffer.get(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        if (Lyrics3v2Fields.isLyrics3v2FieldIdentifier(str)) {
            this.frameBody = readBody(str, byteBuffer);
            return;
        }
        throw new InvalidTagException(str + " is not a valid ID3v2.4 frame");
    }

    @Override
    public String toString() {
        AbstractTagFrameBody abstractTagFrameBody = this.frameBody;
        return abstractTagFrameBody == null ? "" : abstractTagFrameBody.toString();
    }

    public void write(RandomAccessFile randomAccessFile) throws IOException {
        if (this.frameBody.getSize() > 0 || TagOptionSingleton.getInstance().isLyrics3SaveEmptyField()) {
            byte[] bArr = new byte[3];
            String identifier = getIdentifier();
            for (int i = 0; i < identifier.length(); i++) {
                bArr[i] = (byte) identifier.charAt(i);
            }
            randomAccessFile.write(bArr, 0, identifier.length());
        }
    }

    public Lyrics3v2Field(Lyrics3v2Field lyrics3v2Field) {
        super(lyrics3v2Field);
    }

    public Lyrics3v2Field(AbstractLyrics3v2FieldFrameBody abstractLyrics3v2FieldFrameBody) {
        this.frameBody = abstractLyrics3v2FieldFrameBody;
    }

    public Lyrics3v2Field(AbstractID3v2Frame abstractID3v2Frame) throws TagException {
        String identifier = abstractID3v2Frame.getIdentifier();
        if (identifier.startsWith("USLT")) {
            FieldFrameBodyLYR fieldFrameBodyLYR = new FieldFrameBodyLYR("");
            this.frameBody = fieldFrameBodyLYR;
            fieldFrameBodyLYR.addLyric((FrameBodyUSLT) abstractID3v2Frame.getBody());
            return;
        }
        if (identifier.startsWith("SYLT")) {
            FieldFrameBodyLYR fieldFrameBodyLYR2 = new FieldFrameBodyLYR("");
            this.frameBody = fieldFrameBodyLYR2;
            fieldFrameBodyLYR2.addLyric((FrameBodySYLT) abstractID3v2Frame.getBody());
            return;
        }
        if (identifier.startsWith("COMM")) {
            this.frameBody = new FieldFrameBodyINF(((FrameBodyCOMM) abstractID3v2Frame.getBody()).getText());
            return;
        }
        if (identifier.equals("TCOM")) {
            AbstractFrameBodyTextInfo abstractFrameBodyTextInfo = (AbstractFrameBodyTextInfo) abstractID3v2Frame.getBody();
            this.frameBody = new FieldFrameBodyAUT("");
            if (abstractFrameBodyTextInfo == null || abstractFrameBodyTextInfo.getText().length() <= 0) {
                return;
            }
            this.frameBody = new FieldFrameBodyAUT(abstractFrameBodyTextInfo.getText());
            return;
        }
        if (identifier.equals("TALB")) {
            AbstractFrameBodyTextInfo abstractFrameBodyTextInfo2 = (AbstractFrameBodyTextInfo) abstractID3v2Frame.getBody();
            if (abstractFrameBodyTextInfo2 == null || abstractFrameBodyTextInfo2.getText().length() <= 0) {
                return;
            }
            this.frameBody = new FieldFrameBodyEAL(abstractFrameBodyTextInfo2.getText());
            return;
        }
        if (identifier.equals("TPE1")) {
            AbstractFrameBodyTextInfo abstractFrameBodyTextInfo3 = (AbstractFrameBodyTextInfo) abstractID3v2Frame.getBody();
            if (abstractFrameBodyTextInfo3 == null || abstractFrameBodyTextInfo3.getText().length() <= 0) {
                return;
            }
            this.frameBody = new FieldFrameBodyEAR(abstractFrameBodyTextInfo3.getText());
            return;
        }
        if (identifier.equals("TIT2")) {
            AbstractFrameBodyTextInfo abstractFrameBodyTextInfo4 = (AbstractFrameBodyTextInfo) abstractID3v2Frame.getBody();
            if (abstractFrameBodyTextInfo4 == null || abstractFrameBodyTextInfo4.getText().length() <= 0) {
                return;
            }
            this.frameBody = new FieldFrameBodyETT(abstractFrameBodyTextInfo4.getText());
            return;
        }
        throw new TagException("Cannot createField Lyrics3v2 field from given ID3v2 frame");
    }

    public Lyrics3v2Field(ByteBuffer byteBuffer) throws InvalidTagException {
        read(byteBuffer);
    }
}
