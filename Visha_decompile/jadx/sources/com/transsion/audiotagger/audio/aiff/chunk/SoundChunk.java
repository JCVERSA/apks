package com.transsion.audiotagger.audio.aiff.chunk;

import com.transsion.audiotagger.audio.iff.Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import java.io.IOException;
import java.nio.ByteBuffer;

public class SoundChunk extends Chunk {
    public SoundChunk(ChunkHeader chunkHeader, ByteBuffer byteBuffer) {
        super(byteBuffer, chunkHeader);
    }

    @Override
    public boolean readChunk() throws IOException {
        return true;
    }
}
