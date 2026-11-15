package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.android.volley.ParseError;
import com.android.volley.Request;

public abstract class i extends Request {
    public static final float DEFAULT_IMAGE_BACKOFF_MULT = 2.0f;
    public static final int DEFAULT_IMAGE_MAX_RETRIES = 2;
    public static final int DEFAULT_IMAGE_TIMEOUT_MS = 1000;
    private static final Object sDecodeLock = new Object();
    private final Bitmap.Config mDecodeConfig;

    @Nullable
    private com.android.volley.i.b mListener;
    private final Object mLock;
    private final int mMaxHeight;
    private final int mMaxWidth;
    private final ImageView.ScaleType mScaleType;

    public i(String str, com.android.volley.i.b bVar, int i10, int i11, ImageView.ScaleType scaleType, Bitmap.Config config, com.android.volley.i.a aVar) {
        super(0, str, aVar);
        this.mLock = new Object();
        setRetryPolicy(new com.android.volley.d(1000, 2, 2.0f));
        this.mListener = bVar;
        this.mDecodeConfig = config;
        this.mMaxWidth = i10;
        this.mMaxHeight = i11;
        this.mScaleType = scaleType;
    }

    private com.android.volley.i d(com.android.volley.g gVar) {
        Bitmap bitmapDecodeByteArray;
        byte[] bArr = gVar.f18618b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.mMaxWidth == 0 && this.mMaxHeight == 0) {
            options.inPreferredConfig = this.mDecodeConfig;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i10 = options.outWidth;
            int i11 = options.outHeight;
            int iE = e(this.mMaxWidth, this.mMaxHeight, i10, i11, this.mScaleType);
            int iE2 = e(this.mMaxHeight, this.mMaxWidth, i11, i10, this.mScaleType);
            options.inJustDecodeBounds = false;
            options.inSampleSize = findBestSampleSize(i10, i11, iE, iE2);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iE || bitmapDecodeByteArray.getHeight() > iE2)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iE, iE2, true);
                bitmapDecodeByteArray.recycle();
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        return bitmapDecodeByteArray == null ? com.android.volley.i.a(new ParseError(gVar)) : com.android.volley.i.c(bitmapDecodeByteArray, d.e(gVar));
    }

    private static int e(int i10, int i11, int i12, int i13, ImageView.ScaleType scaleType) {
        if (i10 == 0 && i11 == 0) {
            return i12;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i10 == 0 ? i12 : i10;
        }
        if (i10 == 0) {
            return (int) (((double) i12) * (((double) i11) / ((double) i13)));
        }
        if (i11 == 0) {
            return i10;
        }
        double d10 = ((double) i13) / ((double) i12);
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            double d11 = i11;
            return ((double) i10) * d10 < d11 ? (int) (d11 / d10) : i10;
        }
        double d12 = i11;
        return ((double) i10) * d10 > d12 ? (int) (d12 / d10) : i10;
    }

    static int findBestSampleSize(int i10, int i11, int i12, int i13) {
        double dMin = Math.min(((double) i10) / ((double) i12), ((double) i11) / ((double) i13));
        float f10 = 1.0f;
        while (true) {
            float f11 = 2.0f * f10;
            if (f11 > dMin) {
                return (int) f10;
            }
            f10 = f11;
        }
    }

    @Override
    public void cancel() {
        super.cancel();
        synchronized (this.mLock) {
            this.mListener = null;
        }
    }

    @Override
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    @Override
    protected com.android.volley.i parseNetworkResponse(com.android.volley.g gVar) {
        com.android.volley.i iVarD;
        synchronized (sDecodeLock) {
            try {
                try {
                    iVarD = d(gVar);
                } catch (OutOfMemoryError e10) {
                    com.android.volley.l.c("Caught OOM for %d byte image, url=%s", Integer.valueOf(gVar.f18618b.length), getUrl());
                    return com.android.volley.i.a(new ParseError(e10));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVarD;
    }

    @Override
    public void deliverResponse(Bitmap bitmap) {
        com.android.volley.i.b bVar;
        synchronized (this.mLock) {
            bVar = this.mListener;
        }
        if (bVar != null) {
            bVar.onResponse(bitmap);
        }
    }
}
