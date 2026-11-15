package com.transsion.audiotagger.tag.mp4;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.mp4.field.Mp4FieldType;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

public abstract class Mp4TagField implements TagField {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.tag.mp4");
    protected String id;
    protected Mp4BoxHeader parentHeader;

    public Mp4TagField(String str) {
        this.id = str;
    }

    public abstract void build(ByteBuffer byteBuffer) throws UnsupportedEncodingException;

    public abstract byte[] getDataBytes() throws UnsupportedEncodingException;

    public abstract Mp4FieldType getFieldType();

    @Override
    public String getId() {
        return this.id;
    }

    public byte[] getIdBytes() {
        return getId().getBytes(StandardCharsets.ISO_8859_1);
    }

    @Override
    public byte[] getRawContent() throws UnsupportedEncodingException {
        logger.fine("Getting Raw data for:" + getId());
        try {
            byte[] rawContentDataOnly = getRawContentDataOnly();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(Utils.getSizeBEInt32(rawContentDataOnly.length + 8));
            byteArrayOutputStream.write(getId().getBytes(StandardCharsets.ISO_8859_1));
            byteArrayOutputStream.write(rawContentDataOnly);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public byte[] getRawContentDataOnly() throws UnsupportedEncodingException {
        logger.fine("Getting Raw data for:" + getId());
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] dataBytes = getDataBytes();
            byteArrayOutputStream.write(Utils.getSizeBEInt32(dataBytes.length + 16));
            byteArrayOutputStream.write("data".getBytes(StandardCharsets.ISO_8859_1));
            byteArrayOutputStream.write(new byte[]{0});
            byteArrayOutputStream.write(new byte[]{0, 0, (byte) getFieldType().getFileClassId()});
            byteArrayOutputStream.write(new byte[]{0, 0, 0, 0});
            byteArrayOutputStream.write(dataBytes);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void isBinary(boolean z) {
    }

    @Override
    public boolean isCommon() {
        return this.id.equals(Mp4FieldKey.ARTIST.getFieldName()) || this.id.equals(Mp4FieldKey.ALBUM.getFieldName()) || this.id.equals(Mp4FieldKey.TITLE.getFieldName()) || this.id.equals(Mp4FieldKey.TRACK.getFieldName()) || this.id.equals(Mp4FieldKey.DAY.getFieldName()) || this.id.equals(Mp4FieldKey.COMMENT.getFieldName()) || this.id.equals(Mp4FieldKey.GENRE.getFieldName());
    }

    public Mp4TagField(ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        build(byteBuffer);
    }

    public Mp4TagField(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        this.parentHeader = mp4BoxHeader;
        build(byteBuffer);
    }

    public Mp4TagField(String str, ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        this(str);
        build(byteBuffer);
    }
}
