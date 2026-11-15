package com.bytedance.sdk.component.HiB.EjP.TKC.sP;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;

public class Sj {
    public static final ImageView.ScaleType Sj = ImageView.ScaleType.CENTER_INSIDE;
    public static final Bitmap.Config sP = Bitmap.Config.ARGB_4444;
    private final ImageView.ScaleType Dq;
    private int EjP;
    private int HiB;
    private final int Jcg;
    private final Bitmap.Config TKC;
    private final int vS;
    private final int uA = 1280;
    private final int TEQ = 83886080;

    public Sj(int i10, int i11, ImageView.ScaleType scaleType, Bitmap.Config config, int i12, int i13) {
        this.TKC = config;
        this.EjP = i10;
        this.HiB = i11;
        this.Dq = scaleType;
        this.vS = i12;
        this.Jcg = i13;
        Sj(i10, i11);
    }

    private static int Sj(int i10, int i11, int i12, int i13) {
        if (i10 == 0 && i11 == 0) {
            return i12;
        }
        if (i10 == 0) {
            return (int) (((double) i12) * (((double) i11) / ((double) i13)));
        }
        if (i11 == 0) {
            return i10;
        }
        double d10 = ((double) i13) / ((double) i12);
        double d11 = i11;
        return ((double) i10) * d10 > d11 ? (int) (d11 / d10) : i10;
    }

    static int Sj(int i10, int i11, int i12, int i13, int i14, int i15) {
        double dMin = Math.min(((double) i10) / ((double) i12), ((double) i11) / ((double) i13));
        if (i14 > 0 && i15 > 0) {
            dMin = Math.max(dMin, Math.min(((double) Math.max(i10, i11)) / ((double) Math.max(i14, i15)), ((double) Math.min(i10, i11)) / ((double) Math.min(i14, i15))));
        }
        return Integer.highestOneBit((int) dMin);
    }

    public Bitmap Sj(byte[] bArr) {
        Bitmap bitmapDecodeByteArray;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.EjP == 0 && this.HiB == 0) {
            options.inPreferredConfig = this.TKC;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i10 = options.outWidth;
            int i11 = options.outHeight;
            int iSj = Sj(this.EjP, this.HiB, i10, i11);
            int iSj2 = Sj(this.HiB, this.EjP, i11, i10);
            options.inJustDecodeBounds = false;
            options.inSampleSize = Sj(i10, i11, iSj, iSj2, this.vS, this.Jcg);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iSj || bitmapDecodeByteArray.getHeight() > iSj2)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iSj, iSj2, true);
                if (bitmapCreateScaledBitmap != bitmapDecodeByteArray) {
                    bitmapDecodeByteArray.recycle();
                }
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        if (bitmapDecodeByteArray != null && bitmapDecodeByteArray.getByteCount() > 83886080) {
            int width = bitmapDecodeByteArray.getWidth() / 2;
            int height = bitmapDecodeByteArray.getHeight() / 2;
            if (width > 0 && height > 0) {
                Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmapDecodeByteArray, width, height, true);
                if (bitmapCreateScaledBitmap2 != bitmapDecodeByteArray) {
                    bitmapDecodeByteArray.recycle();
                }
                return bitmapCreateScaledBitmap2;
            }
        }
        return bitmapDecodeByteArray;
    }

    private void Sj(int i10, int i11) {
        if (i10 > 1280 && i11 > 1280) {
            if (i10 > i11) {
                this.EjP = 1280;
                this.HiB = (i11 * 1280) / i10;
                return;
            } else {
                this.EjP = (i10 * 1280) / i11;
                this.HiB = 1280;
                return;
            }
        }
        if (i10 > 1280) {
            this.EjP = 1280;
            this.HiB = (i11 * 1280) / i10;
        } else if (i11 > 1280) {
            this.EjP = (i10 * 1280) / i11;
            this.HiB = 1280;
        }
    }
}
