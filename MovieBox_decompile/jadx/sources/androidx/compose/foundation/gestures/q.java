package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.w;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class q {

    private final Orientation f2420a;

    private long f2421b;

    /* JADX WARN: Multi-variable type inference failed */
    public q() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final long b(float f10) {
        if (this.f2420a == null) {
            long j10 = this.f2421b;
            return y.g.q(this.f2421b, y.g.s(y.g.h(j10, y.g.k(j10)), f10));
        }
        float fD = d(this.f2421b) - (Math.signum(d(this.f2421b)) * f10);
        float fC = c(this.f2421b);
        return this.f2420a == Orientation.Horizontal ? y.h.a(fD, fC) : y.h.a(fC, fD);
    }

    public final y.g a(w wVar, float f10) {
        long jR = y.g.r(this.f2421b, y.g.q(wVar.h(), wVar.k()));
        this.f2421b = jR;
        if ((this.f2420a == null ? y.g.k(jR) : Math.abs(d(jR))) >= f10) {
            return y.g.d(b(f10));
        }
        return null;
    }

    public final float c(long j10) {
        return this.f2420a == Orientation.Horizontal ? y.g.n(j10) : y.g.m(j10);
    }

    public final float d(long j10) {
        return this.f2420a == Orientation.Horizontal ? y.g.m(j10) : y.g.n(j10);
    }

    public final void e() {
        this.f2421b = y.g.f75999b.c();
    }

    public q(Orientation orientation) {
        this.f2420a = orientation;
        this.f2421b = y.g.f75999b.c();
    }

    public q(Orientation orientation, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : orientation);
    }
}
