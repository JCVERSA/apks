package com.transsion.audiotagger.audio.aiff.chunk;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.aiff.AiffAudioHeader;
import com.transsion.audiotagger.audio.aiff.AiffUtil;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Date;

public class CommentsChunk extends Chunk {
    private static final int COUNT_LENGTH = 2;
    private static final int MARKERID_LENGTH = 2;
    private static final int TIMESTAMP_LENGTH = 4;
    private AiffAudioHeader aiffHeader;

    public CommentsChunk(ChunkHeader chunkHeader, ByteBuffer byteBuffer, AiffAudioHeader aiffAudioHeader) {
        super(byteBuffer, chunkHeader);
        this.aiffHeader = aiffAudioHeader;
    }

    @Override
    public boolean readChunk() throws IOException {
        int iU = Utils.u(this.chunkData.getShort());
        for (int i = 0; i < iU; i++) {
            Date dateTimestampToDate = AiffUtil.timestampToDate(Utils.u(this.chunkData.getInt()));
            Utils.u(this.chunkData.getShort());
            int iU2 = Utils.u(this.chunkData.getShort());
            String str = Utils.getString(this.chunkData, 0, iU2, StandardCharsets.ISO_8859_1) + " " + AiffUtil.formatDate(dateTimestampToDate);
            if (iU2 % 2 != 0) {
                this.chunkData.get();
            }
            this.aiffHeader.addComment(str);
        }
        return true;
    }
}
