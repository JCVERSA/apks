package com.transsion.audiotagger.audio.asf.util;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import java.io.Serializable;
import java.util.Comparator;

public final class ChunkPositionComparator implements Comparator<Chunk>, Serializable {
    private static final long serialVersionUID = -6337108235272376289L;

    @Override
    public int compare(Chunk chunk, Chunk chunk2) {
        return Long.valueOf(chunk.getPosition()).compareTo(Long.valueOf(chunk2.getPosition()));
    }
}
