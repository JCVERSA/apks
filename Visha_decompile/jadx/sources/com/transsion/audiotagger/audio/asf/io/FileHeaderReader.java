package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.FileHeader;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;

public class FileHeaderReader implements ChunkReader {
    private static final GUID[] APPLYING = {GUID.GUID_FILE};

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
        inputStream.skip(16L);
        FileHeader fileHeader = new FileHeader(big64, Utils.readBig64(inputStream), Utils.readBig64(inputStream), Utils.readBig64(inputStream), Utils.readBig64(inputStream), Utils.readBig64(inputStream), Utils.readBig64(inputStream), Utils.readUINT32(inputStream), Utils.readUINT32(inputStream), Utils.readUINT32(inputStream), Utils.readUINT32(inputStream));
        fileHeader.setPosition(j);
        return fileHeader;
    }
}
