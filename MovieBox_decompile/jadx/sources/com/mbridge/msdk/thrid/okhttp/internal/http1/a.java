package com.mbridge.msdk.thrid.okhttp.internal.http1;

import android.support.v4.media.session.PlaybackStateCompat;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.internal.http.h;
import com.mbridge.msdk.thrid.okhttp.internal.http.k;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import com.mbridge.msdk.thrid.okio.i;
import com.mbridge.msdk.thrid.okio.l;
import com.mbridge.msdk.thrid.okio.r;
import com.mbridge.msdk.thrid.okio.s;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

public final class a implements com.mbridge.msdk.thrid.okhttp.internal.http.c {

    final t f37183a;

    final com.mbridge.msdk.thrid.okhttp.internal.connection.g f37184b;

    final com.mbridge.msdk.thrid.okio.e f37185c;

    final com.mbridge.msdk.thrid.okio.d f37186d;

    int f37187e = 0;

    private long f37188f = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;

    private abstract class b implements s {

        protected final i f37189a;

        protected boolean f37190b;

        protected long f37191c;

        private b() {
            this.f37189a = new i(a.this.f37185c.b());
            this.f37191c = 0L;
        }

        protected final void a(boolean z10, IOException iOException) throws IOException {
            a aVar = a.this;
            int i10 = aVar.f37187e;
            if (i10 == 6) {
                return;
            }
            if (i10 != 5) {
                throw new IllegalStateException("state: " + a.this.f37187e);
            }
            aVar.a(this.f37189a);
            a aVar2 = a.this;
            aVar2.f37187e = 6;
            com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = aVar2.f37184b;
            if (gVar != null) {
                gVar.a(!z10, aVar2, this.f37191c, iOException);
            }
        }

        @Override
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f37189a;
        }

