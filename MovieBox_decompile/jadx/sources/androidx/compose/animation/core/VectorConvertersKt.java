package androidx.compose.animation.core;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.ranges.RangesKt;

public abstract class VectorConvertersKt {

    private static final s0 f2081a = a(new Function1<Float, k>() {
        public final k invoke(float f10) {
            return new k(f10);
        }

        @Override
        public Object invoke(Object obj) {
            return invoke(((Number) obj).floatValue());
        }
    }, new Function1<k, Float>() {
        @Override
        public final Float invoke(k kVar) {
            return Float.valueOf(kVar.f());
        }
    });

    private static final s0 f2082b = a(new Function1<Integer, k>() {
        public final k invoke(int i10) {
            return new k(i10);
        }

        @Override
        public Object invoke(Object obj) {
            return invoke(((Number) obj).intValue());
        }
    }, new Function1<k, Integer>() {
        @Override
        public final Integer invoke(k kVar) {
            return Integer.valueOf((int) kVar.f());
        }
    });

    private static final s0 f2083c = a(new Function1<o0.i, k>() {
        @Override
        public Object invoke(Object obj) {
            return m10invoke0680j_4(((o0.i) obj).l());
        }

        public final k m10invoke0680j_4(float f10) {
            return new k(f10);
        }
    }, new Function1<k, o0.i>() {
        @Override
        public Object invoke(Object obj) {
            return o0.i.d(m11invokeu2uoSUM((k) obj));
        }

        public final float m11invokeu2uoSUM(k kVar) {
            return o0.i.g(kVar.f());
        }
    });

    private static final s0 f2084d = a(new Function1<o0.k, l>() {
        @Override
        public Object invoke(Object obj) {
            return m8invokejoFl9I(((o0.k) obj).h());
        }

        public final l m8invokejoFl9I(long j10) {
            return new l(o0.k.d(j10), o0.k.e(j10));
        }
    }, new Function1<l, o0.k>() {
        @Override
        public Object invoke(Object obj) {
            return o0.k.a(m9invokegVRvYmI((l) obj));
        }

        public final long m9invokegVRvYmI(l lVar) {
            return o0.j.a(o0.i.g(lVar.f()), o0.i.g(lVar.g()));
        }
    });

    private static final s0 f2085e = a(new Function1<y.m, l>() {
        @Override
        public Object invoke(Object obj) {
            return m18invokeuvyYCjk(((y.m) obj).m());
        }

        public final l m18invokeuvyYCjk(long j10) {
            return new l(y.m.i(j10), y.m.g(j10));
        }
    }, new Function1<l, y.m>() {
        @Override
        public Object invoke(Object obj) {
            return y.m.c(m19invoke7Ah8Wj8((l) obj));
        }

        public final long m19invoke7Ah8Wj8(l lVar) {
            return y.n.a(lVar.f(), lVar.g());
        }
    });

    private static final s0 f2086f = a(new Function1<y.g, l>() {
        @Override
        public Object invoke(Object obj) {
            return m16invokek4lQ0M(((y.g) obj).v());
        }

        public final l m16invokek4lQ0M(long j10) {
            return new l(y.g.m(j10), y.g.n(j10));
        }
    }, new Function1<l, y.g>() {
        @Override
        public Object invoke(Object obj) {
            return y.g.d(m17invoketuRUvjQ((l) obj));
        }

        public final long m17invoketuRUvjQ(l lVar) {
            return y.h.a(lVar.f(), lVar.g());
        }
    });

    private static final s0 f2087g = a(new Function1<o0.p, l>() {
        @Override
        public Object invoke(Object obj) {
            return m12invokegyyYBs(((o0.p) obj).n());
        }

        public final l m12invokegyyYBs(long j10) {
            return new l(o0.p.h(j10), o0.p.i(j10));
        }
    }, new Function1<l, o0.p>() {
        @Override
        public Object invoke(Object obj) {
            return o0.p.b(m13invokeBjo55l4((l) obj));
        }

        public final long m13invokeBjo55l4(l lVar) {
            return o0.q.a(Math.round(lVar.f()), Math.round(lVar.g()));
        }
    });

    private static final s0 f2088h = a(new Function1<o0.t, l>() {
        @Override
        public Object invoke(Object obj) {
            return m14invokeozmzZPI(((o0.t) obj).j());
        }

        public final l m14invokeozmzZPI(long j10) {
            return new l(o0.t.g(j10), o0.t.f(j10));
        }
    }, new Function1<l, o0.t>() {
        @Override
        public Object invoke(Object obj) {
            return o0.t.b(m15invokeYEO4UFw((l) obj));
        }

        public final long m15invokeYEO4UFw(l lVar) {
            return o0.u.a(RangesKt.e(Math.round(lVar.f()), 0), RangesKt.e(Math.round(lVar.g()), 0));
        }
    });

    private static final s0 f2089i = a(new Function1<y.i, n>() {
        @Override
        public final n invoke(y.i iVar) {
            return new n(iVar.f(), iVar.i(), iVar.g(), iVar.c());
        }
    }, new Function1<n, y.i>() {
        @Override
        public final y.i invoke(n nVar) {
            return new y.i(nVar.f(), nVar.g(), nVar.h(), nVar.i());
        }
    });

    public static final s0 a(Function1 function1, Function1 function2) {
        return new t0(function1, function2);
    }

    public static final s0 b(FloatCompanionObject floatCompanionObject) {
        return f2081a;
    }

    public static final s0 c(IntCompanionObject intCompanionObject) {
        return f2082b;
    }

    public static final s0 d(o0.i.a aVar) {
        return f2083c;
    }

    public static final s0 e(o0.k.a aVar) {
        return f2084d;
    }

    public static final s0 f(o0.p.a aVar) {
        return f2087g;
    }

    public static final s0 g(o0.t.a aVar) {
        return f2088h;
    }

    public static final s0 h(y.g.a aVar) {
        return f2086f;
    }

    public static final s0 i(y.i.a aVar) {
        return f2089i;
    }

    public static final s0 j(y.m.a aVar) {
        return f2085e;
    }

    public static final float k(float f10, float f11, float f12) {
        return (f10 * (1 - f12)) + (f11 * f12);
    }
}
