package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.AbstractString;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.StringDate;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import com.transsion.audiotagger.tag.datatype.TextEncodedStringNullTerminated;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;

public class FrameBodyCOMR extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyCOMR() {
    }

    @Override
    public String getIdentifier() {
        return "COMR";
    }

    public String getOwner() {
        return (String) getObjectValue(DataTypes.OBJ_OWNER);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_PRICE_STRING, this));
        this.objectList.add(new StringDate(DataTypes.OBJ_VALID_UNTIL, this));
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_CONTACT_URL, this));
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_RECIEVED_AS, this, 1));
        this.objectList.add(new TextEncodedStringNullTerminated(DataTypes.OBJ_SELLER_NAME, this));
        this.objectList.add(new TextEncodedStringNullTerminated(DataTypes.OBJ_DESCRIPTION, this));
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_MIME_TYPE, this));
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_SELLER_LOGO, this));
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        if (!((AbstractString) getObject(DataTypes.OBJ_SELLER_NAME)).canBeEncoded()) {
            setTextEncoding((byte) 1);
        }
        if (!((AbstractString) getObject(DataTypes.OBJ_DESCRIPTION)).canBeEncoded()) {
            setTextEncoding((byte) 1);
        }
        super.write(byteArrayOutputStream);
    }

    public FrameBodyCOMR(FrameBodyCOMR frameBodyCOMR) {
        super(frameBodyCOMR);
    }

    public void getOwner(String str) {
        setObjectValue(DataTypes.OBJ_OWNER, str);
    }

    public FrameBodyCOMR(byte b, String str, String str2, String str3, byte b2, String str4, String str5, String str6, byte[] bArr) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_PRICE_STRING, str);
        setObjectValue(DataTypes.OBJ_VALID_UNTIL, str2);
        setObjectValue(DataTypes.OBJ_CONTACT_URL, str3);
        setObjectValue(DataTypes.OBJ_RECIEVED_AS, Byte.valueOf(b2));
        setObjectValue(DataTypes.OBJ_SELLER_NAME, str4);
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str5);
        setObjectValue(DataTypes.OBJ_MIME_TYPE, str6);
        setObjectValue(DataTypes.OBJ_SELLER_LOGO, bArr);
    }

    public FrameBodyCOMR(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
