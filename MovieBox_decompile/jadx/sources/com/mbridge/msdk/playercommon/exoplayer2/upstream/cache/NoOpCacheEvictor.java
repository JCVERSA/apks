package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

public final class NoOpCacheEvictor implements CacheEvictor {
    @Override
    public void onCacheInitialized() {
    }

    @Override
    public void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
    }

    @Override
    public void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
    }

    @Override
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
    }

    @Override
    public void onStartFile(Cache cache, String str, long j10, long j11) {
    }
}
