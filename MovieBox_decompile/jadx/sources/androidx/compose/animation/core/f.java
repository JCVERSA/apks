package androidx.compose.animation.core;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.jvm.functions.Function0;

public final class f {

    private final s0 f2117a;

    private final Object f2118b;

    private final long f2119c;

    private final Function0 f2120d;

    private final i1 f2121e;

    private o f2122f;

    private long f2123g;

    private long f2124h = Long.MIN_VALUE;

    private final i1 f2125i;

    public f(Object obj, s0 s0Var, o oVar, long j10, Object obj2, long j11, boolean z10, Function0 function0) {
        this.f2117a = s0Var;
        this.f2118b = obj2;
        this.f2119c = j11;
        this.f2120d = function0;
        this.f2121e = u2.c(obj, null, 2, null);
        this.f2122f = p.e(oVar);
        this.f2123g = j10;
        this.f2125i = u2.c(Boolean.valueOf(z10), null, 2, null);
    }

    public final void a() {
        k(false);
        this.f2120d.invoke();
    }

    public final long b() {
        return this.f2124h;
    }

    public final long c() {
        return this.f2123g;
    }

    public final long d() {
        return this.f2119c;
    }

    public final Object e() {
        return this.f2121e.getValue();
    }

    public final Object f() {
        return this.f2117a.b().invoke(this.f2122f);
    }

    public final o g() {
        return this.f2122f;
    }

    public final boolean h() {
        return ((Boolean) this.f2125i.getValue()).booleanValue();
    }

    public final void i(long j10) {
        this.f2124h = j10;
    }

    public final void j(long j10) {
        this.f2123g = j10;
    }

    public final void k(boolean z10) {
        this.f2125i.setValue(Boolean.valueOf(z10));
    }

    public final void l(Object obj) {
        this.f2121e.setValue(obj);
    }

    public final void m(o oVar) {
        this.f2122f = oVar;
    }
}
