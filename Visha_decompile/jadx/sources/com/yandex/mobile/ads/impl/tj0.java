package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

public final class tj0 extends up1<Bitmap> {
    private static final Object y = new Object();
    private final Object s;

    @Nullable
    @GuardedBy("mLock")
    private xq1.b<Bitmap> t;
    private final Bitmap.Config u;
    private final int v;
    private final int w;
    private final ImageView.ScaleType x;

    public tj0(String str, xq1.b<Bitmap> bVar, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, @Nullable xq1.a aVar) {
        super(0, str, aVar);
        this.s = new Object();
        a(new m00(2.0f, 1000, 2));
        this.t = bVar;
        this.u = config;
        this.v = i;
        this.w = i2;
        this.x = scaleType;
    }

    private xq1<Bitmap> b(xc1 xc1Var) {
        Bitmap bitmapCreateScaledBitmap;
        byte[] bArr = xc1Var.b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.v == 0 && this.w == 0) {
            options.inPreferredConfig = this.u;
            bitmapCreateScaledBitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int iA = a(this.v, this.w, i, i2, this.x);
            int iA2 = a(this.w, this.v, i2, i, this.x);
            options.inJustDecodeBounds = false;
            float f = 1.0f;
            while (true) {
                float f2 = 2.0f * f;
                if (f2 > Math.min(((double) i) / ((double) iA), ((double) i2) / ((double) iA2))) {
                    break;
                }
                f = f2;
            }
            options.inSampleSize = (int) f;
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray == null || (bitmapDecodeByteArray.getWidth() <= iA && bitmapDecodeByteArray.getHeight() <= iA2)) {
                bitmapCreateScaledBitmap = bitmapDecodeByteArray;
            } else {
                bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iA, iA2, true);
                bitmapDecodeByteArray.recycle();
            }
        }
        return bitmapCreateScaledBitmap == null ? xq1.a(new dg1(xc1Var)) : xq1.a(bitmapCreateScaledBitmap, wh0.a(xc1Var));
    }

    @Override
    public final void a() {
        super.a();
        synchronized (this.s) {
            this.t = null;
        }
    }

    @Override
    public final int g() {
        return 1;
    }

    @Override
    public final void a(Bitmap bitmap) {
        xq1.b<Bitmap> bVar;
        Bitmap bitmap2 = bitmap;
        synchronized (this.s) {
            bVar = this.t;
        }
        if (bVar != null) {
            bVar.a(bitmap2);
        }
    }

    private static int a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        }
        if (i == 0) {
            return (int) (((double) i3) * (((double) i2) / ((double) i4)));
        }
        if (i2 == 0) {
            return i;
        }
        double d = ((double) i4) / ((double) i3);
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            double d2 = i2;
            return ((double) i) * d < d2 ? (int) (d2 / d) : i;
        }
        double d3 = i2;
        return ((double) i) * d > d3 ? (int) (d3 / d) : i;
    }

    @Override
    public final xq1<Bitmap> a(xc1 xc1Var) {
        xq1<Bitmap> xq1VarB;
        synchronized (y) {
            try {
                try {
                    xq1VarB = b(xc1Var);
                } catch (OutOfMemoryError e) {
                    Object[] objArr = {Integer.valueOf(xc1Var.b.length), l()};
                    boolean z = ti2.a;
                    sp0.b(objArr);
                    return xq1.a(new dg1(e));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return xq1VarB;
    }
}
