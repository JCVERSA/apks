package androidx.compose.animation.core;

import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;

public abstract class g1 {

    private static final y.i f2139a;

    private static final Map f2140b;

    static {
        Float fValueOf = Float.valueOf(0.5f);
        f2139a = new y.i(0.5f, 0.5f, 0.5f, 0.5f);
        s0 s0VarC = VectorConvertersKt.c(IntCompanionObject.f64317a);
        Float fValueOf2 = Float.valueOf(1.0f);
        Pair pairA = TuplesKt.a(s0VarC, fValueOf2);
        Pair pairA2 = TuplesKt.a(VectorConvertersKt.g(o0.t.f67425b), fValueOf2);
        Pair pairA3 = TuplesKt.a(VectorConvertersKt.f(o0.p.f67416b), fValueOf2);
        Pair pairA4 = TuplesKt.a(VectorConvertersKt.b(FloatCompanionObject.f64316a), Float.valueOf(0.01f));
        Pair pairA5 = TuplesKt.a(VectorConvertersKt.i(y.i.f76004e), fValueOf);
        Pair pairA6 = TuplesKt.a(VectorConvertersKt.j(y.m.f76020b), fValueOf);
        Pair pairA7 = TuplesKt.a(VectorConvertersKt.h(y.g.f75999b), fValueOf);
        s0 s0VarD = VectorConvertersKt.d(o0.i.f67404b);
        Float fValueOf3 = Float.valueOf(0.1f);
        f2140b = MapsKt.l(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, TuplesKt.a(s0VarD, fValueOf3), TuplesKt.a(VectorConvertersKt.e(o0.k.f67409b), fValueOf3));
    }

    public static final float a(o0.i.a aVar) {
        return o0.i.g(0.1f);
    }

    public static final long b(y.g.a aVar) {
        return y.h.a(0.5f, 0.5f);
    }

    public static final long c(y.m.a aVar) {
        return y.n.a(0.5f, 0.5f);
    }

    public static final y.i d(y.i.a aVar) {
        return f2139a;
    }
}
