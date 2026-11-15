package com.transsion.audiotagger.audio.aiff.chunk;

import com.transsion.audiotagger.audio.iff.ChunkHeader;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

public abstract class AiffChunkReader {
    public ByteBuffer readChunkDataIntoBuffer(FileChannel fileChannel, ChunkHeader chunkHeader) throws IOException {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((int) chunkHeader.getSize());
        byteBufferAllocateDirect.order(ByteOrder.BIG_ENDIAN);
        fileChannel.read(byteBufferAllocateDirect);
        byteBufferAllocateDirect.position(0);
        return byteBufferAllocateDirect;
    }
}
