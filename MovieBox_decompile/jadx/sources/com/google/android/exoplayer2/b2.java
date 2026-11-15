package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;
import java.util.List;

public final class b2 implements k {
    public static final b2 G = new b().F();
    public static final k.a H = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return b2.c(bundle);
        }
    };
    public final Integer A;
    public final Integer B;
    public final CharSequence C;
    public final CharSequence D;
    public final CharSequence E;
    public final Bundle F;

    public final CharSequence f24111a;

    public final CharSequence f24112b;

    public final CharSequence f24113c;

    public final CharSequence f24114d;

    public final CharSequence f24115e;

    public final CharSequence f24116f;

    public final CharSequence f24117g;

    public final w2 f24118h;

    public final w2 f24119i;

    public final byte[] f24120j;

    public final Integer f24121k;

    public final Uri f24122l;

    public final Integer f24123m;

    public final Integer f24124n;

    public final Integer f24125o;

    public final Boolean f24126p;

    public final Integer f24127q;

    public final Integer f24128r;

    public final Integer f24129s;

    public final Integer f24130t;

    public final Integer f24131u;

    public final Integer f24132v;

    public final Integer f24133w;

    public final CharSequence f24134x;

    public final CharSequence f24135y;

    public final CharSequence f24136z;

    public static final class b {
        private Integer A;
        private CharSequence B;
        private CharSequence C;
        private CharSequence D;
        private Bundle E;

        private CharSequence f24137a;

        private CharSequence f24138b;

        private CharSequence f24139c;

        private CharSequence f24140d;

        private CharSequence f24141e;

        private CharSequence f24142f;

        private CharSequence f24143g;

        private w2 f24144h;

        private w2 f24145i;

        private byte[] f24146j;

        private Integer f24147k;

        private Uri f24148l;

        private Integer f24149m;

        private Integer f24150n;

        private Integer f24151o;

        private Boolean f24152p;

        private Integer f24153q;

        private Integer f24154r;

        private Integer f24155s;

        private Integer f24156t;

        private Integer f24157u;

        private Integer f24158v;

        private CharSequence f24159w;

        private CharSequence f24160x;

        private CharSequence f24161y;

        private Integer f24162z;

        public b2 F() {
            return new b2(this);
        }

        public b G(byte[] bArr, int i10) {
            if (this.f24146j == null || com.google.android.exoplayer2.util.p0.c(Integer.valueOf(i10), 3) || !com.google.android.exoplayer2.util.p0.c(this.f24147k, 3)) {
                this.f24146j = (byte[]) bArr.clone();
                this.f24147k = Integer.valueOf(i10);
            }
            return this;
        }

        public b H(b2 b2Var) {
            if (b2Var == null) {
                return this;
            }
            CharSequence charSequence = b2Var.f24111a;
            if (charSequence != null) {
                i0(charSequence);
            }
            CharSequence charSequence2 = b2Var.f24112b;
            if (charSequence2 != null) {
                M(charSequence2);
            }
            CharSequence charSequence3 = b2Var.f24113c;
            if (charSequence3 != null) {
                L(charSequence3);
            }
            CharSequence charSequence4 = b2Var.f24114d;
            if (charSequence4 != null) {
                K(charSequence4);
            }
            CharSequence charSequence5 = b2Var.f24115e;
            if (charSequence5 != null) {
                U(charSequence5);
            }
            CharSequence charSequence6 = b2Var.f24116f;
            if (charSequence6 != null) {
                h0(charSequence6);
            }
            CharSequence charSequence7 = b2Var.f24117g;
            if (charSequence7 != null) {
                S(charSequence7);
            }
            w2 w2Var = b2Var.f24118h;
            if (w2Var != null) {
                m0(w2Var);
            }
            w2 w2Var2 = b2Var.f24119i;
            if (w2Var2 != null) {
                Z(w2Var2);
            }
            byte[] bArr = b2Var.f24120j;
            if (bArr != null) {
                N(bArr, b2Var.f24121k);
            }
            Uri uri = b2Var.f24122l;
            if (uri != null) {
                O(uri);
            }
            Integer num = b2Var.f24123m;
            if (num != null) {
                l0(num);
            }
            Integer num2 = b2Var.f24124n;
            if (num2 != null) {
                k0(num2);
            }
            Integer num3 = b2Var.f24125o;
            if (num3 != null) {
                W(num3);
            }
            Boolean bool = b2Var.f24126p;
            if (bool != null) {
                Y(bool);
            }
            Integer num4 = b2Var.f24127q;
            if (num4 != null) {
                c0(num4);
            }
            Integer num5 = b2Var.f24128r;
            if (num5 != null) {
                c0(num5);
            }
            Integer num6 = b2Var.f24129s;
            if (num6 != null) {
                b0(num6);
            }
            Integer num7 = b2Var.f24130t;
            if (num7 != null) {
                a0(num7);
            }
            Integer num8 = b2Var.f24131u;
            if (num8 != null) {
                f0(num8);
            }
            Integer num9 = b2Var.f24132v;
            if (num9 != null) {
                e0(num9);
            }
            Integer num10 = b2Var.f24133w;
            if (num10 != null) {
                d0(num10);
            }
            CharSequence charSequence8 = b2Var.f24134x;
            if (charSequence8 != null) {
                n0(charSequence8);
            }
            CharSequence charSequence9 = b2Var.f24135y;
            if (charSequence9 != null) {
                Q(charSequence9);
            }
            CharSequence charSequence10 = b2Var.f24136z;
            if (charSequence10 != null) {
                R(charSequence10);
            }
            Integer num11 = b2Var.A;
            if (num11 != null) {
                T(num11);
            }
            Integer num12 = b2Var.B;
            if (num12 != null) {
                j0(num12);
            }
            CharSequence charSequence11 = b2Var.C;
            if (charSequence11 != null) {
                X(charSequence11);
            }
            CharSequence charSequence12 = b2Var.D;
            if (charSequence12 != null) {
                P(charSequence12);
            }
            CharSequence charSequence13 = b2Var.E;
            if (charSequence13 != null) {
                g0(charSequence13);
            }
            Bundle bundle = b2Var.F;
            if (bundle != null) {
                V(bundle);
            }
            return this;
        }

        public b I(Metadata metadata) {
            for (int i10 = 0; i10 < metadata.length(); i10++) {
                metadata.get(i10).populateMediaMetadata(this);
            }
            return this;
        }

        public b J(List list) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                Metadata metadata = (Metadata) list.get(i10);
                for (int i11 = 0; i11 < metadata.length(); i11++) {
                    metadata.get(i11).populateMediaMetadata(this);
                }
            }
            return this;
        }

        public b K(CharSequence charSequence) {
            this.f24140d = charSequence;
            return this;
        }

        public b L(CharSequence charSequence) {
            this.f24139c = charSequence;
            return this;
        }

        public b M(CharSequence charSequence) {
            this.f24138b = charSequence;
            return this;
        }

        public b N(byte[] bArr, Integer num) {
            this.f24146j = bArr == null ? null : (byte[]) bArr.clone();
            this.f24147k = num;
            return this;
        }

        public b O(Uri uri) {
            this.f24148l = uri;
            return this;
        }

        public b P(CharSequence charSequence) {
            this.C = charSequence;
            return this;
        }

        public b Q(CharSequence charSequence) {
            this.f24160x = charSequence;
            return this;
        }

        public b R(CharSequence charSequence) {
            this.f24161y = charSequence;
            return this;
        }

        public b S(CharSequence charSequence) {
            this.f24143g = charSequence;
            return this;
        }

        public b T(Integer num) {
            this.f24162z = num;
            return this;
        }

        public b U(CharSequence charSequence) {
            this.f24141e = charSequence;
            return this;
        }

        public b V(Bundle bundle) {
            this.E = bundle;
            return this;
        }

        public b W(Integer num) {
            this.f24151o = num;
            return this;
        }

        public b X(CharSequence charSequence) {
            this.B = charSequence;
            return this;
        }

        public b Y(Boolean bool) {
            this.f24152p = bool;
            return this;
        }

        public b Z(w2 w2Var) {
            this.f24145i = w2Var;
            return this;
        }

        public b a0(Integer num) {
            this.f24155s = num;
            return this;
        }

        public b b0(Integer num) {
            this.f24154r = num;
            return this;
        }

        public b c0(Integer num) {
            this.f24153q = num;
            return this;
        }

        public b d0(Integer num) {
            this.f24158v = num;
            return this;
        }

        public b e0(Integer num) {
            this.f24157u = num;
            return this;
        }

        public b f0(Integer num) {
            this.f24156t = num;
            return this;
        }

        public b g0(CharSequence charSequence) {
            this.D = charSequence;
            return this;
        }

        public b h0(CharSequence charSequence) {
            this.f24142f = charSequence;
            return this;
        }

        public b i0(CharSequence charSequence) {
            this.f24137a = charSequence;
            return this;
        }

        public b j0(Integer num) {
            this.A = num;
            return this;
        }

        public b k0(Integer num) {
            this.f24150n = num;
            return this;
        }

        public b l0(Integer num) {
            this.f24149m = num;
            return this;
        }

        public b m0(w2 w2Var) {
            this.f24144h = w2Var;
            return this;
        }

        public b n0(CharSequence charSequence) {
            this.f24159w = charSequence;
            return this;
        }

        public b() {
        }

        private b(b2 b2Var) {
            this.f24137a = b2Var.f24111a;
            this.f24138b = b2Var.f24112b;
            this.f24139c = b2Var.f24113c;
            this.f24140d = b2Var.f24114d;
            this.f24141e = b2Var.f24115e;
            this.f24142f = b2Var.f24116f;
            this.f24143g = b2Var.f24117g;
            this.f24144h = b2Var.f24118h;
            this.f24145i = b2Var.f24119i;
            this.f24146j = b2Var.f24120j;
            this.f24147k = b2Var.f24121k;
            this.f24148l = b2Var.f24122l;
            this.f24149m = b2Var.f24123m;
            this.f24150n = b2Var.f24124n;
            this.f24151o = b2Var.f24125o;
            this.f24152p = b2Var.f24126p;
            this.f24153q = b2Var.f24128r;
            this.f24154r = b2Var.f24129s;
            this.f24155s = b2Var.f24130t;
            this.f24156t = b2Var.f24131u;
            this.f24157u = b2Var.f24132v;
            this.f24158v = b2Var.f24133w;
            this.f24159w = b2Var.f24134x;
            this.f24160x = b2Var.f24135y;
            this.f24161y = b2Var.f24136z;
            this.f24162z = b2Var.A;
            this.A = b2Var.B;
            this.B = b2Var.C;
            this.C = b2Var.D;
            this.D = b2Var.E;
            this.E = b2Var.F;
        }
    }

    public static b2 c(Bundle bundle) {
        Bundle bundle2;
        Bundle bundle3;
        b bVar = new b();
        bVar.i0(bundle.getCharSequence(d(0))).M(bundle.getCharSequence(d(1))).L(bundle.getCharSequence(d(2))).K(bundle.getCharSequence(d(3))).U(bundle.getCharSequence(d(4))).h0(bundle.getCharSequence(d(5))).S(bundle.getCharSequence(d(6))).N(bundle.getByteArray(d(10)), bundle.containsKey(d(29)) ? Integer.valueOf(bundle.getInt(d(29))) : null).O((Uri) bundle.getParcelable(d(11))).n0(bundle.getCharSequence(d(22))).Q(bundle.getCharSequence(d(23))).R(bundle.getCharSequence(d(24))).X(bundle.getCharSequence(d(27))).P(bundle.getCharSequence(d(28))).g0(bundle.getCharSequence(d(30))).V(bundle.getBundle(d(1000)));
        if (bundle.containsKey(d(8)) && (bundle3 = bundle.getBundle(d(8))) != null) {
            bVar.m0((w2) w2.f27242a.a(bundle3));
        }
        if (bundle.containsKey(d(9)) && (bundle2 = bundle.getBundle(d(9))) != null) {
            bVar.Z((w2) w2.f27242a.a(bundle2));
        }
        if (bundle.containsKey(d(12))) {
            bVar.l0(Integer.valueOf(bundle.getInt(d(12))));
        }
        if (bundle.containsKey(d(13))) {
            bVar.k0(Integer.valueOf(bundle.getInt(d(13))));
        }
        if (bundle.containsKey(d(14))) {
            bVar.W(Integer.valueOf(bundle.getInt(d(14))));
        }
        if (bundle.containsKey(d(15))) {
            bVar.Y(Boolean.valueOf(bundle.getBoolean(d(15))));
        }
        if (bundle.containsKey(d(16))) {
            bVar.c0(Integer.valueOf(bundle.getInt(d(16))));
        }
        if (bundle.containsKey(d(17))) {
            bVar.b0(Integer.valueOf(bundle.getInt(d(17))));
        }
        if (bundle.containsKey(d(18))) {
            bVar.a0(Integer.valueOf(bundle.getInt(d(18))));
        }
        if (bundle.containsKey(d(19))) {
            bVar.f0(Integer.valueOf(bundle.getInt(d(19))));
        }
        if (bundle.containsKey(d(20))) {
            bVar.e0(Integer.valueOf(bundle.getInt(d(20))));
        }
        if (bundle.containsKey(d(21))) {
            bVar.d0(Integer.valueOf(bundle.getInt(d(21))));
        }
        if (bundle.containsKey(d(25))) {
            bVar.T(Integer.valueOf(bundle.getInt(d(25))));
        }
        if (bundle.containsKey(d(26))) {
            bVar.j0(Integer.valueOf(bundle.getInt(d(26))));
        }
        return bVar.F();
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    public b b() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b2.class != obj.getClass()) {
            return false;
        }
        b2 b2Var = (b2) obj;
        return com.google.android.exoplayer2.util.p0.c(this.f24111a, b2Var.f24111a) && com.google.android.exoplayer2.util.p0.c(this.f24112b, b2Var.f24112b) && com.google.android.exoplayer2.util.p0.c(this.f24113c, b2Var.f24113c) && com.google.android.exoplayer2.util.p0.c(this.f24114d, b2Var.f24114d) && com.google.android.exoplayer2.util.p0.c(this.f24115e, b2Var.f24115e) && com.google.android.exoplayer2.util.p0.c(this.f24116f, b2Var.f24116f) && com.google.android.exoplayer2.util.p0.c(this.f24117g, b2Var.f24117g) && com.google.android.exoplayer2.util.p0.c(this.f24118h, b2Var.f24118h) && com.google.android.exoplayer2.util.p0.c(this.f24119i, b2Var.f24119i) && Arrays.equals(this.f24120j, b2Var.f24120j) && com.google.android.exoplayer2.util.p0.c(this.f24121k, b2Var.f24121k) && com.google.android.exoplayer2.util.p0.c(this.f24122l, b2Var.f24122l) && com.google.android.exoplayer2.util.p0.c(this.f24123m, b2Var.f24123m) && com.google.android.exoplayer2.util.p0.c(this.f24124n, b2Var.f24124n) && com.google.android.exoplayer2.util.p0.c(this.f24125o, b2Var.f24125o) && com.google.android.exoplayer2.util.p0.c(this.f24126p, b2Var.f24126p) && com.google.android.exoplayer2.util.p0.c(this.f24128r, b2Var.f24128r) && com.google.android.exoplayer2.util.p0.c(this.f24129s, b2Var.f24129s) && com.google.android.exoplayer2.util.p0.c(this.f24130t, b2Var.f24130t) && com.google.android.exoplayer2.util.p0.c(this.f24131u, b2Var.f24131u) && com.google.android.exoplayer2.util.p0.c(this.f24132v, b2Var.f24132v) && com.google.android.exoplayer2.util.p0.c(this.f24133w, b2Var.f24133w) && com.google.android.exoplayer2.util.p0.c(this.f24134x, b2Var.f24134x) && com.google.android.exoplayer2.util.p0.c(this.f24135y, b2Var.f24135y) && com.google.android.exoplayer2.util.p0.c(this.f24136z, b2Var.f24136z) && com.google.android.exoplayer2.util.p0.c(this.A, b2Var.A) && com.google.android.exoplayer2.util.p0.c(this.B, b2Var.B) && com.google.android.exoplayer2.util.p0.c(this.C, b2Var.C) && com.google.android.exoplayer2.util.p0.c(this.D, b2Var.D) && com.google.android.exoplayer2.util.p0.c(this.E, b2Var.E);
    }

    public int hashCode() {
        return com.google.common.base.j.b(this.f24111a, this.f24112b, this.f24113c, this.f24114d, this.f24115e, this.f24116f, this.f24117g, this.f24118h, this.f24119i, Integer.valueOf(Arrays.hashCode(this.f24120j)), this.f24121k, this.f24122l, this.f24123m, this.f24124n, this.f24125o, this.f24126p, this.f24128r, this.f24129s, this.f24130t, this.f24131u, this.f24132v, this.f24133w, this.f24134x, this.f24135y, this.f24136z, this.A, this.B, this.C, this.D, this.E);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(d(0), this.f24111a);
        bundle.putCharSequence(d(1), this.f24112b);
        bundle.putCharSequence(d(2), this.f24113c);
        bundle.putCharSequence(d(3), this.f24114d);
        bundle.putCharSequence(d(4), this.f24115e);
        bundle.putCharSequence(d(5), this.f24116f);
        bundle.putCharSequence(d(6), this.f24117g);
        bundle.putByteArray(d(10), this.f24120j);
        bundle.putParcelable(d(11), this.f24122l);
        bundle.putCharSequence(d(22), this.f24134x);
        bundle.putCharSequence(d(23), this.f24135y);
        bundle.putCharSequence(d(24), this.f24136z);
        bundle.putCharSequence(d(27), this.C);
        bundle.putCharSequence(d(28), this.D);
        bundle.putCharSequence(d(30), this.E);
        if (this.f24118h != null) {
            bundle.putBundle(d(8), this.f24118h.toBundle());
        }
        if (this.f24119i != null) {
            bundle.putBundle(d(9), this.f24119i.toBundle());
        }
        if (this.f24123m != null) {
            bundle.putInt(d(12), this.f24123m.intValue());
        }
        if (this.f24124n != null) {
            bundle.putInt(d(13), this.f24124n.intValue());
        }
        if (this.f24125o != null) {
            bundle.putInt(d(14), this.f24125o.intValue());
        }
        if (this.f24126p != null) {
            bundle.putBoolean(d(15), this.f24126p.booleanValue());
        }
        if (this.f24128r != null) {
            bundle.putInt(d(16), this.f24128r.intValue());
        }
        if (this.f24129s != null) {
            bundle.putInt(d(17), this.f24129s.intValue());
        }
        if (this.f24130t != null) {
            bundle.putInt(d(18), this.f24130t.intValue());
        }
        if (this.f24131u != null) {
            bundle.putInt(d(19), this.f24131u.intValue());
        }
        if (this.f24132v != null) {
            bundle.putInt(d(20), this.f24132v.intValue());
        }
        if (this.f24133w != null) {
            bundle.putInt(d(21), this.f24133w.intValue());
        }
        if (this.A != null) {
            bundle.putInt(d(25), this.A.intValue());
        }
        if (this.B != null) {
            bundle.putInt(d(26), this.B.intValue());
        }
        if (this.f24121k != null) {
            bundle.putInt(d(29), this.f24121k.intValue());
        }
        if (this.F != null) {
            bundle.putBundle(d(1000), this.F);
        }
        return bundle;
    }

    private b2(b bVar) {
        this.f24111a = bVar.f24137a;
        this.f24112b = bVar.f24138b;
        this.f24113c = bVar.f24139c;
        this.f24114d = bVar.f24140d;
        this.f24115e = bVar.f24141e;
        this.f24116f = bVar.f24142f;
        this.f24117g = bVar.f24143g;
        this.f24118h = bVar.f24144h;
        this.f24119i = bVar.f24145i;
        this.f24120j = bVar.f24146j;
        this.f24121k = bVar.f24147k;
        this.f24122l = bVar.f24148l;
        this.f24123m = bVar.f24149m;
        this.f24124n = bVar.f24150n;
        this.f24125o = bVar.f24151o;
        this.f24126p = bVar.f24152p;
        this.f24127q = bVar.f24153q;
        this.f24128r = bVar.f24153q;
        this.f24129s = bVar.f24154r;
        this.f24130t = bVar.f24155s;
        this.f24131u = bVar.f24156t;
        this.f24132v = bVar.f24157u;
        this.f24133w = bVar.f24158v;
        this.f24134x = bVar.f24159w;
        this.f24135y = bVar.f24160x;
        this.f24136z = bVar.f24161y;
        this.A = bVar.f24162z;
        this.B = bVar.A;
        this.C = bVar.B;
        this.D = bVar.C;
        this.E = bVar.D;
        this.F = bVar.E;
    }
}
