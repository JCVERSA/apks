package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.EncodingChunk;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;

class EncodingChunkReader implements ChunkReader {
    private static final GUID[] APPLYING = {GUID.GUID_ENCODING};

    @Override
    public boolean canFail() {
        return false;
    }

    @Override
    public GUID[] getApplyingIds() {
        return (GUID[]) APPLYING.clone();
    }

    @Override
    public Chunk read(GUID guid, InputStream inputStream, long j) throws IOException {
        BigInteger big64 = Utils.readBig64(inputStream);
        EncodingChunk encodingChunk = new EncodingChunk(big64);
        inputStream.skip(20L);
        int uint16 = Utils.readUINT16(inputStream);
        int length = 46;
        for (int i = 0; i < uint16; i++) {
            String characterSizedString = Utils.readCharacterSizedString(inputStream);
            encodingChunk.addString(characterSizedString);
            length += (characterSizedString.length() * 2) + 4;
        }
        inputStream.skip(big64.longValue() - ((long) length));
        encodingChunk.setPosition(j);
        return encodingChunk;
    }
}
