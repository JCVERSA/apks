package com.hunantv.media.a;

import android.graphics.Bitmap;
import android.text.Layout;

public class b {
    public final CharSequence a;
    public final Layout.Alignment b;
    public final Bitmap c;
    public final float d;
    public final int e;
    public final int f;
    public final float g;
    public final int h;
    public final float i;
    public final float j;
    public final boolean k;
    public final int l;
    public final int m;
    public final float n;

    public b(CharSequence charSequence) {
        this(charSequence, null, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        this(charSequence, alignment, f, i, i2, f2, i3, f3, false, 2130706432);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, Integer.MIN_VALUE, Float.MIN_VALUE, f3, Float.MIN_VALUE, z, i4);
    }

    private b(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5) {
        this.a = charSequence;
        this.b = alignment;
        this.c = bitmap;
        this.d = f;
        this.e = i;
        this.f = i2;
        this.g = f2;
        this.h = i3;
        this.i = f4;
        this.j = f5;
        this.k = z;
        this.l = i5;
        this.m = i4;
        this.n = f3;
    }
}
