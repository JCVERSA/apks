package com.cloud.hisavana.net.disklrucache.impl;

public class DiskCacheProvider implements IDiskCache.Provider {

    private volatile IDiskCache f20787a;

    private volatile IDiskCache f20788b;

    private volatile IDiskCache f20789c;

    private IDiskCache a(long j10) {
        if (this.f20789c == null) {
            synchronized (this) {
                try {
                    if (this.f20789c == null) {
                        this.f20789c = new DiskLruCacheFactory(j10, 4).a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f20789c;
    }

    private IDiskCache c(long j10) {
        if (this.f20787a == null) {
            synchronized (this) {
                try {
                    if (this.f20787a == null) {
                        this.f20787a = new DiskLruCacheFactory(j10, 1).a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f20787a;
    }

    private IDiskCache d(long j10) {
        if (this.f20788b == null) {
            synchronized (this) {
                try {
                    if (this.f20788b == null) {
                        this.f20788b = new DiskLruCacheFactory(j10, 3).a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f20788b;
    }

    public IDiskCache b(long j10, int i10) {
        if (i10 != 3) {
            return i10 != 4 ? c(j10) : a(j10);
        }
        return d(j10);
    }
}
