package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;

public abstract class db {
    public static Bitmap a(Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, int i, int i2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setHasAlpha(true);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, i, i2, paint, 31);
        if (bitmap != null) {
            Bitmap bitmapB = b(bitmap, i, i2);
            canvas.drawBitmap(bitmapB, new Rect(0, 0, bitmapB.getWidth(), bitmapB.getHeight()), new Rect(0, 0, i, i2), paint);
            bitmapB.recycle();
        }
        paint.setXfermode(porterDuffXfermode);
        if (bitmap2 != null) {
            Bitmap bitmapB2 = b(bitmap2, i, i2);
            canvas.drawBitmap(bitmapB2, 0.0f, 0.0f, paint);
            if (bitmapB2 != null) {
                bitmapB2.recycle();
            }
        }
        paint.setXfermode(null);
        if (bitmap3 != null) {
            Bitmap bitmapB3 = b(bitmap3, i, i2);
            canvas.drawBitmap(bitmapB3, 0.0f, 0.0f, paint);
            if (bitmapB3 != null) {
                bitmapB3.recycle();
            }
        }
        canvas.restoreToCount(iSaveLayer);
        return bitmapCreateBitmap;
    }

    public static Bitmap b(Bitmap bitmap, int i, int i2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale((i * 1.0f) / width, (i2 * 1.0f) / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }
}
