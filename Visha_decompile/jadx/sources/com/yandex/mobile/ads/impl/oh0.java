package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;

public final class oh0 {
    private final int a;
    private final hh0 b;
    private long c;
    private long d;
    private long e;
    private long f;
    private final ArrayDeque<qf0> g;
    private boolean h;
    private final b i;
    private final a j;
    private final c k;
    private final c l;
    private t50 m;
    private IOException n;

    public final class b implements Source {
        private final long a;
        private boolean b;
        private final Buffer c = new Buffer();
        private final Buffer d = new Buffer();
        private boolean e;

        public b(long j, boolean z) {
            this.a = j;
            this.b = z;
        }

        public final boolean a() {
            return this.e;
        }

        public final boolean b() {
            return this.b;
        }

        public final void c() {
            this.b = true;
        }

        @Override
        public final void close() throws IOException {
            long size;
            oh0 oh0Var = oh0.this;
            synchronized (oh0Var) {
                this.e = true;
                size = this.d.size();
                this.d.clear();
                y45.h(oh0Var, "null cannot be cast to non-null type java.lang.Object");
                oh0Var.notifyAll();
                zfb zfbVar = zfb.a;
            }
            if (size > 0) {
                a(size);
            }
            oh0.this.a();
        }

        @Override
        public final long read(Buffer buffer, long j) throws IOException {
            IOException iOExceptionE;
            boolean z;
            long j2;
            y45.j(buffer, "sink");
            long j3 = 0;
            if (j < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
            }
            while (true) {
                oh0 oh0Var = oh0.this;
                synchronized (oh0Var) {
                    oh0Var.i().enter();
                    try {
                        if (oh0Var.d() != null) {
                            iOExceptionE = oh0Var.e();
                            if (iOExceptionE == null) {
                                t50 t50VarD = oh0Var.d();
                                y45.g(t50VarD);
                                iOExceptionE = new z22(t50VarD);
                            }
                        } else {
                            iOExceptionE = null;
                        }
                        if (this.e) {
                            throw new IOException("stream closed");
                        }
                        z = false;
                        if (this.d.size() > j3) {
                            Buffer buffer2 = this.d;
                            j2 = buffer2.read(buffer, Math.min(j, buffer2.size()));
                            oh0Var.c(oh0Var.h() + j2);
                            long jH = oh0Var.h() - oh0Var.g();
                            if (iOExceptionE == null && jH >= oh0Var.c().g().b() / 2) {
                                oh0Var.c().a(oh0Var.f(), jH);
                                oh0Var.b(oh0Var.h());
                            }
                        } else {
                            if (!this.b && iOExceptionE == null) {
                                oh0Var.t();
                                z = true;
                            }
                            j2 = -1;
                        }
                        oh0Var.i().a();
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        oh0Var.i().a();
                        throw th;
                    }
                    throw th;
                }
                if (!z) {
                    if (j2 != -1) {
                        a(j2);
                        return j2;
                    }
                    if (iOExceptionE == null) {
                        return -1L;
                    }
                    throw iOExceptionE;
                }
                j3 = 0;
            }
        }

        @Override
        public final Timeout getTimeout() {
            return oh0.this.i();
        }

        public final void a(BufferedSource bufferedSource, long j) throws IOException {
            boolean z;
            boolean z2;
            long size;
            y45.j(bufferedSource, "source");
            oh0 oh0Var = oh0.this;
            if (g92.f && Thread.holdsLock(oh0Var)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + oh0Var);
            }
            while (j > 0) {
                synchronized (oh0.this) {
                    z = this.b;
                    z2 = this.d.size() + j > this.a;
                    zfb zfbVar = zfb.a;
                }
                if (z2) {
                    bufferedSource.skip(j);
                    oh0.this.a(t50.g);
                    return;
                }
                if (z) {
                    bufferedSource.skip(j);
                    return;
                }
                long j2 = bufferedSource.read(this.c, j);
                if (j2 == -1) {
                    throw new EOFException();
                }
                j -= j2;
                oh0 oh0Var2 = oh0.this;
                synchronized (oh0Var2) {
                    try {
                        if (this.e) {
                            size = this.c.size();
                            this.c.clear();
                        } else {
                            boolean z3 = this.d.size() == 0;
                            this.d.writeAll(this.c);
                            if (z3) {
                                y45.h(oh0Var2, "null cannot be cast to non-null type java.lang.Object");
                                oh0Var2.notifyAll();
                            }
                            size = 0;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (size > 0) {
                    a(size);
                }
            }
        }

        private final void a(long j) {
            oh0 oh0Var = oh0.this;
            if (g92.f && Thread.holdsLock(oh0Var)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + oh0Var);
            }
            oh0.this.c().b(j);
        }
    }

