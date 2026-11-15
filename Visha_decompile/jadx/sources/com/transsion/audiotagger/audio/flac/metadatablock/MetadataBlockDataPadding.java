package com.transsion.audiotagger.audio.flac.metadatablock;

import java.nio.ByteBuffer;

public class MetadataBlockDataPadding implements MetadataBlockData {
    private int length;

    public MetadataBlockDataPadding(int i) {
        this.length = i;
    }

    @Override
    public ByteBuffer getBytes() {
        return ByteBuffer.allocate(this.length);
    }

    @Override
    public int getLength() {
        return this.length;
    }
}
