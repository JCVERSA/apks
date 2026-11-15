package com.google.android.exoplayer2.upstream.cache;

public interface b extends Cache.a {
    boolean a();

    void c(Cache cache, String str, long j10, long j11);

    void onCacheInitialized();
}
