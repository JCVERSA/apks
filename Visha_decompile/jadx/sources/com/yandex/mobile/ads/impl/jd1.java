package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.util.LruCache;

public final class jd1 extends LruCache<String, Bitmap> {
    public jd1(int i) {
        super(i);
    }

    @Override
    public final int sizeOf(String str, Bitmap bitmap) {
        Bitmap bitmap2 = bitmap;
        return bitmap2 != null ? bitmap2.getByteCount() / 1024 : super.sizeOf(str, null);
    }
}
