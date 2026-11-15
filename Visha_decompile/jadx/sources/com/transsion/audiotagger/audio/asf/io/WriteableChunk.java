package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.GUID;
import java.io.IOException;
import java.io.OutputStream;

public interface WriteableChunk {
    long getCurrentAsfChunkSize();

    GUID getGuid();

    boolean isEmpty();

    long writeInto(OutputStream outputStream) throws IOException;
}
