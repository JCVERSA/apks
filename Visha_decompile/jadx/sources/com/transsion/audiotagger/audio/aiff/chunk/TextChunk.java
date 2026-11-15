package com.transsion.audiotagger.audio.aiff.chunk;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.aiff.AiffAudioHeader;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import java.io.IOException;
import java.nio.ByteBuffer;

public abstract class TextChunk extends Chunk {
    protected final AiffAudioHeader aiffAudioHeader;

    public TextChunk(ChunkHeader chunkHeader, ByteBuffer byteBuffer, AiffAudioHeader aiffAudioHeader) {
        super(byteBuffer, chunkHeader);
        this.aiffAudioHeader = aiffAudioHeader;
    }

    public String readChunkText() throws IOException {
        ByteBuffer byteBuffer = this.chunkData;
        return Utils.getString(byteBuffer, 0, byteBuffer.remaining(), StandardCharsets.ISO_8859_1);
    }
}
