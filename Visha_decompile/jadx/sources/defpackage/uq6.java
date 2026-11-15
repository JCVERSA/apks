package defpackage;

import androidx.media3.common.C;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.push.PushConstants;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Regex;

public final class uq6 {
    public static final a J = new a(null);
    public int A;
    public String B;
    public String C;
    public String D;
    public String E;
    public int F;
    public String G;
    public String H;
    public int I;
    public int a;
    public String b;
    public int c;
    public int d;
    public String e;
    public String f;
    public String g;
    public String h;
    public long i;
    public long j;
    public long k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public long s;
    public long t;
    public String u;
    public String v;
    public String w;
    public String x;
    public String y;
    public String z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final uq6 a(int i, String str) {
            uq6 uq6Var = new uq6(0, null, 0, 0, null, null, null, null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, null, null, null, null, null, 0, null, null, null, null, 0, null, null, 0, -1, 7, null);
            uq6Var.l0(i);
            uq6Var.N(str);
            return uq6Var;
        }

        public a() {
        }
    }

    public uq6(int i, String str, int i2, int i3, String str2, String str3, String str4, String str5, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, String str6, String str7, String str8, String str9, String str10, String str11, int i4, String str12, String str13, String str14, String str15, int i5, String str16, String str17, int i6) {
        y45.j(str, "callId");
        y45.j(str2, "errorMsg");
        y45.j(str3, "serverApi");
        y45.j(str5, "ipAddr");
        y45.j(str6, "cdnSpeed");
        y45.j(str7, "cdnIp");
        y45.j(str8, "cdnProvider");
        y45.j(str9, "country");
        y45.j(str10, "path");
        y45.j(str11, SerializableCookie.HOST);
        y45.j(str13, PushConstants.PROVIDER_FIELD_SDK_VERSION);
        y45.j(str14, "protocol");
        y45.j(str15, "compareTag");
        y45.j(str16, "contentEncoding");
        y45.j(str17, "tlsVersion");
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = i3;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = str5;
        this.i = j;
        this.j = j2;
        this.k = j3;
        this.l = j4;
        this.m = j5;
        this.n = j6;
        this.o = j7;
        this.p = j8;
        this.q = j9;
        this.r = j10;
        this.s = j11;
        this.t = j12;
        this.u = str6;
        this.v = str7;
        this.w = str8;
        this.x = str9;
        this.y = str10;
        this.z = str11;
        this.A = i4;
        this.B = str12;
        this.C = str13;
        this.D = str14;
        this.E = str15;
        this.F = i5;
        this.G = str16;
        this.H = str17;
        this.I = i6;
    }

    public final long A() {
        return this.l;
    }

    public final String B() {
        return this.f;
    }

    public final long C() {
        return this.r;
    }

    public final long D() {
        return this.k;
    }

    public final long E() {
        return this.j;
    }

    public final String F() {
        return this.H;
    }

    public final int G() {
        return this.a;
    }

    public final long H() {
        return this.m;
    }

    public final void I(int i) {
        this.c = i;
    }

    public final void J(long j) {
        this.t = j;
    }

    public final void K(String str) {
        y45.j(str, "<set-?>");
        this.w = str;
    }

    public final void L(long j) {
        this.s = j;
    }

    public final void M(String str) {
        y45.j(str, "<set-?>");
        this.u = str;
    }

    public final void N(String str) {
        this.B = str;
    }

    public final void O(String str) {
        y45.j(str, "<set-?>");
        this.E = str;
    }

    public final void P(String str) {
        this.g = str;
    }

    public final void Q(String str) {
        y45.j(str, "<set-?>");
        this.G = str;
    }

    public final void R(long j) {
        this.i = j;
    }

    public final void S(int i) {
        this.d = i;
    }

    public final void T(String str) {
        y45.j(str, "<set-?>");
        this.e = str;
    }

    public final void U(String str) {
        y45.j(str, "<set-?>");
        this.z = str;
    }

    public final void V(int i) {
        this.F = i;
    }

    public final void W(String str) {
        y45.j(str, "<set-?>");
        this.h = str;
    }

    public final void X(int i) {
        this.A = i;
    }

    public final void Y(String str) {
        y45.j(str, "<set-?>");
        this.y = str;
    }

    public final void Z(String str) {
        y45.j(str, "<set-?>");
        this.D = str;
    }

    public final String a() {
        return this.b;
    }

    public final void a0(long j) {
        this.n = j;
    }

    public final int b() {
        return this.c;
    }

    public final void b0(long j) {
        this.p = j;
    }

    public final long c() {
        return this.t;
    }

    public final void c0(long j) {
        this.o = j;
    }

    public final String d() {
        return this.w;
    }

    public final void d0(int i) {
        this.I = i;
    }

    public final long e() {
        return this.s;
    }

    public final void e0(long j) {
        this.q = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uq6)) {
            return false;
        }
        uq6 uq6Var = (uq6) obj;
        return this.a == uq6Var.a && y45.e(this.b, uq6Var.b) && this.c == uq6Var.c && this.d == uq6Var.d && y45.e(this.e, uq6Var.e) && y45.e(this.f, uq6Var.f) && y45.e(this.g, uq6Var.g) && y45.e(this.h, uq6Var.h) && this.i == uq6Var.i && this.j == uq6Var.j && this.k == uq6Var.k && this.l == uq6Var.l && this.m == uq6Var.m && this.n == uq6Var.n && this.o == uq6Var.o && this.p == uq6Var.p && this.q == uq6Var.q && this.r == uq6Var.r && this.s == uq6Var.s && this.t == uq6Var.t && y45.e(this.u, uq6Var.u) && y45.e(this.v, uq6Var.v) && y45.e(this.w, uq6Var.w) && y45.e(this.x, uq6Var.x) && y45.e(this.y, uq6Var.y) && y45.e(this.z, uq6Var.z) && this.A == uq6Var.A && y45.e(this.B, uq6Var.B) && y45.e(this.C, uq6Var.C) && y45.e(this.D, uq6Var.D) && y45.e(this.E, uq6Var.E) && this.F == uq6Var.F && y45.e(this.G, uq6Var.G) && y45.e(this.H, uq6Var.H) && this.I == uq6Var.I;
    }

    public final String f() {
        return this.u;
    }

    public final void f0(long j) {
        this.l = j;
    }

    public final String g() {
        return this.B;
    }

    public final void g0(String str) {
        y45.j(str, "<set-?>");
        this.f = str;
    }

    public final String h() {
        return this.E;
    }

    public final void h0(long j) {
        this.r = j;
    }

    public int hashCode() {
        int iHashCode = ((((((((((Integer.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Integer.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + this.e.hashCode()) * 31) + this.f.hashCode()) * 31;
        String str = this.g;
        int iHashCode2 = (((((((((((((((((((((((((((((((((((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.h.hashCode()) * 31) + Long.hashCode(this.i)) * 31) + Long.hashCode(this.j)) * 31) + Long.hashCode(this.k)) * 31) + Long.hashCode(this.l)) * 31) + Long.hashCode(this.m)) * 31) + Long.hashCode(this.n)) * 31) + Long.hashCode(this.o)) * 31) + Long.hashCode(this.p)) * 31) + Long.hashCode(this.q)) * 31) + Long.hashCode(this.r)) * 31) + Long.hashCode(this.s)) * 31) + Long.hashCode(this.t)) * 31) + this.u.hashCode()) * 31) + this.v.hashCode()) * 31) + this.w.hashCode()) * 31) + this.x.hashCode()) * 31) + this.y.hashCode()) * 31) + this.z.hashCode()) * 31) + Integer.hashCode(this.A)) * 31;
        String str2 = this.B;
        return ((((((((((((((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.C.hashCode()) * 31) + this.D.hashCode()) * 31) + this.E.hashCode()) * 31) + Integer.hashCode(this.F)) * 31) + this.G.hashCode()) * 31) + this.H.hashCode()) * 31) + Integer.hashCode(this.I);
    }

    public final String i() {
        return this.g;
    }

    public final void i0(long j) {
        this.k = j;
    }

    public final String j() {
        return this.G;
    }

    public final void j0(long j) {
        this.j = j;
    }

    public final String k() {
        return this.x;
    }

    public final void k0(String str) {
        y45.j(str, "<set-?>");
        this.H = str;
    }

    public final long l() {
        return this.i;
    }

    public final void l0(int i) {
        this.a = i;
    }

    public final int m() {
        return this.d;
    }

    public final void m0(long j) {
        this.m = j;
    }

    public final String n() {
        return this.e;
    }

    public final String o() {
        return this.z;
    }

    public final int p() {
        return this.F;
    }

    public final String q() {
        return this.h;
    }

    public final int r() {
        return this.A;
    }

    public final String s() {
        return this.y;
    }

    public final String t() {
        return this.D;
    }

    public String toString() {
        return "{\n                    usage            : " + this.a + "\n                    call_id          : " + this.b + "\n                    call_result_code : " + this.c + "\n                    server_api       : " + this.f + "\n                    complete_api     : " + this.g + "\n                    ip_address       : " + this.h + "\n                    error_code       : " + this.d + "\n                    error_msg        : " + this.e + "\n                    req_time         : " + this.o + "ms\n                    dns_time         : " + this.i + "ms\n                    tcp_time         : " + this.j + "ms\n                    ssl_time         : " + this.k + "ms\n                    send_time        : " + this.l + "ms\n                    wait_time        : " + this.m + "ms\n                    rec_time         : " + this.n + "ms\n                    req_body_size    : " + this.p + "b\n                    res_body_size    : " + this.q + "b\n                    server_time      : " + this.r + "ms\n                    cdn_req_time     : " + this.s + "ms\n                    cdn_down_time    : " + this.t + "ms\n                    cdn_speed        : " + this.u + "kb/s\n                    cdn_provider     : " + this.w + "\n                    country          : " + this.x + "\n                    path             : " + this.y + "\n                    host             : " + this.z + "\n                    channel          : " + this.B + "\n                    sdk_version      : " + this.C + "\n                    protocol         : " + this.D + "\n                    compare_tag      : " + this.E + "\n                    http_type        : " + this.F + "\n                    content_encoding : " + this.G + "\n                    tls_version      : " + this.H + "\n                    request_downgrade : " + this.I + "\n                  }";
    }

    public final long u() {
        return this.n;
    }

    public final long v() {
        return this.p;
    }

    public final long w() {
        return this.o;
    }

    public final int x() {
        return this.I;
    }

    public final long y() {
        return this.q;
    }

    public final String z() {
        return this.C;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public uq6(int i, String str, int i2, int i3, String str2, String str3, String str4, String str5, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, String str6, String str7, String str8, String str9, String str10, String str11, int i4, String str12, String str13, String str14, String str15, int i5, String str16, String str17, int i6, int i7, int i8, DefaultConstructorMarker defaultConstructorMarker) {
        String strReplace;
        String strA;
        int i9 = (i7 & 1) != 0 ? 0 : i;
        if ((i7 & 2) != 0) {
            String string = UUID.randomUUID().toString();
            y45.i(string, "randomUUID().toString()");
            strReplace = new Regex("-").replace(string, "");
        } else {
            strReplace = str;
        }
        int i10 = (i7 & 4) != 0 ? 0 : i2;
        int i11 = (i7 & 8) != 0 ? 0 : i3;
        String str18 = (i7 & 16) != 0 ? "" : str2;
        String str19 = (i7 & 32) != 0 ? "" : str3;
        String str20 = (i7 & 64) != 0 ? null : str4;
        String str21 = (i7 & 128) != 0 ? "" : str5;
        long j13 = (i7 & 256) != 0 ? 0L : j;
        long j14 = (i7 & 512) != 0 ? 0L : j2;
        long j15 = (i7 & 1024) != 0 ? 0L : j3;
        long j16 = (i7 & 2048) != 0 ? 0L : j4;
        long j17 = (i7 & 4096) != 0 ? 0L : j5;
        long j18 = (i7 & 8192) != 0 ? 0L : j6;
        long j19 = (i7 & 16384) != 0 ? 0L : j7;
        long j20 = (32768 & i7) != 0 ? 0L : j8;
        long j21 = (65536 & i7) != 0 ? 0L : j9;
        long j22 = (131072 & i7) != 0 ? 0L : j10;
        long j23 = (262144 & i7) != 0 ? 0L : j11;
        long j24 = (524288 & i7) == 0 ? j12 : 0L;
        String str22 = (1048576 & i7) != 0 ? "" : str6;
        String str23 = (i7 & 2097152) != 0 ? "" : str7;
        String str24 = (i7 & 4194304) != 0 ? "" : str8;
        if ((i7 & 8388608) != 0) {
            strA = wlb.a();
            y45.i(strA, "getCountry()");
        } else {
            strA = str9;
        }
        this(i9, strReplace, i10, i11, str18, str19, str20, str21, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, str22, str23, str24, strA, (16777216 & i7) != 0 ? "" : str10, (i7 & 33554432) != 0 ? r4 : str11, (i7 & 67108864) != 0 ? 0 : i4, (i7 & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? "All" : str12, (i7 & 268435456) != 0 ? "1.0.17.1" : str13, (i7 & 536870912) != 0 ? r4 : str14, (i7 & 1073741824) != 0 ? r4 : str15, (i7 & Integer.MIN_VALUE) != 0 ? 1 : i5, (i8 & 1) != 0 ? r4 : str16, (i8 & 2) != 0 ? r4 : str17, (i8 & 4) != 0 ? 0 : i6);
    }
}
