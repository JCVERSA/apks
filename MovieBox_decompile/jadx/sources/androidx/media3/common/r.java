package androidx.media3.common;

import android.text.TextUtils;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

public final class r {
    private static final r P = new b().N();
    private static final String Q = a1.C0(0);
    private static final String R = a1.C0(1);
    private static final String S = a1.C0(2);
    private static final String T = a1.C0(3);
    private static final String U = a1.C0(4);
    private static final String V = a1.C0(5);
    private static final String W = a1.C0(6);
    private static final String X = a1.C0(7);
    private static final String Y = a1.C0(8);
    private static final String Z = a1.C0(9);

    private static final String f9810a0 = a1.C0(10);

    private static final String f9811b0 = a1.C0(11);

    private static final String f9812c0 = a1.C0(12);

    private static final String f9813d0 = a1.C0(13);

    private static final String f9814e0 = a1.C0(14);

    private static final String f9815f0 = a1.C0(15);

    private static final String f9816g0 = a1.C0(16);

    private static final String f9817h0 = a1.C0(17);

    private static final String f9818i0 = a1.C0(18);

    private static final String f9819j0 = a1.C0(19);

    private static final String f9820k0 = a1.C0(20);

    private static final String f9821l0 = a1.C0(21);

    private static final String f9822m0 = a1.C0(22);

    private static final String f9823n0 = a1.C0(23);

    private static final String f9824o0 = a1.C0(24);

    private static final String f9825p0 = a1.C0(25);

    private static final String f9826q0 = a1.C0(26);

    private static final String f9827r0 = a1.C0(27);

    private static final String f9828s0 = a1.C0(28);

    private static final String f9829t0 = a1.C0(29);

    private static final String f9830u0 = a1.C0(30);

    private static final String f9831v0 = a1.C0(31);

    private static final String f9832w0 = a1.C0(32);

    private static final String f9833x0 = a1.C0(33);

    private static final String f9834y0 = a1.C0(34);
    public final byte[] A;
    public final int B;
    public final i C;
    public final int D;
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public final int N;
    private int O;

    public final String f9835a;

    public final String f9836b;

    public final List f9837c;

    public final String f9838d;

    public final int f9839e;

    public final int f9840f;

    public final int f9841g;

    public final int f9842h;

    public final int f9843i;

    public final int f9844j;

    public final String f9845k;

    public final x f9846l;

    public final Object f9847m;

    public final String f9848n;

    public final String f9849o;

    public final int f9850p;

    public final int f9851q;

    public final List f9852r;

    public final DrmInitData f9853s;

    public final long f9854t;

    public final boolean f9855u;

    public final int f9856v;

    public final int f9857w;

    public final float f9858x;

    public final int f9859y;

    public final float f9860z;

    public static final class b {
        private int A;
        private i B;
        private int C;
        private int D;
        private int E;
        private int F;
        private int G;
        private int H;
        private int I;
        private int J;
        private int K;
        private int L;
        private int M;

        private String f9861a;

        private String f9862b;

        private List f9863c;

        private String f9864d;

        private int f9865e;

        private int f9866f;

        private int f9867g;

        private int f9868h;

        private int f9869i;

        private String f9870j;

        private x f9871k;

        private Object f9872l;

        private String f9873m;

        private String f9874n;

        private int f9875o;

        private int f9876p;

        private List f9877q;

        private DrmInitData f9878r;

        private long f9879s;

        private boolean f9880t;

        private int f9881u;

        private int f9882v;

        private float f9883w;

        private int f9884x;

        private float f9885y;

        private byte[] f9886z;

        public b A0(int i10) {
            this.L = i10;
            return this;
        }

        public b B0(int i10) {
            this.f9881u = i10;
            return this;
        }

        public r N() {
            return new r(this);
        }

        public b O(int i10) {
            this.I = i10;
            return this;
        }

        public b P(int i10) {
            this.f9867g = i10;
            return this;
        }

        public b Q(int i10) {
            this.f9868h = i10;
            return this;
        }

        public b R(int i10) {
            this.D = i10;
            return this;
        }

        public b S(String str) {
            this.f9870j = str;
            return this;
        }

        public b T(i iVar) {
            this.B = iVar;
            return this;
        }

        public b U(String str) {
            this.f9873m = y.u(str);
            return this;
        }

        public b V(int i10) {
            this.M = i10;
            return this;
        }

