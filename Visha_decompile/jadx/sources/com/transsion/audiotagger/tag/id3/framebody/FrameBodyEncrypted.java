package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import java.nio.ByteBuffer;

public class FrameBodyEncrypted extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    private String identifier;

    public FrameBodyEncrypted(String str) {
        this.identifier = str;
    }

    @Override
    public String getIdentifier() {
        return this.identifier;
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodyEncrypted(FrameBodyEncrypted frameBodyEncrypted) {
        super(frameBodyEncrypted);
        this.identifier = null;
    }

    public FrameBodyEncrypted(String str, ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
        this.identifier = str;
    }
}
