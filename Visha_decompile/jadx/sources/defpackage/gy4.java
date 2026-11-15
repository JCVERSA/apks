package defpackage;

import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import androidx.core.graphics.drawable.DrawableKt;
import com.yandex.div.core.images.BitmapSource;

public abstract class gy4 {
    public static final dq0 a(PictureDrawable pictureDrawable, Uri uri, byte[] bArr) {
        y45.j(pictureDrawable, "<this>");
        y45.j(uri, "imageUrl");
        return new dq0(DrawableKt.toBitmap$default(pictureDrawable, 0, 0, null, 7, null), bArr, uri, BitmapSource.MEMORY);
    }

    public static dq0 b(PictureDrawable pictureDrawable, Uri uri, byte[] bArr, int i, Object obj) {
        if ((i & 2) != 0) {
            bArr = null;
        }
        return a(pictureDrawable, uri, bArr);
    }
}
