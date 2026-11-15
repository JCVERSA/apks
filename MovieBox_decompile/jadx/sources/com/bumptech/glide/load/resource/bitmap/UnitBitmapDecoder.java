package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Util;

public final class UnitBitmapDecoder implements ResourceDecoder<Bitmap, Bitmap> {

    private static final class NonOwnedBitmapResource implements Resource<Bitmap> {
        private final Bitmap bitmap;

        NonOwnedBitmapResource(@NonNull Bitmap bitmap) {
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

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NonNull
        public Bitmap get() {
            return this.bitmap;
        }

        @Override
        public void recycle() {
        }
    }

    @Override
    public boolean handles(@NonNull Bitmap bitmap, @NonNull Options options) {
        return true;
    }

    @Override
    public Resource<Bitmap> decode(@NonNull Bitmap bitmap, int i10, int i11, @NonNull Options options) {
        return new NonOwnedBitmapResource(bitmap);
    }
}
