package com.mgadplus.Imagework;

import com.bumptech.glide.load.engine.DiskCacheStrategy;

public enum d {
    NONE(DiskCacheStrategy.NONE),
    ALL(DiskCacheStrategy.ALL);

    private DiskCacheStrategy strategy;

    d(DiskCacheStrategy diskCacheStrategy) {
        this.strategy = diskCacheStrategy;
    }

    public DiskCacheStrategy getStrategy() {
        return this.strategy;
    }
}
