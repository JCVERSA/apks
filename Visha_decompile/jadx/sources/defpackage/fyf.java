package defpackage;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Objects;

public final class fyf {
    public static final String A;
    public static final String B;
    public static final String C;
    public static final String D;
    public static final String E;
    public static final String F;
    public static final String G;
    public static final String p;
    public static final String q;
    public static final String r;
    public static final String s;
    public static final String t;
    public static final String u;
    public static final String v;
    public static final String w;
    public static final String x;
    public static final String y;
    public static final String z;
    public final CharSequence a;
    public final Layout.Alignment b;
    public final Layout.Alignment c;
    public final Bitmap d;
    public final float e;
    public final int f;
    public final int g;
    public final float h;
    public final int i;
    public final float j;
    public final float k;
    public final int l;
    public final float m;
    public final int n;
    public final float o;

    static {
        zvf zvfVar = new zvf();
        zvfVar.l("");
        zvfVar.p();
        int i = kfh.a;
        p = Integer.toString(0, 36);
        q = Integer.toString(17, 36);
        r = Integer.toString(1, 36);
        s = Integer.toString(2, 36);
        Integer.toString(3, 36);
        t = Integer.toString(18, 36);
        u = Integer.toString(4, 36);
        v = Integer.toString(5, 36);
        w = Integer.toString(6, 36);
        x = Integer.toString(7, 36);
        y = Integer.toString(8, 36);
        z = Integer.toString(9, 36);
        A = Integer.toString(10, 36);
        B = Integer.toString(11, 36);
        C = Integer.toString(12, 36);
        D = Integer.toString(13, 36);
        E = Integer.toString(14, 36);
        F = Integer.toString(15, 36);
        G = Integer.toString(16, 36);
    }

    public fyf(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z2, int i5, int i6, float f6, cxf cxfVar) {
        if (charSequence == null) {
            bitmap.getClass();
        } else {
            n7g.d(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.a = SpannedString.valueOf(charSequence);
        } else {
            this.a = charSequence != null ? charSequence.toString() : null;
        }
        this.b = alignment;
        this.c = alignment2;
        this.d = bitmap;
        this.e = f;
        this.f = i;
        this.g = i2;
        this.h = f2;
        this.i = i3;
        this.j = f4;
        this.k = f5;
        this.l = i4;
        this.m = f3;
        this.n = i6;
        this.o = f6;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        CharSequence charSequence = this.a;
        if (charSequence != null) {
            bundle.putCharSequence(p, charSequence);
            if (charSequence instanceof Spanned) {
                ArrayList<? extends Parcelable> arrayListA = k0g.a((Spanned) charSequence);
                if (!arrayListA.isEmpty()) {
                    bundle.putParcelableArrayList(q, arrayListA);
                }
            }
        }
        bundle.putSerializable(r, this.b);
        bundle.putSerializable(s, this.c);
        bundle.putFloat(u, this.e);
        bundle.putInt(v, this.f);
        bundle.putInt(w, this.g);
        bundle.putFloat(x, this.h);
        bundle.putInt(y, this.i);
        bundle.putInt(z, this.l);
        bundle.putFloat(A, this.m);
        bundle.putFloat(B, this.j);
        bundle.putFloat(C, this.k);
        bundle.putBoolean(E, false);
        bundle.putInt(D, -16777216);
        bundle.putInt(F, this.n);
        bundle.putFloat(G, this.o);
        Bitmap bitmap = this.d;
        if (bitmap != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            n7g.f(bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream));
            bundle.putByteArray(t, byteArrayOutputStream.toByteArray());
        }
        return bundle;
    }

    public final zvf b() {
        return new zvf(this, null);
    }

    public final boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj != null && fyf.class == obj.getClass()) {
            fyf fyfVar = (fyf) obj;
            if (TextUtils.equals(this.a, fyfVar.a) && this.b == fyfVar.b && this.c == fyfVar.c && ((bitmap = this.d) != null ? !((bitmap2 = fyfVar.d) == null || !bitmap.sameAs(bitmap2)) : fyfVar.d == null) && this.e == fyfVar.e && this.f == fyfVar.f && this.g == fyfVar.g && this.h == fyfVar.h && this.i == fyfVar.i && this.j == fyfVar.j && this.k == fyfVar.k && this.l == fyfVar.l && this.m == fyfVar.m && this.n == fyfVar.n && this.o == fyfVar.o) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d, Float.valueOf(this.e), Integer.valueOf(this.f), Integer.valueOf(this.g), Float.valueOf(this.h), Integer.valueOf(this.i), Float.valueOf(this.j), Float.valueOf(this.k), Boolean.FALSE, -16777216, Integer.valueOf(this.l), Float.valueOf(this.m), Integer.valueOf(this.n), Float.valueOf(this.o));
    }
}
