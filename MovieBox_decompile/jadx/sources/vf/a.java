package vf;

import android.content.Context;
import android.graphics.Bitmap;
import com.blankj.utilcode.util.ImageUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;

public class a {
    public static Bitmap a(Context context, Bitmap bitmap, int i10, int i11, boolean z10, int i12) {
        if (bitmap == null) {
            return null;
        }
        try {
            if (bitmap.isRecycled()) {
                return null;
            }
            BitmapPool bitmapPool = Glide.get(context).getBitmapPool();
            Bitmap bitmapG = (bitmap.getWidth() < i10 || bitmap.getHeight() < i11) ? ImageUtils.g(bitmap, i10, i11, z10) : TransformationUtils.centerCrop(bitmapPool, bitmap, i10, i11);
            Bitmap bitmapRoundedCorners = TransformationUtils.roundedCorners(bitmapPool, bitmapG, i12);
            c(bitmapG);
            if (z10) {
                c(bitmap);
            }
            return bitmapRoundedCorners;
        } catch (Throwable unused) {
            return ImageUtils.g(bitmap, i10, i11, z10);
        }
    }

    private static boolean b(Bitmap bitmap) {
        return bitmap == null || bitmap.getWidth() == 0 || bitmap.getHeight() == 0;
    }

    public static void c(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    public static Bitmap d(Bitmap bitmap, int i10, int i11, boolean z10) {
        if (b(bitmap)) {
            return null;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i10, i11, true);
        if (z10 && !bitmap.isRecycled() && bitmapCreateScaledBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateScaledBitmap;
    }
}
