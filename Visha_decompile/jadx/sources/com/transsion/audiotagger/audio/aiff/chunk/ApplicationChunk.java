package com.transsion.audiotagger.audio.aiff.chunk;

import com.transsion.audiotagger.audio.aiff.AiffAudioHeader;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import java.io.IOException;
import java.nio.ByteBuffer;

public class ApplicationChunk extends Chunk {
    private static final String SIGNATURE_PDOS = "pdos";
    private static final String SIGNATURE_STOC = "stoc";
    private AiffAudioHeader aiffHeader;

    public ApplicationChunk(ChunkHeader chunkHeader, ByteBuffer byteBuffer, AiffAudioHeader aiffAudioHeader) {
        super(byteBuffer, chunkHeader);
        this.aiffHeader = aiffAudioHeader;
    }

    @Override
    public boolean readChunk() throws IOException {
        String fourBytesAsChars = Utils.readFourBytesAsChars(this.chunkData);
        String pascalString = (SIGNATURE_STOC.equals(fourBytesAsChars) || SIGNATURE_PDOS.equals(fourBytesAsChars)) ? Utils.readPascalString(this.chunkData) : null;
        this.aiffHeader.addApplicationIdentifier(fourBytesAsChars + ": " + pascalString);
        return true;
    }
}
