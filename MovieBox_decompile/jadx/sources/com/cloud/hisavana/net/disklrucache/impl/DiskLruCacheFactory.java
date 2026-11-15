package com.cloud.hisavana.net.disklrucache.impl;

public class DiskLruCacheFactory implements IDiskCache.Factory {

    private final long f20790a;

    private final int f20791b;

    public DiskLruCacheFactory(long j10, int i10) {
        this.f20790a = j10;
        this.f20791b = i10;
    }

    public IDiskCache a() {
        return new DiskCacheImpl(null, this.f20790a, this.f20791b);
    }
}
