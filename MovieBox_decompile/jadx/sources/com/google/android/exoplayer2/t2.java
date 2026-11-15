package com.google.android.exoplayer2;

import android.os.Looper;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.concurrent.TimeoutException;

public final class t2 {

    private final b f26088a;

    private final a f26089b;

    private final com.google.android.exoplayer2.util.e f26090c;

    private final l3 f26091d;

    private int f26092e;

    private Object f26093f;

    private Looper f26094g;

    private int f26095h;

    private long f26096i = C.TIME_UNSET;

    private boolean f26097j = true;

    private boolean f26098k;

    private boolean f26099l;

    private boolean f26100m;

    private boolean f26101n;

    public interface a {
        void b(t2 t2Var);
    }

    public interface b {
        void handleMessage(int i10, Object obj);
    }

    public t2(a aVar, b bVar, l3 l3Var, int i10, com.google.android.exoplayer2.util.e eVar, Looper looper) {
        this.f26089b = aVar;
        this.f26088a = bVar;
        this.f26091d = l3Var;
        this.f26094g = looper;
        this.f26090c = eVar;
        this.f26095h = i10;
    }

    public synchronized boolean a(long j10) {
        boolean z10;
        try {
            com.google.android.exoplayer2.util.a.g(this.f26098k);
            com.google.android.exoplayer2.util.a.g(this.f26094g.getThread() != Thread.currentThread());
            long jElapsedRealtime = this.f26090c.elapsedRealtime() + j10;
            while (true) {
                z10 = this.f26100m;
                if (z10 || j10 <= 0) {
                    break;
                }
                this.f26090c.a();
                wait(j10);
                j10 = jElapsedRealtime - this.f26090c.elapsedRealtime();
            }
            if (!z10) {
                throw new TimeoutException("Message delivery timed out.");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f26099l;
    }

    public boolean b() {
        return this.f26097j;
    }

    public Looper c() {
        return this.f26094g;
    }

    public int d() {
        return this.f26095h;
    }

    public Object e() {
        return this.f26093f;
    }

    public long f() {
        return this.f26096i;
    }

    public b g() {
        return this.f26088a;
    }

    public l3 h() {
        return this.f26091d;
    }

    public int i() {
        return this.f26092e;
    }

    public synchronized boolean j() {
        return this.f26101n;
    }

    public synchronized void k(boolean z10) {
        this.f26099l = z10 | this.f26099l;
        this.f26100m = true;
        notifyAll();
    }

    public t2 l() {
        com.google.android.exoplayer2.util.a.g(!this.f26098k);
        if (this.f26096i == C.TIME_UNSET) {
            com.google.android.exoplayer2.util.a.a(this.f26097j);
        }
        this.f26098k = true;
        this.f26089b.b(this);
        return this;
    }

    public t2 m(Object obj) {
        com.google.android.exoplayer2.util.a.g(!this.f26098k);
        this.f26093f = obj;
        return this;
    }

    public t2 n(int i10) {
        com.google.android.exoplayer2.util.a.g(!this.f26098k);
        this.f26092e = i10;
        return this;
    }
}
