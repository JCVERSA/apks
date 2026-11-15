package androidx.compose.ui.input.pointer.util;

import e0.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import o0.a0;
import o0.z;
import y.g;

public final class a {

    private final VelocityTracker1D.Strategy f4741a;

    private final VelocityTracker1D f4742b;

    private final VelocityTracker1D f4743c;

    private long f4744d;

    private long f4745e;

    public a() {
        VelocityTracker1D.Strategy strategy = c.h() ? VelocityTracker1D.Strategy.Impulse : VelocityTracker1D.Strategy.Lsq2;
        this.f4741a = strategy;
        boolean z10 = false;
        int i10 = 1;
        DefaultConstructorMarker defaultConstructorMarker = null;
        this.f4742b = new VelocityTracker1D(z10, strategy, i10, defaultConstructorMarker);
        this.f4743c = new VelocityTracker1D(z10, strategy, i10, defaultConstructorMarker);
        this.f4744d = g.f75999b.c();
    }

    public final void a(long j10, long j11) {
        this.f4742b.a(j10, g.m(j11));
        this.f4743c.a(j10, g.n(j11));
    }

    public final long b(long j10) {
        if (!(z.h(j10) > 0.0f && z.i(j10) > 0.0f)) {
            g0.a.b("maximumVelocity should be a positive value. You specified=" + ((Object) z.m(j10)));
        }
        return a0.a(this.f4742b.d(z.h(j10)), this.f4743c.d(z.i(j10)));
    }

    public final long c() {
        return this.f4744d;
    }

    public final long d() {
        return this.f4745e;
    }

    public final void e() {
        this.f4742b.e();
        this.f4743c.e();
        this.f4745e = 0L;
    }

    public final void f(long j10) {
        this.f4744d = j10;
    }

    public final void g(long j10) {
        this.f4745e = j10;
    }
}