        public b W(int i10) {
            this.J = i10;
            return this;
        }

        public b X(Object obj) {
            this.f9872l = obj;
            return this;
        }

        public b Y(DrmInitData drmInitData) {
            this.f9878r = drmInitData;
            return this;
        }

        public b Z(int i10) {
            this.G = i10;
            return this;
        }

        public b a0(int i10) {
            this.H = i10;
            return this;
        }

        public b b0(float f10) {
            this.f9883w = f10;
            return this;
        }

        public b c0(boolean z10) {
            this.f9880t = z10;
            return this;
        }

        public b d0(int i10) {
            this.f9882v = i10;
            return this;
        }

        public b e0(int i10) {
            this.f9861a = Integer.toString(i10);
            return this;
        }

        public b f0(String str) {
            this.f9861a = str;
            return this;
        }

        public b g0(List list) {
            this.f9877q = list;
            return this;
        }

        public b h0(String str) {
            this.f9862b = str;
            return this;
        }

        public b i0(List list) {
            this.f9863c = ImmutableList.copyOf((Collection) list);
            return this;
        }

        public b j0(String str) {
            this.f9864d = str;
            return this;
        }

        public b k0(int i10) {
            this.f9875o = i10;
            return this;
        }

        public b l0(int i10) {
            this.f9876p = i10;
            return this;
        }

        public b m0(int i10) {
            this.C = i10;
            return this;
        }

        public b n0(x xVar) {
            this.f9871k = xVar;
            return this;
        }

        public b o0(int i10) {
            this.F = i10;
            return this;
        }

        public b p0(int i10) {
            this.f9869i = i10;
            return this;
        }

        public b q0(float f10) {
            this.f9885y = f10;
            return this;
        }

        public b r0(byte[] bArr) {
            this.f9886z = bArr;
            return this;
        }

        public b s0(int i10) {
            this.f9866f = i10;
            return this;
        }

        public b t0(int i10) {
            this.f9884x = i10;
            return this;
        }

        public b u0(String str) {
            this.f9874n = y.u(str);
            return this;
        }

        public b v0(int i10) {
            this.E = i10;
            return this;
        }

        public b w0(int i10) {
            this.f9865e = i10;
            return this;
        }

        public b x0(int i10) {
            this.A = i10;
            return this;
        }

        public b y0(long j10) {
            this.f9879s = j10;
            return this;
        }

        public b z0(int i10) {
            this.K = i10;
            return this;
        }

        public b() {
            this.f9863c = ImmutableList.of();
            this.f9868h = -1;
            this.f9869i = -1;
            this.f9875o = -1;
            this.f9876p = -1;
            this.f9879s = Long.MAX_VALUE;
            this.f9881u = -1;
            this.f9882v = -1;
            this.f9883w = -1.0f;
            this.f9885y = 1.0f;
            this.A = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = -1;
            this.I = -1;
            this.J = 1;
            this.K = -1;
            this.L = -1;
            this.M = 0;
            this.f9867g = 0;
        }

        private b(r rVar) {
            this.f9861a = rVar.f9835a;
            this.f9862b = rVar.f9836b;
            this.f9863c = rVar.f9837c;
            this.f9864d = rVar.f9838d;
            this.f9865e = rVar.f9839e;
            this.f9866f = rVar.f9840f;
            this.f9868h = rVar.f9842h;
            this.f9869i = rVar.f9843i;
            this.f9870j = rVar.f9845k;
            this.f9871k = rVar.f9846l;
            this.f9872l = rVar.f9847m;
            this.f9873m = rVar.f9848n;
            this.f9874n = rVar.f9849o;
            this.f9875o = rVar.f9850p;
            this.f9876p = rVar.f9851q;
            this.f9877q = rVar.f9852r;
            this.f9878r = rVar.f9853s;
            this.f9879s = rVar.f9854t;
            this.f9880t = rVar.f9855u;
            this.f9881u = rVar.f9856v;
            this.f9882v = rVar.f9857w;
            this.f9883w = rVar.f9858x;
            this.f9884x = rVar.f9859y;
            this.f9885y = rVar.f9860z;
            this.f9886z = rVar.A;
            this.A = rVar.B;
            this.B = rVar.C;
            this.C = rVar.D;
            this.D = rVar.E;
            this.E = rVar.F;
            this.F = rVar.G;
            this.G = rVar.H;
            this.H = rVar.I;
            this.I = rVar.J;
            this.J = rVar.K;
            this.K = rVar.L;
            this.L = rVar.M;
            this.M = rVar.N;
        }
    }

