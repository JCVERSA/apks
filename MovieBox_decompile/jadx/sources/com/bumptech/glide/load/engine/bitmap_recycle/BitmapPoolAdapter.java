package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

public class BitmapPoolAdapter implements BitmapPool {
    @Override
    @NonNull
    public Bitmap get(int i10, int i11, Bitmap.Config config) {
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override
    @NonNull
    public Bitmap getDirty(int i10, int i11, Bitmap.Config config) {
        return get(i10, i11, config);
    }

    @Override
    public long getMaxSize() {
        return 0L;
    }

    @Override
    public void put(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override
    public void clearMemory() {
    }

    @Override
    public void setSizeMultiplier(float f10) {
    }

    @Override
    public void trimMemory(int i10) {
    }
}
