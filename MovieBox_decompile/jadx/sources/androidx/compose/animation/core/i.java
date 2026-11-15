package androidx.compose.animation.core;

import androidx.compose.runtime.a3;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class i implements a3 {

    private final s0 f2141a;

    private final i1 f2142b;

    private o f2143c;

    private long f2144d;

    private long f2145e;

    private boolean f2146f;

    public i(s0 s0Var, Object obj, o oVar, long j10, long j11, boolean z10) {
        o oVarE;
        this.f2141a = s0Var;
        this.f2142b = u2.c(obj, null, 2, null);
        this.f2143c = (oVar == null || (oVarE = p.e(oVar)) == null) ? j.i(s0Var, obj) : oVarE;
        this.f2144d = j10;
        this.f2145e = j11;
        this.f2146f = z10;
    }

    public final long c() {
        return this.f2145e;
    }

    public final long d() {
        return this.f2144d;
    }

    public final s0 e() {
        return this.f2141a;
    }

    public final Object f() {
        return this.f2141a.b().invoke(this.f2143c);
    }

    public final o g() {
        return this.f2143c;
    }

    @Override
    public Object getValue() {
        return this.f2142b.getValue();
    }

    public final boolean h() {
        return this.f2146f;
    }

    public final void i(long j10) {
        this.f2145e = j10;
    }

    public final void j(long j10) {
        this.f2144d = j10;
    }

    public final void k(boolean z10) {
        this.f2146f = z10;
    }

    public void l(Object obj) {
        this.f2142b.setValue(obj);
    }

    public final void m(o oVar) {
        this.f2143c = oVar;
    }

    public String toString() {
        return "AnimationState(value=" + getValue() + ", velocity=" + f() + ", isRunning=" + this.f2146f + ", lastFrameTimeNanos=" + this.f2144d + ", finishedTimeNanos=" + this.f2145e + ')';
    }

    public i(s0 s0Var, Object obj, o oVar, long j10, long j11, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(s0Var, obj, (i10 & 4) != 0 ? null : oVar, (i10 & 8) != 0 ? Long.MIN_VALUE : j10, (i10 & 16) != 0 ? Long.MIN_VALUE : j11, (i10 & 32) != 0 ? false : z10);
    }
}
