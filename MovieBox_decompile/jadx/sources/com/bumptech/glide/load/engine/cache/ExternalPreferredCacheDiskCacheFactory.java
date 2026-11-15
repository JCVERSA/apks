package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import androidx.annotation.Nullable;
import java.io.File;

public final class ExternalPreferredCacheDiskCacheFactory extends DiskLruCacheFactory {
    public ExternalPreferredCacheDiskCacheFactory(Context context) {
        this(context, DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, 262144000L);
    }

    public ExternalPreferredCacheDiskCacheFactory(Context context, long j10) {
        this(context, DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, j10);
    }

    public ExternalPreferredCacheDiskCacheFactory(final Context context, final String str, long j10) {
        super(new DiskLruCacheFactory.CacheDirectoryGetter() {
            @Nullable
            private File getInternalCacheDirectory() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    return null;
                }
                return str != null ? new File(cacheDir, str) : cacheDir;
            }

            @Override
            public File getCacheDirectory() {
                File externalCacheDir;
                File internalCacheDirectory = getInternalCacheDirectory();
                if ((internalCacheDirectory == null || !internalCacheDirectory.exists()) && (externalCacheDir = context.getExternalCacheDir()) != null && externalCacheDir.canWrite()) {
                    return str != null ? new File(externalCacheDir, str) : externalCacheDir;
                }
                return internalCacheDirectory;
            }
        }, j10);
    }
}
