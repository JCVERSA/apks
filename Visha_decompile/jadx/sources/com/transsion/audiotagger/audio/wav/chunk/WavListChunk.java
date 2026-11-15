package com.transsion.audiotagger.audio.wav.chunk;

import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import com.transsion.audiotagger.audio.wav.WavChunkType;
import com.transsion.audiotagger.tag.wav.WavTag;
import java.io.IOException;
import java.nio.ByteBuffer;

public class WavListChunk extends Chunk {
    private boolean isValid;
    private String loggingName;
    private WavTag tag;

    public WavListChunk(String str, ByteBuffer byteBuffer, ChunkHeader chunkHeader, WavTag wavTag) throws IOException {
        super(byteBuffer, chunkHeader);
        this.isValid = false;
        this.tag = wavTag;
        this.loggingName = str;
    }

    @Override
    public boolean readChunk() throws IOException {
        if (!Utils.readFourBytesAsChars(this.chunkData).equals(WavChunkType.INFO.getCode())) {
            return false;
        }
        boolean chunks = new WavInfoChunk(this.tag, this.loggingName).readChunks(this.chunkData);
        this.tag.getInfoTag().setStartLocationInFile(this.chunkHeader.getStartLocationInFile());
        this.tag.getInfoTag().setEndLocationInFile(this.chunkHeader.getStartLocationInFile() + 8 + this.chunkHeader.getSize());
        this.tag.setExistingInfoTag(true);
        return chunks;
    }

    public String toString() {
        return "RIFF-WAVE Header:\nIs valid?: " + this.isValid;
    }
}