    public final class c extends AsyncTimeout {
        public c() {
        }

        public final void a() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override
        public final IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override
        public final void timedOut() {
            oh0.this.a(t50.i);
            oh0.this.c().l();
        }
    }

    public oh0(int i, hh0 hh0Var, boolean z, boolean z2, qf0 qf0Var) {
        y45.j(hh0Var, "connection");
        this.a = i;
        this.b = hh0Var;
        this.f = hh0Var.h().b();
        ArrayDeque<qf0> arrayDeque = new ArrayDeque<>();
        this.g = arrayDeque;
        this.i = new b(hh0Var.g().b(), z2);
        this.j = new a(z);
        this.k = new c();
        this.l = new c();
        if (qf0Var == null) {
            if (!p()) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
        } else {
            if (p()) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            }
            arrayDeque.add(qf0Var);
        }
    }

    public final void a(long j) {
        this.f += j;
        if (j > 0) {
            y45.h(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    public final void b() throws IOException {
        if (this.j.a()) {
            throw new IOException("stream closed");
        }
        if (this.j.b()) {
            throw new IOException("stream finished");
        }
        if (this.m != null) {
            IOException iOException = this.n;
            if (iOException != null) {
                throw iOException;
            }
            t50 t50Var = this.m;
            y45.g(t50Var);
            throw new z22(t50Var);
        }
    }

    public final hh0 c() {
        return this.b;
    }

    public final synchronized t50 d() {
        return this.m;
    }

    public final IOException e() {
        return this.n;
    }

    public final int f() {
        return this.a;
    }

    public final long g() {
        return this.d;
    }

    public final long h() {
        return this.c;
    }

    public final c i() {
        return this.k;
    }

    public final a j() {
        synchronized (this) {
            try {
                if (!this.h && !p()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.j;
    }

    public final a k() {
        return this.j;
    }

    public final b l() {
        return this.i;
    }

    public final long m() {
        return this.f;
    }

    public final long n() {
        return this.e;
    }

    public final c o() {
        return this.l;
    }

    public final boolean p() {
        return this.b.b() == ((this.a & 1) == 1);
    }

    public final synchronized boolean q() {
        try {
            if (this.m != null) {
                return false;
            }
            if (this.i.b() || this.i.a()) {
                if ((this.j.b() || this.j.a()) && this.h) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final c r() {
        return this.k;
    }

    public final synchronized qf0 s() throws IOException {
        qf0 qf0VarRemoveFirst;
        this.k.enter();
        while (this.g.isEmpty() && this.m == null) {
            try {
                t();
            } catch (Throwable th) {
                this.k.a();
                throw th;
            }
        }
        this.k.a();
        if (this.g.isEmpty()) {
            IOException iOException = this.n;
            if (iOException != null) {
                throw iOException;
            }
            t50 t50Var = this.m;
            y45.g(t50Var);
            throw new z22(t50Var);
        }
        qf0VarRemoveFirst = this.g.removeFirst();
        y45.i(qf0VarRemoveFirst, "removeFirst(...)");
        return qf0VarRemoveFirst;
    }

    public final void t() throws InterruptedIOException {
        try {
            y45.h(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public final c u() {
        return this.l;
    }

    public final void c(long j) {
        this.c = j;
    }

    public final void d(long j) {
        this.e = j;
    }

    public final void a(t50 t50Var, IOException iOException) throws IOException {
        y45.j(t50Var, "rstStatusCode");
        if (b(t50Var, iOException)) {
            this.b.b(this.a, t50Var);
        }
    }

    public final void a(t50 t50Var) {
        y45.j(t50Var, "errorCode");
        if (b(t50Var, null)) {
            this.b.c(this.a, t50Var);
        }
    }

    public final synchronized void b(t50 t50Var) {
        y45.j(t50Var, "errorCode");
        if (this.m == null) {
            this.m = t50Var;
            y45.h(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    public final void a(BufferedSource bufferedSource, int i) throws IOException {
        y45.j(bufferedSource, "source");
        if (g92.f && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        this.i.a(bufferedSource, i);
    }

    public final void b(long j) {
        this.d = j;
    }

    private final boolean b(t50 t50Var, IOException iOException) {
        if (g92.f && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            if (this.m != null) {
                return false;
            }
            if (this.i.b() && this.j.b()) {
                return false;
            }
            this.m = t50Var;
            this.n = iOException;
            y45.h(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
            zfb zfbVar = zfb.a;
            this.b.c(this.a);
            return true;
        }
    }

    public final void a(qf0 qf0Var, boolean z) {
        boolean zQ;
        y45.j(qf0Var, "headers");
        if (g92.f && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            try {
                if (this.h && z) {
                    this.i.getClass();
                } else {
                    this.h = true;
                    this.g.add(qf0Var);
                }
                if (z) {
                    this.i.c();
                }
                zQ = q();
                y45.h(this, "null cannot be cast to non-null type java.lang.Object");
                notifyAll();
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zQ) {
            return;
        }
        this.b.c(this.a);
    }

    public final class a implements Sink {
        private boolean a;
        private final Buffer b = new Buffer();
        private boolean c;

        public a(boolean z) {
            this.a = z;
        }

        private final void a(boolean z) throws IOException {
            long jMin;
            boolean z2;
            oh0 oh0Var = oh0.this;
            synchronized (oh0Var) {
                try {
                    oh0Var.o().enter();
                    while (oh0Var.n() >= oh0Var.m() && !this.a && !this.c && oh0Var.d() == null) {
                        try {
                            oh0Var.t();
                        } catch (Throwable th) {
                            oh0Var.o().a();
                            throw th;
                        }
                    }
                    oh0Var.o().a();
                    oh0Var.b();
                    jMin = Math.min(oh0Var.m() - oh0Var.n(), this.b.size());
                    oh0Var.d(oh0Var.n() + jMin);
                    z2 = z && jMin == this.b.size();
                    zfb zfbVar = zfb.a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            oh0.this.o().enter();
            try {
                oh0.this.c().a(oh0.this.f(), z2, this.b, jMin);
            } finally {
                oh0.this.o().a();
            }
        }

        public final boolean b() {
            return this.a;
        }

        @Override
        public final void close() throws IOException {
            oh0 oh0Var = oh0.this;
            if (g92.f && Thread.holdsLock(oh0Var)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + oh0Var);
            }
            oh0 oh0Var2 = oh0.this;
            synchronized (oh0Var2) {
                if (this.c) {
                    return;
                }
                boolean z = oh0Var2.d() == null;
                zfb zfbVar = zfb.a;
                if (!oh0.this.k().a) {
                    if (this.b.size() > 0) {
                        while (this.b.size() > 0) {
                            a(true);
                        }
                    } else if (z) {
                        oh0.this.c().a(oh0.this.f(), true, (Buffer) null, 0L);
                    }
                }
                synchronized (oh0.this) {
                    this.c = true;
                    zfb zfbVar2 = zfb.a;
                }
                oh0.this.c().flush();
                oh0.this.a();
            }
        }

        @Override
        public final void flush() throws IOException {
            oh0 oh0Var = oh0.this;
            if (g92.f && Thread.holdsLock(oh0Var)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + oh0Var);
            }
            oh0 oh0Var2 = oh0.this;
            synchronized (oh0Var2) {
                oh0Var2.b();
                zfb zfbVar = zfb.a;
            }
            while (this.b.size() > 0) {
                a(false);
                oh0.this.c().flush();
            }
        }

        @Override
        public final Timeout getTimeout() {
            return oh0.this.o();
        }

        @Override
        public final void write(Buffer buffer, long j) throws IOException {
            y45.j(buffer, "source");
            oh0 oh0Var = oh0.this;
            if (!g92.f || !Thread.holdsLock(oh0Var)) {
                this.b.write(buffer, j);
                while (this.b.size() >= 16384) {
                    a(false);
                }
            } else {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + oh0Var);
            }
        }

        public final boolean a() {
            return this.c;
        }
    }

    public final void a() throws IOException {
        boolean z;
        boolean zQ;
        if (g92.f && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            try {
                z = !this.i.b() && this.i.a() && (this.j.b() || this.j.a());
                zQ = q();
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z) {
            if (zQ) {
                return;
            }
            this.b.c(this.a);
        } else {
            t50 t50Var = t50.i;
            y45.j(t50Var, "rstStatusCode");
            if (b(t50Var, null)) {
                this.b.b(this.a, t50Var);
            }
        }
    }
}
