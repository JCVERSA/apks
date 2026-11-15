package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okio.r;
import com.mbridge.msdk.thrid.okio.s;
import com.mbridge.msdk.thrid.okio.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

public final class i {

    static final boolean f37345l = true;

    long f37346a = 0;

    long f37347b;

    final int f37348c;

    final g f37349d;

    private final Deque<p> f37350e;

    private boolean f37351f;

    private final b f37352g;

    final a f37353h;

    final c f37354i;

    final c f37355j;

    com.mbridge.msdk.thrid.okhttp.internal.http2.b f37356k;

    class c extends com.mbridge.msdk.thrid.okio.a {
        c() {
        }

        @Override
        protected IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override
        protected void j() {
            i.this.c(com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
            i.this.f37349d.l();
        }

        public void k() throws IOException {
            if (i()) {
                throw b((IOException) null);
            }
        }
    }

    i(int i10, g gVar, boolean z10, boolean z11, p pVar) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f37350e = arrayDeque;
        this.f37354i = new c();
        this.f37355j = new c();
        this.f37356k = null;
        if (gVar == null) {
            throw new NullPointerException("connection == null");
        }
        this.f37348c = i10;
        this.f37349d = gVar;
        this.f37347b = gVar.f37285u.c();
        b bVar = new b(gVar.f37284t.c());
        this.f37352g = bVar;
        a aVar = new a();
        this.f37353h = aVar;
        bVar.f37367e = z11;
        aVar.f37360c = z10;
        if (pVar != null) {
            arrayDeque.add(pVar);
        }
        if (f() && pVar != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (!f() && pVar == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    static com.mbridge.msdk.thrid.okhttp.internal.http2.c.a b(i iVar) {
        iVar.getClass();
        return null;
    }

    public int c() {
        return this.f37348c;
    }

    public r d() {
        synchronized (this) {
            try {
                if (!this.f37351f && !f()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f37353h;
    }

    public s e() {
        return this.f37352g;
    }

    public boolean f() {
        return this.f37349d.f37265a == ((this.f37348c & 1) == 1);
    }

    public synchronized boolean g() {
        try {
            if (this.f37356k != null) {
                return false;
            }
            b bVar = this.f37352g;
            if (bVar.f37367e || bVar.f37366d) {
                a aVar = this.f37353h;
                if ((aVar.f37360c || aVar.f37359b) && this.f37351f) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public t h() {
        return this.f37354i;
    }

    void i() {
        boolean zG;
        if (!f37345l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.f37352g.f37367e = true;
            zG = g();
            notifyAll();
        }
        if (zG) {
            return;
        }
        this.f37349d.c(this.f37348c);
    }

    public synchronized p j() throws IOException {
        this.f37354i.h();
        while (this.f37350e.isEmpty() && this.f37356k == null) {
            try {
                k();
            } catch (Throwable th2) {
                this.f37354i.k();
                throw th2;
            }
        }
        this.f37354i.k();
        if (this.f37350e.isEmpty()) {
            throw new n(this.f37356k);
        }
        return this.f37350e.removeFirst();
    }

    void k() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public t l() {
        return this.f37355j;
    }

    private boolean b(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (!f37345l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                if (this.f37356k != null) {
                    return false;
                }
                if (this.f37352g.f37367e && this.f37353h.f37360c) {
                    return false;
                }
                this.f37356k = bVar;
                notifyAll();
                this.f37349d.c(this.f37348c);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        if (b(bVar)) {
            this.f37349d.b(this.f37348c, bVar);
        }
    }

    public void c(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (b(bVar)) {
            this.f37349d.c(this.f37348c, bVar);
        }
    }

    final class a implements r {

        static final boolean f37357e = true;

        private final com.mbridge.msdk.thrid.okio.c f37358a = new com.mbridge.msdk.thrid.okio.c();

        boolean f37359b;

        boolean f37360c;

        a() {
        }

        @Override
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (!f37357e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            this.f37358a.a(cVar, j10);
            while (this.f37358a.size() >= 16384) {
                a(false);
            }
        }

        @Override
        public t b() {
            return i.this.f37355j;
        }

        @Override
        public void close() throws IOException {
            if (!f37357e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                try {
                    if (this.f37359b) {
                        return;
                    }
                    if (!i.this.f37353h.f37360c) {
                        if (this.f37358a.size() > 0) {
                            while (this.f37358a.size() > 0) {
                                a(true);
                            }
                        } else {
                            i iVar = i.this;
                            iVar.f37349d.a(iVar.f37348c, true, (com.mbridge.msdk.thrid.okio.c) null, 0L);
                        }
                    }
                    synchronized (i.this) {
                        this.f37359b = true;
                    }
                    i.this.f37349d.flush();
                    i.this.a();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void flush() throws IOException {
            if (!f37357e && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                i.this.b();
            }
            while (this.f37358a.size() > 0) {
                a(false);
                i.this.f37349d.flush();
            }
        }

        private void a(boolean z10) throws IOException {
            i iVar;
            long jMin;
            i iVar2;
            synchronized (i.this) {
                i.this.f37355j.h();
                while (true) {
                    try {
                        iVar = i.this;
                        if (iVar.f37347b > 0 || this.f37360c || this.f37359b || iVar.f37356k != null) {
                            break;
                        } else {
                            iVar.k();
                        }
                    } catch (Throwable th2) {
                        i.this.f37355j.k();
                        throw th2;
                    }
                }
                iVar.f37355j.k();
                i.this.b();
                jMin = Math.min(i.this.f37347b, this.f37358a.size());
                iVar2 = i.this;
                iVar2.f37347b -= jMin;
            }
            iVar2.f37355j.h();
            try {
                i iVar3 = i.this;
                iVar3.f37349d.a(iVar3.f37348c, z10 && jMin == this.f37358a.size(), this.f37358a, jMin);
            } finally {
                i.this.f37355j.k();
            }
        }
    }

    void a(List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
        boolean zG;
        if (!f37345l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.f37351f = true;
            this.f37350e.add(com.mbridge.msdk.thrid.okhttp.internal.c.b(list));
            zG = g();
            notifyAll();
        }
        if (zG) {
            return;
        }
        this.f37349d.c(this.f37348c);
    }

    synchronized void d(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        if (this.f37356k == null) {
            this.f37356k = bVar;
            notifyAll();
        }
    }

    void a(com.mbridge.msdk.thrid.okio.e eVar, int i10) throws IOException {
        if (!f37345l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.f37352g.a(eVar, i10);
    }

    void b() throws IOException {
        a aVar = this.f37353h;
        if (!aVar.f37359b) {
            if (!aVar.f37360c) {
                if (this.f37356k != null) {
                    throw new n(this.f37356k);
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    /* JADX WARN: Code duplicated, block: B:22:0x002b  */
    void a() throws IOException {
        boolean z10;
        boolean zG;
        if (!f37345l && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            try {
                b bVar = this.f37352g;
                if (bVar.f37367e || !bVar.f37366d) {
                    z10 = false;
                } else {
                    a aVar = this.f37353h;
                    if (aVar.f37360c || aVar.f37359b) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                zG = g();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
        } else {
            if (zG) {
                return;
            }
            this.f37349d.c(this.f37348c);
        }
    }

    private final class b implements s {

        static final boolean f37362g = true;

        private final com.mbridge.msdk.thrid.okio.c f37363a = new com.mbridge.msdk.thrid.okio.c();

        private final com.mbridge.msdk.thrid.okio.c f37364b = new com.mbridge.msdk.thrid.okio.c();

        private final long f37365c;

        boolean f37366d;

        boolean f37367e;

        b(long j10) {
            this.f37365c = j10;
        }

        private void f(long j10) {
            if (!f37362g && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            i.this.f37349d.g(j10);
        }

        void a(com.mbridge.msdk.thrid.okio.e eVar, long j10) throws IOException {
            boolean z10;
            boolean z11;
            long size;
            if (!f37362g && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            while (j10 > 0) {
                synchronized (i.this) {
                    z10 = this.f37367e;
                    z11 = this.f37364b.size() + j10 > this.f37365c;
                }
                if (z11) {
                    eVar.skip(j10);
                    i.this.c(com.mbridge.msdk.thrid.okhttp.internal.http2.b.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z10) {
                    eVar.skip(j10);
                    return;
                }
                long jB = eVar.b(this.f37363a, j10);
                if (jB == -1) {
                    throw new EOFException();
                }
                j10 -= jB;
                synchronized (i.this) {
                    try {
                        if (this.f37366d) {
                            size = this.f37363a.size();
                            this.f37363a.k();
                        } else {
                            boolean z12 = this.f37364b.size() == 0;
                            this.f37364b.a(this.f37363a);
                            if (z12) {
                                i.this.notifyAll();
                            }
                            size = 0;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (size > 0) {
                    f(size);
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:39:0x0094  */
        /* JADX WARN: Code duplicated, block: B:41:0x0098 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:42:0x009a A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:43:0x009b  */
        @Override
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar;
            long jB;
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            while (true) {
                synchronized (i.this) {
                    try {
                        i.this.f37354i.h();
                        try {
                            i iVar = i.this;
                            bVar = iVar.f37356k;
                            if (bVar == null) {
                                bVar = null;
                            }
                            if (this.f37366d) {
                                throw new IOException("stream closed");
                            }
                            if (!iVar.f37350e.isEmpty()) {
                                i.b(i.this);
                            }
                            if (this.f37364b.size() > 0) {
                                com.mbridge.msdk.thrid.okio.c cVar2 = this.f37364b;
                                jB = cVar2.b(cVar, Math.min(j10, cVar2.size()));
                                i iVar2 = i.this;
                                long j11 = iVar2.f37346a + jB;
                                iVar2.f37346a = j11;
                                if (bVar != null || j11 < iVar2.f37349d.f37284t.c() / 2) {
                                    break;
                                    break;
                                }
                                i iVar3 = i.this;
                                iVar3.f37349d.a(iVar3.f37348c, iVar3.f37346a);
                                i.this.f37346a = 0L;
                                break;
                            }
                            if (this.f37367e || bVar != null) {
                                jB = -1;
                                break;
                            }
                            i.this.k();
                            i.this.f37354i.k();
                        } catch (Throwable th2) {
                            i.this.f37354i.k();
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                if (jB != -1) {
                    f(jB);
                    return jB;
                }
                if (bVar == null) {
                    return -1L;
                }
                throw new n(bVar);
            }
            i.this.f37354i.k();
            if (jB != -1) {
                f(jB);
                return jB;
            }
            if (bVar == null) {
                return -1L;
            }
            throw new n(bVar);
        }

        @Override
        public void close() throws IOException {
            long size;
            synchronized (i.this) {
                try {
                    this.f37366d = true;
                    size = this.f37364b.size();
                    this.f37364b.k();
                    if (!i.this.f37350e.isEmpty()) {
                        i.b(i.this);
                    }
                    i.this.notifyAll();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (size > 0) {
                f(size);
            }
            i.this.a();
        }

        @Override
        public t b() {
            return i.this.f37354i;
        }
    }

    void a(long j10) {
        this.f37347b += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }
}
