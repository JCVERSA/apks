package com.transsion.audiotagger.audio.aiff.chunk;

import com.transsion.audiotagger.audio.aiff.AiffAudioHeader;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import java.io.IOException;
import java.nio.ByteBuffer;

public class AnnotationChunk extends TextChunk {
    public AnnotationChunk(ChunkHeader chunkHeader, ByteBuffer byteBuffer, AiffAudioHeader aiffAudioHeader) {
        super(chunkHeader, byteBuffer, aiffAudioHeader);
    }

    @Override
    public boolean readChunk() throws IOException {
        this.aiffAudioHeader.addAnnotation(readChunkText());
        return true;
    }
}