    private static String d(List list, String str) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            s sVar = (s) it.next();
            if (TextUtils.equals(sVar.f9889a, str)) {
                return sVar.f9890b;
            }
        }
        return ((s) list.get(0)).f9890b;
    }

    private static boolean g(b bVar) {
        if (bVar.f9863c.isEmpty() && bVar.f9862b == null) {
            return true;
        }
        for (int i10 = 0; i10 < bVar.f9863c.size(); i10++) {
            if (((s) bVar.f9863c.get(i10)).f9890b.equals(bVar.f9862b)) {
                return true;
            }
        }
        return false;
    }

    public static String h(s sVar) {
        return sVar.f9889a + ": " + sVar.f9890b;
    }

    public static String i(r rVar) {
        if (rVar == null) {
            return "null";
        }
        com.google.common.base.g gVarG = com.google.common.base.g.g(',');
        StringBuilder sb2 = new StringBuilder();
        sb2.append("id=");
        sb2.append(rVar.f9835a);
        sb2.append(", mimeType=");
        sb2.append(rVar.f9849o);
        if (rVar.f9848n != null) {
            sb2.append(", container=");
            sb2.append(rVar.f9848n);
        }
        if (rVar.f9844j != -1) {
            sb2.append(", bitrate=");
            sb2.append(rVar.f9844j);
        }
        if (rVar.f9845k != null) {
            sb2.append(", codecs=");
            sb2.append(rVar.f9845k);
        }
        if (rVar.f9853s != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i10 = 0;
            while (true) {
                DrmInitData drmInitData = rVar.f9853s;
                if (i10 >= drmInitData.schemeDataCount) {
                    break;
                }
                UUID uuid = drmInitData.get(i10).uuid;
                if (uuid.equals(h.f9670b)) {
                    linkedHashSet.add(C.CENC_TYPE_cenc);
                } else if (uuid.equals(h.f9671c)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(h.f9673e)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(h.f9672d)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(h.f9669a)) {
                    linkedHashSet.add("universal");
                } else {
                    linkedHashSet.add("unknown (" + uuid + ")");
                }
                i10++;
            }
            sb2.append(", drm=[");
            gVarG.b(sb2, linkedHashSet);
            sb2.append(']');
        }
        if (rVar.f9856v != -1 && rVar.f9857w != -1) {
            sb2.append(", res=");
            sb2.append(rVar.f9856v);
            sb2.append("x");
            sb2.append(rVar.f9857w);
        }
        if (!com.google.common.math.b.a(rVar.f9860z, 1.0d, 0.001d)) {
            sb2.append(", par=");
            sb2.append(a1.G("%.3f", Float.valueOf(rVar.f9860z)));
        }
        i iVar = rVar.C;
        if (iVar != null && iVar.i()) {
            sb2.append(", color=");
            sb2.append(rVar.C.m());
        }
        if (rVar.f9858x != -1.0f) {
            sb2.append(", fps=");
            sb2.append(rVar.f9858x);
        }
        if (rVar.D != -1) {
            sb2.append(", maxSubLayers=");
            sb2.append(rVar.D);
        }
        if (rVar.E != -1) {
            sb2.append(", channels=");
            sb2.append(rVar.E);
        }
        if (rVar.F != -1) {
            sb2.append(", sample_rate=");
            sb2.append(rVar.F);
        }
        if (rVar.f9838d != null) {
            sb2.append(", language=");
            sb2.append(rVar.f9838d);
        }
        if (!rVar.f9837c.isEmpty()) {
            sb2.append(", labels=[");
            gVarG.b(sb2, Lists.o(rVar.f9837c, new com.google.common.base.f() {
                @Override
                public final Object apply(Object obj) {
                    return r.h((s) obj);
                }
            }));
            sb2.append("]");
        }
        if (rVar.f9839e != 0) {
            sb2.append(", selectionFlags=[");
            gVarG.b(sb2, a1.n0(rVar.f9839e));
            sb2.append("]");
        }
        if (rVar.f9840f != 0) {
            sb2.append(", roleFlags=[");
            gVarG.b(sb2, a1.m0(rVar.f9840f));
            sb2.append("]");
        }
        if (rVar.f9847m != null) {
            sb2.append(", customData=");
            sb2.append(rVar.f9847m);
        }
        if ((rVar.f9840f & 32768) != 0) {
            sb2.append(", auxiliaryTrackType=");
            sb2.append(a1.N(rVar.f9841g));
        }
        return sb2.toString();
    }

    public b b() {
        return new b();
    }

    public r c(int i10) {
        return b().V(i10).N();
    }

    public int e() {
        int i10;
        int i11 = this.f9856v;
        if (i11 == -1 || (i10 = this.f9857w) == -1) {
            return -1;
        }
        return i11 * i10;
    }

    public boolean equals(Object obj) {
        int i10;
        if (this == obj) {
            return true;
        }
        if (obj == null || r.class != obj.getClass()) {
            return false;
        }
        r rVar = (r) obj;
        int i11 = this.O;
        if (i11 == 0 || (i10 = rVar.O) == 0 || i11 == i10) {
            return this.f9839e == rVar.f9839e && this.f9840f == rVar.f9840f && this.f9841g == rVar.f9841g && this.f9842h == rVar.f9842h && this.f9843i == rVar.f9843i && this.f9850p == rVar.f9850p && this.f9854t == rVar.f9854t && this.f9856v == rVar.f9856v && this.f9857w == rVar.f9857w && this.f9859y == rVar.f9859y && this.B == rVar.B && this.D == rVar.D && this.E == rVar.E && this.F == rVar.F && this.G == rVar.G && this.H == rVar.H && this.I == rVar.I && this.J == rVar.J && this.L == rVar.L && this.M == rVar.M && this.N == rVar.N && Float.compare(this.f9858x, rVar.f9858x) == 0 && Float.compare(this.f9860z, rVar.f9860z) == 0 && Objects.equals(this.f9835a, rVar.f9835a) && Objects.equals(this.f9836b, rVar.f9836b) && this.f9837c.equals(rVar.f9837c) && Objects.equals(this.f9845k, rVar.f9845k) && Objects.equals(this.f9848n, rVar.f9848n) && Objects.equals(this.f9849o, rVar.f9849o) && Objects.equals(this.f9838d, rVar.f9838d) && Arrays.equals(this.A, rVar.A) && Objects.equals(this.f9846l, rVar.f9846l) && Objects.equals(this.C, rVar.C) && Objects.equals(this.f9853s, rVar.f9853s) && f(rVar) && Objects.equals(this.f9847m, rVar.f9847m);
        }
        return false;
    }

    public boolean f(r rVar) {
        if (this.f9852r.size() != rVar.f9852r.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f9852r.size(); i10++) {
            if (!Arrays.equals((byte[]) this.f9852r.get(i10), (byte[]) rVar.f9852r.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (this.O == 0) {
            String str = this.f9835a;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f9836b;
            int iHashCode2 = (((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f9837c.hashCode()) * 31;
            String str3 = this.f9838d;
            int iHashCode3 = (((((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f9839e) * 31) + this.f9840f) * 31) + this.f9841g) * 31) + this.f9842h) * 31) + this.f9843i) * 31;
            String str4 = this.f9845k;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            x xVar = this.f9846l;
            int iHashCode5 = (iHashCode4 + (xVar == null ? 0 : xVar.hashCode())) * 31;
            Object obj = this.f9847m;
            int iHashCode6 = (iHashCode5 + (obj == null ? 0 : obj.hashCode())) * 31;
            String str5 = this.f9848n;
            int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f9849o;
            this.O = ((((((((((((((((((((((((((((((((((((iHashCode7 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.f9850p) * 31) + ((int) this.f9854t)) * 31) + this.f9856v) * 31) + this.f9857w) * 31) + Float.floatToIntBits(this.f9858x)) * 31) + this.f9859y) * 31) + Float.floatToIntBits(this.f9860z)) * 31) + this.B) * 31) + this.D) * 31) + this.E) * 31) + this.F) * 31) + this.G) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) + this.L) * 31) + this.M) * 31) + this.N;
        }
        return this.O;
    }

    public r j(r rVar) {
        String str;
        if (this == rVar) {
            return this;
        }
        int iK = y.k(this.f9849o);
        String str2 = rVar.f9835a;
        int i10 = rVar.L;
        int i11 = rVar.M;
        String str3 = rVar.f9836b;
        if (str3 == null) {
            str3 = this.f9836b;
        }
        List list = !rVar.f9837c.isEmpty() ? rVar.f9837c : this.f9837c;
        String str4 = this.f9838d;
        if ((iK == 3 || iK == 1) && (str = rVar.f9838d) != null) {
            str4 = str;
        }
        int i12 = this.f9842h;
        if (i12 == -1) {
            i12 = rVar.f9842h;
        }
        int i13 = this.f9843i;
        if (i13 == -1) {
            i13 = rVar.f9843i;
        }
        String str5 = this.f9845k;
        if (str5 == null) {
            String strS = a1.S(rVar.f9845k, iK);
            if (a1.q1(strS).length == 1) {
                str5 = strS;
            }
        }
        x xVar = this.f9846l;
        x xVarB = xVar == null ? rVar.f9846l : xVar.b(rVar.f9846l);
        float f10 = this.f9858x;
        if (f10 == -1.0f && iK == 2) {
            f10 = rVar.f9858x;
        }
        return b().f0(str2).h0(str3).i0(list).j0(str4).w0(this.f9839e | rVar.f9839e).s0(this.f9840f | rVar.f9840f).Q(i12).p0(i13).S(str5).n0(xVarB).Y(DrmInitData.createSessionCreationData(rVar.f9853s, this.f9853s)).b0(f10).z0(i10).A0(i11).N();
    }

    public String toString() {
        return "Format(" + this.f9835a + ", " + this.f9836b + ", " + this.f9848n + ", " + this.f9849o + ", " + this.f9845k + ", " + this.f9844j + ", " + this.f9838d + ", [" + this.f9856v + ", " + this.f9857w + ", " + this.f9858x + ", " + this.C + "], [" + this.E + ", " + this.F + "])";
    }

    private r(b bVar) {
        this.f9835a = bVar.f9861a;
        String strU0 = a1.U0(bVar.f9864d);
        this.f9838d = strU0;
        if (bVar.f9863c.isEmpty() && bVar.f9862b != null) {
            this.f9837c = ImmutableList.of(new s(strU0, bVar.f9862b));
            this.f9836b = bVar.f9862b;
        } else if (bVar.f9863c.isEmpty() || bVar.f9862b != null) {
            androidx.media3.common.util.a.g(g(bVar));
            this.f9837c = bVar.f9863c;
            this.f9836b = bVar.f9862b;
        } else {
            this.f9837c = bVar.f9863c;
            this.f9836b = d(bVar.f9863c, strU0);
        }
        this.f9839e = bVar.f9865e;
        androidx.media3.common.util.a.h(bVar.f9867g == 0 || (bVar.f9866f & 32768) != 0, "Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set");
        this.f9840f = bVar.f9866f;
        this.f9841g = bVar.f9867g;
        int i10 = bVar.f9868h;
        this.f9842h = i10;
        int i11 = bVar.f9869i;
        this.f9843i = i11;
        this.f9844j = i11 != -1 ? i11 : i10;
        this.f9845k = bVar.f9870j;
        this.f9846l = bVar.f9871k;
        this.f9847m = bVar.f9872l;
        this.f9848n = bVar.f9873m;
        this.f9849o = bVar.f9874n;
        this.f9850p = bVar.f9875o;
        this.f9851q = bVar.f9876p;
        this.f9852r = bVar.f9877q == null ? Collections.emptyList() : bVar.f9877q;
        DrmInitData drmInitData = bVar.f9878r;
        this.f9853s = drmInitData;
        this.f9854t = bVar.f9879s;
        this.f9855u = bVar.f9880t;
        this.f9856v = bVar.f9881u;
        this.f9857w = bVar.f9882v;
        this.f9858x = bVar.f9883w;
        this.f9859y = bVar.f9884x == -1 ? 0 : bVar.f9884x;
        this.f9860z = bVar.f9885y == -1.0f ? 1.0f : bVar.f9885y;
        this.A = bVar.f9886z;
        this.B = bVar.A;
        this.C = bVar.B;
        this.D = bVar.C;
        this.E = bVar.D;
        this.F = bVar.E;
        this.G = bVar.F;
        this.H = bVar.G == -1 ? 0 : bVar.G;
        this.I = bVar.H != -1 ? bVar.H : 0;
        this.J = bVar.I;
        this.K = bVar.J;
        this.L = bVar.K;
        this.M = bVar.L;
        if (bVar.M != 0 || drmInitData == null) {
            this.N = bVar.M;
        } else {
            this.N = 1;
        }
    }
}
