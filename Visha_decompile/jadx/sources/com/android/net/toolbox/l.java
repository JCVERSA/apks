package com.android.net.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.android.net.v;

public final class l extends com.android.net.n<Bitmap> {
    private static final Object r = new Object();
    private final Object l;
    private com.android.net.p.b<Bitmap> m;
    private final Bitmap.Config n;
    private final int o;
    private final int p;
    private final ImageView.ScaleType q;

    public l(String str, com.android.net.p.b<Bitmap> bVar, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, com.android.net.p.a aVar) {
        super(0, str, aVar);
        this.l = new Object();
        this.j = new com.android.net.e(1000, 2, 2.0f);
        this.m = bVar;
        this.n = config;
        this.o = i;
        this.p = i2;
        this.q = scaleType;
    }

    private static int a(int i, int i2, int i3, int i4) {
        double dMin = Math.min(((double) i) / ((double) i3), ((double) i2) / ((double) i4));
        float f = 1.0f;
        while (true) {
            float f2 = 2.0f * f;
            if (f2 > dMin) {
                return (int) f;
            }
            f = f2;
        }
    }

    @Override
    public final com.android.net.n.b i() {
        return com.android.net.n.b.LOW;
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
    public final com.android.net.p<Bitmap> a(com.android.net.k kVar) {
        Bitmap bitmapDecodeByteArray;
        com.android.net.p<Bitmap> pVarA;
        synchronized (r) {
            try {
                try {
                    byte[] bArr = kVar.b;
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    if (this.o == 0 && this.p == 0) {
                        options.inPreferredConfig = this.n;
                        bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                    } else {
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                        int i = options.outWidth;
                        int i2 = options.outHeight;
                        int iA = a(this.o, this.p, i, i2, this.q);
                        int iA2 = a(this.p, this.o, i2, i, this.q);
                        options.inJustDecodeBounds = false;
                        options.inSampleSize = a(i, i2, iA, iA2);
                        bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                        if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iA || bitmapDecodeByteArray.getHeight() > iA2)) {
                            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iA, iA2, true);
                            bitmapDecodeByteArray.recycle();
                            bitmapDecodeByteArray = bitmapCreateScaledBitmap;
                        }
                    }
                    pVarA = bitmapDecodeByteArray == null ? com.android.net.p.a(new com.android.net.m(kVar)) : com.android.net.p.a(bitmapDecodeByteArray, g.a(kVar));
                } catch (OutOfMemoryError e) {
                    v.c("Caught OOM for %d byte image, url=%s", Integer.valueOf(kVar.b.length), this.b);
                    return com.android.net.p.a(new com.android.net.m(e));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return pVarA;
    }

    @Override
    public final void a() {
        super.a();
        synchronized (this.l) {
            this.m = null;
        }
    }

    @Override
    public final void a(Bitmap bitmap) {
        com.android.net.p.b<Bitmap> bVar;
        Bitmap bitmap2 = bitmap;
        synchronized (this.l) {
            bVar = this.m;
        }
        if (bVar != null) {
            bVar.a(bitmap2);
        }
    }
}
