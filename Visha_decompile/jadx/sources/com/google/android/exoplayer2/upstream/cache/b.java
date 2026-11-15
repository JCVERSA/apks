package com.google.android.exoplayer2.upstream.cache;

public interface b extends Cache.a {
    void b(Cache cache, String str, long j, long j2);

    void onCacheInitialized();

    boolean requiresCacheSpanTouches();
}
