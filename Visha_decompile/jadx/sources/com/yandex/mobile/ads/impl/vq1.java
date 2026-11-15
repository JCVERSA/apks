package com.yandex.mobile.ads.impl;

import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.Closeable;
import java.util.List;
import org.apache.commons.text.StringSubstitutor;
import org.mozilla.javascript.ES6Iterator;

public final class vq1 implements Closeable {
    private final vp1 a;
    private final mm1 b;
    private final String c;
    private final int d;
    private final if0 e;
    private final qf0 f;
    private final zq1 g;
    private final vq1 h;
    private final vq1 i;
    private final vq1 j;
    private final long k;
    private final long l;
    private final b60 m;

    public static class a {
        private vp1 a;
        private mm1 b;
        private int c;
        private String d;
        private if0 e;
        private qf0.a f;
        private zq1 g;
        private vq1 h;
        private vq1 i;
        private vq1 j;
        private long k;
        private long l;
        private b60 m;

        public a() {
            this.c = -1;
            this.f = new qf0.a();
        }

        public final a a(zq1 zq1Var) {
            this.g = zq1Var;
            return this;
        }

        public final int b() {
            return this.c;
        }

        public final a c() {
            y45.j(RtspHeaders.PROXY_AUTHENTICATE, "name");
            y45.j("OkHttp-Preemptive", ES6Iterator.VALUE_PROPERTY);
            qf0.a aVar = this.f;
            aVar.getClass();
            y45.j(RtspHeaders.PROXY_AUTHENTICATE, "name");
            y45.j("OkHttp-Preemptive", ES6Iterator.VALUE_PROPERTY);
            qf0.b.b(RtspHeaders.PROXY_AUTHENTICATE);
            qf0.b.b("OkHttp-Preemptive", RtspHeaders.PROXY_AUTHENTICATE);
            aVar.a(RtspHeaders.PROXY_AUTHENTICATE);
            aVar.a(RtspHeaders.PROXY_AUTHENTICATE, "OkHttp-Preemptive");
            return this;
        }

        public final vq1 a() {
            int i = this.c;
            if (i < 0) {
                throw new IllegalStateException(("code < 0: " + i).toString());
            }
            vp1 vp1Var = this.a;
            if (vp1Var == null) {
                throw new IllegalStateException("request == null");
            }
            mm1 mm1Var = this.b;
            if (mm1Var == null) {
                throw new IllegalStateException("protocol == null");
            }
            String str = this.d;
            if (str != null) {
                return new vq1(vp1Var, mm1Var, str, i, this.e, this.f.a(), this.g, this.h, this.i, this.j, this.k, this.l, this.m);
            }
            throw new IllegalStateException("message == null");
        }

        public final a b(vq1 vq1Var) {
            a(vq1Var, "networkResponse");
            this.h = vq1Var;
            return this;
        }

        public a(vq1 vq1Var) {
            y45.j(vq1Var, "response");
            this.c = -1;
            this.a = vq1Var.o();
            this.b = vq1Var.m();
            this.c = vq1Var.d();
            this.d = vq1Var.i();
            this.e = vq1Var.f();
            this.f = vq1Var.g().b();
            this.g = vq1Var.a();
            this.h = vq1Var.j();
            this.i = vq1Var.b();
            this.j = vq1Var.l();
            this.k = vq1Var.p();
            this.l = vq1Var.n();
            this.m = vq1Var.e();
        }

        public final a b(long j) {
            this.k = j;
            return this;
        }

        public final a c(vq1 vq1Var) {
            if (vq1Var.a() == null) {
                this.j = vq1Var;
                return this;
            }
            throw new IllegalArgumentException("priorResponse.body != null");
        }

        public final a a(vq1 vq1Var) {
            a(vq1Var, "cacheResponse");
            this.i = vq1Var;
            return this;
        }

