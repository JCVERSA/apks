package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.GUID;
import java.io.IOException;
import java.io.InputStream;

public interface ChunkReader {
    boolean canFail();

    GUID[] getApplyingIds();

    Chunk read(GUID guid, InputStream inputStream, long j) throws IOException;
}
