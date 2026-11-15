package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.GUID;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public interface ChunkModifier {
    boolean isApplicable(GUID guid);

    ModificationResult modify(GUID guid, InputStream inputStream, OutputStream outputStream) throws IOException;
}
