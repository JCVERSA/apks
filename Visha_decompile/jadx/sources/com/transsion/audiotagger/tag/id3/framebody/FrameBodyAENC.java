package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberFixedLength;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import java.nio.ByteBuffer;

public class FrameBodyAENC extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyAENC() {
        setObjectValue(DataTypes.OBJ_OWNER, "");
        setObjectValue(DataTypes.OBJ_PREVIEW_START, (short) 0);
        setObjectValue(DataTypes.OBJ_PREVIEW_LENGTH, (short) 0);
        setObjectValue(DataTypes.OBJ_ENCRYPTION_INFO, new byte[0]);
    }

    @Override
    public String getIdentifier() {
        return "AENC";
    }

    public String getOwner() {
        return (String) getObjectValue(DataTypes.OBJ_OWNER);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_OWNER, this));
        this.objectList.add(new NumberFixedLength(DataTypes.OBJ_PREVIEW_START, this, 2));
        this.objectList.add(new NumberFixedLength(DataTypes.OBJ_PREVIEW_LENGTH, this, 2));
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_ENCRYPTION_INFO, this));
    }

    public void getOwner(String str) {
        setObjectValue(DataTypes.OBJ_OWNER, str);
    }

    public FrameBodyAENC(FrameBodyAENC frameBodyAENC) {
        super(frameBodyAENC);
    }

    public FrameBodyAENC(String str, short s, short s2, byte[] bArr) {
        setObjectValue(DataTypes.OBJ_OWNER, str);
        setObjectValue(DataTypes.OBJ_PREVIEW_START, Short.valueOf(s));
        setObjectValue(DataTypes.OBJ_PREVIEW_LENGTH, Short.valueOf(s2));
        setObjectValue(DataTypes.OBJ_ENCRYPTION_INFO, bArr);
    }

    public FrameBodyAENC(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
