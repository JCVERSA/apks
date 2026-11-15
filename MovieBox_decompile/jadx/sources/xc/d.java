package xc;

import android.content.Context;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.SessionVerbosity;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

final class d {

    private final com.google.firebase.perf.config.a f75264a;

    private final double f75265b;

    private final double f75266c;

    private a f75267d;

    private a f75268e;

    private boolean f75269f;

    static class a {

        private static final uc.a f75270k = uc.a.e();

        private static final long f75271l = TimeUnit.SECONDS.toMicros(1);

        private final com.google.firebase.perf.util.a f75272a;

        private final boolean f75273b;

        private Timer f75274c;

        private com.google.firebase.perf.util.g f75275d;

        private long f75276e;

        private double f75277f;

        private com.google.firebase.perf.util.g f75278g;

        private com.google.firebase.perf.util.g f75279h;

        private long f75280i;

        private long f75281j;

        a(com.google.firebase.perf.util.g gVar, long j10, com.google.firebase.perf.util.a aVar, com.google.firebase.perf.config.a aVar2, String str, boolean z10) {
            this.f75272a = aVar;
            this.f75276e = j10;
            this.f75275d = gVar;
            this.f75277f = j10;
            this.f75274c = aVar.a();
            g(aVar2, str, z10);
            this.f75273b = z10;
        }

        private static long c(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.E() : aVar.q();
        }

        private static long d(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.t() : aVar.t();
        }

        private static long e(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.F() : aVar.r();
        }

        private static long f(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.t() : aVar.t();
        }

        private void g(com.google.firebase.perf.config.a aVar, String str, boolean z10) {
            long jF = f(aVar, str);
            long jE = e(aVar, str);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            com.google.firebase.perf.util.g gVar = new com.google.firebase.perf.util.g(jE, jF, timeUnit);
            this.f75278g = gVar;
            this.f75280i = jE;
            if (z10) {
                f75270k.b("Foreground %s logging rate:%f, burst capacity:%d", str, gVar, Long.valueOf(jE));
            }
            long jD = d(aVar, str);
            long jC = c(aVar, str);
            com.google.firebase.perf.util.g gVar2 = new com.google.firebase.perf.util.g(jC, jD, timeUnit);
            this.f75279h = gVar2;
            this.f75281j = jC;
            if (z10) {
                f75270k.b("Background %s logging rate:%f, capacity:%d", str, gVar2, Long.valueOf(jC));
            }
        }

        synchronized void a(boolean z10) {
            try {
                this.f75275d = z10 ? this.f75278g : this.f75279h;
                this.f75276e = z10 ? this.f75280i : this.f75281j;
            } catch (Throwable th2) {
                throw th2;
            }
        }

        synchronized boolean b(com.google.firebase.perf.v1.g gVar) {
            try {
                Timer timerA = this.f75272a.a();
                double durationMicros = (this.f75274c.getDurationMicros(timerA) * this.f75275d.a()) / f75271l;
                if (durationMicros > 0.0d) {
                    this.f75277f = Math.min(this.f75277f + durationMicros, this.f75276e);
                    this.f75274c = timerA;
                }
                double d10 = this.f75277f;
                if (d10 >= 1.0d) {
                    this.f75277f = d10 - 1.0d;
                    return true;
                }
                if (this.f75273b) {
                    f75270k.j("Exceeded log rate limit, dropping the log.");
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public d(Context context, com.google.firebase.perf.util.g gVar, long j10) {
        this(gVar, j10, new com.google.firebase.perf.util.a(), b(), b(), com.google.firebase.perf.config.a.g());
        this.f75269f = com.google.firebase.perf.util.k.b(context);
    }

    static double b() {
        return new Random().nextDouble();
    }

    private boolean c(List list) {
        return list.size() > 0 && ((com.google.firebase.perf.v1.h) list.get(0)).m() > 0 && ((com.google.firebase.perf.v1.h) list.get(0)).l(0) == SessionVerbosity.GAUGES_AND_SYSTEM_EVENTS;
    }

    private boolean d() {
        return this.f75266c < this.f75264a.f();
    }

    private boolean e() {
        return this.f75265b < this.f75264a.s();
    }

    private boolean f() {
        return this.f75265b < this.f75264a.G();
    }

    void a(boolean z10) {
        this.f75267d.a(z10);
        this.f75268e.a(z10);
    }

    boolean g(com.google.firebase.perf.v1.g gVar) {
        if (!j(gVar)) {
            return false;
        }
        if (gVar.b()) {
            return !this.f75268e.b(gVar);
        }
        if (gVar.e()) {
            return !this.f75267d.b(gVar);
        }
        return true;
    }

    boolean h(com.google.firebase.perf.v1.g gVar) {
        if (gVar.e() && !f() && !c(gVar.g().F())) {
            return false;
        }
        if (!i(gVar) || d() || c(gVar.g().F())) {
            return !gVar.b() || e() || c(gVar.c().B());
        }
        return false;
    }

    protected boolean i(com.google.firebase.perf.v1.g gVar) {
        return gVar.e() && gVar.g().E().startsWith("_st_") && gVar.g().u("Hosting_activity");
    }

    boolean j(com.google.firebase.perf.v1.g gVar) {
        return (!gVar.e() || (!(gVar.g().E().equals(Constants$TraceNames.FOREGROUND_TRACE_NAME.toString()) || gVar.g().E().equals(Constants$TraceNames.BACKGROUND_TRACE_NAME.toString())) || gVar.g().x() <= 0)) && !gVar.a();
    }

    d(com.google.firebase.perf.util.g gVar, long j10, com.google.firebase.perf.util.a aVar, double d10, double d11, com.google.firebase.perf.config.a aVar2) {
        this.f75267d = null;
        this.f75268e = null;
        boolean z10 = false;
        this.f75269f = false;
        com.google.firebase.perf.util.k.a(0.0d <= d10 && d10 < 1.0d, "Sampling bucket ID should be in range [0.0, 1.0).");
        if (0.0d <= d11 && d11 < 1.0d) {
            z10 = true;
        }
        com.google.firebase.perf.util.k.a(z10, "Fragment sampling bucket ID should be in range [0.0, 1.0).");
        this.f75265b = d10;
        this.f75266c = d11;
        this.f75264a = aVar2;
        this.f75267d = new a(gVar, j10, aVar, aVar2, "Trace", this.f75269f);
        this.f75268e = new a(gVar, j10, aVar, aVar2, "Network", this.f75269f);
    }
}
