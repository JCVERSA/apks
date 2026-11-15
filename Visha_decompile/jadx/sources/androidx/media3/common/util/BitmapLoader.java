package androidx.media3.common.util;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaMetadata;
import defpackage.im5;

@UnstableApi
public interface BitmapLoader {
    im5 decodeBitmap(byte[] bArr);

    im5 loadBitmap(Uri uri);

    @Nullable
    default im5 loadBitmapFromMetadata(MediaMetadata mediaMetadata) {
        byte[] bArr = mediaMetadata.artworkData;
        if (bArr != null) {
            return decodeBitmap(bArr);
        }
        Uri uri = mediaMetadata.artworkUri;
        if (uri != null) {
            return loadBitmap(uri);
        }
        return null;
    }

    boolean supportsMimeType(String str);
}
