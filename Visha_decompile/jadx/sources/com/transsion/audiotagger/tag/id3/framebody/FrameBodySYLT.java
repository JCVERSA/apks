package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.StringHashMap;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import java.nio.ByteBuffer;

public class FrameBodySYLT extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodySYLT() {
    }

    public int getContentType() {
        return ((Number) getObjectValue(DataTypes.OBJ_CONTENT_TYPE)).intValue();
    }

    public String getDescription() {
        return (String) getObjectValue(DataTypes.OBJ_DESCRIPTION);
    }

    @Override
    public String getIdentifier() {
        return "SYLT";
    }

    public String getLanguage() {
        return (String) getObjectValue(DataTypes.OBJ_LANGUAGE);
    }

    public byte[] getLyrics() {
        return (byte[]) getObjectValue(DataTypes.OBJ_DATA);
    }

    public int getTimeStampFormat() {
        return ((Number) getObjectValue(DataTypes.OBJ_TIME_STAMP_FORMAT)).intValue();
    }

    public void setLyrics(byte[] bArr) {
        setObjectValue(DataTypes.OBJ_DATA, bArr);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new StringHashMap(DataTypes.OBJ_LANGUAGE, this, 3));
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TIME_STAMP_FORMAT, this, 1));
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_CONTENT_TYPE, this, 1));
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_DESCRIPTION, this));
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodySYLT(FrameBodySYLT frameBodySYLT) {
        super(frameBodySYLT);
    }

    public FrameBodySYLT(int i, String str, int i2, int i3, String str2, byte[] bArr) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Integer.valueOf(i));
        setObjectValue(DataTypes.OBJ_LANGUAGE, str);
        setObjectValue(DataTypes.OBJ_TIME_STAMP_FORMAT, Integer.valueOf(i2));
        setObjectValue(DataTypes.OBJ_CONTENT_TYPE, Integer.valueOf(i3));
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str2);
        setObjectValue(DataTypes.OBJ_DATA, bArr);
    }

    public FrameBodySYLT(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
