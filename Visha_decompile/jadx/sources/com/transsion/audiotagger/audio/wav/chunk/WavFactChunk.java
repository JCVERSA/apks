package com.transsion.audiotagger.audio.wav.chunk;

import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import java.io.IOException;
import java.nio.ByteBuffer;

public class WavFactChunk extends Chunk {
    private GenericAudioHeader info;
    private boolean isValid;

    public WavFactChunk(ByteBuffer byteBuffer, ChunkHeader chunkHeader, GenericAudioHeader genericAudioHeader) throws IOException {
        super(byteBuffer, chunkHeader);
        this.isValid = false;
        this.info = genericAudioHeader;
    }

    @Override
    public boolean readChunk() throws IOException {
        this.info.setNoOfSamples(Long.valueOf(Utils.u(this.chunkData.getInt())));
        return true;
    }

    public String toString() {
        return "Fact Chunk:\nIs valid?: " + this.isValid;
    }
}
