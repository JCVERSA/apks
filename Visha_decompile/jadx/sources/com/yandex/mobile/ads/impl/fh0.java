package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.apache.commons.io.IOUtils;

public final class fh0 implements c60 {
    private final fe1 a;
    private final ao1 b;
    private final BufferedSource c;
    private final BufferedSink d;
    private int e;
    private final rf0 f;
    private qf0 g;

    public abstract class a implements Source {
        private final ForwardingTimeout a;
        private boolean b;

        public a() {
            this.a = new ForwardingTimeout(fh0.this.c.getTimeout());
        }

        public final boolean a() {
            return this.b;
        }

        public final void b() {
            if (fh0.this.e == 6) {
                return;
            }
            if (fh0.this.e == 5) {
                fh0.a(fh0.this, this.a);
                fh0.this.e = 6;
            } else {
                throw new IllegalStateException("state: " + fh0.this.e);
            }
        }

        public final void c() {
            this.b = true;
        }

        @Override
        public long read(Buffer buffer, long j) throws IOException {
            y45.j(buffer, "sink");
            try {
                return fh0.this.c.read(buffer, j);
            } catch (IOException e) {
                fh0.this.c().j();
                b();
                throw e;
            }
        }

        @Override
        public final Timeout getTimeout() {
            return this.a;
        }
    }

    public final class b implements Sink {
        private final ForwardingTimeout a;
        private boolean b;

        public b() {
            this.a = new ForwardingTimeout(fh0.this.d.getTimeout());
        }

        @Override
        public final synchronized void close() {
            if (this.b) {
                return;
            }
            this.b = true;
            fh0.this.d.writeUtf8("0\r\n\r\n");
            fh0.a(fh0.this, this.a);
            fh0.this.e = 3;
        }

        @Override
        public final synchronized void flush() {
            if (this.b) {
                return;
            }
            fh0.this.d.flush();
        }

        @Override
        public final Timeout getTimeout() {
            return this.a;
        }

        @Override
        public final void write(Buffer buffer, long j) throws IOException {
            y45.j(buffer, "source");
            if (this.b) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            fh0.this.d.writeHexadecimalUnsignedLong(j);
            fh0.this.d.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            fh0.this.d.write(buffer, j);
            fh0.this.d.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
    }

    public final class c extends a {
        private final gi0 d;
        private long e;
        private boolean f;
        final fh0 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(fh0 fh0Var, gi0 gi0Var) {
            super();
            y45.j(gi0Var, "url");
            this.g = fh0Var;
            this.d = gi0Var;
            this.e = -1L;
            this.f = true;
        }

