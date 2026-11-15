package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.data.StreamBitratePropertiesChunk;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;

public class StreamBitratePropertiesReader implements ChunkReader {
    private static final GUID[] APPLYING = {GUID.GUID_STREAM_BITRATE_PROPERTIES};

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
        StreamBitratePropertiesChunk streamBitratePropertiesChunk = new StreamBitratePropertiesChunk(Utils.readBig64(inputStream));
        long uint16 = Utils.readUINT16(inputStream);
        for (int i = 0; i < uint16; i++) {
            streamBitratePropertiesChunk.addBitrateRecord(Utils.readUINT16(inputStream) & 255, Utils.readUINT32(inputStream));
        }
        streamBitratePropertiesChunk.setPosition(j);
        return streamBitratePropertiesChunk;
    }
}
