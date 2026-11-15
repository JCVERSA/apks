package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import java.io.File;

@Deprecated
public final class ExternalCacheDiskCacheFactory extends DiskLruCacheFactory {
    public ExternalCacheDiskCacheFactory(Context context) {
        this(context, DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, DiskCache.Factory.DEFAULT_DISK_CACHE_SIZE);
    }

    public ExternalCacheDiskCacheFactory(Context context, int i10) {
        this(context, DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, i10);
    }

    public ExternalCacheDiskCacheFactory(final Context context, final String str, int i10) {
        super(new DiskLruCacheFactory.CacheDirectoryGetter() {
            @Override
            public File getCacheDirectory() {
                File externalCacheDir = context.getExternalCacheDir();
                if (externalCacheDir == null) {
                    return null;
                }
                return str != null ? new File(externalCacheDir, str) : externalCacheDir;
            }
        }, i10);
    }
}
