package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class ExifInterfaceImageHeaderParser implements ImageHeaderParser {
    @Override
    public int getOrientation(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        int iC = new androidx.exifinterface.media.a(inputStream).c("Orientation", 1);
        if (iC == 0) {
            return -1;
        }
        return iC;
    }

    @Override
    @NonNull
    public ImageHeaderParser.ImageType getType(@NonNull InputStream inputStream) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override
    @NonNull
    public ImageHeaderParser.ImageType getType(@NonNull ByteBuffer byteBuffer) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override
    public int getOrientation(@NonNull ByteBuffer byteBuffer, @NonNull ArrayPool arrayPool) throws IOException {
        return getOrientation(ByteBufferUtil.toStream(byteBuffer), arrayPool);
    }
}
