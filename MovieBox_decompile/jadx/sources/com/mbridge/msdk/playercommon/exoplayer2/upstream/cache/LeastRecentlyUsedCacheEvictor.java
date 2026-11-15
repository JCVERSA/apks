package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import java.util.Comparator;
import java.util.TreeSet;

public final class LeastRecentlyUsedCacheEvictor implements CacheEvictor, Comparator<CacheSpan> {
    private long currentSize;
    private final TreeSet<CacheSpan> leastRecentlyUsed = new TreeSet<>(this);
    private final long maxBytes;

    public LeastRecentlyUsedCacheEvictor(long j10) {
        this.maxBytes = j10;
    }

    private void evictCache(Cache cache, long j10) {
        while (this.currentSize + j10 > this.maxBytes && !this.leastRecentlyUsed.isEmpty()) {
            try {
                cache.removeSpan(this.leastRecentlyUsed.first());
            } catch (Cache.CacheException unused) {
            }
        }
    }

    @Override
    public void onCacheInitialized() {
    }

    @Override
    public void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
        this.leastRecentlyUsed.add(cacheSpan);
        this.currentSize += cacheSpan.length;
        evictCache(cache, 0L);
    }

    @Override
    public void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
        this.leastRecentlyUsed.remove(cacheSpan);
        this.currentSize -= cacheSpan.length;
    }

    @Override
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        onSpanRemoved(cache, cacheSpan);
        onSpanAdded(cache, cacheSpan2);
    }

    @Override
    public void onStartFile(Cache cache, String str, long j10, long j11) {
        evictCache(cache, j11);
    }

    @Override
    public int compare(CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        long j10 = cacheSpan.lastAccessTimestamp;
        long j11 = cacheSpan2.lastAccessTimestamp;
        if (j10 - j11 == 0) {
            return cacheSpan.compareTo(cacheSpan2);
        }
        return j10 < j11 ? -1 : 1;
    }
}
