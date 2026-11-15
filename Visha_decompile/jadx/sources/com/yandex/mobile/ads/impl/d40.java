package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import defpackage.y45;

public final class d40 implements tl<Drawable> {
    private final mt1 a;
    private final wl b;

    public d40(mt1 mt1Var, wl wlVar) {
        y45.j(mt1Var, "scaledDrawableBitmapProvider");
        y45.j(wlVar, "bitmapProvider");
        this.a = mt1Var;
        this.b = wlVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    @Override
    public final boolean a(Drawable drawable, Bitmap bitmap) {
        Bitmap bitmapA;
        y45.j(drawable, "drawable");
        y45.j(bitmap, "bitmap");
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                bitmapA = bitmapDrawable.getBitmap();
                y45.i(bitmapA, "getBitmap(...)");
            } else {
                bitmapA = this.a.a(drawable);
            }
        } else {
            bitmapA = this.a.a(drawable);
        }
        this.b.getClass();
        y45.j(bitmapA, "src");
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapA, 1, 1, true);
        y45.i(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
        this.b.getClass();
        y45.j(bitmap, "src");
        Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmap, 1, 1, true);
        y45.i(bitmapCreateScaledBitmap2, "createScaledBitmap(...)");
        a aVar = new a(bitmapCreateScaledBitmap.getPixel(0, 0));
        a aVar2 = new a(bitmapCreateScaledBitmap2.getPixel(0, 0));
        return Math.abs(aVar.a() - aVar2.a()) <= 20 && Math.abs(aVar.d() - aVar2.d()) <= 20 && Math.abs(aVar.c() - aVar2.c()) <= 20 && Math.abs(aVar.b() - aVar2.b()) <= 20;
    }

    public static final class a {
        private final int a;
        private final int b;
        private final int c;
        private final int d;
        private final int e;

        public a(int i) {
            this(i, Color.alpha(i), Color.red(i), Color.green(i), Color.blue(i));
        }

        public final int a() {
            return this.b;
        }

        public final int b() {
            return this.e;
        }

        public final int c() {
            return this.d;
        }

        public final int d() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e;
        }

        public final int hashCode() {
            return Integer.hashCode(this.e) + dy1.a(this.d, dy1.a(this.c, dy1.a(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31);
        }

        public final String toString() {
            return "BitmapPixel(color=" + this.a + ", alpha=" + this.b + ", red=" + this.c + ", green=" + this.d + ", blue=" + this.e + ")";
        }

        public a(int i, int i2, int i3, int i4, int i5) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
        }
    }
}
