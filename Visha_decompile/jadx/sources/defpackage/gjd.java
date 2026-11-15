package defpackage;

import android.graphics.Bitmap;
import android.graphics.Matrix;

public abstract class gjd {
    public static Bitmap a(Bitmap bitmap, float f, float f2) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width == 0 || height == 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(f / width, f2 / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }
}
