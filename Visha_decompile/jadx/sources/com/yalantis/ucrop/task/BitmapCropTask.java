package com.yalantis.ucrop.task;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import defpackage.bv3;
import defpackage.dy4;
import defpackage.nf3;
import defpackage.ql1;
import defpackage.ye0;
import defpackage.zx4;
import java.io.File;
import java.io.IOException;

public class BitmapCropTask extends AsyncTask<Void, Void, Throwable> {
    public Bitmap a;
    public final RectF b;
    public final RectF c;
    public float d;
    public float e;
    public final int f;
    public final int g;
    public final Bitmap.CompressFormat h;
    public final int i;
    public final String j;
    public final String k;
    public final nf3 l;
    public final ye0 m;
    public int n;
    public int o;
    public int p;
    public int q;

    static {
        System.loadLibrary("ucrop");
    }

    public BitmapCropTask(Bitmap bitmap, dy4 dy4Var, ql1 ql1Var, ye0 ye0Var) {
        this.a = bitmap;
        this.b = dy4Var.a();
        this.c = dy4Var.c();
        this.d = dy4Var.d();
        this.e = dy4Var.b();
        this.f = ql1Var.f();
        this.g = ql1Var.g();
        this.h = ql1Var.a();
        this.i = ql1Var.b();
        this.j = ql1Var.d();
        this.k = ql1Var.e();
        this.l = ql1Var.c();
        this.m = ye0Var;
    }

    public static native boolean cropCImg(String str, String str2, int i, int i2, int i3, int i4, float f, float f2, int i5, int i6, int i7, int i8) throws IOException, OutOfMemoryError;

    public final boolean a(float f) throws Throwable {
        ExifInterface exifInterface = new ExifInterface(this.j);
        this.p = Math.round((this.b.left - this.c.left) / this.d);
        this.q = Math.round((this.b.top - this.c.top) / this.d);
        this.n = Math.round(this.b.width() / this.d);
        int iRound = Math.round(this.b.height() / this.d);
        this.o = iRound;
        boolean zE = e(this.n, iRound);
        Log.i("BitmapCropTask", "Should crop: " + zE);
        if (!zE) {
            bv3.a(this.j, this.k);
            return false;
        }
        boolean zCropCImg = cropCImg(this.j, this.k, this.p, this.q, this.n, this.o, this.e, f, this.h.ordinal(), this.i, this.l.a(), this.l.b());
        if (zCropCImg && this.h.equals(Bitmap.CompressFormat.JPEG)) {
            zx4.b(exifInterface, this.n, this.o, this.k);
        }
        return zCropCImg;
    }

    @Override
    public Throwable doInBackground(Void... voidArr) {
        Bitmap bitmap = this.a;
        if (bitmap == null) {
            return new NullPointerException("ViewBitmap is null");
        }
        if (bitmap.isRecycled()) {
            return new NullPointerException("ViewBitmap is recycled");
        }
        if (this.c.isEmpty()) {
            return new NullPointerException("CurrentImageRect is empty");
        }
        try {
            a(d());
            this.a = null;
            return null;
        } catch (Throwable th) {
            return th;
        }
    }

    @Override
    public void onPostExecute(Throwable th) {
        ye0 ye0Var = this.m;
        if (ye0Var != null) {
            if (th != null) {
                ye0Var.b(th);
            } else {
                this.m.a(Uri.fromFile(new File(this.k)), this.p, this.q, this.n, this.o);
            }
        }
    }

    public final float d() {
        BitmapFactory.Options options = new BitmapFactory.Options();
        boolean z = true;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(this.j, options);
        if (this.l.a() != 90 && this.l.a() != 270) {
            z = false;
        }
        this.d /= Math.min((z ? options.outHeight : options.outWidth) / this.a.getWidth(), (z ? options.outWidth : options.outHeight) / this.a.getHeight());
        if (this.f > 0 && this.g > 0) {
            float fWidth = this.b.width() / this.d;
            float fHeight = this.b.height() / this.d;
            int i = this.f;
            if (fWidth > i || fHeight > this.g) {
                float fMin = Math.min(i / fWidth, this.g / fHeight);
                this.d /= fMin;
                return fMin;
            }
        }
        return 1.0f;
    }

    public final boolean e(int i, int i2) {
        int iRound = Math.round(Math.max(i, i2) / 1000.0f) + 1;
        if (this.f > 0 && this.g > 0) {
            return true;
        }
        float f = iRound;
        return Math.abs(this.b.left - this.c.left) > f || Math.abs(this.b.top - this.c.top) > f || Math.abs(this.b.bottom - this.c.bottom) > f || Math.abs(this.b.right - this.c.right) > f || this.e != 0.0f;
    }
}
