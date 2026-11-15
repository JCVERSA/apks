package com.transsion.audiotagger.audio.flac.metadatablock;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public class MetadataBlockDataApplication implements MetadataBlockData {
    private ByteBuffer data;

    public MetadataBlockDataApplication(MetadataBlockHeader metadataBlockHeader, FileChannel fileChannel) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(metadataBlockHeader.getDataLength());
        this.data = byteBufferAllocate;
        fileChannel.read(byteBufferAllocate);
        this.data.flip();
    }

    @Override
    public ByteBuffer getBytes() {
        return this.data;
    }

    @Override
    public int getLength() {
        return this.data.limit();
    }
}
