package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class p1 implements k {
    private static final p1 G = new b().E();
    public static final k.a H = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return p1.e(bundle);
        }
    };
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    private int F;

    public final String f24890a;

    public final String f24891b;

    public final String f24892c;

    public final int f24893d;

    public final int f24894e;

    public final int f24895f;

    public final int f24896g;

    public final int f24897h;

    public final String f24898i;

    public final Metadata f24899j;

    public final String f24900k;

    public final String f24901l;

    public final int f24902m;

    public final List f24903n;

    public final DrmInitData f24904o;

    public final long f24905p;

    public final int f24906q;

    public final int f24907r;

    public final float f24908s;

    public final int f24909t;

    public final float f24910u;

    public final byte[] f24911v;

    public final int f24912w;

    public final com.google.android.exoplayer2.video.c f24913x;

    public final int f24914y;

    public final int f24915z;

    public static final class b {
        private int A;
        private int B;
        private int C;
        private int D;

        private String f24916a;

        private String f24917b;

        private String f24918c;

        private int f24919d;

        private int f24920e;

        private int f24921f;

        private int f24922g;

        private String f24923h;

        private Metadata f24924i;

        private String f24925j;

        private String f24926k;

        private int f24927l;

        private List f24928m;

        private DrmInitData f24929n;

        private long f24930o;

        private int f24931p;

        private int f24932q;

        private float f24933r;

        private int f24934s;

        private float f24935t;

        private byte[] f24936u;

        private int f24937v;

        private com.google.android.exoplayer2.video.c f24938w;

        private int f24939x;

        private int f24940y;

        private int f24941z;

        public p1 E() {
            return new p1(this);
        }

        public b F(int i10) {
            this.C = i10;
            return this;
        }

        public b G(int i10) {
            this.f24921f = i10;
            return this;
        }

        public b H(int i10) {
            this.f24939x = i10;
            return this;
        }

        public b I(String str) {
            this.f24923h = str;
            return this;
        }

        public b J(com.google.android.exoplayer2.video.c cVar) {
            this.f24938w = cVar;
            return this;
        }

        public b K(String str) {
            this.f24925j = str;
            return this;
        }

        public b L(int i10) {
            this.D = i10;
            return this;
        }

        public b M(DrmInitData drmInitData) {
            this.f24929n = drmInitData;
            return this;
        }

        public b N(int i10) {
            this.A = i10;
            return this;
        }

        public b O(int i10) {
            this.B = i10;
            return this;
        }

        public b P(float f10) {
            this.f24933r = f10;
            return this;
        }

        public b Q(int i10) {
            this.f24932q = i10;
            return this;
        }

        public b R(int i10) {
            this.f24916a = Integer.toString(i10);
            return this;
        }

        public b S(String str) {
            this.f24916a = str;
            return this;
        }

        public b T(List list) {
            this.f24928m = list;
            return this;
        }

        public b U(String str) {
            this.f24917b = str;
            return this;
        }

        public b V(String str) {
            this.f24918c = str;
            return this;
        }

        public b W(int i10) {
            this.f24927l = i10;
            return this;
        }

        public b X(Metadata metadata) {
            this.f24924i = metadata;
            return this;
        }

        public b Y(int i10) {
            this.f24941z = i10;
            return this;
        }

        public b Z(int i10) {
            this.f24922g = i10;
            return this;
        }

        public b a0(float f10) {
            this.f24935t = f10;
            return this;
        }

        public b b0(byte[] bArr) {
            this.f24936u = bArr;
            return this;
        }

        public b c0(int i10) {
            this.f24920e = i10;
            return this;
        }

        public b d0(int i10) {
            this.f24934s = i10;
            return this;
        }

        public b e0(String str) {
            this.f24926k = str;
            return this;
        }

        public b f0(int i10) {
            this.f24940y = i10;
            return this;
        }

        public b g0(int i10) {
            this.f24919d = i10;
            return this;
        }

        public b h0(int i10) {
            this.f24937v = i10;
            return this;
        }

        public b i0(long j10) {
            this.f24930o = j10;
            return this;
        }

        public b j0(int i10) {
            this.f24931p = i10;
            return this;
        }

        public b() {
            this.f24921f = -1;
            this.f24922g = -1;
            this.f24927l = -1;
            this.f24930o = Long.MAX_VALUE;
            this.f24931p = -1;
            this.f24932q = -1;
            this.f24933r = -1.0f;
            this.f24935t = 1.0f;
            this.f24937v = -1;
            this.f24939x = -1;
            this.f24940y = -1;
            this.f24941z = -1;
            this.C = -1;
            this.D = 0;
        }

        private b(p1 p1Var) {
            this.f24916a = p1Var.f24890a;
            this.f24917b = p1Var.f24891b;
            this.f24918c = p1Var.f24892c;
            this.f24919d = p1Var.f24893d;
            this.f24920e = p1Var.f24894e;
            this.f24921f = p1Var.f24895f;
            this.f24922g = p1Var.f24896g;
            this.f24923h = p1Var.f24898i;
            this.f24924i = p1Var.f24899j;
            this.f24925j = p1Var.f24900k;
            this.f24926k = p1Var.f24901l;
            this.f24927l = p1Var.f24902m;
            this.f24928m = p1Var.f24903n;
            this.f24929n = p1Var.f24904o;
            this.f24930o = p1Var.f24905p;
            this.f24931p = p1Var.f24906q;
            this.f24932q = p1Var.f24907r;
            this.f24933r = p1Var.f24908s;
            this.f24934s = p1Var.f24909t;
            this.f24935t = p1Var.f24910u;
            this.f24936u = p1Var.f24911v;
            this.f24937v = p1Var.f24912w;
            this.f24938w = p1Var.f24913x;
            this.f24939x = p1Var.f24914y;
            this.f24940y = p1Var.f24915z;
            this.f24941z = p1Var.A;
            this.A = p1Var.B;
            this.B = p1Var.C;
            this.C = p1Var.D;
            this.D = p1Var.E;
        }
    }

    private static Object d(Object obj, Object obj2) {
        return obj != null ? obj : obj2;
    }

    public static p1 e(Bundle bundle) {
        b bVar = new b();
        com.google.android.exoplayer2.util.d.a(bundle);
        int i10 = 0;
        String string = bundle.getString(h(0));
        p1 p1Var = G;
        bVar.S((String) d(string, p1Var.f24890a)).U((String) d(bundle.getString(h(1)), p1Var.f24891b)).V((String) d(bundle.getString(h(2)), p1Var.f24892c)).g0(bundle.getInt(h(3), p1Var.f24893d)).c0(bundle.getInt(h(4), p1Var.f24894e)).G(bundle.getInt(h(5), p1Var.f24895f)).Z(bundle.getInt(h(6), p1Var.f24896g)).I((String) d(bundle.getString(h(7)), p1Var.f24898i)).X((Metadata) d((Metadata) bundle.getParcelable(h(8)), p1Var.f24899j)).K((String) d(bundle.getString(h(9)), p1Var.f24900k)).e0((String) d(bundle.getString(h(10)), p1Var.f24901l)).W(bundle.getInt(h(11), p1Var.f24902m));
        ArrayList arrayList = new ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(i(i10));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i10++;
        }
        b bVarM = bVar.T(arrayList).M((DrmInitData) bundle.getParcelable(h(13)));
        String strH = h(14);
        p1 p1Var2 = G;
        bVarM.i0(bundle.getLong(strH, p1Var2.f24905p)).j0(bundle.getInt(h(15), p1Var2.f24906q)).Q(bundle.getInt(h(16), p1Var2.f24907r)).P(bundle.getFloat(h(17), p1Var2.f24908s)).d0(bundle.getInt(h(18), p1Var2.f24909t)).a0(bundle.getFloat(h(19), p1Var2.f24910u)).b0(bundle.getByteArray(h(20))).h0(bundle.getInt(h(21), p1Var2.f24912w));
        Bundle bundle2 = bundle.getBundle(h(22));
        if (bundle2 != null) {
            bVar.J((com.google.android.exoplayer2.video.c) com.google.android.exoplayer2.video.c.f26956f.a(bundle2));
        }
        bVar.H(bundle.getInt(h(23), p1Var2.f24914y)).f0(bundle.getInt(h(24), p1Var2.f24915z)).Y(bundle.getInt(h(25), p1Var2.A)).N(bundle.getInt(h(26), p1Var2.B)).O(bundle.getInt(h(27), p1Var2.C)).F(bundle.getInt(h(28), p1Var2.D)).L(bundle.getInt(h(29), p1Var2.E));
        return bVar.E();
    }

    private static String h(int i10) {
        return Integer.toString(i10, 36);
    }

    private static String i(int i10) {
        return h(12) + "_" + Integer.toString(i10, 36);
    }

    public b b() {
        return new b();
    }

    public p1 c(int i10) {
        return b().L(i10).E();
    }

    public boolean equals(Object obj) {
        int i10;
        if (this == obj) {
            return true;
        }
        if (obj == null || p1.class != obj.getClass()) {
            return false;
        }
        p1 p1Var = (p1) obj;
        int i11 = this.F;
        if (i11 == 0 || (i10 = p1Var.F) == 0 || i11 == i10) {
            return this.f24893d == p1Var.f24893d && this.f24894e == p1Var.f24894e && this.f24895f == p1Var.f24895f && this.f24896g == p1Var.f24896g && this.f24902m == p1Var.f24902m && this.f24905p == p1Var.f24905p && this.f24906q == p1Var.f24906q && this.f24907r == p1Var.f24907r && this.f24909t == p1Var.f24909t && this.f24912w == p1Var.f24912w && this.f24914y == p1Var.f24914y && this.f24915z == p1Var.f24915z && this.A == p1Var.A && this.B == p1Var.B && this.C == p1Var.C && this.D == p1Var.D && this.E == p1Var.E && Float.compare(this.f24908s, p1Var.f24908s) == 0 && Float.compare(this.f24910u, p1Var.f24910u) == 0 && com.google.android.exoplayer2.util.p0.c(this.f24890a, p1Var.f24890a) && com.google.android.exoplayer2.util.p0.c(this.f24891b, p1Var.f24891b) && com.google.android.exoplayer2.util.p0.c(this.f24898i, p1Var.f24898i) && com.google.android.exoplayer2.util.p0.c(this.f24900k, p1Var.f24900k) && com.google.android.exoplayer2.util.p0.c(this.f24901l, p1Var.f24901l) && com.google.android.exoplayer2.util.p0.c(this.f24892c, p1Var.f24892c) && Arrays.equals(this.f24911v, p1Var.f24911v) && com.google.android.exoplayer2.util.p0.c(this.f24899j, p1Var.f24899j) && com.google.android.exoplayer2.util.p0.c(this.f24913x, p1Var.f24913x) && com.google.android.exoplayer2.util.p0.c(this.f24904o, p1Var.f24904o) && g(p1Var);
        }
        return false;
    }

    public int f() {
        int i10;
        int i11 = this.f24906q;
        if (i11 == -1 || (i10 = this.f24907r) == -1) {
            return -1;
        }
        return i11 * i10;
    }

    public boolean g(p1 p1Var) {
        if (this.f24903n.size() != p1Var.f24903n.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f24903n.size(); i10++) {
            if (!Arrays.equals((byte[]) this.f24903n.get(i10), (byte[]) p1Var.f24903n.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (this.F == 0) {
            String str = this.f24890a;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f24891b;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f24892c;
            int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f24893d) * 31) + this.f24894e) * 31) + this.f24895f) * 31) + this.f24896g) * 31;
            String str4 = this.f24898i;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Metadata metadata = this.f24899j;
            int iHashCode5 = (iHashCode4 + (metadata == null ? 0 : metadata.hashCode())) * 31;
            String str5 = this.f24900k;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f24901l;
            this.F = ((((((((((((((((((((((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.f24902m) * 31) + ((int) this.f24905p)) * 31) + this.f24906q) * 31) + this.f24907r) * 31) + Float.floatToIntBits(this.f24908s)) * 31) + this.f24909t) * 31) + Float.floatToIntBits(this.f24910u)) * 31) + this.f24912w) * 31) + this.f24914y) * 31) + this.f24915z) * 31) + this.A) * 31) + this.B) * 31) + this.C) * 31) + this.D) * 31) + this.E;
        }
        return this.F;
    }

    public p1 j(p1 p1Var) {
        String str;
        if (this == p1Var) {
            return this;
        }
        int iK = com.google.android.exoplayer2.util.w.k(this.f24901l);
        String str2 = p1Var.f24890a;
        String str3 = p1Var.f24891b;
        if (str3 == null) {
            str3 = this.f24891b;
        }
        String str4 = this.f24892c;
        if ((iK == 3 || iK == 1) && (str = p1Var.f24892c) != null) {
            str4 = str;
        }
        int i10 = this.f24895f;
        if (i10 == -1) {
            i10 = p1Var.f24895f;
        }
        int i11 = this.f24896g;
        if (i11 == -1) {
            i11 = p1Var.f24896g;
        }
        String str5 = this.f24898i;
        if (str5 == null) {
            String strL = com.google.android.exoplayer2.util.p0.L(p1Var.f24898i, iK);
            if (com.google.android.exoplayer2.util.p0.U0(strL).length == 1) {
                str5 = strL;
            }
        }
        Metadata metadata = this.f24899j;
        Metadata metadataCopyWithAppendedEntriesFrom = metadata == null ? p1Var.f24899j : metadata.copyWithAppendedEntriesFrom(p1Var.f24899j);
        float f10 = this.f24908s;
        if (f10 == -1.0f && iK == 2) {
            f10 = p1Var.f24908s;
        }
        return b().S(str2).U(str3).V(str4).g0(this.f24893d | p1Var.f24893d).c0(this.f24894e | p1Var.f24894e).G(i10).Z(i11).I(str5).X(metadataCopyWithAppendedEntriesFrom).M(DrmInitData.createSessionCreationData(p1Var.f24904o, this.f24904o)).P(f10).E();
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(h(0), this.f24890a);
        bundle.putString(h(1), this.f24891b);
        bundle.putString(h(2), this.f24892c);
        bundle.putInt(h(3), this.f24893d);
        bundle.putInt(h(4), this.f24894e);
        bundle.putInt(h(5), this.f24895f);
        bundle.putInt(h(6), this.f24896g);
        bundle.putString(h(7), this.f24898i);
        bundle.putParcelable(h(8), this.f24899j);
        bundle.putString(h(9), this.f24900k);
        bundle.putString(h(10), this.f24901l);
        bundle.putInt(h(11), this.f24902m);
        for (int i10 = 0; i10 < this.f24903n.size(); i10++) {
            bundle.putByteArray(i(i10), (byte[]) this.f24903n.get(i10));
        }
        bundle.putParcelable(h(13), this.f24904o);
        bundle.putLong(h(14), this.f24905p);
        bundle.putInt(h(15), this.f24906q);
        bundle.putInt(h(16), this.f24907r);
        bundle.putFloat(h(17), this.f24908s);
        bundle.putInt(h(18), this.f24909t);
        bundle.putFloat(h(19), this.f24910u);
        bundle.putByteArray(h(20), this.f24911v);
        bundle.putInt(h(21), this.f24912w);
        if (this.f24913x != null) {
            bundle.putBundle(h(22), this.f24913x.toBundle());
        }
        bundle.putInt(h(23), this.f24914y);
        bundle.putInt(h(24), this.f24915z);
        bundle.putInt(h(25), this.A);
        bundle.putInt(h(26), this.B);
        bundle.putInt(h(27), this.C);
        bundle.putInt(h(28), this.D);
        bundle.putInt(h(29), this.E);
        return bundle;
    }

    public String toString() {
        return "Format(" + this.f24890a + ", " + this.f24891b + ", " + this.f24900k + ", " + this.f24901l + ", " + this.f24898i + ", " + this.f24897h + ", " + this.f24892c + ", [" + this.f24906q + ", " + this.f24907r + ", " + this.f24908s + "], [" + this.f24914y + ", " + this.f24915z + "])";
    }

    private p1(b bVar) {
        this.f24890a = bVar.f24916a;
        this.f24891b = bVar.f24917b;
        this.f24892c = com.google.android.exoplayer2.util.p0.D0(bVar.f24918c);
        this.f24893d = bVar.f24919d;
        this.f24894e = bVar.f24920e;
        int i10 = bVar.f24921f;
        this.f24895f = i10;
        int i11 = bVar.f24922g;
        this.f24896g = i11;
        this.f24897h = i11 != -1 ? i11 : i10;
        this.f24898i = bVar.f24923h;
        this.f24899j = bVar.f24924i;
        this.f24900k = bVar.f24925j;
        this.f24901l = bVar.f24926k;
        this.f24902m = bVar.f24927l;
        this.f24903n = bVar.f24928m == null ? Collections.emptyList() : bVar.f24928m;
        DrmInitData drmInitData = bVar.f24929n;
        this.f24904o = drmInitData;
        this.f24905p = bVar.f24930o;
        this.f24906q = bVar.f24931p;
        this.f24907r = bVar.f24932q;
        this.f24908s = bVar.f24933r;
        this.f24909t = bVar.f24934s == -1 ? 0 : bVar.f24934s;
        this.f24910u = bVar.f24935t == -1.0f ? 1.0f : bVar.f24935t;
        this.f24911v = bVar.f24936u;
        this.f24912w = bVar.f24937v;
        this.f24913x = bVar.f24938w;
        this.f24914y = bVar.f24939x;
        this.f24915z = bVar.f24940y;
        this.A = bVar.f24941z;
        this.B = bVar.A == -1 ? 0 : bVar.A;
        this.C = bVar.B != -1 ? bVar.B : 0;
        this.D = bVar.C;
        if (bVar.D != 0 || drmInitData == null) {
            this.E = bVar.D;
        } else {
            this.E = 1;
        }
    }
}
