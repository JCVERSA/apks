package com.transsion.audiotagger.tag.mp4.atom;

import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.mp4.atom.AbstractMp4Box;
import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import java.nio.ByteBuffer;

public class Mp4NameBox extends AbstractMp4Box {
    public static final int FLAGS_LENGTH = 3;
    public static final String IDENTIFIER = "name";
    public static final int PRE_DATA_LENGTH = 4;
    public static final int VERSION_LENGTH = 1;
    private String name;

    public Mp4NameBox(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer) {
        this.header = mp4BoxHeader;
        if (mp4BoxHeader.getId().equals("name")) {
            ByteBuffer byteBufferSlice = byteBuffer.slice();
            this.dataBuffer = byteBufferSlice;
            this.name = Utils.getString(byteBufferSlice, 4, mp4BoxHeader.getDataLength() - 4, mp4BoxHeader.getEncoding());
        } else {
            throw new RuntimeException("Unable to process name box because identifier is:" + mp4BoxHeader.getId());
        }
    }

    public String getName() {
        return this.name;
    }
}
