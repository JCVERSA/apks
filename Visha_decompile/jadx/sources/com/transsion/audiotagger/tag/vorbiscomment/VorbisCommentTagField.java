package com.transsion.audiotagger.tag.vorbiscomment;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagTextField;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public class VorbisCommentTagField implements TagTextField {
    private static final String ERRONEOUS_ID = "ERRONEOUS";
    private boolean common;
    private String content;
    private String id;

    public VorbisCommentTagField(byte[] bArr) throws UnsupportedEncodingException {
        String str = new String(bArr, "UTF-8");
        int iIndexOf = str.indexOf("=");
        if (iIndexOf == -1) {
            this.id = ERRONEOUS_ID;
            this.content = str;
        } else {
            this.id = str.substring(0, iIndexOf).toUpperCase();
            if (str.length() > iIndexOf) {
                this.content = str.substring(iIndexOf + 1);
            } else {
                this.content = "";
            }
        }
        checkCommon();
    }

    private void checkCommon() {
        this.common = this.id.equals(VorbisCommentFieldKey.TITLE.getFieldName()) || this.id.equals(VorbisCommentFieldKey.ALBUM.getFieldName()) || this.id.equals(VorbisCommentFieldKey.ARTIST.getFieldName()) || this.id.equals(VorbisCommentFieldKey.GENRE.getFieldName()) || this.id.equals(VorbisCommentFieldKey.TRACKNUMBER.getFieldName()) || this.id.equals(VorbisCommentFieldKey.DATE.getFieldName()) || this.id.equals(VorbisCommentFieldKey.DESCRIPTION.getFieldName()) || this.id.equals(VorbisCommentFieldKey.COMMENT.getFieldName());
    }

    public void copy(byte[] bArr, byte[] bArr2, int i) {
        System.arraycopy(bArr, 0, bArr2, i, bArr.length);
    }

    @Override
    public void copyContent(TagField tagField) {
        if (tagField instanceof TagTextField) {
            this.content = ((TagTextField) tagField).getContent();
        }
    }

    @Override
    public String getContent() {
        return this.content;
    }

    @Override
    public Charset getEncoding() {
        return StandardCharsets.UTF_8;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public byte[] getRawContent() throws UnsupportedEncodingException {
        byte[] bytes = this.id.getBytes(StandardCharsets.ISO_8859_1);
        byte[] bytes2 = this.content.getBytes(StandardCharsets.UTF_8);
        byte[] bArr = new byte[bytes.length + 5 + bytes2.length];
        int length = bytes.length + 1 + bytes2.length;
        copy(new byte[]{(byte) (length & 255), (byte) ((65280 & length) >> 8), (byte) ((16711680 & length) >> 16), (byte) (((-16777216) & length) >> 24)}, bArr, 0);
        copy(bytes, bArr, 4);
        int length2 = bytes.length;
        bArr[4 + length2] = 61;
        copy(bytes2, bArr, length2 + 5);
        return bArr;
    }

    @Override
    public boolean isBinary() {
        return false;
    }

    @Override
    public boolean isCommon() {
        return this.common;
    }

    @Override
    public boolean isEmpty() {
        return this.content.equals("");
    }

    @Override
    public void setContent(String str) {
        this.content = str;
    }

    @Override
    public void setEncoding(Charset charset) {
        if (!StandardCharsets.UTF_8.equals(charset)) {
            throw new UnsupportedOperationException("The encoding of OggTagFields cannot be changed.(specified to be UTF-8)");
        }
    }

    @Override
    public String toString() {
        return getContent();
    }

    @Override
    public void isBinary(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("OggTagFields cannot be changed to binary.\nbinary data should be stored elsewhere according to Vorbis_I_spec.");
        }
    }

    public VorbisCommentTagField(String str, String str2) {
        this.id = str.toUpperCase();
        this.content = str2;
        checkCommon();
    }
}
