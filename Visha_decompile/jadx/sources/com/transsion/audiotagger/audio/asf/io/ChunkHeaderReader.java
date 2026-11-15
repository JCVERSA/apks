package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;

final class ChunkHeaderReader implements ChunkReader {
    private static final GUID[] APPLYING = {GUID.GUID_UNSPECIFIED};
    private static final ChunkHeaderReader INSTANCE = new ChunkHeaderReader();

    private ChunkHeaderReader() {
    }

    public static ChunkHeaderReader getInstance() {
        return INSTANCE;
    }

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
        inputStream.skip(big64.longValue() - 24);
        return new Chunk(guid, j, big64);
    }
}
