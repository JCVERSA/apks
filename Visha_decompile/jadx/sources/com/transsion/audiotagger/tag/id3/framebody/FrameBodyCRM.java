package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import com.transsion.audiotagger.tag.id3.ID3v22Frames;
import java.nio.ByteBuffer;

public class FrameBodyCRM extends AbstractID3v2FrameBody implements ID3v22FrameBody {
    public FrameBodyCRM() {
    }

    @Override
    public String getIdentifier() {
        return ID3v22Frames.FRAME_ID_V2_ENCRYPTED_FRAME;
    }

    public String getOwner() {
        return (String) getObjectValue(DataTypes.OBJ_OWNER);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_OWNER, this));
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_DESCRIPTION, this));
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_ENCRYPTED_DATABLOCK, this));
    }

    public FrameBodyCRM(FrameBodyCRM frameBodyCRM) {
        super(frameBodyCRM);
    }

    public void getOwner(String str) {
        setObjectValue(DataTypes.OBJ_OWNER, str);
    }

    public FrameBodyCRM(String str, String str2, byte[] bArr) {
        setObjectValue(DataTypes.OBJ_OWNER, str);
        setObjectValue(DataTypes.OBJ_DESCRIPTION, str2);
        setObjectValue(DataTypes.OBJ_ENCRYPTED_DATABLOCK, bArr);
    }

    public FrameBodyCRM(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
