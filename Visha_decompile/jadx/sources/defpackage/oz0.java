package defpackage;

import android.content.Context;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.push.PushConstants;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class oz0 {
    public static final a O = new a(null);
    public static final String P;
    public int A;
    public long B;
    public gea C;
    public int D;
    public int E;
    public long F;
    public int G;
    public int H;
    public long I;
    public gea J;
    public boolean K;
    public boolean L;
    public boolean M;
    public yj4 N;
    public final Context a;
    public String b;
    public String c;
    public qe d;
    public int e;
    public int f;
    public int g;
    public String h;
    public int i;
    public boolean j;
    public int k;
    public long l;
    public List m;
    public jpa n;
    public npa o;
    public yfb p;
    public boolean q;
    public boolean r;
    public int s;
    public String t;
    public wp5 u;
    public int v;
    public int w;
    public long x;
    public int y;
    public boolean z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        String absolutePath = new File(rh1.a.a().getCacheDir(), "http_cache").getAbsolutePath();
        y45.i(absolutePath, "getAbsolutePath(...)");
        P = absolutePath;
    }

    public oz0(Context context) {
        y45.j(context, "context");
        this.a = context;
        this.b = "";
        this.c = "";
        this.e = 60;
        this.f = 60;
        this.g = 60;
        this.h = P;
        this.i = 50;
        this.j = true;
        this.k = 1;
        this.l = 2000L;
        this.m = y71.k();
        this.o = new e27();
        this.q = true;
        this.s = 4;
        this.t = "";
        this.u = new h22();
        this.v = 3;
        this.w = 1;
        this.x = 10485760L;
        this.y = 1000;
        this.z = true;
        this.A = 2;
        this.B = 10000L;
        this.D = 3;
        this.E = 3;
        this.F = 10485760L;
        this.G = 1000;
        this.H = 2;
        this.I = 10000L;
    }

    public final int A() {
        return this.k;
    }

    public final int B() {
        return this.E;
    }

    public final int C() {
        return this.w;
    }

    public final int D() {
        return this.y;
    }

    public final long E() {
        return this.x;
    }

    public final int F() {
        return this.v;
    }

    public final long G() {
        return this.l;
    }

    public final boolean H() {
        return this.r;
    }

    public final int I() {
        return this.f;
    }

    public final boolean J() {
        return this.L;
    }

    public final yfb K() {
        return this.p;
    }

    public final int L() {
        return this.A;
    }

    public final long M() {
        return this.B;
    }

    public final gea N() {
        return this.C;
    }

    public final boolean O() {
        return this.M;
    }

    public final int P() {
        return this.g;
    }

    public final oz0 Q(jpa jpaVar) {
        y45.j(jpaVar, "accessTokenFetcher");
        this.n = jpaVar;
        return this;
    }

    public final oz0 R(String str) {
        y45.j(str, PushConstants.PROVIDER_FIELD_APP_ID);
        this.c = str;
        return this;
    }

    public final oz0 S(String str) {
        y45.j(str, SerializableCookie.DOMAIN);
        this.b = str;
        return this;
    }

    public final oz0 T(int i) {
        this.H = i;
        return this;
    }

    public final oz0 U(boolean z) {
        this.z = z;
        return this;
    }

    public final oz0 V(yj4 yj4Var) {
        this.N = yj4Var;
        return this;
    }

    public final oz0 W(int i) {
        this.s = i;
        return this;
    }

    public final oz0 X(String str) {
        y45.j(str, "logSingleTag");
        this.t = str;
        return this;
    }

    public final oz0 Y(boolean z) {
        this.q = z;
        return this;
    }

    public final oz0 Z(int i) {
        this.D = i;
        return this;
    }

    public final rz0 a() {
        if (j1a.o0(this.b) || !hi.P(new String[]{"trassionDisk", "trassionBackup", "visha"}, this.b)) {
            throw new IllegalArgumentException("domain is blank or invalid, please call setDomain()");
        }
        if (this.n == null) {
            throw new IllegalArgumentException("accessTokenFetcher is null,please call setAccessTokenFetcher()");
        }
        if (this.p == null) {
            throw new IllegalArgumentException("uniqueIdFetcher is null,please call setUniqueIdFetcher()");
        }
        if (this.v <= 0) {
            throw new IllegalArgumentException("maxUploadFiles must be greater than 0");
        }
        if (this.x <= 0) {
            throw new IllegalArgumentException("maxUploadBlockSize must be greater than 0");
        }
        if (this.w > 0) {
            return new rz0(this);
        }
        throw new IllegalArgumentException("maxParallelUpload must be greater than 0");
    }

    public final oz0 a0(int i) {
        this.v = i;
        return this;
    }

    public final jpa b() {
        return this.n;
    }

    public final oz0 b0(boolean z) {
        this.r = z;
        return this;
    }

    public final npa c() {
        return this.o;
    }

    public final oz0 c0(boolean z) {
        this.L = z;
        return this;
    }

    public final String d() {
        return this.c;
    }

    public final oz0 d0(yfb yfbVar) {
        y45.j(yfbVar, "uniqueIdFetcher");
        this.p = yfbVar;
        return this;
    }

    public final qe e() {
        return this.d;
    }

    public final oz0 e0(int i) {
        this.A = i;
        return this;
    }

    public final int f() {
        return this.e;
    }

    public final Context g() {
        return this.a;
    }

    public final List h() {
        return this.m;
    }

    public final he7 i() {
        return null;
    }

    public final String j() {
        return this.b;
    }

    public final int k() {
        return this.H;
    }

    public final long l() {
        return this.I;
    }

    public final gea m() {
        return this.J;
    }

    public final boolean n() {
        return this.j;
    }

    public final boolean o() {
        return this.K;
    }

    public final boolean p() {
        return this.z;
    }

    public final yj4 q() {
        return this.N;
    }

    public final String r() {
        return this.h;
    }

    public final int s() {
        return this.i;
    }

    public final int t() {
        return this.s;
    }

    public final wp5 u() {
        return this.u;
    }

    public final String v() {
        return this.t;
    }

    public final boolean w() {
        return this.q;
    }

    public final int x() {
        return this.G;
    }

    public final long y() {
        return this.F;
    }

    public final int z() {
        return this.D;
    }
}
