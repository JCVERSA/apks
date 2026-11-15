package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.ByteArraySizeTerminated;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import java.nio.ByteBuffer;

public class FrameBodyCTOC extends AbstractID3v2FrameBody implements ID3v2ChapterFrameBody {
    public FrameBodyCTOC() {
    }

    @Override
    public String getIdentifier() {
        return "CTOC";
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new ByteArraySizeTerminated(DataTypes.OBJ_DATA, this));
    }

    public FrameBodyCTOC(FrameBodyCTOC frameBodyCTOC) {
        super(frameBodyCTOC);
    }

    public FrameBodyCTOC(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
