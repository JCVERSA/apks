package com.mgtv.drm.loader;

public class LibLoaderError extends UnsatisfiedLinkError {
    private int extra;

    public LibLoaderError(String str, int i) {
        super(str);
        this.extra = i;
    }

    public int getExtra() {
        return this.extra;
    }
}
