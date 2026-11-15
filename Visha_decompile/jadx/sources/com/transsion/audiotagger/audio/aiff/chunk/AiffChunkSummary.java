package com.transsion.audiotagger.audio.aiff.chunk;

import com.transsion.audiotagger.audio.iff.ChunkSummary;
import com.transsion.audiotagger.tag.aiff.AiffTag;

public class AiffChunkSummary {
    public static ChunkSummary getChunkBeforeStartingMetadataTag(AiffTag aiffTag) {
        for (int i = 0; i < aiffTag.getChunkSummaryList().size(); i++) {
            if (aiffTag.getChunkSummaryList().get(i).getFileStartLocation() == aiffTag.getStartLocationInFileOfId3Chunk()) {
                return aiffTag.getChunkSummaryList().get(i - 1);
            }
        }
        return null;
    }

    public static boolean isOnlyMetadataTagsAfterStartingMetadataTag(AiffTag aiffTag) {
        boolean z = false;
        for (ChunkSummary chunkSummary : aiffTag.getChunkSummaryList()) {
            if (z) {
                if (!chunkSummary.getChunkId().equals(AiffChunkType.TAG.getCode())) {
                    return false;
                }
            } else if (chunkSummary.getFileStartLocation() == aiffTag.getStartLocationInFileOfId3Chunk()) {
                z = true;
            }
        }
        return z;
    }
}
