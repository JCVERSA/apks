package com.transsion.compressor.image;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;

public class b {

    private final File f42806a;

    private final d f42807b;

    private int f42808c;

    private int f42809d;

    private final boolean f42810e;

    b(d dVar, File file, boolean z10) {
        this.f42806a = file;
        this.f42807b = dVar;
        this.f42810e = z10;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inSampleSize = 1;
        BitmapFactory.decodeStream(dVar.open(), null, options);
        this.f42808c = options.outWidth;
        this.f42809d = options.outHeight;
    }

    private int b() {
        int i10 = this.f42808c;
        if (i10 % 2 == 1) {
            i10++;
        }
        this.f42808c = i10;
        int i11 = this.f42809d;
        if (i11 % 2 == 1) {
            i11++;
        }
        this.f42809d = i11;
        int iMax = Math.max(i10, i11);
        float fMin = Math.min(this.f42808c, this.f42809d) / iMax;
        if (fMin > 1.0f || fMin <= 0.5625d) {
            double d10 = fMin;
            if (d10 > 0.5625d || d10 <= 0.5d) {
                return (int) Math.ceil(((double) iMax) / (1280.0d / d10));
            }
            int i12 = iMax / 1280;
            if (i12 == 0) {
                return 1;
            }
            return i12;
        }
        if (iMax < 1664) {
            return 1;
        }
        if (iMax < 4990) {
            return 2;
        }
        if (iMax <= 4990 || iMax >= 10240) {
            return iMax / 1280;
        }
        return 4;
    }

    private Bitmap c(Bitmap bitmap, int i10) {
        Matrix matrix = new Matrix();
        matrix.postRotate(i10);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    File a() throws Throwable {
        Throwable th2;
        FileOutputStream fileOutputStream;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = b();
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(this.f42807b.open(), null, options);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Checker checker = Checker.SINGLE;
        if (checker.isJpg(this.f42807b.open())) {
            bitmapDecodeStream = c(bitmapDecodeStream, checker.getOrientation(this.f42807b.open()));
        }
        bitmapDecodeStream.compress(Bitmap.CompressFormat.WEBP, 70, byteArrayOutputStream);
        bitmapDecodeStream.recycle();
        try {
            fileOutputStream = new FileOutputStream(this.f42806a);
            try {
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.flush();
                fileOutputStream.close();
                byteArrayOutputStream.close();
                return this.f42806a;
            } catch (Throwable th3) {
                th2 = th3;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                byteArrayOutputStream.close();
                throw th2;
            }
        } catch (Throwable th4) {
            th2 = th4;
            fileOutputStream = null;
        }
    }
}
