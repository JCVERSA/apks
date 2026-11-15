package defpackage;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import com.google.android.exoplayer2.e;

public final class jm1 implements e {
    public static final jm1 s = new b().o("").a();
    public static final e.a t = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return jm1.c(bundle);
        }
    };
    public final CharSequence b;
    public final Layout.Alignment c;
    public final Layout.Alignment d;
    public final Bitmap e;
    public final float f;
    public final int g;
    public final int h;
    public final float i;
    public final int j;
    public final float k;
    public final float l;
    public final boolean m;
    public final int n;
    public final int o;
    public final float p;
    public final int q;
    public final float r;

    public static final class b {
        public CharSequence a;
        public Bitmap b;
        public Layout.Alignment c;
        public Layout.Alignment d;
        public float e;
        public int f;
        public int g;
        public float h;
        public int i;
        public int j;
        public float k;
        public float l;
        public float m;
        public boolean n;
        public int o;
        public int p;
        public float q;

        public jm1 a() {
            return new jm1(this.a, this.c, this.d, this.b, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q);
        }

        public b b() {
            this.n = false;
            return this;
        }

        public int c() {
            return this.g;
        }

        public int d() {
            return this.i;
        }

        public CharSequence e() {
            return this.a;
        }

        public b f(Bitmap bitmap) {
            this.b = bitmap;
            return this;
        }

        public b g(float f) {
            this.m = f;
            return this;
        }

        public b h(float f, int i) {
            this.e = f;
            this.f = i;
            return this;
        }

        public b i(int i) {
            this.g = i;
            return this;
        }

        public b j(Layout.Alignment alignment) {
            this.d = alignment;
            return this;
        }

        public b k(float f) {
            this.h = f;
            return this;
        }

        public b l(int i) {
            this.i = i;
            return this;
        }

        public b m(float f) {
            this.q = f;
            return this;
        }

        public b n(float f) {
            this.l = f;
            return this;
        }

        public b o(CharSequence charSequence) {
            this.a = charSequence;
            return this;
        }

        public b p(Layout.Alignment alignment) {
            this.c = alignment;
            return this;
        }

        public b q(float f, int i) {
            this.k = f;
            this.j = i;
            return this;
        }

        public b r(int i) {
            this.p = i;
            return this;
        }

        public b s(int i) {
            this.o = i;
            this.n = true;
            return this;
        }

        public b() {
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = -3.4028235E38f;
            this.f = Integer.MIN_VALUE;
            this.g = Integer.MIN_VALUE;
            this.h = -3.4028235E38f;
            this.i = Integer.MIN_VALUE;
            this.j = Integer.MIN_VALUE;
            this.k = -3.4028235E38f;
            this.l = -3.4028235E38f;
            this.m = -3.4028235E38f;
            this.n = false;
            this.o = -16777216;
            this.p = Integer.MIN_VALUE;
        }

        public b(jm1 jm1Var) {
            this.a = jm1Var.b;
            this.b = jm1Var.e;
            this.c = jm1Var.c;
            this.d = jm1Var.d;
            this.e = jm1Var.f;
            this.f = jm1Var.g;
            this.g = jm1Var.h;
            this.h = jm1Var.i;
            this.i = jm1Var.j;
            this.j = jm1Var.o;
            this.k = jm1Var.p;
            this.l = jm1Var.k;
            this.m = jm1Var.l;
            this.n = jm1Var.m;
            this.o = jm1Var.n;
            this.p = jm1Var.q;
            this.q = jm1Var.r;
        }
    }

    public static final jm1 c(Bundle bundle) {
        b bVar = new b();
        CharSequence charSequence = bundle.getCharSequence(d(0));
        if (charSequence != null) {
            bVar.o(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(d(1));
        if (alignment != null) {
            bVar.p(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(d(2));
        if (alignment2 != null) {
            bVar.j(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(d(3));
        if (bitmap != null) {
            bVar.f(bitmap);
        }
        if (bundle.containsKey(d(4)) && bundle.containsKey(d(5))) {
            bVar.h(bundle.getFloat(d(4)), bundle.getInt(d(5)));
        }
        if (bundle.containsKey(d(6))) {
            bVar.i(bundle.getInt(d(6)));
        }
        if (bundle.containsKey(d(7))) {
            bVar.k(bundle.getFloat(d(7)));
        }
        if (bundle.containsKey(d(8))) {
            bVar.l(bundle.getInt(d(8)));
        }
        if (bundle.containsKey(d(10)) && bundle.containsKey(d(9))) {
            bVar.q(bundle.getFloat(d(10)), bundle.getInt(d(9)));
        }
        if (bundle.containsKey(d(11))) {
            bVar.n(bundle.getFloat(d(11)));
        }
        if (bundle.containsKey(d(12))) {
            bVar.g(bundle.getFloat(d(12)));
        }
        if (bundle.containsKey(d(13))) {
            bVar.s(bundle.getInt(d(13)));
        }
        if (!bundle.getBoolean(d(14), false)) {
            bVar.b();
        }
        if (bundle.containsKey(d(15))) {
            bVar.r(bundle.getInt(d(15)));
        }
        if (bundle.containsKey(d(16))) {
            bVar.m(bundle.getFloat(d(16)));
        }
        return bVar.a();
    }

    private static String d(int i) {
        return Integer.toString(i, 36);
    }

    public b b() {
        return new b();
    }

    public boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || jm1.class != obj.getClass()) {
            return false;
        }
        jm1 jm1Var = (jm1) obj;
        return TextUtils.equals(this.b, jm1Var.b) && this.c == jm1Var.c && this.d == jm1Var.d && ((bitmap = this.e) != null ? !((bitmap2 = jm1Var.e) == null || !bitmap.sameAs(bitmap2)) : jm1Var.e == null) && this.f == jm1Var.f && this.g == jm1Var.g && this.h == jm1Var.h && this.i == jm1Var.i && this.j == jm1Var.j && this.k == jm1Var.k && this.l == jm1Var.l && this.m == jm1Var.m && this.n == jm1Var.n && this.o == jm1Var.o && this.p == jm1Var.p && this.q == jm1Var.q && this.r == jm1Var.r;
    }

    public int hashCode() {
        return kc7.b(this.b, this.c, this.d, this.e, Float.valueOf(this.f), Integer.valueOf(this.g), Integer.valueOf(this.h), Float.valueOf(this.i), Integer.valueOf(this.j), Float.valueOf(this.k), Float.valueOf(this.l), Boolean.valueOf(this.m), Integer.valueOf(this.n), Integer.valueOf(this.o), Float.valueOf(this.p), Integer.valueOf(this.q), Float.valueOf(this.r));
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(d(0), this.b);
        bundle.putSerializable(d(1), this.c);
        bundle.putSerializable(d(2), this.d);
        bundle.putParcelable(d(3), this.e);
        bundle.putFloat(d(4), this.f);
        bundle.putInt(d(5), this.g);
        bundle.putInt(d(6), this.h);
        bundle.putFloat(d(7), this.i);
        bundle.putInt(d(8), this.j);
        bundle.putInt(d(9), this.o);
        bundle.putFloat(d(10), this.p);
        bundle.putFloat(d(11), this.k);
        bundle.putFloat(d(12), this.l);
        bundle.putBoolean(d(14), this.m);
        bundle.putInt(d(13), this.n);
        bundle.putInt(d(15), this.q);
        bundle.putFloat(d(16), this.r);
        return bundle;
    }

    public jm1(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5, int i6, float f6) {
        if (charSequence == null) {
            zi.e(bitmap);
        } else {
            zi.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.b = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.b = charSequence.toString();
        } else {
            this.b = null;
        }
        this.c = alignment;
        this.d = alignment2;
        this.e = bitmap;
        this.f = f;
        this.g = i;
        this.h = i2;
        this.i = f2;
        this.j = i3;
        this.k = f4;
        this.l = f5;
        this.m = z;
        this.n = i5;
        this.o = i4;
        this.p = f3;
        this.q = i6;
        this.r = f6;
    }
}
