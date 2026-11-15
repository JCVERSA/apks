package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter;
import com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener;
import java.io.IOException;

public final class BitmapImageDecoderResourceDecoder implements ResourceDecoder<ImageDecoder.Source, Bitmap> {
    private static final String TAG = "BitmapImageDecoder";
    private final BitmapPool bitmapPool = new BitmapPoolAdapter();

    @Override
    public Resource<Bitmap> decode(@NonNull ImageDecoder.Source source, int i10, int i11, @NonNull Options options) throws IOException {
        return decode2(a.a(source), i10, i11, options);
    }

    public boolean handles2(@NonNull ImageDecoder.Source source, @NonNull Options options) throws IOException {
        return true;
    }

    public Resource<Bitmap> decode2(@NonNull ImageDecoder.Source source, int i10, int i11, @NonNull Options options) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new DefaultOnHeaderDecodedListener(i10, i11, options));
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Decoded [" + bitmapDecodeBitmap.getWidth() + "x" + bitmapDecodeBitmap.getHeight() + "] for [" + i10 + "x" + i11 + "]");
        }
        return new BitmapResource(bitmapDecodeBitmap, this.bitmapPool);
    }

    @Override
    public boolean handles(@NonNull ImageDecoder.Source source, @NonNull Options options) throws IOException {
        return handles2(a.a(source), options);
    }
}
