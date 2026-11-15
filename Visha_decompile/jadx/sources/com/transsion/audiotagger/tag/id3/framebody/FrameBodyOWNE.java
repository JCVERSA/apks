package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.AbstractString;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.StringDate;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import com.transsion.audiotagger.tag.datatype.TextEncodedStringSizeTerminated;
import com.transsion.audiotagger.tag.id3.ID3TextEncodingConversion;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;

public class FrameBodyOWNE extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyOWNE() {
    }

    @Override
    public String getIdentifier() {
        return "OWNE";
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_PRICE_PAID, this));
        this.objectList.add(new StringDate(DataTypes.OBJ_PURCHASE_DATE, this));
        this.objectList.add(new TextEncodedStringSizeTerminated(DataTypes.OBJ_SELLER_NAME, this));
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        setTextEncoding(ID3TextEncodingConversion.getTextEncoding(getHeader(), getTextEncoding()));
        if (!((AbstractString) getObject(DataTypes.OBJ_SELLER_NAME)).canBeEncoded()) {
            setTextEncoding(ID3TextEncodingConversion.getUnicodeTextEncoding(getHeader()));
        }
        super.write(byteArrayOutputStream);
    }

    public FrameBodyOWNE(FrameBodyOWNE frameBodyOWNE) {
        super(frameBodyOWNE);
    }

    public FrameBodyOWNE(byte b, String str, String str2, String str3) {
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, Byte.valueOf(b));
        setObjectValue(DataTypes.OBJ_PRICE_PAID, str);
        setObjectValue(DataTypes.OBJ_PURCHASE_DATE, str2);
        setObjectValue(DataTypes.OBJ_SELLER_NAME, str3);
    }

    public FrameBodyOWNE(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
