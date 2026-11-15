package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import java.nio.ByteBuffer;

public class FrameBodyUFID extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public static final String UFID_ID3TEST = "http://www.id3.org/dummy/ufid.html";
    public static final String UFID_MUSICBRAINZ = "http://musicbrainz.org";

    public FrameBodyUFID() {
        setOwner("");
        setUniqueIdentifier(new byte[0]);
    }

    @Override
    public String getIdentifier() {
        return "UFID";
    }

    public String getOwner() {
        return (String) getObjectValue(DataTypes.OBJ_OWNER);
    }

    public byte[] getUniqueIdentifier() {
        return (byte[]) getObjectValue(DataTypes.OBJ_DATA);
    }

    public void setOwner(String str) {
        setObjectValue(DataTypes.OBJ_OWNER, str);
    }

    public void setUniqueIdentifier(byte[] bArr) {
        setObjectValue(DataTypes.OBJ_DATA, bArr);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_OWNER, this));
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodyUFID(FrameBodyUFID frameBodyUFID) {
        super(frameBodyUFID);
    }

    public FrameBodyUFID(String str, byte[] bArr) {
        setOwner(str);
        setUniqueIdentifier(bArr);
    }

    public FrameBodyUFID(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
