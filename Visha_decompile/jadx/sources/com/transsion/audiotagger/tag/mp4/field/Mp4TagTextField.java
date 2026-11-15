package com.transsion.audiotagger.tag.mp4.field;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagTextField;
import com.transsion.audiotagger.tag.mp4.Mp4TagField;
import com.transsion.audiotagger.tag.mp4.atom.Mp4DataBox;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public class Mp4TagTextField extends Mp4TagField implements TagTextField {
    protected String content;
    protected int dataSize;

    public Mp4TagTextField(String str, ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        super(str, byteBuffer);
    }

    @Override
    public void build(ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        Mp4BoxHeader mp4BoxHeader = new Mp4BoxHeader(byteBuffer);
        Mp4DataBox mp4DataBox = new Mp4DataBox(mp4BoxHeader, byteBuffer);
        this.dataSize = mp4BoxHeader.getDataLength();
        this.content = mp4DataBox.getContent();
    }

    @Override
    public void copyContent(TagField tagField) {
        if (tagField instanceof Mp4TagTextField) {
            this.content = ((Mp4TagTextField) tagField).getContent();
        }
    }

    @Override
    public String getContent() {
        return this.content;
    }

    @Override
    public byte[] getDataBytes() throws UnsupportedEncodingException {
        return this.content.getBytes(getEncoding());
    }

    @Override
    public Charset getEncoding() {
        return StandardCharsets.UTF_8;
    }

    @Override
    public Mp4FieldType getFieldType() {
        return Mp4FieldType.TEXT;
    }

    @Override
    public boolean isBinary() {
        return false;
    }

    @Override
    public boolean isEmpty() {
        return this.content.trim().equals("");
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
        return this.content;
    }

    public Mp4TagTextField(String str, String str2) {
        super(str);
        this.content = str2;
    }
}
