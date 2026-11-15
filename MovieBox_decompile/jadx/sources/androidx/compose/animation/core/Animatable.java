package androidx.compose.animation.core;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class Animatable {

    private final s0 f2065a;

    private final Object f2066b;

    private final String f2067c;

    private final i f2068d;

    private final i1 f2069e;

    private final i1 f2070f;

    private final MutatorMutex f2071g;

    private final o0 f2072h;

    private final o f2073i;

    private final o f2074j;

    private o f2075k;

    private o f2076l;

    public Animatable(Object obj, s0 s0Var, Object obj2, String str) {
        this.f2065a = s0Var;
        this.f2066b = obj2;
        this.f2067c = str;
        this.f2068d = new i(s0Var, obj, null, 0L, 0L, false, 60, null);
        this.f2069e = u2.c(Boolean.FALSE, null, 2, null);
        this.f2070f = u2.c(obj, null, 2, null);
        this.f2071g = new MutatorMutex();
        this.f2072h = new o0(0.0f, 0.0f, obj2, 3, null);
        o oVarM = m();
        o oVar = oVarM instanceof k ? a.f2094e : oVarM instanceof l ? a.f2095f : oVarM instanceof m ? a.f2096g : a.f2097h;
        Intrinsics.f(oVar, "null cannot be cast to non-null type V of androidx.compose.animation.core.Animatable");
        this.f2073i = oVar;
        o oVarM2 = m();
        o oVar2 = oVarM2 instanceof k ? a.f2090a : oVarM2 instanceof l ? a.f2091b : oVarM2 instanceof m ? a.f2092c : a.f2093d;
        Intrinsics.f(oVar2, "null cannot be cast to non-null type V of androidx.compose.animation.core.Animatable");
        this.f2074j = oVar2;
        this.f2075k = oVar;
        this.f2076l = oVar2;
    }

    public static Object f(Animatable animatable, Object obj, g gVar, Object obj2, Function1 function1, Continuation continuation, int i10, Object obj3) {
        if ((i10 & 2) != 0) {
            gVar = animatable.f2072h;
        }
        g gVar2 = gVar;
        if ((i10 & 4) != 0) {
            obj2 = animatable.l();
        }
        Object obj4 = obj2;
        if ((i10 & 8) != 0) {
            function1 = null;
        }
        return animatable.e(obj, gVar2, obj4, function1, continuation);
    }

    public final Object g(Object obj) {
        if (Intrinsics.c(this.f2075k, this.f2073i) && Intrinsics.c(this.f2076l, this.f2074j)) {
            return obj;
        }
        o oVar = (o) this.f2065a.a().invoke(obj);
        int iB = oVar.b();
        boolean z10 = false;
        for (int i10 = 0; i10 < iB; i10++) {
            if (oVar.a(i10) < this.f2075k.a(i10) || oVar.a(i10) > this.f2076l.a(i10)) {
                oVar.e(i10, RangesKt.k(oVar.a(i10), this.f2075k.a(i10), this.f2076l.a(i10)));
                z10 = true;
            }
        }
        return z10 ? this.f2065a.b().invoke(oVar) : obj;
    }

    public final void h() {
        i iVar = this.f2068d;
        iVar.g().d();
        iVar.j(Long.MIN_VALUE);
        o(false);
    }

    private final Object n(c cVar, Object obj, Function1 function1, Continuation continuation) {
        return MutatorMutex.e(this.f2071g, null, new Animatable$runAnimation$2(this, obj, cVar, this.f2068d.d(), function1, null), continuation, 1, null);
    }

    public final void o(boolean z10) {
        this.f2069e.setValue(Boolean.valueOf(z10));
    }

    public final void p(Object obj) {
        this.f2070f.setValue(obj);
    }

    public final Object e(Object obj, g gVar, Object obj2, Function1 function1, Continuation continuation) {
        return n(d.a(gVar, this.f2065a, k(), obj, obj2), obj2, function1, continuation);
    }

    public final i i() {
        return this.f2068d;
    }

    public final s0 j() {
        return this.f2065a;
    }

    public final Object k() {
        return this.f2068d.getValue();
    }

    public final Object l() {
        return this.f2065a.b().invoke(m());
    }

    public final o m() {
        return this.f2068d.g();
    }

    public Animatable(Object obj, s0 s0Var, Object obj2, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, s0Var, (i10 & 4) != 0 ? null : obj2, (i10 & 8) != 0 ? "Animatable" : str);
    }
}
