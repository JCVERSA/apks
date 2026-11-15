package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Util;

public final class UnitBitmapDecoder implements ResourceDecoder<Bitmap, Bitmap> {

    public static final class NonOwnedBitmapResource implements Resource<Bitmap> {
        private final Bitmap bitmap;

        public NonOwnedBitmapResource(@NonNull Bitmap bitmap) {
            this.bitmap = bitmap;
        }

        @Override
        @NonNull
        public Class<Bitmap> getResourceClass() {
            return Bitmap.class;
        }

        @Override
        public int getSize() {
            return Util.getBitmapByteSize(this.bitmap);
        }

        @Override
        public void recycle() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NonNull
        public Bitmap get() {
            return this.bitmap;
        }
    }

    @Override
    public boolean handles(@NonNull Bitmap bitmap, @NonNull Options options) {
        return true;
    }

    @Override
    public Resource<Bitmap> decode(@NonNull Bitmap bitmap, int i, int i2, @NonNull Options options) {
        return new NonOwnedBitmapResource(bitmap);
    }
}
