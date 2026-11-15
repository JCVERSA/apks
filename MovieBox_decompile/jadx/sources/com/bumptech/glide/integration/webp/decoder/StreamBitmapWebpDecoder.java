package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.IOException;
import java.io.InputStream;

public class StreamBitmapWebpDecoder implements ResourceDecoder<InputStream, Bitmap> {
    private final ArrayPool byteArrayPool;
    private final WebpDownsampler downsampler;

    public StreamBitmapWebpDecoder(WebpDownsampler webpDownsampler, ArrayPool arrayPool) {
        this.downsampler = webpDownsampler;
        this.byteArrayPool = arrayPool;
    }

    @Override
    public Resource<Bitmap> decode(@NonNull InputStream inputStream, int i10, int i11, @NonNull Options options) throws IOException {
        return this.downsampler.decode(inputStream, i10, i11, options);
    }

    @Override
    public boolean handles(@NonNull InputStream inputStream, @NonNull Options options) throws IOException {
        return this.downsampler.handles(inputStream, options);
    }
}
