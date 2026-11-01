package q0;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;

public final class b {
    public static Bitmap a(Resources resources, int i2, int i3, int i4) {
        Bitmap bitmapDecodeResource;
        try {
            bitmapDecodeResource = BitmapFactory.decodeResource(resources, i2);
            if (bitmapDecodeResource != null) {
                try {
                    int width = bitmapDecodeResource.getWidth();
                    int height = bitmapDecodeResource.getHeight();
                    if (i3 >= width && i4 >= height) {
                        return bitmapDecodeResource;
                    }
                    Matrix matrix = new Matrix();
                    matrix.postScale((i3 * 1.1f) / width, (i4 * 1.1f) / height);
                    return Bitmap.createBitmap(bitmapDecodeResource, 0, 0, width, height, matrix, true);
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
            bitmapDecodeResource = null;
        }
        return bitmapDecodeResource != null ? bitmapDecodeResource : Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
    }

    public static Bitmap b(AdaptiveIconDrawable adaptiveIconDrawable, int i2) {
        float fMax = i2 / Math.max(adaptiveIconDrawable.getIntrinsicWidth(), adaptiveIconDrawable.getIntrinsicHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) (adaptiveIconDrawable.getIntrinsicWidth() * fMax), (int) (fMax * adaptiveIconDrawable.getIntrinsicHeight()), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        adaptiveIconDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        adaptiveIconDrawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Bitmap c(byte[] bArr, int i2, byte[] bArr2) {
        int i3;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inTempStorage = bArr2;
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i4 = options.outWidth;
            if (i4 != -1 && (i3 = options.outHeight) != -1) {
                options.inJustDecodeBounds = false;
                options.inSampleSize = Math.min(i4 / i2, i3 / i2);
                return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Bitmap d(Resources resources, int i2, int i3, int i4) {
        return e(resources, null, i2, i3, i4, 0);
    }

    public static Bitmap e(Resources resources, Resources.Theme theme, int i2, int i3, int i4, int i5) {
        try {
            Drawable drawableI = z0.c.i(resources, theme, i2);
            if (drawableI != null) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawableI.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                if (i5 != 0) {
                    z0.f.i(drawableI, i5);
                }
                drawableI.draw(canvas);
                return bitmapCreateBitmap;
            }
        } catch (Exception unused) {
        }
        return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
    }

    public static Bitmap f(Bitmap bitmap, float f2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.setRotate(f2, width >> 1, height >> 1);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
    }
}
