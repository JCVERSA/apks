package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

public final class d implements HttpStream {

    private final n f39624a;

    private final BufferedSource f39625b;

    private final BufferedSink f39626c;

    private com.squareup.okhttp.internal.http.g f39627d;

    private int f39628e = 0;

    private abstract class b implements Source {

        protected final ForwardingTimeout f39629a;

        protected boolean f39630b;

        private b() {
            this.f39629a = new ForwardingTimeout(d.this.f39625b.getTimeout());
        }

        protected final void d() {
            if (d.this.f39628e != 5) {
                throw new IllegalStateException("state: " + d.this.f39628e);
            }
            d.this.g(this.f39629a);
            d.this.f39628e = 6;
            if (d.this.f39624a != null) {
                d.this.f39624a.r(d.this);
            }
        }

        protected final void h() {
            if (d.this.f39628e == 6) {
                return;
            }
            d.this.f39628e = 6;
            if (d.this.f39624a != null) {
                d.this.f39624a.l();
                d.this.f39624a.r(d.this);
            }
        }

        @Override
        public Timeout getTimeout() {
            return this.f39629a;
        }
    }

    private final class c implements Sink {

        private final ForwardingTimeout f39632a;

        private boolean f39633b;

        private c() {
            this.f39632a = new ForwardingTimeout(d.this.f39626c.getTimeout());
        }

        @Override
        public synchronized void close() {
            if (this.f39633b) {
                return;
            }
            this.f39633b = true;
            d.this.f39626c.writeUtf8("0\r\n\r\n");
            d.this.g(this.f39632a);
            d.this.f39628e = 3;
        }

        @Override
        public synchronized void flush() {
            if (this.f39633b) {
                return;
            }
            d.this.f39626c.flush();
        }

        @Override
        public Timeout getTimeout() {
            return this.f39632a;
        }

        @Override
        public void write(Buffer buffer, long j10) throws IOException {
            if (this.f39633b) {
                throw new IllegalStateException("closed");
            }
            if (j10 == 0) {
                return;
            }
            d.this.f39626c.writeHexadecimalUnsignedLong(j10);
            d.this.f39626c.writeUtf8("\r\n");
            d.this.f39626c.write(buffer, j10);
            d.this.f39626c.writeUtf8("\r\n");
        }
    }

    private class C0556d extends b {

        private long f39635d;

        private boolean f39636e;

        private final com.squareup.okhttp.internal.http.g f39637f;

        C0556d(com.squareup.okhttp.internal.http.g gVar) {
            super();
            this.f39635d = -1L;
            this.f39636e = true;
            this.f39637f = gVar;
        }

        private void k() throws IOException {
            if (this.f39635d != -1) {
                d.this.f39625b.readUtf8LineStrict();
            }
            try {
                this.f39635d = d.this.f39625b.readHexadecimalUnsignedLong();
                String strTrim = d.this.f39625b.readUtf8LineStrict().trim();
                if (this.f39635d < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f39635d + strTrim + "\"");
                }
                if (this.f39635d == 0) {
                    this.f39636e = false;
                    this.f39637f.t(d.this.n());
                    d();
                }
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override
        public void close() {
            if (this.f39630b) {
                return;
            }
            if (this.f39636e && !com.squareup.okhttp.internal.g.g(this, 100, TimeUnit.MILLISECONDS)) {
                h();
            }
            this.f39630b = true;
        }

        @Override
        public long read(Buffer buffer, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f39630b) {
                throw new IllegalStateException("closed");
            }
            if (!this.f39636e) {
                return -1L;
            }
            long j11 = this.f39635d;
            if (j11 == 0 || j11 == -1) {
                k();
                if (!this.f39636e) {
                    return -1L;
                }
            }
            long j12 = d.this.f39625b.read(buffer, Math.min(j10, this.f39635d));
            if (j12 != -1) {
                this.f39635d -= j12;
                return j12;
            }
            h();
            throw new ProtocolException("unexpected end of stream");
        }
    }

    private final class e implements Sink {

        private final ForwardingTimeout f39639a;

        private boolean f39640b;

        private long f39641c;

        @Override
        public void close() throws ProtocolException {
            if (this.f39640b) {
                return;
            }
            this.f39640b = true;
            if (this.f39641c > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            d.this.g(this.f39639a);
            d.this.f39628e = 3;
        }

        @Override
        public void flush() throws IOException {
            if (this.f39640b) {
                return;
            }
            d.this.f39626c.flush();
        }

        @Override
        public Timeout getTimeout() {
            return this.f39639a;
        }

        @Override
        public void write(Buffer buffer, long j10) throws IOException {
            if (this.f39640b) {
                throw new IllegalStateException("closed");
            }
            com.squareup.okhttp.internal.g.a(buffer.size(), 0L, j10);
            if (j10 <= this.f39641c) {
                d.this.f39626c.write(buffer, j10);
                this.f39641c -= j10;
                return;
            }
            throw new ProtocolException("expected " + this.f39641c + " bytes but received " + j10);
        }

        private e(long j10) {
            this.f39639a = new ForwardingTimeout(d.this.f39626c.getTimeout());
            this.f39641c = j10;
        }
    }

    private class f extends b {

        private long f39643d;

        public f(long j10) {
            super();
            this.f39643d = j10;
            if (j10 == 0) {
                d();
            }
        }

        @Override
        public void close() {
            if (this.f39630b) {
                return;
            }
            if (this.f39643d != 0 && !com.squareup.okhttp.internal.g.g(this, 100, TimeUnit.MILLISECONDS)) {
                h();
            }
            this.f39630b = true;
        }

