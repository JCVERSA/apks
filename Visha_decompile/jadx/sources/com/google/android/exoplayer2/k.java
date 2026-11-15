package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import defpackage.blb;
import defpackage.v81;
import defpackage.xn0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class k implements e {
    public static final k H = new b().E();
    public static final e.a I = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return k.e(bundle);
        }
    };
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    public final int F;
    public int G;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final String j;
    public final Metadata k;
    public final String l;
    public final String m;
    public final int n;
    public final List o;
    public final DrmInitData p;
    public final long q;
    public final int r;
    public final int s;
    public final float t;
    public final int u;
    public final float v;
    public final byte[] w;
    public final int x;
    public final v81 y;
    public final int z;

    public static final class b {
        public int A;
        public int B;
        public int C;
        public int D;
        public String a;
        public String b;
        public String c;
        public int d;
        public int e;
        public int f;
        public int g;
        public String h;
        public Metadata i;
        public String j;
        public String k;
        public int l;
        public List m;
        public DrmInitData n;
        public long o;
        public int p;
        public int q;
        public float r;
        public int s;
        public float t;
        public byte[] u;
        public int v;
        public v81 w;
        public int x;
        public int y;
        public int z;

        public k E() {
            return new k(this);
        }

        public b F(int i) {
            this.C = i;
            return this;
        }

        public b G(int i) {
            this.f = i;
            return this;
        }

        public b H(int i) {
            this.x = i;
            return this;
        }

        public b I(String str) {
            this.h = str;
            return this;
        }

        public b J(v81 v81Var) {
            this.w = v81Var;
            return this;
        }

        public b K(String str) {
            this.j = str;
            return this;
        }

        public b L(int i) {
            this.D = i;
            return this;
        }

        public b M(DrmInitData drmInitData) {
            this.n = drmInitData;
            return this;
        }

        public b N(int i) {
            this.A = i;
            return this;
        }

        public b O(int i) {
            this.B = i;
            return this;
        }

        public b P(float f) {
            this.r = f;
            return this;
        }

        public b Q(int i) {
            this.q = i;
            return this;
        }

        public b R(int i) {
            this.a = Integer.toString(i);
            return this;
        }

        public b S(String str) {
            this.a = str;
            return this;
        }

        public b T(List list) {
            this.m = list;
            return this;
        }

        public b U(String str) {
            this.b = str;
            return this;
        }

        public b V(String str) {
            this.c = str;
            return this;
        }

        public b W(int i) {
            this.l = i;
            return this;
        }

        public b X(Metadata metadata) {
            this.i = metadata;
            return this;
        }

        public b Y(int i) {
            this.z = i;
            return this;
        }

        public b Z(int i) {
            this.g = i;
            return this;
        }

        public b a0(float f) {
            this.t = f;
            return this;
        }

        public b b0(byte[] bArr) {
            this.u = bArr;
            return this;
        }

        public b c0(int i) {
            this.e = i;
            return this;
        }

        public b d0(int i) {
            this.s = i;
            return this;
        }

        public b e0(String str) {
            this.k = str;
            return this;
        }

        public b f0(int i) {
            this.y = i;
            return this;
        }

        public b g0(int i) {
            this.d = i;
            return this;
        }

        public b h0(int i) {
            this.v = i;
            return this;
        }

        public b i0(long j) {
            this.o = j;
            return this;
        }

        public b j0(int i) {
            this.p = i;
            return this;
        }

        public b() {
            this.f = -1;
            this.g = -1;
            this.l = -1;
            this.o = Long.MAX_VALUE;
            this.p = -1;
            this.q = -1;
            this.r = -1.0f;
            this.t = 1.0f;
            this.v = -1;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.C = -1;
            this.D = 0;
        }

        public b(k kVar) {
            this.a = kVar.b;
            this.b = kVar.c;
            this.c = kVar.d;
            this.d = kVar.e;
            this.e = kVar.f;
            this.f = kVar.g;
            this.g = kVar.h;
            this.h = kVar.j;
            this.i = kVar.k;
            this.j = kVar.l;
            this.k = kVar.m;
            this.l = kVar.n;
            this.m = kVar.o;
            this.n = kVar.p;
            this.o = kVar.q;
            this.p = kVar.r;
            this.q = kVar.s;
            this.r = kVar.t;
            this.s = kVar.u;
            this.t = kVar.v;
            this.u = kVar.w;
            this.v = kVar.x;
            this.w = kVar.y;
            this.x = kVar.z;
            this.y = kVar.A;
            this.z = kVar.B;
            this.A = kVar.C;
            this.B = kVar.D;
            this.C = kVar.E;
            this.D = kVar.F;
        }
    }

    public static Object d(Object obj, Object obj2) {
        return obj != null ? obj : obj2;
    }

    public static k e(Bundle bundle) {
        b bVar = new b();
        xn0.a(bundle);
        int i = 0;
        String string = bundle.getString(h(0));
        k kVar = H;
        bVar.S((String) d(string, kVar.b)).U((String) d(bundle.getString(h(1)), kVar.c)).V((String) d(bundle.getString(h(2)), kVar.d)).g0(bundle.getInt(h(3), kVar.e)).c0(bundle.getInt(h(4), kVar.f)).G(bundle.getInt(h(5), kVar.g)).Z(bundle.getInt(h(6), kVar.h)).I((String) d(bundle.getString(h(7)), kVar.j)).X((Metadata) d((Metadata) bundle.getParcelable(h(8)), kVar.k)).K((String) d(bundle.getString(h(9)), kVar.l)).e0((String) d(bundle.getString(h(10)), kVar.m)).W(bundle.getInt(h(11), kVar.n));
        ArrayList arrayList = new ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(i(i));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i++;
        }
        b bVarM = bVar.T(arrayList).M((DrmInitData) bundle.getParcelable(h(13)));
        String strH = h(14);
        k kVar2 = H;
        bVarM.i0(bundle.getLong(strH, kVar2.q)).j0(bundle.getInt(h(15), kVar2.r)).Q(bundle.getInt(h(16), kVar2.s)).P(bundle.getFloat(h(17), kVar2.t)).d0(bundle.getInt(h(18), kVar2.u)).a0(bundle.getFloat(h(19), kVar2.v)).b0(bundle.getByteArray(h(20))).h0(bundle.getInt(h(21), kVar2.x));
        Bundle bundle2 = bundle.getBundle(h(22));
        if (bundle2 != null) {
            bVar.J((v81) v81.g.fromBundle(bundle2));
        }
        bVar.H(bundle.getInt(h(23), kVar2.z)).f0(bundle.getInt(h(24), kVar2.A)).Y(bundle.getInt(h(25), kVar2.B)).N(bundle.getInt(h(26), kVar2.C)).O(bundle.getInt(h(27), kVar2.D)).F(bundle.getInt(h(28), kVar2.E)).L(bundle.getInt(h(29), kVar2.F));
        return bVar.E();
    }

    private static String h(int i) {
        return Integer.toString(i, 36);
    }

    public static String i(int i) {
        return h(12) + "_" + Integer.toString(i, 36);
    }

    public b b() {
        return new b();
    }

    public k c(int i) {
        return b().L(i).E();
    }

    public boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        int i2 = this.G;
        if (i2 == 0 || (i = kVar.G) == 0 || i2 == i) {
            return this.e == kVar.e && this.f == kVar.f && this.g == kVar.g && this.h == kVar.h && this.n == kVar.n && this.q == kVar.q && this.r == kVar.r && this.s == kVar.s && this.u == kVar.u && this.x == kVar.x && this.z == kVar.z && this.A == kVar.A && this.B == kVar.B && this.C == kVar.C && this.D == kVar.D && this.E == kVar.E && this.F == kVar.F && Float.compare(this.t, kVar.t) == 0 && Float.compare(this.v, kVar.v) == 0 && blb.c(this.b, kVar.b) && blb.c(this.c, kVar.c) && blb.c(this.j, kVar.j) && blb.c(this.l, kVar.l) && blb.c(this.m, kVar.m) && blb.c(this.d, kVar.d) && Arrays.equals(this.w, kVar.w) && blb.c(this.k, kVar.k) && blb.c(this.y, kVar.y) && blb.c(this.p, kVar.p) && g(kVar);
        }
        return false;
    }

    public int f() {
        int i;
        int i2 = this.r;
        if (i2 == -1 || (i = this.s) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public boolean g(k kVar) {
        if (this.o.size() != kVar.o.size()) {
            return false;
        }
        for (int i = 0; i < this.o.size(); i++) {
            if (!Arrays.equals((byte[]) this.o.get(i), (byte[]) kVar.o.get(i))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (this.G == 0) {
            String str = this.b;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.c;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.d;
            int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31;
            String str4 = this.j;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Metadata metadata = this.k;
            int iHashCode5 = (iHashCode4 + (metadata == null ? 0 : metadata.hashCode())) * 31;
            String str5 = this.l;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.m;
            this.G = ((((((((((((((((((((((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.n) * 31) + ((int) this.q)) * 31) + this.r) * 31) + this.s) * 31) + Float.floatToIntBits(this.t)) * 31) + this.u) * 31) + Float.floatToIntBits(this.v)) * 31) + this.x) * 31) + this.z) * 31) + this.A) * 31) + this.B) * 31) + this.C) * 31) + this.D) * 31) + this.E) * 31) + this.F;
        }
        return this.G;
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(h(0), this.b);
        bundle.putString(h(1), this.c);
        bundle.putString(h(2), this.d);
        bundle.putInt(h(3), this.e);
        bundle.putInt(h(4), this.f);
        bundle.putInt(h(5), this.g);
        bundle.putInt(h(6), this.h);
        bundle.putString(h(7), this.j);
        bundle.putParcelable(h(8), this.k);
        bundle.putString(h(9), this.l);
        bundle.putString(h(10), this.m);
        bundle.putInt(h(11), this.n);
        for (int i = 0; i < this.o.size(); i++) {
            bundle.putByteArray(i(i), (byte[]) this.o.get(i));
        }
        bundle.putParcelable(h(13), this.p);
        bundle.putLong(h(14), this.q);
        bundle.putInt(h(15), this.r);
        bundle.putInt(h(16), this.s);
        bundle.putFloat(h(17), this.t);
        bundle.putInt(h(18), this.u);
        bundle.putFloat(h(19), this.v);
        bundle.putByteArray(h(20), this.w);
        bundle.putInt(h(21), this.x);
        if (this.y != null) {
            bundle.putBundle(h(22), this.y.toBundle());
        }
        bundle.putInt(h(23), this.z);
        bundle.putInt(h(24), this.A);
        bundle.putInt(h(25), this.B);
        bundle.putInt(h(26), this.C);
        bundle.putInt(h(27), this.D);
        bundle.putInt(h(28), this.E);
        bundle.putInt(h(29), this.F);
        return bundle;
    }

    public String toString() {
        return "Format(" + this.b + ", " + this.c + ", " + this.l + ", " + this.m + ", " + this.j + ", " + this.i + ", " + this.d + ", [" + this.r + ", " + this.s + ", " + this.t + "], [" + this.z + ", " + this.A + "])";
    }

    public k(b bVar) {
        this.b = bVar.a;
        this.c = bVar.b;
        this.d = blb.v0(bVar.c);
        this.e = bVar.d;
        this.f = bVar.e;
        int i = bVar.f;
        this.g = i;
        int i2 = bVar.g;
        this.h = i2;
        this.i = i2 != -1 ? i2 : i;
        this.j = bVar.h;
        this.k = bVar.i;
        this.l = bVar.j;
        this.m = bVar.k;
        this.n = bVar.l;
        this.o = bVar.m == null ? Collections.emptyList() : bVar.m;
        DrmInitData drmInitData = bVar.n;
        this.p = drmInitData;
        this.q = bVar.o;
        this.r = bVar.p;
        this.s = bVar.q;
        this.t = bVar.r;
        this.u = bVar.s == -1 ? 0 : bVar.s;
        this.v = bVar.t == -1.0f ? 1.0f : bVar.t;
        this.w = bVar.u;
        this.x = bVar.v;
        this.y = bVar.w;
        this.z = bVar.x;
        this.A = bVar.y;
        this.B = bVar.z;
        this.C = bVar.A == -1 ? 0 : bVar.A;
        this.D = bVar.B != -1 ? bVar.B : 0;
        this.E = bVar.C;
        if (bVar.D != 0 || drmInitData == null) {
            this.F = bVar.D;
        } else {
            this.F = 1;
        }
    }
}
