package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.q15;
import defpackage.s86;
import defpackage.u15;
import defpackage.y45;
import java.util.Iterator;

public final class cl1 {
    private final al a;

    public cl1() {
        this(new al());
    }

    public final Bitmap a(Bitmap bitmap, xj0 xj0Var) {
        y45.j(bitmap, "bitmap");
        y45.j(xj0Var, "imageValue");
        if (bitmap.getWidth() == 0 || bitmap.getHeight() == 0 || xj0Var.g() == 0 || xj0Var.a() == 0) {
            return bitmap;
        }
        if (xj0Var.a() * bitmap.getWidth() == bitmap.getHeight() * xj0Var.g()) {
            return bitmap;
        }
        this.a.getClass();
        y45.j(bitmap, "bitmap");
        y45.j(xj0Var, "imageValue");
        fz1 fz1Var = new fz1(bitmap.getWidth(), bitmap.getHeight());
        if (bitmap.getWidth() != 0 && bitmap.getHeight() != 0 && xj0Var.g() != 0 && xj0Var.a() != 0) {
            Iterator it = new u15(bitmap.getWidth(), Math.max(bitmap.getWidth(), Math.min(100, (xj0Var.g() * 100) / xj0Var.a()))).iterator();
            double d = 1.0d;
            while (it.hasNext()) {
                int iNextInt = ((q15) it).nextInt();
                if ((xj0Var.a() * iNextInt) % xj0Var.g() == 0) {
                    fz1Var = new fz1(iNextInt, (xj0Var.a() * iNextInt) / xj0Var.g());
                    break;
                }
                double dA = ((double) (xj0Var.a() * iNextInt)) / ((double) xj0Var.g());
                int iB = s86.b(dA);
                double dAbs = Math.abs(((double) iB) - dA) / dA;
                if (dAbs < d) {
                    fz1Var = new fz1(iNextInt, iB);
                    d = dAbs;
                }
            }
        }
        fz1 fz1Var2 = new fz1(bitmap.getWidth(), bitmap.getHeight());
        y45.j(fz1Var2, "<this>");
        y45.j(fz1Var, PlayAudioData.TAG_SIZE);
        fz1 fz1Var3 = (fz1) defpackage.eb1.i(new fz1(fz1Var.b(), (fz1Var2.a() * fz1Var.b()) / fz1Var2.b()), new fz1((fz1Var2.b() * fz1Var.a()) / fz1Var2.a(), fz1Var.a()));
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, fz1Var3.b(), fz1Var3.a(), false);
        y45.i(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateScaledBitmap, (bitmapCreateScaledBitmap.getWidth() - fz1Var.b()) / 2, (bitmapCreateScaledBitmap.getHeight() - fz1Var.a()) / 2, fz1Var.b(), fz1Var.a(), (Matrix) null, false);
        y45.i(bitmapCreateBitmap, "createBitmap(...)");
        return bitmapCreateBitmap;
    }

    public cl1(al alVar) {
        y45.j(alVar, "bestSizeForScalePreviewCalculator");
        this.a = alVar;
    }
}