        @Override
        public long read(Buffer buffer, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f39630b) {
                throw new IllegalStateException("closed");
            }
            if (this.f39643d == 0) {
                return -1L;
            }
            long j11 = d.this.f39625b.read(buffer, Math.min(this.f39643d, j10));
            if (j11 == -1) {
                h();
                throw new ProtocolException("unexpected end of stream");
            }
            long j12 = this.f39643d - j11;
            this.f39643d = j12;
            if (j12 == 0) {
                d();
            }
            return j11;
        }
    }

    private class g extends b {

        private boolean f39645d;

        private g() {
            super();
        }

        @Override
        public void close() {
            if (this.f39630b) {
                return;
            }
            if (!this.f39645d) {
                h();
            }
            this.f39630b = true;
        }

        @Override
        public long read(Buffer buffer, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f39630b) {
                throw new IllegalStateException("closed");
            }
            if (this.f39645d) {
                return -1L;
            }
            long j11 = d.this.f39625b.read(buffer, j10);
            if (j11 != -1) {
                return j11;
            }
            this.f39645d = true;
            d();
            return -1L;
        }
    }

    public d(n nVar, BufferedSource bufferedSource, BufferedSink bufferedSink) {
        this.f39624a = nVar;
        this.f39625b = bufferedSource;
        this.f39626c = bufferedSink;
    }

    public void g(ForwardingTimeout forwardingTimeout) {
        Timeout delegate = forwardingTimeout.getDelegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    private Source h(Response response) {
        if (!com.squareup.okhttp.internal.http.g.n(response)) {
            return l(0L);
        }
        if ("chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) {
            return j(this.f39627d);
        }
        long jE = OkHeaders.e(response);
        return jE != -1 ? l(jE) : m();
    }

    @Override
    public void cancel() {
        hf.a aVarC = this.f39624a.c();
        if (aVarC != null) {
            aVarC.b();
        }
    }

    @Override
    public Sink createRequestBody(Request request, long j10) {
        if ("chunked".equalsIgnoreCase(request.header("Transfer-Encoding"))) {
            return i();
        }
        if (j10 != -1) {
            return k(j10);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override
    public void finishRequest() {
        this.f39626c.flush();
    }

    public Sink i() {
        if (this.f39628e == 1) {
            this.f39628e = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.f39628e);
    }

    public Source j(com.squareup.okhttp.internal.http.g gVar) {
        if (this.f39628e == 4) {
            this.f39628e = 5;
            return new C0556d(gVar);
        }
        throw new IllegalStateException("state: " + this.f39628e);
    }

    public Sink k(long j10) {
        if (this.f39628e == 1) {
            this.f39628e = 2;
            return new e(j10);
        }
        throw new IllegalStateException("state: " + this.f39628e);
    }

    public Source l(long j10) {
        if (this.f39628e == 4) {
            this.f39628e = 5;
            return new f(j10);
        }
        throw new IllegalStateException("state: " + this.f39628e);
    }

    public Source m() {
        if (this.f39628e != 4) {
            throw new IllegalStateException("state: " + this.f39628e);
        }
        n nVar = this.f39624a;
        if (nVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f39628e = 5;
        nVar.l();
        return new g();
    }

    public Headers n() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String utf8LineStrict = this.f39625b.readUtf8LineStrict();
            if (utf8LineStrict.length() == 0) {
                return builder.build();
            }
            com.squareup.okhttp.internal.c.instance.addLenient(builder, utf8LineStrict);
        }
    }

    public Response.Builder o() throws IOException {
        m mVarA;
        Response.Builder builderHeaders;
        int i10 = this.f39628e;
        if (i10 != 1 && i10 != 3) {
            throw new IllegalStateException("state: " + this.f39628e);
        }
        do {
            try {
                mVarA = m.a(this.f39625b.readUtf8LineStrict());
                builderHeaders = new Response.Builder().protocol(mVarA.f39709a).code(mVarA.f39710b).message(mVarA.f39711c).headers(n());
            } catch (EOFException e10) {
                IOException iOException = new IOException("unexpected end of stream on " + this.f39624a);
                iOException.initCause(e10);
                throw iOException;
            }
        } while (mVarA.f39710b == 100);
        this.f39628e = 4;
        return builderHeaders;
    }

    @Override
    public ResponseBody openResponseBody(Response response) {
        return new i(response.headers(), Okio.buffer(h(response)));
    }

    public void p(Headers headers, String str) {
        if (this.f39628e != 0) {
            throw new IllegalStateException("state: " + this.f39628e);
        }
        this.f39626c.writeUtf8(str).writeUtf8("\r\n");
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f39626c.writeUtf8(headers.name(i10)).writeUtf8(": ").writeUtf8(headers.value(i10)).writeUtf8("\r\n");
        }
        this.f39626c.writeUtf8("\r\n");
        this.f39628e = 1;
    }

    @Override
    public Response.Builder readResponseHeaders() {
        return o();
    }

    @Override
    public void setHttpEngine(com.squareup.okhttp.internal.http.g gVar) {
        this.f39627d = gVar;
    }

    @Override
    public void writeRequestBody(k kVar) throws IOException {
        if (this.f39628e == 1) {
            this.f39628e = 3;
            kVar.f(this.f39626c);
        } else {
            throw new IllegalStateException("state: " + this.f39628e);
        }
    }

    @Override
    public void writeRequestHeaders(Request request) {
        this.f39627d.C();
        p(request.headers(), j.a(request, this.f39627d.k().getRoute().getProxy().type()));
    }
}