        private final void d() throws IOException {
            if (this.e != -1) {
                this.g.c.readUtf8LineStrict();
            }
            try {
                this.e = this.g.c.readHexadecimalUnsignedLong();
                String string = j1a.i1(this.g.c.readUtf8LineStrict()).toString();
                if (this.e < 0 || (string.length() > 0 && !g1a.R(string, ProcessInfo.SPLIT_NEW_VERSION, false, 2, null))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.e + string + "\"");
                }
                if (this.e == 0) {
                    this.f = false;
                    fh0 fh0Var = this.g;
                    fh0Var.g = fh0Var.f.a();
                    fe1 fe1Var = this.g.a;
                    y45.g(fe1Var);
                    qs qsVarH = fe1Var.h();
                    gi0 gi0Var = this.d;
                    qf0 qf0Var = this.g.g;
                    y45.g(qf0Var);
                    xh0.a(qsVarH, gi0Var, qf0Var);
                    b();
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override
        public final void close() {
            if (a()) {
                return;
            }
            if (this.f) {
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                byte[] bArr = g92.a;
                y45.j(this, "<this>");
                y45.j(timeUnit, "timeUnit");
                try {
                    if (!g92.a(this, 100, timeUnit)) {
                        this.g.c().j();
                        b();
                    }
                } catch (IOException unused) {
                }
            }
            c();
        }

        @Override
        public final long read(Buffer buffer, long j) throws IOException {
            y45.j(buffer, "sink");
            if (j < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            if (a()) {
                throw new IllegalStateException("closed");
            }
            if (!this.f) {
                return -1L;
            }
            long j2 = this.e;
            if (j2 == 0 || j2 == -1) {
                d();
                if (!this.f) {
                    return -1L;
                }
            }
            long j3 = super.read(buffer, Math.min(j, this.e));
            if (j3 != -1) {
                this.e -= j3;
                return j3;
            }
            this.g.c().j();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            b();
            throw protocolException;
        }
    }

    public final class d extends a {
        private long d;

        public d(long j) {
            super();
            this.d = j;
            if (j == 0) {
                b();
            }
        }

        @Override
        public final void close() {
            if (a()) {
                return;
            }
            if (this.d != 0) {
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                byte[] bArr = g92.a;
                y45.j(this, "<this>");
                y45.j(timeUnit, "timeUnit");
                try {
                    if (!g92.a(this, 100, timeUnit)) {
                        fh0.this.c().j();
                        b();
                    }
                } catch (IOException unused) {
                }
            }
            c();
        }

        @Override
        public final long read(Buffer buffer, long j) throws IOException {
            y45.j(buffer, "sink");
            if (j < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            if (a()) {
                throw new IllegalStateException("closed");
            }
            long j2 = this.d;
            if (j2 == 0) {
                return -1L;
            }
            long j3 = super.read(buffer, Math.min(j2, j));
            if (j3 == -1) {
                fh0.this.c().j();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                b();
                throw protocolException;
            }
            long j4 = this.d - j3;
            this.d = j4;
            if (j4 == 0) {
                b();
            }
            return j3;
        }
    }

    public final class e implements Sink {
        private final ForwardingTimeout a;
        private boolean b;

        public e() {
            this.a = new ForwardingTimeout(fh0.this.d.getTimeout());
        }

        @Override
        public final void close() {
            if (this.b) {
                return;
            }
            this.b = true;
            fh0.a(fh0.this, this.a);
            fh0.this.e = 3;
        }

        @Override
        public final void flush() throws IOException {
            if (this.b) {
                return;
            }
            fh0.this.d.flush();
        }

        @Override
        public final Timeout getTimeout() {
            return this.a;
        }

        @Override
        public final void write(Buffer buffer, long j) throws IOException {
            y45.j(buffer, "source");
            if (this.b) {
                throw new IllegalStateException("closed");
            }
            long size = buffer.size();
            byte[] bArr = g92.a;
            if (j < 0 || 0 > size || size < j) {
                throw new ArrayIndexOutOfBoundsException();
            }
            fh0.this.d.write(buffer, j);
        }
    }

    public final class f extends a {
        private boolean d;

        public f(fh0 fh0Var) {
            super();
        }

        @Override
        public final void close() {
            if (a()) {
                return;
            }
            if (!this.d) {
                b();
            }
            c();
        }

        @Override
        public final long read(Buffer buffer, long j) throws IOException {
            y45.j(buffer, "sink");
            if (j < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            if (a()) {
                throw new IllegalStateException("closed");
            }
            if (this.d) {
                return -1L;
            }
            long j2 = super.read(buffer, j);
            if (j2 != -1) {
                return j2;
            }
            this.d = true;
            b();
            return -1L;
        }
    }

    public fh0(fe1 fe1Var, ao1 ao1Var, BufferedSource bufferedSource, BufferedSink bufferedSink) {
        y45.j(ao1Var, "connection");
        y45.j(bufferedSource, "source");
        y45.j(bufferedSink, "sink");
        this.a = fe1Var;
        this.b = ao1Var;
        this.c = bufferedSource;
        this.d = bufferedSink;
        this.f = new rf0(bufferedSource);
    }

    public static final void a(fh0 fh0Var, ForwardingTimeout forwardingTimeout) {
        fh0Var.getClass();
        Timeout delegate = forwardingTimeout.getDelegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    @Override
    public final void cancel() {
        this.b.a();
    }

    private final Sink d() {
        int i = this.e;
        if (i == 1) {
            this.e = 2;
            return new b();
        }
        throw new IllegalStateException(("state: " + i).toString());
    }

    private final Sink e() {
        int i = this.e;
        if (i == 1) {
            this.e = 2;
            return new e();
        }
        throw new IllegalStateException(("state: " + i).toString());
    }

    private final Source f() {
        int i = this.e;
        if (i == 4) {
            this.e = 5;
            this.b.j();
            return new f(this);
        }
        throw new IllegalStateException(("state: " + i).toString());
    }

    @Override
    public final void b() throws IOException {
        this.d.flush();
    }

    @Override
    public final ao1 c() {
        return this.b;
    }

    @Override
    public final long b(vq1 vq1Var) {
        y45.j(vq1Var, "response");
        if (!xh0.a(vq1Var)) {
            return 0L;
        }
        if (g1a.E("chunked", vq1.a(vq1Var, "Transfer-Encoding"), true)) {
            return -1L;
        }
        return g92.a(vq1Var);
    }

    public final void c(vq1 vq1Var) {
        y45.j(vq1Var, "response");
        long jA = g92.a(vq1Var);
        if (jA == -1) {
            return;
        }
        Source sourceA = a(jA);
        g92.a(sourceA, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        ((d) sourceA).close();
    }

    @Override
    public final Sink a(vp1 vp1Var, long j) {
        y45.j(vp1Var, Progress.REQUEST);
        if (vp1Var.a() != null) {
            vp1Var.a().getClass();
        }
        if (g1a.E("chunked", vp1Var.a("Transfer-Encoding"), true)) {
            return d();
        }
        if (j != -1) {
            return e();
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override
    public final void a() {
        this.d.flush();
    }

    private final Source a(gi0 gi0Var) {
        int i = this.e;
        if (i == 4) {
            this.e = 5;
            return new c(this, gi0Var);
        }
        throw new IllegalStateException(("state: " + i).toString());
    }

    private final Source a(long j) {
        int i = this.e;
        if (i == 4) {
            this.e = 5;
            return new d(j);
        }
        throw new IllegalStateException(("state: " + i).toString());
    }

    @Override
    public final Source a(vq1 vq1Var) {
        y45.j(vq1Var, "response");
        if (!xh0.a(vq1Var)) {
            return a(0L);
        }
        if (g1a.E("chunked", vq1.a(vq1Var, "Transfer-Encoding"), true)) {
            return a(vq1Var.o().g());
        }
        long jA = g92.a(vq1Var);
        if (jA != -1) {
            return a(jA);
        }
        return f();
    }

    @Override
    public final vq1.a a(boolean z) {
        int i = this.e;
        if (i != 1 && i != 3) {
            throw new IllegalStateException(("state: " + i).toString());
        }
        try {
            t22 t22VarA = t22.a.a(this.f.b());
            vq1.a aVarA = new vq1.a().a(t22VarA.a).a(t22VarA.b).a(t22VarA.c).a(this.f.a());
            if (z && t22VarA.b == 100) {
                return null;
            }
            if (t22VarA.b == 100) {
                this.e = 3;
                return aVarA;
            }
            this.e = 4;
            return aVarA;
        } catch (EOFException e2) {
            throw new IOException("unexpected end of stream on " + this.b.k().a().k().j(), e2);
        }
    }

    public final void a(qf0 qf0Var, String str) {
        y45.j(qf0Var, "headers");
        y45.j(str, "requestLine");
        int i = this.e;
        if (i == 0) {
            this.d.writeUtf8(str).writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            int size = qf0Var.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.d.writeUtf8(qf0Var.a(i2)).writeUtf8(": ").writeUtf8(qf0Var.b(i2)).writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            }
            this.d.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            this.e = 1;
            return;
        }
        throw new IllegalStateException(("state: " + i).toString());
    }

    @Override
    public final void a(vp1 vp1Var) {
        y45.j(vp1Var, Progress.REQUEST);
        Proxy.Type type = this.b.k().b().type();
        y45.i(type, "type(...)");
        y45.j(vp1Var, Progress.REQUEST);
        y45.j(type, "proxyType");
        StringBuilder sb = new StringBuilder();
        sb.append(vp1Var.f());
        sb.append(' ');
        if (!vp1Var.e() && type == Proxy.Type.HTTP) {
            sb.append(vp1Var.g());
        } else {
            sb.append(cq1.a(vp1Var.g()));
        }
        sb.append(" HTTP/1.1");
        String string = sb.toString();
        y45.i(string, "toString(...)");
        a(vp1Var.d(), string);
    }
}
