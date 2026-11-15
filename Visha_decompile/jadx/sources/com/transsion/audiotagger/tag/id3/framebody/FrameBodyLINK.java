package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.StringFixedLength;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import com.transsion.audiotagger.tag.datatype.StringSizeTerminated;
import java.nio.ByteBuffer;

public class FrameBodyLINK extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyLINK() {
    }

    public String getAdditionalData() {
        return (String) getObjectValue(DataTypes.OBJ_ID);
    }

    public String getFrameIdentifier() {
        return (String) getObjectValue(DataTypes.OBJ_DESCRIPTION);
    }

    @Override
    public String getIdentifier() {
        return "LINK";
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringFixedLength(DataTypes.OBJ_DESCRIPTION, this, 4));
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_URL, this));
        this.objectList.add(new StringSizeTerminated(DataTypes.OBJ_ID, this));
    }

    public FrameBodyLINK(FrameBodyLINK frameBodyLINK) {
        super(frameBodyLINK);
    }

    public void getAdditionalData(String str) {
        setObjectValue(DataTypes.OBJ_ID, str);
    }

    public void getFrameIdentifier(String str) {
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str);
    }

    public FrameBodyLINK(String str, String str2, String str3) {
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str);
        setObjectValue(DataTypes.OBJ_URL, str2);
        setObjectValue(DataTypes.OBJ_ID, str3);
    }

    public FrameBodyLINK(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
