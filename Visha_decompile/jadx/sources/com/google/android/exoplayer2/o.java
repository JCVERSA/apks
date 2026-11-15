package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o;
import defpackage.blb;
import defpackage.kc7;
import java.util.Arrays;
import java.util.List;

public final class o implements e {
    public static final o H = new b().F();
    public static final e.a I = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return o.c(bundle);
        }
    };
    public final CharSequence A;
    public final Integer B;
    public final Integer C;
    public final CharSequence D;
    public final CharSequence E;
    public final CharSequence F;
    public final Bundle G;
    public final CharSequence b;
    public final CharSequence c;
    public final CharSequence d;
    public final CharSequence e;
    public final CharSequence f;
    public final CharSequence g;
    public final CharSequence h;
    public final v i;
    public final v j;
    public final byte[] k;
    public final Integer l;
    public final Uri m;
    public final Integer n;
    public final Integer o;
    public final Integer p;
    public final Boolean q;
    public final Integer r;
    public final Integer s;
    public final Integer t;
    public final Integer u;
    public final Integer v;
    public final Integer w;
    public final Integer x;
    public final CharSequence y;
    public final CharSequence z;

    public static final class b {
        public Integer A;
        public CharSequence B;
        public CharSequence C;
        public CharSequence D;
        public Bundle E;
        public CharSequence a;
        public CharSequence b;
        public CharSequence c;
        public CharSequence d;
        public CharSequence e;
        public CharSequence f;
        public CharSequence g;
        public v h;
        public v i;
        public byte[] j;
        public Integer k;
        public Uri l;
        public Integer m;
        public Integer n;
        public Integer o;
        public Boolean p;
        public Integer q;
        public Integer r;
        public Integer s;
        public Integer t;
        public Integer u;
        public Integer v;
        public CharSequence w;
        public CharSequence x;
        public CharSequence y;
        public Integer z;

        public o F() {
            return new o(this);
        }

        public b G(byte[] bArr, int i) {
            if (this.j == null || blb.c(Integer.valueOf(i), 3) || !blb.c(this.k, 3)) {
                this.j = (byte[]) bArr.clone();
                this.k = Integer.valueOf(i);
            }
            return this;
        }

        public b H(o oVar) {
            if (oVar == null) {
                return this;
            }
            CharSequence charSequence = oVar.b;
            if (charSequence != null) {
                i0(charSequence);
            }
            CharSequence charSequence2 = oVar.c;
            if (charSequence2 != null) {
                M(charSequence2);
            }
            CharSequence charSequence3 = oVar.d;
            if (charSequence3 != null) {
                L(charSequence3);
            }
            CharSequence charSequence4 = oVar.e;
            if (charSequence4 != null) {
                K(charSequence4);
            }
            CharSequence charSequence5 = oVar.f;
            if (charSequence5 != null) {
                U(charSequence5);
            }
            CharSequence charSequence6 = oVar.g;
            if (charSequence6 != null) {
                h0(charSequence6);
            }
            CharSequence charSequence7 = oVar.h;
            if (charSequence7 != null) {
                S(charSequence7);
            }
            v vVar = oVar.i;
            if (vVar != null) {
                m0(vVar);
            }
            v vVar2 = oVar.j;
            if (vVar2 != null) {
                Z(vVar2);
            }
            byte[] bArr = oVar.k;
            if (bArr != null) {
                N(bArr, oVar.l);
            }
            Uri uri = oVar.m;
            if (uri != null) {
                O(uri);
            }
            Integer num = oVar.n;
            if (num != null) {
                l0(num);
            }
            Integer num2 = oVar.o;
            if (num2 != null) {
                k0(num2);
            }
            Integer num3 = oVar.p;
            if (num3 != null) {
                W(num3);
            }
            Boolean bool = oVar.q;
            if (bool != null) {
                Y(bool);
            }
            Integer num4 = oVar.r;
            if (num4 != null) {
                c0(num4);
            }
            Integer num5 = oVar.s;
            if (num5 != null) {
                c0(num5);
            }
            Integer num6 = oVar.t;
            if (num6 != null) {
                b0(num6);
            }
            Integer num7 = oVar.u;
            if (num7 != null) {
                a0(num7);
            }
            Integer num8 = oVar.v;
            if (num8 != null) {
                f0(num8);
            }
            Integer num9 = oVar.w;
            if (num9 != null) {
                e0(num9);
            }
            Integer num10 = oVar.x;
            if (num10 != null) {
                d0(num10);
            }
            CharSequence charSequence8 = oVar.y;
            if (charSequence8 != null) {
                n0(charSequence8);
            }
            CharSequence charSequence9 = oVar.z;
            if (charSequence9 != null) {
                Q(charSequence9);
            }
            CharSequence charSequence10 = oVar.A;
            if (charSequence10 != null) {
                R(charSequence10);
            }
            Integer num11 = oVar.B;
            if (num11 != null) {
                T(num11);
            }
            Integer num12 = oVar.C;
            if (num12 != null) {
                j0(num12);
            }
            CharSequence charSequence11 = oVar.D;
            if (charSequence11 != null) {
                X(charSequence11);
            }
            CharSequence charSequence12 = oVar.E;
            if (charSequence12 != null) {
                P(charSequence12);
            }
            CharSequence charSequence13 = oVar.F;
            if (charSequence13 != null) {
                g0(charSequence13);
            }
            Bundle bundle = oVar.G;
            if (bundle != null) {
                V(bundle);
            }
            return this;
        }

        public b I(Metadata metadata) {
            for (int i = 0; i < metadata.length(); i++) {
                metadata.get(i).populateMediaMetadata(this);
            }
            return this;
        }

        public b J(List list) {
            for (int i = 0; i < list.size(); i++) {
                Metadata metadata = (Metadata) list.get(i);
                for (int i2 = 0; i2 < metadata.length(); i2++) {
                    metadata.get(i2).populateMediaMetadata(this);
                }
            }
            return this;
        }

        public b K(CharSequence charSequence) {
            this.d = charSequence;
            return this;
        }

        public b L(CharSequence charSequence) {
            this.c = charSequence;
            return this;
        }

        public b M(CharSequence charSequence) {
            this.b = charSequence;
            return this;
        }

        public b N(byte[] bArr, Integer num) {
            this.j = bArr == null ? null : (byte[]) bArr.clone();
            this.k = num;
            return this;
        }

        public b O(Uri uri) {
            this.l = uri;
            return this;
        }

        public b P(CharSequence charSequence) {
            this.C = charSequence;
            return this;
        }

        public b Q(CharSequence charSequence) {
            this.x = charSequence;
            return this;
        }

        public b R(CharSequence charSequence) {
            this.y = charSequence;
            return this;
        }

        public b S(CharSequence charSequence) {
            this.g = charSequence;
            return this;
        }

        public b T(Integer num) {
            this.z = num;
            return this;
        }

        public b U(CharSequence charSequence) {
            this.e = charSequence;
            return this;
        }

        public b V(Bundle bundle) {
            this.E = bundle;
            return this;
        }

        public b W(Integer num) {
            this.o = num;
            return this;
        }

        public b X(CharSequence charSequence) {
            this.B = charSequence;
            return this;
        }

        public b Y(Boolean bool) {
            this.p = bool;
            return this;
        }

        public b Z(v vVar) {
            this.i = vVar;
            return this;
        }

        public b a0(Integer num) {
            this.s = num;
            return this;
        }

        public b b0(Integer num) {
            this.r = num;
            return this;
        }

        public b c0(Integer num) {
            this.q = num;
            return this;
        }

        public b d0(Integer num) {
            this.v = num;
            return this;
        }

        public b e0(Integer num) {
            this.u = num;
            return this;
        }

        public b f0(Integer num) {
            this.t = num;
            return this;
        }

        public b g0(CharSequence charSequence) {
            this.D = charSequence;
            return this;
        }

        public b h0(CharSequence charSequence) {
            this.f = charSequence;
            return this;
        }

        public b i0(CharSequence charSequence) {
            this.a = charSequence;
            return this;
        }

        public b j0(Integer num) {
            this.A = num;
            return this;
        }

        public b k0(Integer num) {
            this.n = num;
            return this;
        }

        public b l0(Integer num) {
            this.m = num;
            return this;
        }

        public b m0(v vVar) {
            this.h = vVar;
            return this;
        }

        public b n0(CharSequence charSequence) {
            this.w = charSequence;
            return this;
        }

        public b() {
        }

        public b(o oVar) {
            this.a = oVar.b;
            this.b = oVar.c;
            this.c = oVar.d;
            this.d = oVar.e;
            this.e = oVar.f;
            this.f = oVar.g;
            this.g = oVar.h;
            this.h = oVar.i;
            this.i = oVar.j;
            this.j = oVar.k;
            this.k = oVar.l;
            this.l = oVar.m;
            this.m = oVar.n;
            this.n = oVar.o;
            this.o = oVar.p;
            this.p = oVar.q;
            this.q = oVar.s;
            this.r = oVar.t;
            this.s = oVar.u;
            this.t = oVar.v;
            this.u = oVar.w;
            this.v = oVar.x;
            this.w = oVar.y;
            this.x = oVar.z;
            this.y = oVar.A;
            this.z = oVar.B;
            this.A = oVar.C;
            this.B = oVar.D;
            this.C = oVar.E;
            this.D = oVar.F;
            this.E = oVar.G;
        }
    }

    public static o c(Bundle bundle) {
        Bundle bundle2;
        Bundle bundle3;
        b bVar = new b();
        bVar.i0(bundle.getCharSequence(d(0))).M(bundle.getCharSequence(d(1))).L(bundle.getCharSequence(d(2))).K(bundle.getCharSequence(d(3))).U(bundle.getCharSequence(d(4))).h0(bundle.getCharSequence(d(5))).S(bundle.getCharSequence(d(6))).N(bundle.getByteArray(d(10)), bundle.containsKey(d(29)) ? Integer.valueOf(bundle.getInt(d(29))) : null).O((Uri) bundle.getParcelable(d(11))).n0(bundle.getCharSequence(d(22))).Q(bundle.getCharSequence(d(23))).R(bundle.getCharSequence(d(24))).X(bundle.getCharSequence(d(27))).P(bundle.getCharSequence(d(28))).g0(bundle.getCharSequence(d(30))).V(bundle.getBundle(d(1000)));
        if (bundle.containsKey(d(8)) && (bundle3 = bundle.getBundle(d(8))) != null) {
            bVar.m0((v) v.b.fromBundle(bundle3));
        }
        if (bundle.containsKey(d(9)) && (bundle2 = bundle.getBundle(d(9))) != null) {
            bVar.Z((v) v.b.fromBundle(bundle2));
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

    private static String d(int i) {
        return Integer.toString(i, 36);
    }

    public b b() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        return blb.c(this.b, oVar.b) && blb.c(this.c, oVar.c) && blb.c(this.d, oVar.d) && blb.c(this.e, oVar.e) && blb.c(this.f, oVar.f) && blb.c(this.g, oVar.g) && blb.c(this.h, oVar.h) && blb.c(this.i, oVar.i) && blb.c(this.j, oVar.j) && Arrays.equals(this.k, oVar.k) && blb.c(this.l, oVar.l) && blb.c(this.m, oVar.m) && blb.c(this.n, oVar.n) && blb.c(this.o, oVar.o) && blb.c(this.p, oVar.p) && blb.c(this.q, oVar.q) && blb.c(this.s, oVar.s) && blb.c(this.t, oVar.t) && blb.c(this.u, oVar.u) && blb.c(this.v, oVar.v) && blb.c(this.w, oVar.w) && blb.c(this.x, oVar.x) && blb.c(this.y, oVar.y) && blb.c(this.z, oVar.z) && blb.c(this.A, oVar.A) && blb.c(this.B, oVar.B) && blb.c(this.C, oVar.C) && blb.c(this.D, oVar.D) && blb.c(this.E, oVar.E) && blb.c(this.F, oVar.F);
    }

    public int hashCode() {
        return kc7.b(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, Integer.valueOf(Arrays.hashCode(this.k)), this.l, this.m, this.n, this.o, this.p, this.q, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(d(0), this.b);
        bundle.putCharSequence(d(1), this.c);
        bundle.putCharSequence(d(2), this.d);
        bundle.putCharSequence(d(3), this.e);
        bundle.putCharSequence(d(4), this.f);
        bundle.putCharSequence(d(5), this.g);
        bundle.putCharSequence(d(6), this.h);
        bundle.putByteArray(d(10), this.k);
        bundle.putParcelable(d(11), this.m);
        bundle.putCharSequence(d(22), this.y);
        bundle.putCharSequence(d(23), this.z);
        bundle.putCharSequence(d(24), this.A);
        bundle.putCharSequence(d(27), this.D);
        bundle.putCharSequence(d(28), this.E);
        bundle.putCharSequence(d(30), this.F);
        if (this.i != null) {
            bundle.putBundle(d(8), this.i.toBundle());
        }
        if (this.j != null) {
            bundle.putBundle(d(9), this.j.toBundle());
        }
        if (this.n != null) {
            bundle.putInt(d(12), this.n.intValue());
        }
        if (this.o != null) {
            bundle.putInt(d(13), this.o.intValue());
        }
        if (this.p != null) {
            bundle.putInt(d(14), this.p.intValue());
        }
        if (this.q != null) {
            bundle.putBoolean(d(15), this.q.booleanValue());
        }
        if (this.s != null) {
            bundle.putInt(d(16), this.s.intValue());
        }
        if (this.t != null) {
            bundle.putInt(d(17), this.t.intValue());
        }
        if (this.u != null) {
            bundle.putInt(d(18), this.u.intValue());
        }
        if (this.v != null) {
            bundle.putInt(d(19), this.v.intValue());
        }
        if (this.w != null) {
            bundle.putInt(d(20), this.w.intValue());
        }
        if (this.x != null) {
            bundle.putInt(d(21), this.x.intValue());
        }
        if (this.B != null) {
            bundle.putInt(d(25), this.B.intValue());
        }
        if (this.C != null) {
            bundle.putInt(d(26), this.C.intValue());
        }
        if (this.l != null) {
            bundle.putInt(d(29), this.l.intValue());
        }
        if (this.G != null) {
            bundle.putBundle(d(1000), this.G);
        }
        return bundle;
    }

    public o(b bVar) {
        this.b = bVar.a;
        this.c = bVar.b;
        this.d = bVar.c;
        this.e = bVar.d;
        this.f = bVar.e;
        this.g = bVar.f;
        this.h = bVar.g;
        this.i = bVar.h;
        this.j = bVar.i;
        this.k = bVar.j;
        this.l = bVar.k;
        this.m = bVar.l;
        this.n = bVar.m;
        this.o = bVar.n;
        this.p = bVar.o;
        this.q = bVar.p;
        this.r = bVar.q;
        this.s = bVar.q;
        this.t = bVar.r;
        this.u = bVar.s;
        this.v = bVar.t;
        this.w = bVar.u;
        this.x = bVar.v;
        this.y = bVar.w;
        this.z = bVar.x;
        this.A = bVar.y;
        this.B = bVar.z;
        this.C = bVar.A;
        this.D = bVar.B;
        this.E = bVar.C;
        this.F = bVar.D;
        this.G = bVar.E;
    }
}
