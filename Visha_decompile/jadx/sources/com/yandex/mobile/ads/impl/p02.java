package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.preference.PreferenceManager;
import android.widget.ImageView;
import defpackage.y45;

public final class p02 {
    private final l02 a = new l02();
    private final Matrix b = new Matrix();
    private final Paint c;
    private final Rect d;

    public p02() {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(Color.parseColor("#2E7D32"));
        paint.setStrokeWidth(10.0f);
        this.c = paint;
        this.d = new Rect();
    }

    public final void a(ImageView imageView, Bitmap bitmap, j02 j02Var) {
        float fC;
        Float fValueOf;
        y45.j(imageView, "view");
        y45.j(bitmap, "bitmap");
        y45.j(j02Var, "smartCenter");
        float width = imageView.getWidth();
        float height = imageView.getHeight();
        float width2 = bitmap.getWidth();
        float height2 = bitmap.getHeight();
        float fFloatValue = 0.0f;
        Float fValueOf2 = Float.valueOf(0.0f);
        if (height == 0.0f || height2 == 0.0f) {
            return;
        }
        boolean z = width / height > width2 / height2;
        float f = z ? width / width2 : height / height2;
        float f2 = width2 * f;
        float f3 = height2 * f;
        if (z) {
            fC = 0.0f;
        } else {
            fC = (width / 2) - (((j02Var.c() / 2) + j02Var.d()) * f);
            if (fC > 0.0f) {
                fValueOf = fValueOf2;
            } else {
                fValueOf = fC + f2 < width ? Float.valueOf(width - f2) : null;
            }
            if (fValueOf != null) {
                fC = fValueOf.floatValue();
            }
        }
        if (z) {
            float fB = (height / 2) - (((j02Var.b() / 2) + j02Var.e()) * f);
            if (fB <= 0.0f) {
                fValueOf2 = fB + f3 < height ? Float.valueOf(height - f3) : null;
            }
            fFloatValue = fValueOf2 != null ? fValueOf2.floatValue() : fB;
        }
        this.b.setScale(f, f);
        this.b.postTranslate(fC, fFloatValue);
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        imageView.setImageMatrix(this.b);
        l02 l02Var = this.a;
        Context context = imageView.getContext();
        y45.i(context, "getContext(...)");
        l02Var.getClass();
        y45.j(context, "context");
        if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean("preference_smart_centers_debug_enabled", false)) {
            Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
            Canvas canvas = new Canvas(bitmapCopy);
            Rect rect = this.d;
            rect.set(j02Var.d(), j02Var.e(), j02Var.c() + j02Var.d(), j02Var.b() + j02Var.e());
            canvas.drawRect(rect, this.c);
            imageView.setImageBitmap(bitmapCopy);
        }
    }

    public final void a(ImageView imageView, Bitmap bitmap, j02 j02Var, String str) {
        y45.j(imageView, "view");
        y45.j(bitmap, "bitmap");
        y45.j(j02Var, "smartCenter");
        y45.j(str, "backGroundColor");
        float width = imageView.getWidth();
        float height = imageView.getHeight();
        float width2 = bitmap.getWidth();
        float height2 = bitmap.getHeight();
        float fC = j02Var.c();
        float fB = j02Var.b();
        if (height == 0.0f || fB == 0.0f || height2 == 0.0f) {
            return;
        }
        float f = width / height;
        float f2 = f < fC / fB ? width / fC : height / fB;
        if (f2 > 1.0f) {
            f2 = f < width2 / height2 ? width / width2 : height / height2;
        }
        float f3 = 2;
        float fC2 = (width / f3) - (((j02Var.c() / 2) + j02Var.d()) * f2);
        float fB2 = (height / f3) - (((j02Var.b() / 2) + j02Var.e()) * f2);
        this.b.setScale(f2, f2);
        this.b.postTranslate(fC2, fB2);
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        imageView.setImageMatrix(this.b);
        imageView.setBackgroundColor(Color.parseColor(str));
        l02 l02Var = this.a;
        Context context = imageView.getContext();
        y45.i(context, "getContext(...)");
        l02Var.getClass();
        y45.j(context, "context");
        if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean("preference_smart_centers_debug_enabled", false)) {
            Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
            Canvas canvas = new Canvas(bitmapCopy);
            Rect rect = this.d;
            rect.set(j02Var.d(), j02Var.e(), j02Var.c() + j02Var.d(), j02Var.b() + j02Var.e());
            canvas.drawRect(rect, this.c);
            imageView.setImageBitmap(bitmapCopy);
        }
    }
}
