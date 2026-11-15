package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import java.nio.ByteBuffer;

public class FrameBodyUnsupported extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody, ID3v22FrameBody {
    private String identifier;

    public FrameBodyUnsupported() {
        this.identifier = "";
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof FrameBodyUnsupported) && this.identifier.equals(((FrameBodyUnsupported) obj).identifier) && super.equals(obj);
    }

    @Override
    public String getIdentifier() {
        return this.identifier;
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    @Override
    public String toString() {
        return getIdentifier();
    }

    public FrameBodyUnsupported(String str) {
        this.identifier = str;
    }

    public FrameBodyUnsupported(String str, byte[] bArr) {
        this.identifier = str;
        setObjectValue(DataTypes.OBJ_DATA, bArr);
    }

    public FrameBodyUnsupported(byte[] bArr) {
        this.identifier = "";
        setObjectValue(DataTypes.OBJ_DATA, bArr);
    }

    public FrameBodyUnsupported(FrameBodyUnsupported frameBodyUnsupported) {
        super(frameBodyUnsupported);
        this.identifier = "";
        this.identifier = frameBodyUnsupported.identifier;
    }

    public FrameBodyUnsupported(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
        this.identifier = "";
    }
}
