package defpackage;

import android.content.Context;
import android.text.TextUtils;
import org.apache.commons.lang3.time.DateUtils;

public class wdb {
    public String a;
    public String b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public sr3 h;
    public Float i;
    public byte[] j;
    public byte[] k;
    public long l;
    public Context m;
    public String n;
    public Long o;
    public Boolean p;

    public static final class a {
        public String a;
        public String b;
        public byte[] f;
        public byte[] g;
        public sr3 i;
        public Float j;
        public Context m;
        public Long n;
        public long c = 10485760;
        public long d = 604800000;
        public long e = DateUtils.MILLIS_PER_HOUR;
        public long h = 52428800;
        public long k = 0;
        public String l = "";
        public Boolean o = Boolean.FALSE;

        public wdb a() {
            wdb wdbVar = new wdb();
            wdbVar.r(this.a);
            wdbVar.C(this.b);
            wdbVar.A(this.c);
            wdbVar.B(this.h);
            wdbVar.x(this.i);
            wdbVar.D(this.j);
            wdbVar.u(this.d);
            wdbVar.y(this.e);
            wdbVar.w(this.f);
            wdbVar.v(this.g);
            wdbVar.E(this.k);
            wdbVar.q(this.l);
            wdbVar.t(this.m);
            wdbVar.s(this.n);
            wdbVar.z(this.o);
            return wdbVar;
        }

        public a b(String str) {
            this.l = str;
            return this;
        }

        public a c(String str) {
            this.a = str;
            return this;
        }

        public a d(Long l) {
            this.n = l;
            return this;
        }

        public a e(Context context) {
            this.m = context;
            return this;
        }

        public a f(byte[] bArr) {
            this.g = bArr;
            return this;
        }

        public a g(byte[] bArr) {
            this.f = bArr;
            return this;
        }

        public a h(Boolean bool) {
            this.o = bool;
            return this;
        }

        public a i(String str) {
            this.b = str;
            return this;
        }

        public a j(long j) {
            this.k = j;
            return this;
        }
    }

    public final void A(long j) {
        this.c = j;
    }

    public final void B(long j) {
        this.g = j;
    }

    public final void C(String str) {
        this.b = str;
    }

    public final void D(Float f) {
        this.i = f;
    }

    public final void E(long j) {
        this.l = j;
    }

    public String k() {
        return this.n;
    }

    public Long l() {
        return this.o;
    }

    public Context m() {
        return this.m;
    }

    public Boolean n() {
        return this.p;
    }

    public long o() {
        return this.l;
    }

    public boolean p() {
        return (TextUtils.isEmpty(this.a) || TextUtils.isEmpty(this.b) || this.j == null || this.k == null) ? false : true;
    }

    public void q(String str) {
        this.n = str;
    }

    public final void r(String str) {
        this.a = str;
    }

    public void s(Long l) {
        this.o = l;
    }

    public void t(Context context) {
        this.m = context;
    }

    public final void u(long j) {
        this.d = j;
    }

    public final void v(byte[] bArr) {
        this.k = bArr;
    }

    public final void w(byte[] bArr) {
        this.j = bArr;
    }

    public final void x(sr3 sr3Var) {
        this.h = sr3Var;
    }

    public void y(long j) {
        this.e = j;
    }

    public void z(Boolean bool) {
        this.p = bool;
    }

    public wdb() {
        this.c = 10485760L;
        this.d = 604800000L;
        this.e = DateUtils.MILLIS_PER_HOUR;
        this.f = 500L;
        this.g = 52428800L;
        this.l = 0L;
        this.n = "";
        this.p = Boolean.FALSE;
    }
}
