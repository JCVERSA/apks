package com.transsion.audiotagger.audio.iff;

import java.io.IOException;
import java.nio.ByteBuffer;

public abstract class Chunk {
    protected ByteBuffer chunkData;
    protected ChunkHeader chunkHeader;

    public Chunk(ByteBuffer byteBuffer, ChunkHeader chunkHeader) {
        this.chunkData = byteBuffer;
        this.chunkHeader = chunkHeader;
    }

    public abstract boolean readChunk() throws IOException;
}
