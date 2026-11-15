package com.mbridge.msdk.thrid.okio;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

public class a extends t {

    private static final long f37586h;

    private static final long f37587i;

    @Nullable
    static a f37588j;

    private boolean f37589e;

    @Nullable
    private a f37590f;

    private long f37591g;

    class C0527a implements r {

        final r f37592a;

        C0527a(r rVar) {
            this.f37592a = rVar;
        }

        @Override
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            u.a(cVar.f37600b, 0L, j10);
            while (true) {
                long j11 = 0;
                if (j10 <= 0) {
                    return;
                }
                o oVar = cVar.f37599a;
                while (j11 < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    j11 += (long) (oVar.f37634c - oVar.f37633b);
                    if (j11 >= j10) {
                        j11 = j10;
                        break;
                    }
                    oVar = oVar.f37637f;
                }
                a.this.h();
                try {
                    try {
                        this.f37592a.a(cVar, j11);
                        j10 -= j11;
                        a.this.a(true);
                    } catch (IOException e10) {
                        throw a.this.a(e10);
                    }
                } catch (Throwable th2) {
                    a.this.a(false);
                    throw th2;
                }
            }
        }

        @Override
        public t b() {
            return a.this;
        }

        @Override
        public void close() throws IOException {
            a.this.h();
            try {
                try {
                    this.f37592a.close();
                    a.this.a(true);
                } catch (IOException e10) {
                    throw a.this.a(e10);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        @Override
        public void flush() throws IOException {
            a.this.h();
            try {
                try {
                    this.f37592a.flush();
                    a.this.a(true);
                } catch (IOException e10) {
                    throw a.this.a(e10);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f37592a + ")";
        }
    }

    private static final class c extends Thread {
        c() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0017, code lost:
        
            r1.j();
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            while (true) {
                try {
                    synchronized (a.class) {
                        try {
                            a aVarG = a.g();
                            if (aVarG != null) {
                                if (aVarG == a.f37588j) {
                                    a.f37588j = null;
                                    return;
                                }
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f37586h = millis;
        f37587i = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    private static synchronized void a(a aVar, long j10, boolean z10) {
        try {
            if (f37588j == null) {
                f37588j = new a();
                new c().start();
            }
            long jNanoTime = System.nanoTime();
            if (j10 != 0 && z10) {
                aVar.f37591g = Math.min(j10, aVar.c() - jNanoTime) + jNanoTime;
            } else if (j10 != 0) {
                aVar.f37591g = j10 + jNanoTime;
            } else {
                if (!z10) {
                    throw new AssertionError();
                }
                aVar.f37591g = aVar.c();
            }
            long jB = aVar.b(jNanoTime);
            a aVar2 = f37588j;
            while (true) {
                a aVar3 = aVar2.f37590f;
                if (aVar3 == null || jB < aVar3.b(jNanoTime)) {
                    break;
                    break;
                }
                aVar2 = aVar2.f37590f;
            }
            aVar.f37590f = aVar2.f37590f;
            aVar2.f37590f = aVar;
            if (aVar2 == f37588j) {
                a.class.notify();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private long b(long j10) {
        return this.f37591g - j10;
    }

    @Nullable
    static a g() throws InterruptedException {
        a aVar = f37588j.f37590f;
        if (aVar == null) {
            long jNanoTime = System.nanoTime();
            a.class.wait(f37586h);
            if (f37588j.f37590f != null || System.nanoTime() - jNanoTime < f37587i) {
                return null;
            }
            return f37588j;
        }
        long jB = aVar.b(System.nanoTime());
        if (jB > 0) {
            long j10 = jB / 1000000;
            a.class.wait(j10, (int) (jB - (1000000 * j10)));
            return null;
        }
        f37588j.f37590f = aVar.f37590f;
        aVar.f37590f = null;
        return aVar;
    }

    public final void h() {
        if (this.f37589e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jF = f();
        boolean zD = d();
        if (jF != 0 || zD) {
            this.f37589e = true;
            a(this, jF, zD);
        }
    }

    public final boolean i() {
        if (!this.f37589e) {
            return false;
        }
        this.f37589e = false;
        return a(this);
    }

    protected void j() {
    }

    protected IOException b(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    class b implements s {

        final s f37594a;

        b(s sVar) {
            this.f37594a = sVar;
        }

        @Override
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            a.this.h();
            try {
                try {
                    long jB = this.f37594a.b(cVar, j10);
                    a.this.a(true);
                    return jB;
                } catch (IOException e10) {
                    throw a.this.a(e10);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        @Override
        public void close() throws IOException {
            try {
                try {
                    this.f37594a.close();
                    a.this.a(true);
                } catch (IOException e10) {
                    throw a.this.a(e10);
                }
            } catch (Throwable th2) {
                a.this.a(false);
                throw th2;
            }
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f37594a + ")";
        }

        @Override
        public t b() {
            return a.this;
        }
    }

    private static synchronized boolean a(a aVar) {
        a aVar2 = f37588j;
        while (aVar2 != null) {
            a aVar3 = aVar2.f37590f;
            if (aVar3 == aVar) {
                aVar2.f37590f = aVar.f37590f;
                aVar.f37590f = null;
                return false;
            }
            aVar2 = aVar3;
        }
        return true;
    }

    public final r a(r rVar) {
        return new C0527a(rVar);
    }

    public final s a(s sVar) {
        return new b(sVar);
    }

    final void a(boolean z10) throws IOException {
        if (i() && z10) {
            throw b((IOException) null);
        }
    }

    final IOException a(IOException iOException) throws IOException {
        return !i() ? iOException : b(iOException);
    }
}
