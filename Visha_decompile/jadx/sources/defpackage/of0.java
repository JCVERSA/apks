package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;

public class of0 extends if0 {
    public static final String c = "of0";
    public final int a = 16;
    public final int b = 9;

    @Override
    public Bitmap b(Context context, BitmapPool bitmapPool, Bitmap bitmap, int i, int i2) {
        return c(bitmap);
    }

    public final Bitmap c(Bitmap bitmap) {
        int i;
        int i2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i3 = width - 1;
        int i4 = height - 1;
        int i5 = 0;
        boolean z = false;
        for (int i6 = 0; i6 < width; i6++) {
            for (int i7 = 0; i7 < height; i7++) {
                if (d(iArr[(i7 * width) + i6])) {
                    i5 = i6;
                    break;
                }
                if (!z) {
                    z = true;
                }
            }
            if (i5 > 0) {
                break;
            }
        }
        int i8 = i3;
        int i9 = i8;
        while (i8 >= 0) {
            for (int i10 = 0; i10 < height; i10++) {
                if (d(iArr[(i10 * width) + i8])) {
                    i9 = i8;
                    break;
                }
                if (!z) {
                    z = true;
                }
            }
            if (i9 < i3) {
                break;
            }
            i8--;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < height; i12++) {
            for (int i13 = 0; i13 < width; i13++) {
                if (d(iArr[(i12 * width) + i13])) {
                    i11 = i12;
                    break;
                }
                if (!z) {
                    z = true;
                }
            }
            if (i11 > 0) {
                break;
            }
        }
        int i14 = i4;
        int i15 = i14;
        while (i14 >= 0) {
            int i16 = 0;
            while (i16 < width) {
                int i17 = i15;
                if (d(iArr[(i14 * width) + i16])) {
                    i15 = i14;
                    break;
                }
                if (!z) {
                    z = true;
                }
                i16++;
                i15 = i17;
            }
            if (i15 < i4) {
                break;
            }
            i14--;
        }
        if (z && i5 < i9 && i11 < i15 && (i5 > 5 || width - i9 > 5 || i11 > 5 || height - i15 > 5)) {
            String str = c;
            Log.e(str, "left:" + i5 + " right:" + i9 + " top:" + i11 + " bottom:" + i15);
            int i18 = (i9 - i5) + 1;
            int i19 = (i15 - i11) + 1;
            float f = ((float) this.a) / ((float) this.b);
            float f2 = (float) i18;
            float f3 = (float) i19;
            if (f2 / f3 > f) {
                i2 = (int) (f3 * f);
                i = i19;
            } else {
                i = (int) (f2 / f);
                i2 = i18;
            }
            int i20 = i5 + (i18 / 2);
            int i21 = i11 + (i19 / 2);
            int i22 = i2 / 2;
            int iMax = Math.max(i20 - i22, 0);
            int iMin = Math.min(i20 + i22, i3);
            int i23 = i / 2;
            int iMax2 = Math.max(i21 - i23, 0);
            int iMin2 = Math.min(i21 + i23, i4);
            if (iMax < iMin && iMax2 < iMin2) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, iMax, iMax2, (iMin - iMax) + 1, (iMin2 - iMax2) + 1);
                Log.i(str, "cropBlackBorders cost time:" + (System.currentTimeMillis() - jCurrentTimeMillis));
                return bitmapCreateBitmap;
            }
        }
        Log.w(c, "No valid crop area found, returning original bitmap.");
        return bitmap;
    }

    public final boolean d(int i) {
        return ((i >> 16) & 255) > 20 || ((i >> 8) & 255) > 20 || (i & 255) > 20;
    }

    @Override
    public boolean equals(Object obj) {
        return false;
    }

    @Override
    public int hashCode() {
        return 0;
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(of0.class.getSimpleName().getBytes());
    }
}