        private static void a(vq1 vq1Var, String str) {
            if (vq1Var != null) {
                if (vq1Var.a() == null) {
                    if (vq1Var.j() == null) {
                        if (vq1Var.b() == null) {
                            if (vq1Var.l() == null) {
                                return;
                            }
                            throw new IllegalArgumentException((str + ".priorResponse != null").toString());
                        }
                        throw new IllegalArgumentException((str + ".cacheResponse != null").toString());
                    }
                    throw new IllegalArgumentException((str + ".networkResponse != null").toString());
                }
                throw new IllegalArgumentException((str + ".body != null").toString());
            }
        }

        public final a a(int i) {
            this.c = i;
            return this;
        }

        public final a a(if0 if0Var) {
            this.e = if0Var;
            return this;
        }

        public final a a(qf0 qf0Var) {
            y45.j(qf0Var, "headers");
            this.f = qf0Var.b();
            return this;
        }

        public final void a(b60 b60Var) {
            y45.j(b60Var, "deferredTrailers");
            this.m = b60Var;
        }

        public final a a(String str) {
            y45.j(str, "message");
            this.d = str;
            return this;
        }

        public final a a(mm1 mm1Var) {
            y45.j(mm1Var, "protocol");
            this.b = mm1Var;
            return this;
        }

        public final a a(long j) {
            this.l = j;
            return this;
        }

        public final a a(vp1 vp1Var) {
            y45.j(vp1Var, Progress.REQUEST);
            this.a = vp1Var;
            return this;
        }
    }

    public vq1(vp1 vp1Var, mm1 mm1Var, String str, int i, if0 if0Var, qf0 qf0Var, zq1 zq1Var, vq1 vq1Var, vq1 vq1Var2, vq1 vq1Var3, long j, long j2, b60 b60Var) {
        y45.j(vp1Var, Progress.REQUEST);
        y45.j(mm1Var, "protocol");
        y45.j(str, "message");
        y45.j(qf0Var, "headers");
        this.a = vp1Var;
        this.b = mm1Var;
        this.c = str;
        this.d = i;
        this.e = if0Var;
        this.f = qf0Var;
        this.g = zq1Var;
        this.h = vq1Var;
        this.i = vq1Var2;
        this.j = vq1Var3;
        this.k = j;
        this.l = j2;
        this.m = b60Var;
    }

    public final zq1 a() {
        return this.g;
    }

    public final vq1 b() {
        return this.i;
    }

    public final List<go> c() {
        String str;
        qf0 qf0Var = this.f;
        int i = this.d;
        if (i == 401) {
            str = RtspHeaders.WWW_AUTHENTICATE;
        } else {
            if (i != 407) {
                return defpackage.y71.k();
            }
            str = RtspHeaders.PROXY_AUTHENTICATE;
        }
        return xh0.a(qf0Var, str);
    }

    @Override
    public final void close() {
        zq1 zq1Var = this.g;
        if (zq1Var == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        g92.a((Closeable) zq1Var.c());
    }

    public final int d() {
        return this.d;
    }

    public final b60 e() {
        return this.m;
    }

    public final if0 f() {
        return this.e;
    }

    public final qf0 g() {
        return this.f;
    }

    public final boolean h() {
        int i = this.d;
        return 200 <= i && i < 300;
    }

    public final String i() {
        return this.c;
    }

    public final vq1 j() {
        return this.h;
    }

    public final a k() {
        return new a(this);
    }

    public final vq1 l() {
        return this.j;
    }

    public final mm1 m() {
        return this.b;
    }

    public final long n() {
        return this.l;
    }

    public final vp1 o() {
        return this.a;
    }

    public final long p() {
        return this.k;
    }

    public final String toString() {
        return "Response{protocol=" + this.b + ", code=" + this.d + ", message=" + this.c + ", url=" + this.a.g() + StringSubstitutor.DEFAULT_VAR_END;
    }

    public static String a(vq1 vq1Var, String str) {
        vq1Var.getClass();
        y45.j(str, "name");
        String strA = vq1Var.f.a(str);
        if (strA == null) {
            return null;
        }
        return strA;
    }
}
