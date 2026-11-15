package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.AsfExtendedHeader;
import com.transsion.audiotagger.audio.asf.data.ChunkContainer;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.List;

public class AsfExtHeaderReader extends ChunkContainerReader<AsfExtendedHeader> {
    static final boolean $assertionsDisabled = false;
    private static final GUID[] APPLYING = {GUID.GUID_HEADER_EXTENSION};

    public AsfExtHeaderReader(List<Class<? extends ChunkReader>> list, boolean z) {
        super(list, z);
    }

    @Override
    public boolean canFail() {
        return false;
    }

    @Override
    public GUID[] getApplyingIds() {
        return (GUID[]) APPLYING.clone();
    }

    @Override
    public ChunkContainer read(GUID guid, InputStream inputStream, long j) throws IOException, IllegalArgumentException {
        return super.read(guid, inputStream, j);
    }

    @Override
    public AsfExtendedHeader createContainer(long j, BigInteger bigInteger, InputStream inputStream) throws IOException {
        Utils.readGUID(inputStream);
        Utils.readUINT16(inputStream);
        Utils.readUINT32(inputStream);
        return new AsfExtendedHeader(j, bigInteger);
    }
}
