package com.transsion.audiotagger.tag.id3;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagTextField;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public class ID3v1TagField implements TagTextField {
    private boolean common;
    private String content;
    private String id;

    public ID3v1TagField(byte[] bArr) throws UnsupportedEncodingException {
        String str = new String(bArr, StandardCharsets.ISO_8859_1);
        int iIndexOf = str.indexOf(61);
        if (iIndexOf == -1) {
            this.id = "ERRONEOUS";
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
        this.common = this.id.equals(ID3v1FieldKey.TITLE.name()) || this.id.equals(ID3v1FieldKey.ALBUM.name()) || this.id.equals(ID3v1FieldKey.ARTIST.name()) || this.id.equals(ID3v1FieldKey.GENRE.name()) || this.id.equals(ID3v1FieldKey.YEAR.name()) || this.id.equals(ID3v1FieldKey.COMMENT.name()) || this.id.equals(ID3v1FieldKey.TRACK.name());
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
        return StandardCharsets.ISO_8859_1;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public byte[] getRawContent() throws UnsupportedEncodingException {
        String str = this.id;
        Charset charset = StandardCharsets.ISO_8859_1;
        byte[] bytes = str.getBytes(charset);
        byte[] bytes2 = this.content.getBytes(charset);
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
    public void isBinary(boolean z) {
    }

    @Override
    public boolean isCommon() {
        return this.common;
    }

    @Override
    public boolean isEmpty() {
        return "".equals(this.content);
    }

    @Override
    public void setContent(String str) {
        this.content = str;
    }

    @Override
    public void setEncoding(Charset charset) {
    }

    @Override
    public String toString() {
        return getContent();
    }

    @Override
    public boolean isBinary() {
        return false;
    }

    public ID3v1TagField(String str, String str2) {
        this.id = str.toUpperCase();
        this.content = str2;
        checkCommon();
    }
}