        @Override
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            try {
                long jB = a.this.f37185c.b(cVar, j10);
                if (jB > 0) {
                    this.f37191c += jB;
                }
                return jB;
            } catch (IOException e10) {
                a(false, e10);
                throw e10;
            }
        }
    }

    private final class c implements r {

        private final i f37193a;

        private boolean f37194b;

        c() {
            this.f37193a = new i(a.this.f37186d.b());
        }

        @Override
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (this.f37194b) {
                throw new IllegalStateException("closed");
            }
            if (j10 == 0) {
                return;
            }
            a.this.f37186d.a(j10);
            a.this.f37186d.a("\r\n");
            a.this.f37186d.a(cVar, j10);
            a.this.f37186d.a("\r\n");
        }

        @Override
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f37193a;
        }

        @Override
        public synchronized void close() throws IOException {
            if (this.f37194b) {
                return;
            }
            this.f37194b = true;
            a.this.f37186d.a("0\r\n\r\n");
            a.this.a(this.f37193a);
            a.this.f37187e = 3;
        }

        @Override
        public synchronized void flush() throws IOException {
            if (this.f37194b) {
                return;
            }
            a.this.f37186d.flush();
        }
    }

    private class d extends b {

        private final q f37196e;

        private long f37197f;

        private boolean f37198g;

        d(q qVar) {
            super();
            this.f37197f = -1L;
            this.f37198g = true;
            this.f37196e = qVar;
        }

        private void d() throws IOException {
            if (this.f37197f != -1) {
                a.this.f37185c.c();
            }
            try {
                this.f37197f = a.this.f37185c.i();
                String strTrim = a.this.f37185c.c().trim();
                if (this.f37197f < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f37197f + strTrim + "\"");
                }
                if (this.f37197f == 0) {
                    this.f37198g = false;
                    com.mbridge.msdk.thrid.okhttp.internal.http.e.a(a.this.f37183a.i(), this.f37196e, a.this.f());
                    a(true, null);
                }
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f37190b) {
                throw new IllegalStateException("closed");
            }
            if (!this.f37198g) {
                return -1L;
            }
            long j11 = this.f37197f;
            if (j11 == 0 || j11 == -1) {
                d();
                if (!this.f37198g) {
                    return -1L;
                }
            }
            long jB = super.b(cVar, Math.min(j10, this.f37197f));
            if (jB != -1) {
                this.f37197f -= jB;
                return jB;
            }
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            a(false, protocolException);
            throw protocolException;
        }

        @Override
        public void close() throws IOException {
            if (this.f37190b) {
                return;
            }
            if (this.f37198g && !com.mbridge.msdk.thrid.okhttp.internal.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.f37190b = true;
        }
    }

    private final class e implements r {

        private final i f37200a;

        private boolean f37201b;

        private long f37202c;

        e(long j10) {
            this.f37200a = new i(a.this.f37186d.b());
            this.f37202c = j10;
        }

        @Override
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (this.f37201b) {
                throw new IllegalStateException("closed");
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(cVar.size(), 0L, j10);
            if (j10 <= this.f37202c) {
                a.this.f37186d.a(cVar, j10);
                this.f37202c -= j10;
                return;
            }
            throw new ProtocolException("expected " + this.f37202c + " bytes but received " + j10);
        }

        @Override
        public com.mbridge.msdk.thrid.okio.t b() {
            return this.f37200a;
        }

        @Override
        public void close() throws IOException {
            if (this.f37201b) {
                return;
            }
            this.f37201b = true;
            if (this.f37202c > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            a.this.a(this.f37200a);
            a.this.f37187e = 3;
        }

        @Override
        public void flush() throws IOException {
            if (this.f37201b) {
                return;
            }
            a.this.f37186d.flush();
        }
    }

    private class f extends b {

        private long f37204e;

        f(long j10) throws IOException {
            super();
            this.f37204e = j10;
            if (j10 == 0) {
                a(true, null);
            }
        }

        @Override
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f37190b) {
                throw new IllegalStateException("closed");
            }
            long j11 = this.f37204e;
            if (j11 == 0) {
                return -1L;
            }
            long jB = super.b(cVar, Math.min(j11, j10));
            if (jB == -1) {
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                a(false, protocolException);
                throw protocolException;
            }
            long j12 = this.f37204e - jB;
            this.f37204e = j12;
            if (j12 == 0) {
                a(true, null);
            }
            return jB;
        }

        @Override
        public void close() throws IOException {
            if (this.f37190b) {
                return;
            }
            if (this.f37204e != 0 && !com.mbridge.msdk.thrid.okhttp.internal.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, null);
            }
            this.f37190b = true;
        }
    }

    private class g extends b {

        private boolean f37206e;

        g() {
            super();
        }

        @Override
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (this.f37190b) {
                throw new IllegalStateException("closed");
            }
            if (this.f37206e) {
                return -1L;
            }
            long jB = super.b(cVar, j10);
            if (jB != -1) {
                return jB;
            }
            this.f37206e = true;
            a(true, null);
            return -1L;
        }

        @Override
        public void close() throws IOException {
            if (this.f37190b) {
                return;
            }
            if (!this.f37206e) {
                a(false, null);
            }
            this.f37190b = true;
        }
    }

    public a(t tVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, com.mbridge.msdk.thrid.okio.e eVar, com.mbridge.msdk.thrid.okio.d dVar) {
        this.f37183a = tVar;
        this.f37184b = gVar;
        this.f37185c = eVar;
        this.f37186d = dVar;
    }

    private String e() throws IOException {
        String strD = this.f37185c.d(this.f37188f);
        this.f37188f -= (long) strD.length();
        return strD;
    }

    @Override
    public r a(w wVar, long j10) {
        if ("chunked".equalsIgnoreCase(wVar.a("Transfer-Encoding"))) {
            return c();
        }
        if (j10 != -1) {
            return a(j10);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override
    public void b() throws IOException {
        this.f37186d.flush();
    }

    public r c() {
        if (this.f37187e == 1) {
            this.f37187e = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.f37187e);
    }

    @Override
    public void cancel() {
        com.mbridge.msdk.thrid.okhttp.internal.connection.c cVarC = this.f37184b.c();
        if (cVarC != null) {
            cVarC.d();
        }
    }

    public s d() throws IOException {
        if (this.f37187e != 4) {
            throw new IllegalStateException("state: " + this.f37187e);
        }
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f37184b;
        if (gVar == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f37187e = 5;
        gVar.e();
        return new g();
    }

    public p f() throws IOException {
        p.a aVar = new p.a();
        while (true) {
            String strE = e();
            if (strE.length() == 0) {
                return aVar.a();
            }
            com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(aVar, strE);
        }
    }

    public s b(long j10) throws IOException {
        if (this.f37187e == 4) {
            this.f37187e = 5;
            return new f(j10);
        }
        throw new IllegalStateException("state: " + this.f37187e);
    }

    @Override
    public void a(w wVar) throws IOException {
        a(wVar.c(), com.mbridge.msdk.thrid.okhttp.internal.http.i.a(wVar, this.f37184b.c().c().b().type()));
    }

    @Override
    public z a(y yVar) throws IOException {
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f37184b;
        gVar.f37142f.responseBodyStart(gVar.f37141e);
        String strB = yVar.b(HttpHeaders.CONTENT_TYPE);
        if (!com.mbridge.msdk.thrid.okhttp.internal.http.e.b(yVar)) {
            return new h(strB, 0L, l.a(b(0L)));
        }
        if ("chunked".equalsIgnoreCase(yVar.b("Transfer-Encoding"))) {
            return new h(strB, -1L, l.a(a(yVar.r().g())));
        }
        long jA = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(yVar);
        if (jA != -1) {
            return new h(strB, jA, l.a(b(jA)));
        }
        return new h(strB, -1L, l.a(d()));
    }

    @Override
    public void a() throws IOException {
        this.f37186d.flush();
    }

    public void a(p pVar, String str) throws IOException {
        if (this.f37187e == 0) {
            this.f37186d.a(str).a("\r\n");
            int iB = pVar.b();
            for (int i10 = 0; i10 < iB; i10++) {
                this.f37186d.a(pVar.a(i10)).a(": ").a(pVar.b(i10)).a("\r\n");
            }
            this.f37186d.a("\r\n");
            this.f37187e = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.f37187e);
    }

    @Override
    public y.a a(boolean z10) throws IOException {
        int i10 = this.f37187e;
        if (i10 != 1 && i10 != 3) {
            throw new IllegalStateException("state: " + this.f37187e);
        }
        try {
            k kVarA = k.a(e());
            y.a aVarA = new y.a().a(kVarA.f37180a).a(kVarA.f37181b).a(kVarA.f37182c).a(f());
            if (z10 && kVarA.f37181b == 100) {
                return null;
            }
            if (kVarA.f37181b == 100) {
                this.f37187e = 3;
                return aVarA;
            }
            this.f37187e = 4;
            return aVarA;
        } catch (EOFException e10) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f37184b);
            iOException.initCause(e10);
            throw iOException;
        }
    }

    public r a(long j10) {
        if (this.f37187e == 1) {
            this.f37187e = 2;
            return new e(j10);
        }
        throw new IllegalStateException("state: " + this.f37187e);
    }

    public s a(q qVar) throws IOException {
        if (this.f37187e == 4) {
            this.f37187e = 5;
            return new d(qVar);
        }
        throw new IllegalStateException("state: " + this.f37187e);
    }

    void a(i iVar) {
        com.mbridge.msdk.thrid.okio.t tVarG = iVar.g();
        iVar.a(com.mbridge.msdk.thrid.okio.t.f37643d);
        tVarG.a();
        tVarG.b();
    }
}
