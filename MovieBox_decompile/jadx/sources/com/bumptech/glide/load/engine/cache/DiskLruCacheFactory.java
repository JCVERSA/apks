package com.bumptech.glide.load.engine.cache;

import java.io.File;

public class DiskLruCacheFactory implements DiskCache.Factory {
    private final CacheDirectoryGetter cacheDirectoryGetter;
    private final long diskCacheSize;

    public interface CacheDirectoryGetter {
        File getCacheDirectory();
    }

    public DiskLruCacheFactory(final String str, long j10) {
        this(new CacheDirectoryGetter() {
            @Override
            public File getCacheDirectory() {
                return new File(str);
            }
        }, j10);
    }

    @Override
    public DiskCache build() {
        File cacheDirectory = this.cacheDirectoryGetter.getCacheDirectory();
        if (cacheDirectory == null) {
            return null;
        }
        if (cacheDirectory.isDirectory() || cacheDirectory.mkdirs()) {
            return DiskLruCacheWrapper.create(cacheDirectory, this.diskCacheSize);
        }
        return null;
    }

    public DiskLruCacheFactory(final String str, final String str2, long j10) {
        this(new CacheDirectoryGetter() {
            @Override
            public File getCacheDirectory() {
                return new File(str, str2);
            }
        }, j10);
    }

    public DiskLruCacheFactory(CacheDirectoryGetter cacheDirectoryGetter, long j10) {
        this.diskCacheSize = j10;
        this.cacheDirectoryGetter = cacheDirectoryGetter;
    }
}
