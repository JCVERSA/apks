package com.cloud.hisavana.net.disklrucache.impl;

public class DiskLruCacheFactory implements IDiskCache.Factory {
    public final long a;
    public final int b;

    public DiskLruCacheFactory(long j, int i) {
        this.a = j;
        this.b = i;
    }

    public IDiskCache a() {
        return new DiskCacheImpl(null, this.a, this.b);
    }
}
