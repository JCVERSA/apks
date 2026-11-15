package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.connection.RealConnection;

public final class C2945vk {
    public final C2706m5 a;
    public final C2920uk b;
    public final C2681l5 c;
    public final AbstractC2551g d;
    public final AbstractC2551g e;
    public C2597hk f;
    public int g = 0;

    public C2945vk(C2706m5 c2706m5, C2920uk c2920uk, C2681l5 c2681l5, C2761oa c2761oa, J2 j2) {
        this.a = c2706m5;
        this.c = c2681l5;
        this.d = c2761oa;
        this.e = j2;
        this.b = c2920uk;
    }

    public final synchronized long a() {
        C2597hk c2597hk;
        c2597hk = this.f;
        return c2597hk == null ? RealConnection.IDLE_CONNECTION_HEALTHY_NS : c2597hk.d - 1;
    }

    public final synchronized C2597hk b(C2408a6 c2408a6) {
        try {
            if (this.g == 0) {
                C2597hk c2597hkB = this.d.b();
                if (c2597hkB != null) {
                    if (c2597hkB.a(c2408a6.i)) {
                        this.f = c2597hkB;
                        this.g = 3;
                    } else {
                        a(c2597hkB, c2408a6);
                    }
                }
                C2597hk c2597hkB2 = this.e.b();
                if (c2597hkB2 != null) {
                    if (c2597hkB2.a(c2408a6.i)) {
                        this.f = c2597hkB2;
                        this.g = 2;
                    } else {
                        a(c2597hkB2, c2408a6);
                    }
                }
                this.f = null;
                this.g = 1;
            }
            if (this.g != 1) {
                C2597hk c2597hk = this.f;
                if (c2597hk != null) {
                    if (!c2597hk.a(c2408a6.i)) {
                        a(c2597hk, c2408a6);
                    }
                }
                this.g = 1;
                this.f = null;
            }
            int iA = Q7.a(this.g);
            if (iA == 1) {
                C2597hk c2597hk2 = this.f;
                long j = c2408a6.i;
                c2597hk2.i = j;
                C3020yk c3020yk = c2597hk2.b;
                c3020yk.a(C3020yk.d, Long.valueOf(j));
                c3020yk.b();
                return this.f;
            }
            if (iA == 2) {
                return this.f;
            }
            this.a.m.info("Start background session", new Object[0]);
            this.g = 2;
            long j2 = c2408a6.i;
            AbstractC2551g abstractC2551g = this.e;
            C2621ik c2621ik = new C2621ik(j2, c2408a6.j);
            abstractC2551g.getClass();
            C2597hk c2597hkA = abstractC2551g.a(c2621ik);
            if (this.a.t.c()) {
                C2681l5 c2681l5 = this.c;
                c2681l5.a.n.a(C2408a6.a(c2408a6, C2910ua.E.h()), a(c2597hkA, c2408a6.i));
            } else {
                int i = c2408a6.d;
                EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
                if (i == 6145) {
                    C2681l5 c2681l6 = this.c;
                    c2681l6.a.n.a(c2408a6, a(c2597hkA, j2));
                    C2681l5 c2681l7 = this.c;
                    c2681l7.a.n.a(C2408a6.a(c2408a6, C2910ua.E.h()), a(c2597hkA, j2));
                }
            }
            this.f = c2597hkA;
            return c2597hkA;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(C2408a6 c2408a6) {
        try {
            if (this.g == 0) {
                C2597hk c2597hkB = this.d.b();
                if (c2597hkB != null) {
                    if (c2597hkB.a(c2408a6.i)) {
                        this.f = c2597hkB;
                        this.g = 3;
                    } else {
                        a(c2597hkB, c2408a6);
                    }
                }
                C2597hk c2597hkB2 = this.e.b();
                if (c2597hkB2 != null) {
                    if (c2597hkB2.a(c2408a6.i)) {
                        this.f = c2597hkB2;
                        this.g = 2;
                    } else {
                        a(c2597hkB2, c2408a6);
                    }
                }
                this.f = null;
                this.g = 1;
            }
            int iA = Q7.a(this.g);
            if (iA == 0) {
                this.f = a(c2408a6);
            } else if (iA == 1) {
                a(this.f, c2408a6);
                this.f = a(c2408a6);
            } else if (iA == 2) {
                C2597hk c2597hk = this.f;
                if (c2597hk != null) {
                    if (c2597hk.a(c2408a6.i)) {
                        C2597hk c2597hk2 = this.f;
                        long j = c2408a6.i;
                        c2597hk2.i = j;
                        C3020yk c3020yk = c2597hk2.b;
                        c3020yk.a(C3020yk.d, Long.valueOf(j));
                        c3020yk.b();
                    } else {
                        a(c2597hk, c2408a6);
                    }
                }
                this.f = a(c2408a6);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final C2597hk a(C2408a6 c2408a6) {
        this.a.m.info("Start foreground session", new Object[0]);
        long j = c2408a6.i;
        AbstractC2551g abstractC2551g = this.d;
        C2621ik c2621ik = new C2621ik(j, c2408a6.j);
        abstractC2551g.getClass();
        C2597hk c2597hkA = abstractC2551g.a(c2621ik);
        this.g = 3;
        ((C2980x5) this.a.p).d();
        C2681l5 c2681l5 = this.c;
        c2681l5.a.n.a(C2408a6.a(c2408a6, C2910ua.E.h()), a(c2597hkA, j));
        return c2597hkA;
    }

    public final void a(C2597hk c2597hk, C2408a6 c2408a6) {
        if (c2597hk.g && c2597hk.d > 0) {
            C2681l5 c2681l5 = this.c;
            C2408a6 c2408a6A = C2408a6.a(c2408a6, EnumC2588hb.EVENT_TYPE_ALIVE);
            C2995xk c2995xk = new C2995xk();
            c2995xk.a = c2597hk.d;
            c2995xk.d = c2597hk.c.a;
            long andIncrement = c2597hk.f.getAndIncrement();
            C3020yk c3020yk = c2597hk.b;
            c3020yk.a(C3020yk.g, Long.valueOf(c2597hk.f.get()));
            c3020yk.b();
            c2995xk.b = andIncrement;
            c2995xk.c = TimeUnit.MILLISECONDS.toSeconds(Math.max(c2597hk.i - c2597hk.e, c2597hk.j));
            c2681l5.a.n.a(c2408a6A, c2995xk);
            if (c2597hk.g) {
                c2597hk.g = false;
                C3020yk c3020yk2 = c2597hk.b;
                c3020yk2.a(C3020yk.i, Boolean.FALSE);
                c3020yk2.b();
            }
        }
        PublicLogger publicLogger = this.a.m;
        int iOrdinal = c2597hk.c.a.ordinal();
        if (iOrdinal == 0) {
            publicLogger.info("Finish foreground session", new Object[0]);
        } else if (iOrdinal == 1) {
            publicLogger.info("Finish background session", new Object[0]);
        }
        synchronized (c2597hk) {
            C3020yk c3020yk3 = c2597hk.b;
            c3020yk3.getClass();
            c3020yk3.c = new C2687lb();
            c3020yk3.b();
            c2597hk.h = null;
        }
    }

    public static C2995xk a(C2597hk c2597hk, long j) {
        C2995xk c2995xk = new C2995xk();
        c2995xk.a = c2597hk.d;
        long andIncrement = c2597hk.f.getAndIncrement();
        C3020yk c3020yk = c2597hk.b;
        c3020yk.a(C3020yk.g, Long.valueOf(c2597hk.f.get()));
        c3020yk.b();
        c2995xk.b = andIncrement;
        C3020yk c3020yk2 = c2597hk.b;
        long j2 = j - c2597hk.e;
        c2597hk.j = j2;
        c3020yk2.a(C3020yk.e, Long.valueOf(j2));
        c2995xk.c = TimeUnit.MILLISECONDS.toSeconds(c2597hk.j);
        c2995xk.d = c2597hk.c.a;
        return c2995xk;
    }
}
