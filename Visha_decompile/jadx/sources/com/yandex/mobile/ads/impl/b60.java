package com.yandex.mobile.ads.impl;

import androidx.core.app.NotificationCompat;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.IOException;
import java.net.ProtocolException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;

public final class b60 {
    private final zn1 a;
    private final w50 b;
    private final d60 c;
    private final c60 d;
    private boolean e;
    private final ao1 f;

    public final class a extends ForwardingSink {
        private final long a;
        private boolean b;
        private long c;
        private boolean d;
        final b60 e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b60 b60Var, Sink sink, long j) {
            super(sink);
            y45.j(sink, "delegate");
            this.e = b60Var;
            this.a = j;
        }

        @Override
        public final void close() throws IOException {
            if (this.d) {
                return;
            }
            this.d = true;
            long j = this.a;
            if (j != -1 && this.c != j) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                if (this.b) {
                    return;
                }
                this.b = true;
                this.e.a(false, true, null);
            } catch (IOException e) {
                if (this.b) {
                    throw e;
                }
                this.b = true;
                throw this.e.a(false, true, e);
            }
        }

        @Override
        public final void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e) {
                if (this.b) {
                    throw e;
                }
                this.b = true;
                throw this.e.a(false, true, e);
            }
        }

        @Override
        public final void write(Buffer buffer, long j) throws IOException {
            y45.j(buffer, "source");
            if (this.d) {
                throw new IllegalStateException("closed");
            }
            long j2 = this.a;
            if (j2 == -1 || this.c + j <= j2) {
                try {
                    super.write(buffer, j);
                    this.c += j;
                    return;
                } catch (IOException e) {
                    if (this.b) {
                        throw e;
                    }
                    this.b = true;
                    throw this.e.a(false, true, e);
                }
            }
            throw new ProtocolException("expected " + this.a + " bytes but received " + (this.c + j));
        }
    }

    public final class b extends ForwardingSource {
        private final long a;
        private long b;
        private boolean c;
        private boolean d;
        private boolean e;
        final b60 f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(b60 b60Var, Source source, long j) {
            super(source);
            y45.j(source, "delegate");
            this.f = b60Var;
            this.a = j;
            this.c = true;
            if (j == 0) {
                a(null);
            }
        }

        public final <E extends IOException> E a(E e) {
            if (this.d) {
                return e;
            }
            this.d = true;
            if (e == null && this.c) {
                this.c = false;
                w50 w50VarG = this.f.g();
                zn1 zn1VarE = this.f.e();
                w50VarG.getClass();
                y45.j(zn1VarE, NotificationCompat.CATEGORY_CALL);
            }
            return (E) this.f.a(true, false, e);
        }

        @Override
        public final void close() throws IOException {
            if (this.e) {
                return;
            }
            this.e = true;
            try {
                super.close();
                a(null);
            } catch (IOException e) {
                throw a(e);
            }
        }

        @Override
        public final long read(Buffer buffer, long j) throws IOException {
            y45.j(buffer, "sink");
            if (this.e) {
                throw new IllegalStateException("closed");
            }
            try {
                long j2 = delegate().read(buffer, j);
                if (this.c) {
                    this.c = false;
                    w50 w50VarG = this.f.g();
                    zn1 zn1VarE = this.f.e();
                    w50VarG.getClass();
                    w50.a(zn1VarE);
                }
                if (j2 == -1) {
                    a(null);
                    return -1L;
                }
                long j3 = this.b + j2;
                long j4 = this.a;
                if (j4 != -1 && j3 > j4) {
                    throw new ProtocolException("expected " + this.a + " bytes but received " + j3);
                }
                this.b = j3;
                if (j3 == j4) {
                    a(null);
                }
                return j2;
            } catch (IOException e) {
                throw a(e);
            }
        }
    }

    public b60(zn1 zn1Var, w50 w50Var, d60 d60Var, c60 c60Var) {
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        y45.j(w50Var, "eventListener");
        y45.j(d60Var, "finder");
        y45.j(c60Var, "codec");
        this.a = zn1Var;
        this.b = w50Var;
        this.c = d60Var;
        this.d = c60Var;
        this.f = c60Var.c();
    }

    public final IOException a(boolean z, boolean z2, IOException iOException) {
        if (iOException != null) {
            this.c.a(iOException);
            this.d.c().a(this.a, iOException);
        }
        if (z2) {
            if (iOException != null) {
                w50 w50Var = this.b;
                zn1 zn1Var = this.a;
                w50Var.getClass();
                y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
                y45.j(iOException, "ioe");
            } else {
                w50 w50Var2 = this.b;
                zn1 zn1Var2 = this.a;
                w50Var2.getClass();
                y45.j(zn1Var2, NotificationCompat.CATEGORY_CALL);
            }
        }
        if (z) {
            if (iOException != null) {
                w50 w50Var3 = this.b;
                zn1 zn1Var3 = this.a;
                w50Var3.getClass();
                y45.j(zn1Var3, NotificationCompat.CATEGORY_CALL);
                y45.j(iOException, "ioe");
            } else {
                w50 w50Var4 = this.b;
                zn1 zn1Var4 = this.a;
                w50Var4.getClass();
                y45.j(zn1Var4, NotificationCompat.CATEGORY_CALL);
            }
        }
        return this.a.a(this, z2, z, iOException);
    }

    public final void b() {
        this.d.cancel();
        this.a.a(this, true, true, null);
    }

    public final void c() throws IOException {
        try {
            this.d.a();
        } catch (IOException e) {
            w50 w50Var = this.b;
            zn1 zn1Var = this.a;
            w50Var.getClass();
            y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
            y45.j(e, "ioe");
            this.c.a(e);
            this.d.c().a(this.a, e);
            throw e;
        }
    }

    public final void d() throws IOException {
        try {
            this.d.b();
        } catch (IOException e) {
            w50 w50Var = this.b;
            zn1 zn1Var = this.a;
            w50Var.getClass();
            y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
            y45.j(e, "ioe");
            this.c.a(e);
            this.d.c().a(this.a, e);
            throw e;
        }
    }

    public final zn1 e() {
        return this.a;
    }

    public final ao1 f() {
        return this.f;
    }

    public final w50 g() {
        return this.b;
    }

    public final d60 h() {
        return this.c;
    }

    public final boolean i() {
        return !y45.e(this.c.a().k().g(), this.f.k().a().k().g());
    }

    public final boolean j() {
        return this.e;
    }

    public final void k() {
        this.d.c().j();
    }

    public final void l() {
        this.a.a(this, true, false, null);
    }

    public final void m() {
        w50 w50Var = this.b;
        zn1 zn1Var = this.a;
        w50Var.getClass();
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
    }

    public final void b(vq1 vq1Var) {
        y45.j(vq1Var, "response");
        w50 w50Var = this.b;
        zn1 zn1Var = this.a;
        w50Var.getClass();
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        y45.j(vq1Var, "response");
    }

    public final void b(vp1 vp1Var) throws IOException {
        y45.j(vp1Var, Progress.REQUEST);
        try {
            w50 w50Var = this.b;
            zn1 zn1Var = this.a;
            w50Var.getClass();
            y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
            this.d.a(vp1Var);
            w50 w50Var2 = this.b;
            zn1 zn1Var2 = this.a;
            w50Var2.getClass();
            y45.j(zn1Var2, NotificationCompat.CATEGORY_CALL);
            y45.j(vp1Var, Progress.REQUEST);
        } catch (IOException e) {
            w50 w50Var3 = this.b;
            zn1 zn1Var3 = this.a;
            w50Var3.getClass();
            y45.j(zn1Var3, NotificationCompat.CATEGORY_CALL);
            y45.j(e, "ioe");
            this.c.a(e);
            this.d.c().a(this.a, e);
            throw e;
        }
    }

    public final void a() {
        this.d.cancel();
    }

    public final Sink a(vp1 vp1Var) throws IOException {
        y45.j(vp1Var, Progress.REQUEST);
        this.e = false;
        yp1 yp1VarA = vp1Var.a();
        y45.g(yp1VarA);
        long jA = yp1VarA.a();
        w50 w50Var = this.b;
        zn1 zn1Var = this.a;
        w50Var.getClass();
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        return new a(this, this.d.a(vp1Var, jA), jA);
    }

    public final eo1 a(vq1 vq1Var) throws IOException {
        y45.j(vq1Var, "response");
        try {
            String strA = vq1.a(vq1Var, "Content-Type");
            long jB = this.d.b(vq1Var);
            return new eo1(strA, jB, Okio.buffer(new b(this, this.d.a(vq1Var), jB)));
        } catch (IOException e) {
            w50 w50Var = this.b;
            zn1 zn1Var = this.a;
            w50Var.getClass();
            y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
            y45.j(e, "ioe");
            this.c.a(e);
            this.d.c().a(this.a, e);
            throw e;
        }
    }

    public final vq1.a a(boolean z) throws IOException {
        try {
            vq1.a aVarA = this.d.a(z);
            if (aVarA != null) {
                aVarA.a(this);
            }
            return aVarA;
        } catch (IOException e) {
            w50 w50Var = this.b;
            zn1 zn1Var = this.a;
            w50Var.getClass();
            y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
            y45.j(e, "ioe");
            this.c.a(e);
            this.d.c().a(this.a, e);
            throw e;
        }
    }
}
