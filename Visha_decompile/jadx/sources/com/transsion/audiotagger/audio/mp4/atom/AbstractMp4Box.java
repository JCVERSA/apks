package com.transsion.audiotagger.audio.mp4.atom;

import java.nio.ByteBuffer;

public class AbstractMp4Box {
    protected ByteBuffer dataBuffer;
    protected Mp4BoxHeader header;

    public ByteBuffer getData() {
        return this.dataBuffer;
    }

    public Mp4BoxHeader getHeader() {
        return this.header;
    }
}
