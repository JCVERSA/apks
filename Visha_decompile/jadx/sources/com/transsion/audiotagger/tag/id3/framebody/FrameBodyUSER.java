package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.AbstractString;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.StringHashMap;
import com.transsion.audiotagger.tag.datatype.StringSizeTerminated;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;

public class FrameBodyUSER extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyUSER() {
    }

    @Override
    public String getIdentifier() {
        return "USER";
    }

    public String getLanguage() {
        return (String) getObjectValue(DataTypes.OBJ_LANGUAGE);
    }

    public void setOwner(String str) {
        setObjectValue(DataTypes.OBJ_LANGUAGE, str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new StringHashMap(DataTypes.OBJ_LANGUAGE, this, 3));
        this.objectList.add(new StringSizeTerminated(DataTypes.OBJ_TEXT, this));
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        if (!((AbstractString) getObject(DataTypes.OBJ_TEXT)).canBeEncoded()) {
            setTextEncoding((byte) 1);
        }
        super.write(byteArrayOutputStream);
    }

    public FrameBodyUSER(FrameBodyUSER frameBodyUSER) {
        super(frameBodyUSER);
    }

    public FrameBodyUSER(byte b, String str, String str2) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_LANGUAGE, str);
        setObjectValue(DataTypes.OBJ_TEXT, str2);
    }

    public FrameBodyUSER(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
