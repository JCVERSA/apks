package com.transsion.audiotagger.audio.aiff.chunk;

import com.transsion.audiotagger.audio.aiff.AiffAudioHeader;
import com.transsion.audiotagger.audio.aiff.AiffUtil;
import com.transsion.audiotagger.audio.iff.Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import java.io.IOException;
import java.nio.ByteBuffer;

public class FormatVersionChunk extends Chunk {
    private AiffAudioHeader aiffHeader;

    public FormatVersionChunk(ChunkHeader chunkHeader, ByteBuffer byteBuffer, AiffAudioHeader aiffAudioHeader) {
        super(byteBuffer, chunkHeader);
        this.aiffHeader = aiffAudioHeader;
    }

    @Override
    public boolean readChunk() throws IOException {
        this.aiffHeader.setTimestamp(AiffUtil.timestampToDate(this.chunkData.getInt()));
        return true;
    }
}
