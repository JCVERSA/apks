package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink;

public final class CacheDataSinkFactory implements DataSink.Factory {
    private final int bufferSize;
    private final Cache cache;
    private final long maxCacheFileSize;

    public CacheDataSinkFactory(Cache cache, long j10) {
        this(cache, j10, CacheDataSink.DEFAULT_BUFFER_SIZE);
    }

    @Override
    public DataSink createDataSink() {
        return new CacheDataSink(this.cache, this.maxCacheFileSize, this.bufferSize);
    }

    public CacheDataSinkFactory(Cache cache, long j10, int i10) {
        this.cache = cache;
        this.maxCacheFileSize = j10;
        this.bufferSize = i10;
    }
}
