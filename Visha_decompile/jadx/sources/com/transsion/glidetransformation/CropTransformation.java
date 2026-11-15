package com.transsion.glidetransformation;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.media3.extractor.AacUtil;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import java.security.MessageDigest;

public class CropTransformation extends BitmapTransformation {
    public int a;
    public int b;
    public CropType c;

    public enum CropType {
        TOP,
        CENTER,
        BOTTOM
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[CropType.values().length];
            a = iArr;
            try {
                iArr[CropType.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CropType.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[CropType.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public CropTransformation(int i, int i2) {
        this(i, i2, CropType.CENTER);
    }

    public final float a(float f) {
        int i = a.a[this.c.ordinal()];
        if (i == 2) {
            return (this.b - f) / 2.0f;
        }
        if (i != 3) {
            return 0.0f;
        }
        return this.b - f;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof CropTransformation) {
            CropTransformation cropTransformation = (CropTransformation) obj;
            if (cropTransformation.a == this.a && cropTransformation.b == this.b && cropTransformation.c == this.c) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return (-1462327117) + (this.a * AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND) + (this.b * 1000) + (this.c.ordinal() * 10);
    }

    public String toString() {
        return "CropTransformation(width=" + this.a + ", height=" + this.b + ", cropType=" + this.c + ")";
    }

    @Override
    public Bitmap transform(BitmapPool bitmapPool, Bitmap bitmap, int i, int i2) {
        int i3 = this.a;
        if (i3 > 0) {
            i = i3;
        }
        int i4 = this.b;
        if (i4 > 0) {
            i2 = i4;
        }
        if (i <= 0 || i2 <= 0) {
            return bitmap;
        }
        this.a = i;
        this.b = i2;
        Bitmap bitmap2 = bitmapPool.get(this.a, this.b, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        bitmap2.setHasAlpha(true);
        float fMax = Math.max(this.a / bitmap.getWidth(), this.b / bitmap.getHeight());
        float width = bitmap.getWidth() * fMax;
        float height = fMax * bitmap.getHeight();
        float f = (this.a - width) / 2.0f;
        float fA = a(height);
        RectF rectF = new RectF(f, fA, width + f, height + fA);
        bitmap2.setDensity(bitmap.getDensity());
        new Canvas(bitmap2).drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
        return bitmap2;
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(("jp.wasabeef.glide.transformations.CropTransformation.1" + this.a + this.b + this.c).getBytes(Key.CHARSET));
    }

    public CropTransformation(int i, int i2, CropType cropType) {
        CropType cropType2 = CropType.TOP;
        this.a = i;
        this.b = i2;
        this.c = cropType;
    }
}
