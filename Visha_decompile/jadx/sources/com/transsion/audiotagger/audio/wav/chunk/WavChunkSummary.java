package com.transsion.audiotagger.audio.wav.chunk;

import com.transsion.audiotagger.audio.iff.ChunkSummary;
import com.transsion.audiotagger.audio.wav.WavChunkType;
import com.transsion.audiotagger.tag.wav.WavTag;
import java.util.logging.Logger;

public class WavChunkSummary {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.wav.chunk");

    public static ChunkSummary getChunkBeforeFirstMetadataTag(WavTag wavTag) {
        long startLocationOfFirstMetadataChunk = getStartLocationOfFirstMetadataChunk(wavTag);
        for (int i = 0; i < wavTag.getChunkSummaryList().size(); i++) {
            if (wavTag.getChunkSummaryList().get(i).getFileStartLocation() == startLocationOfFirstMetadataChunk) {
                return wavTag.getChunkSummaryList().get(i - 1);
            }
        }
        return null;
    }

    public static long getStartLocationOfFirstMetadataChunk(WavTag wavTag) {
        if (wavTag.getInfoTag() != null) {
            long jLongValue = wavTag.getInfoTag().getStartLocationInFile().longValue();
            return (wavTag.getID3Tag() == null || wavTag.getStartLocationInFileOfId3Chunk() >= jLongValue) ? jLongValue : wavTag.getStartLocationInFileOfId3Chunk();
        }
        if (wavTag.getID3Tag() != null) {
            return wavTag.getStartLocationInFileOfId3Chunk();
        }
        return -1L;
    }

    public static boolean isOnlyMetadataTagsAfterStartingMetadataTag(WavTag wavTag) {
        long startLocationOfFirstMetadataChunk = getStartLocationOfFirstMetadataChunk(wavTag);
        if (startLocationOfFirstMetadataChunk == -1) {
            logger.severe("Unable to find any metadata tags !");
            return false;
        }
        boolean z = false;
        for (ChunkSummary chunkSummary : wavTag.getChunkSummaryList()) {
            if (z) {
                if (!chunkSummary.getChunkId().equals(WavChunkType.ID3.getCode()) && !chunkSummary.getChunkId().equals(WavChunkType.LIST.getCode()) && !chunkSummary.getChunkId().equals(WavChunkType.INFO.getCode())) {
                    return false;
                }
            } else if (chunkSummary.getFileStartLocation() == startLocationOfFirstMetadataChunk) {
                z = true;
            }
        }
        return z;
    }
}
