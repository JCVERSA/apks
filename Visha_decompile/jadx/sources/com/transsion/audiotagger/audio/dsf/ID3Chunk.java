package com.transsion.audiotagger.audio.dsf;

import com.transsion.audiotagger.audio.generic.Utils;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ID3Chunk {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.generic.ID3Chunk");
    private ByteBuffer dataBuffer;

    public ID3Chunk(ByteBuffer byteBuffer) {
        this.dataBuffer = byteBuffer;
    }

    public static ID3Chunk readChunk(ByteBuffer byteBuffer) {
        String threeBytesAsChars = Utils.readThreeBytesAsChars(byteBuffer);
        if (DsfChunkType.ID3.getCode().equals(threeBytesAsChars)) {
            return new ID3Chunk(byteBuffer);
        }
        logger.log(Level.WARNING, "Invalid type:" + threeBytesAsChars + " where expected ID3 tag");
        return null;
    }

    public ByteBuffer getDataBuffer() {
        return this.dataBuffer;
    }
}
