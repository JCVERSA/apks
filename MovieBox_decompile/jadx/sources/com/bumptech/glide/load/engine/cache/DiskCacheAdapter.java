package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import java.io.File;

public class DiskCacheAdapter implements DiskCache {

    public static final class Factory implements DiskCache.Factory {
        @Override
        public DiskCache build() {
            return new DiskCacheAdapter();
        }
    }

    @Override
    public File get(Key key) {
        return null;
    }

    @Override
    public void clear() {
    }

    @Override
    public void delete(Key key) {
    }

    @Override
    public void put(Key key, DiskCache.Writer writer) {
    }
}
