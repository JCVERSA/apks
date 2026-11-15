package com.cloud.hisavana.net.disklrucache.impl;

public class DiskCacheProvider implements IDiskCache.Provider {
    public volatile IDiskCache a;
    public volatile IDiskCache b;
    public volatile IDiskCache c;

    public final IDiskCache a(long j) {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        this.c = new DiskLruCacheFactory(j, 4).a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }

    public IDiskCache b(long j, int i) {
        if (i != 3) {
            return i != 4 ? c(j) : a(j);
        }
        return d(j);
    }

    public final IDiskCache c(long j) {
        if (this.a == null) {
            synchronized (this) {
                try {
                    if (this.a == null) {
                        this.a = new DiskLruCacheFactory(j, 1).a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.a;
    }

    public final IDiskCache d(long j) {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.b = new DiskLruCacheFactory(j, 3).a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }
}
