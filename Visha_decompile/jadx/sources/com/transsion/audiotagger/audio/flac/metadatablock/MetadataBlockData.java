package com.transsion.audiotagger.audio.flac.metadatablock;

import java.nio.ByteBuffer;

public interface MetadataBlockData {
    ByteBuffer getBytes();

    int getLength();
}
