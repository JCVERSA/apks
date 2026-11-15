package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

public interface CacheEvictor extends Cache.Listener {
    void onCacheInitialized();

    void onStartFile(Cache cache, String str, long j10, long j11);
}
