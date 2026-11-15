package mh;

import androidx.collection.s;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.mvel2.ast.ASTNode;

public final class e {
    public static final a J = new a(null);
    private int A;
    private String B;
    private String C;
    private String D;
    private String E;
    private int F;
    private String G;
    private String H;
    private int I;

    private int f66411a;

    private String f66412b;

    private int f66413c;

    private int f66414d;

    private String f66415e;

    private String f66416f;

    private String f66417g;

    private String f66418h;

    private long f66419i;

    private long f66420j;

    private long f66421k;

    private long f66422l;

    private long f66423m;

    private long f66424n;

    private long f66425o;

    private long f66426p;

    private long f66427q;

    private long f66428r;

    private long f66429s;

    private long f66430t;

    private String f66431u;

    private String f66432v;

    private String f66433w;

    private String f66434x;

    private String f66435y;

    private String f66436z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a(int i10, String str) {
            e eVar = new e(0, null, 0, 0, null, null, null, null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, null, null, null, null, null, 0, null, null, null, null, 0, null, null, 0, -1, 7, null);
            eVar.l0(i10);
            eVar.N(str);
            return eVar;
        }

        private a() {
        }
    }

    public e() {
        this(0, null, 0, 0, null, null, null, null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, null, null, null, null, null, null, 0, null, null, null, null, 0, null, null, 0, -1, 7, null);
    }

    public final long A() {
        return this.f66422l;
    }

    public final String B() {
        return this.f66416f;
    }

    public final long C() {
        return this.f66428r;
    }

    public final long D() {
        return this.f66421k;
    }

    public final long E() {
        return this.f66420j;
    }

    public final String F() {
        return this.H;
    }

    public final int G() {
        return this.f66411a;
    }

    public final long H() {
        return this.f66423m;
    }

    public final void I(int i10) {
        this.f66413c = i10;
    }

    public final void J(long j10) {
        this.f66430t = j10;
    }

    public final void K(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f66433w = str;
    }

    public final void L(long j10) {
        this.f66429s = j10;
    }

    public final void M(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f66431u = str;
    }

    public final void N(String str) {
        this.B = str;
    }

    public final void O(String str) {
        Intrinsics.h(str, "<set-?>");
        this.E = str;
    }

    public final void P(String str) {
        this.f66417g = str;
    }

    public final void Q(String str) {
        Intrinsics.h(str, "<set-?>");
        this.G = str;
    }

    public final void R(long j10) {
        this.f66419i = j10;
    }

    public final void S(int i10) {
        this.f66414d = i10;
    }

    public final void T(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f66415e = str;
    }

    public final void U(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f66436z = str;
    }

    public final void V(int i10) {
        this.F = i10;
    }

    public final void W(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f66418h = str;
    }

    public final void X(int i10) {
        this.A = i10;
    }

    public final void Y(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f66435y = str;
    }

    public final void Z(String str) {
        Intrinsics.h(str, "<set-?>");
        this.D = str;
    }

    public final String a() {
        return this.f66412b;
    }

    public final void a0(long j10) {
        this.f66424n = j10;
    }

    public final int b() {
        return this.f66413c;
    }

    public final void b0(long j10) {
        this.f66426p = j10;
    }

    public final long c() {
        return this.f66430t;
    }

    public final void c0(long j10) {
        this.f66425o = j10;
    }

    public final String d() {
        return this.f66433w;
    }

    public final void d0(int i10) {
        this.I = i10;
    }

    public final long e() {
        return this.f66429s;
    }

    public final void e0(long j10) {
        this.f66427q = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f66411a == eVar.f66411a && Intrinsics.c(this.f66412b, eVar.f66412b) && this.f66413c == eVar.f66413c && this.f66414d == eVar.f66414d && Intrinsics.c(this.f66415e, eVar.f66415e) && Intrinsics.c(this.f66416f, eVar.f66416f) && Intrinsics.c(this.f66417g, eVar.f66417g) && Intrinsics.c(this.f66418h, eVar.f66418h) && this.f66419i == eVar.f66419i && this.f66420j == eVar.f66420j && this.f66421k == eVar.f66421k && this.f66422l == eVar.f66422l && this.f66423m == eVar.f66423m && this.f66424n == eVar.f66424n && this.f66425o == eVar.f66425o && this.f66426p == eVar.f66426p && this.f66427q == eVar.f66427q && this.f66428r == eVar.f66428r && this.f66429s == eVar.f66429s && this.f66430t == eVar.f66430t && Intrinsics.c(this.f66431u, eVar.f66431u) && Intrinsics.c(this.f66432v, eVar.f66432v) && Intrinsics.c(this.f66433w, eVar.f66433w) && Intrinsics.c(this.f66434x, eVar.f66434x) && Intrinsics.c(this.f66435y, eVar.f66435y) && Intrinsics.c(this.f66436z, eVar.f66436z) && this.A == eVar.A && Intrinsics.c(this.B, eVar.B) && Intrinsics.c(this.C, eVar.C) && Intrinsics.c(this.D, eVar.D) && Intrinsics.c(this.E, eVar.E) && this.F == eVar.F && Intrinsics.c(this.G, eVar.G) && Intrinsics.c(this.H, eVar.H) && this.I == eVar.I;
    }

    public final String f() {
        return this.f66431u;
    }

    public final void f0(long j10) {
        this.f66422l = j10;
    }

    public final String g() {
        return this.B;
    }

    public final void g0(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f66416f = str;
    }

    public final String h() {
        return this.E;
    }

    public final void h0(long j10) {
        this.f66428r = j10;
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.f66411a * 31) + this.f66412b.hashCode()) * 31) + this.f66413c) * 31) + this.f66414d) * 31) + this.f66415e.hashCode()) * 31) + this.f66416f.hashCode()) * 31;
        String str = this.f66417g;
        int iHashCode2 = (((((((((((((((((((((((((((((((((((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f66418h.hashCode()) * 31) + s.a(this.f66419i)) * 31) + s.a(this.f66420j)) * 31) + s.a(this.f66421k)) * 31) + s.a(this.f66422l)) * 31) + s.a(this.f66423m)) * 31) + s.a(this.f66424n)) * 31) + s.a(this.f66425o)) * 31) + s.a(this.f66426p)) * 31) + s.a(this.f66427q)) * 31) + s.a(this.f66428r)) * 31) + s.a(this.f66429s)) * 31) + s.a(this.f66430t)) * 31) + this.f66431u.hashCode()) * 31) + this.f66432v.hashCode()) * 31) + this.f66433w.hashCode()) * 31) + this.f66434x.hashCode()) * 31) + this.f66435y.hashCode()) * 31) + this.f66436z.hashCode()) * 31) + this.A) * 31;
        String str2 = this.B;
        return ((((((((((((((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.C.hashCode()) * 31) + this.D.hashCode()) * 31) + this.E.hashCode()) * 31) + this.F) * 31) + this.G.hashCode()) * 31) + this.H.hashCode()) * 31) + this.I;
    }

    public final String i() {
        return this.f66417g;
    }

    public final void i0(long j10) {
        this.f66421k = j10;
    }

    public final String j() {
        return this.G;
    }

    public final void j0(long j10) {
        this.f66420j = j10;
    }

    public final String k() {
        return this.f66434x;
    }

    public final void k0(String str) {
        Intrinsics.h(str, "<set-?>");
        this.H = str;
    }

    public final long l() {
        return this.f66419i;
    }

    public final void l0(int i10) {
        this.f66411a = i10;
    }

    public final int m() {
        return this.f66414d;
    }

    public final void m0(long j10) {
        this.f66423m = j10;
    }

    public final String n() {
        return this.f66415e;
    }

    public final String o() {
        return this.f66436z;
    }

    public final int p() {
        return this.F;
    }

    public final String q() {
        return this.f66418h;
    }

    public final int r() {
        return this.A;
    }

    public final String s() {
        return this.f66435y;
    }

    public final String t() {
        return this.D;
    }

    public String toString() {
        return "{\n                    usage            : " + this.f66411a + "\n                    call_id          : " + this.f66412b + "\n                    call_result_code : " + this.f66413c + "\n                    server_api       : " + this.f66416f + "\n                    complete_api     : " + this.f66417g + "\n                    ip_address       : " + this.f66418h + "\n                    error_code       : " + this.f66414d + "\n                    error_msg        : " + this.f66415e + "\n                    req_time         : " + this.f66425o + "ms\n                    dns_time         : " + this.f66419i + "ms\n                    tcp_time         : " + this.f66420j + "ms\n                    ssl_time         : " + this.f66421k + "ms\n                    send_time        : " + this.f66422l + "ms\n                    wait_time        : " + this.f66423m + "ms\n                    rec_time         : " + this.f66424n + "ms\n                    req_body_size    : " + this.f66426p + "b\n                    res_body_size    : " + this.f66427q + "b\n                    server_time      : " + this.f66428r + "ms\n                    cdn_req_time     : " + this.f66429s + "ms\n                    cdn_down_time    : " + this.f66430t + "ms\n                    cdn_speed        : " + this.f66431u + "kb/s\n                    cdn_provider     : " + this.f66433w + "\n                    country          : " + this.f66434x + "\n                    path             : " + this.f66435y + "\n                    host             : " + this.f66436z + "\n                    channel          : " + this.B + "\n                    sdk_version      : " + this.C + "\n                    protocol         : " + this.D + "\n                    compare_tag      : " + this.E + "\n                    http_type        : " + this.F + "\n                    content_encoding : " + this.G + "\n                    tls_version      : " + this.H + "\n                    request_downgrade : " + this.I + "\n                  }";
    }

    public final long u() {
        return this.f66424n;
    }

    public final long v() {
        return this.f66426p;
    }

    public final long w() {
        return this.f66425o;
    }

    public final int x() {
        return this.I;
    }

    public final long y() {
        return this.f66427q;
    }

    public final String z() {
        return this.C;
    }

    public e(int i10, String callId, int i11, int i12, String errorMsg, String serverApi, String str, String ipAddr, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, String cdnSpeed, String cdnIp, String cdnProvider, String country, String path, String host, int i13, String str2, String sdkVersion, String protocol, String compareTag, int i14, String contentEncoding, String tlsVersion, int i15) {
        Intrinsics.h(callId, "callId");
        Intrinsics.h(errorMsg, "errorMsg");
        Intrinsics.h(serverApi, "serverApi");
        Intrinsics.h(ipAddr, "ipAddr");
        Intrinsics.h(cdnSpeed, "cdnSpeed");
        Intrinsics.h(cdnIp, "cdnIp");
        Intrinsics.h(cdnProvider, "cdnProvider");
        Intrinsics.h(country, "country");
        Intrinsics.h(path, "path");
        Intrinsics.h(host, "host");
        Intrinsics.h(sdkVersion, "sdkVersion");
        Intrinsics.h(protocol, "protocol");
        Intrinsics.h(compareTag, "compareTag");
        Intrinsics.h(contentEncoding, "contentEncoding");
        Intrinsics.h(tlsVersion, "tlsVersion");
        this.f66411a = i10;
        this.f66412b = callId;
        this.f66413c = i11;
        this.f66414d = i12;
        this.f66415e = errorMsg;
        this.f66416f = serverApi;
        this.f66417g = str;
        this.f66418h = ipAddr;
        this.f66419i = j10;
        this.f66420j = j11;
        this.f66421k = j12;
        this.f66422l = j13;
        this.f66423m = j14;
        this.f66424n = j15;
        this.f66425o = j16;
        this.f66426p = j17;
        this.f66427q = j18;
        this.f66428r = j19;
        this.f66429s = j20;
        this.f66430t = j21;
        this.f66431u = cdnSpeed;
        this.f66432v = cdnIp;
        this.f66433w = cdnProvider;
        this.f66434x = country;
        this.f66435y = path;
        this.f66436z = host;
        this.A = i13;
        this.B = str2;
        this.C = sdkVersion;
        this.D = protocol;
        this.E = compareTag;
        this.F = i14;
        this.G = contentEncoding;
        this.H = tlsVersion;
        this.I = i15;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public e(int i10, String str, int i11, int i12, String str2, String str3, String str4, String str5, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, String str6, String str7, String str8, String str9, String str10, String str11, int i13, String str12, String str13, String str14, String str15, int i14, String str16, String str17, int i15, int i16, int i17, DefaultConstructorMarker defaultConstructorMarker) {
        String strReplace;
        String strA;
        int i18 = (i16 & 1) != 0 ? 0 : i10;
        if ((i16 & 2) != 0) {
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "randomUUID().toString()");
            strReplace = new Regex("-").replace(string, "");
        } else {
            strReplace = str;
        }
        int i19 = (i16 & 4) != 0 ? 0 : i11;
        int i20 = (i16 & 8) != 0 ? 0 : i12;
        String str18 = (i16 & 16) != 0 ? "" : str2;
        String str19 = (i16 & 32) != 0 ? "" : str3;
        String str20 = (i16 & 64) != 0 ? null : str4;
        String str21 = (i16 & 128) != 0 ? "" : str5;
        long j22 = (i16 & 256) != 0 ? 0L : j10;
        long j23 = (i16 & 512) != 0 ? 0L : j11;
        long j24 = (i16 & 1024) != 0 ? 0L : j12;
        long j25 = (i16 & 2048) != 0 ? 0L : j13;
        long j26 = (i16 & 4096) != 0 ? 0L : j14;
        long j27 = (i16 & 8192) != 0 ? 0L : j15;
        long j28 = (i16 & 16384) != 0 ? 0L : j16;
        long j29 = (32768 & i16) != 0 ? 0L : j17;
        long j30 = (65536 & i16) != 0 ? 0L : j18;
        long j31 = (131072 & i16) != 0 ? 0L : j19;
        long j32 = (262144 & i16) != 0 ? 0L : j20;
        long j33 = (524288 & i16) == 0 ? j21 : 0L;
        String str22 = (1048576 & i16) != 0 ? "" : str6;
        String str23 = (i16 & 2097152) != 0 ? "" : str7;
        String str24 = (i16 & 4194304) != 0 ? "" : str8;
        if ((i16 & 8388608) != 0) {
            strA = o.a();
            Intrinsics.g(strA, "getCountry()");
        } else {
            strA = str9;
        }
        this(i18, strReplace, i19, i20, str18, str19, str20, str21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, str22, str23, str24, strA, (16777216 & i16) != 0 ? "" : str10, (i16 & ASTNode.PCTX_STORED) != 0 ? r4 : str11, (i16 & 67108864) != 0 ? 0 : i13, (i16 & ASTNode.NOJIT) != 0 ? "All" : str12, (i16 & ASTNode.DEOP) != 0 ? "1.0.17.1" : str13, (i16 & ASTNode.DISCARD) != 0 ? r4 : str14, (i16 & 1073741824) != 0 ? r4 : str15, (i16 & Integer.MIN_VALUE) != 0 ? 1 : i14, (i17 & 1) != 0 ? r4 : str16, (i17 & 2) != 0 ? r4 : str17, (i17 & 4) != 0 ? 0 : i15);
    }
}
