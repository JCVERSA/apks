package defpackage;

import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class sh2 {
    public static final a f = new a(null);
    public static final AtomicBoolean g = new AtomicBoolean(true);
    public static final AtomicBoolean h = new AtomicBoolean(true);
    public final long a;
    public long b = -1;
    public final AtomicBoolean c = new AtomicBoolean(false);
    public final String d;
    public final AtomicBoolean e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return SystemClock.uptimeMillis();
        }

        public a() {
        }
    }

    public sh2(long j) {
        this.a = j;
        this.d = g.compareAndSet(true, false) ? "Cold" : "Cool";
        this.e = new AtomicBoolean(true);
    }

    public final String a() {
        if (this.e.compareAndSet(true, false)) {
            return h.compareAndSet(true, false) ? "Cold" : "Cool";
        }
        return "Warm";
    }

    public final void b() {
        if (this.b >= 0) {
            return;
        }
        this.b = f.a();
    }

    public final void c(rq4 rq4Var) {
        long j = this.b;
        if (j < 0) {
            return;
        }
        rq4.b(rq4Var, "Div.Context.Create", j - this.a, null, this.d, null, 20, null);
        this.b = -1L;
    }

    public final void d(long j, long j2, rq4 rq4Var, String str) {
        y45.j(rq4Var, "histogramReporter");
        y45.j(str, "viewCreateCallType");
        if (j2 < 0) {
            return;
        }
        rq4.b(rq4Var, "Div.View.Create", j2 - j, null, str, null, 20, null);
        if (this.c.compareAndSet(false, true)) {
            c(rq4Var);
        }
    }
}
