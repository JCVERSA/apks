package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;

public class MemoryCacheAdapter implements MemoryCache {
    private MemoryCache.ResourceRemovedListener listener;

    @Override
    public void clearMemory() {
    }

    @Override
    public long getCurrentSize() {
        return 0L;
    }

    @Override
    public long getMaxSize() {
        return 0L;
    }

    @Override
    @Nullable
    public Resource<?> put(@NonNull Key key, @Nullable Resource<?> resource) {
        if (resource == null) {
            return null;
        }
        this.listener.onResourceRemoved(resource);
        return null;
    }

    @Override
    @Nullable
    public Resource<?> remove(@NonNull Key key) {
        return null;
    }

    @Override
    public void setResourceRemovedListener(@NonNull MemoryCache.ResourceRemovedListener resourceRemovedListener) {
        this.listener = resourceRemovedListener;
    }

    @Override
    public void setSizeMultiplier(float f) {
    }

    @Override
    public void trimMemory(int i) {
    }
}
