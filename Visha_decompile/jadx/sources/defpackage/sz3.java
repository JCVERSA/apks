package defpackage;

import kotlin.coroutines.d;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.FlowKt__ChannelsKt;
import kotlinx.coroutines.flow.FlowKt__EmittersKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt;
import kotlinx.coroutines.flow.FlowKt__ReduceKt;
import kotlinx.coroutines.flow.FlowKt__ShareKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt;
import kotlinx.coroutines.flow.a;

public abstract class sz3 {
    public static final nz3 A(nz3 nz3Var, s74 s74Var) {
        return FlowKt__LimitKt.b(nz3Var, s74Var);
    }

    public static final nz3 B(nz3 nz3Var, u74 u74Var) {
        return FlowKt__MergeKt.b(nz3Var, u74Var);
    }

    public static final gx9 a(mw6 mw6Var) {
        return FlowKt__ShareKt.a(mw6Var);
    }

    public static final nz3 b(nz3 nz3Var, int i, BufferOverflow bufferOverflow) {
        return h04.a(nz3Var, i, bufferOverflow);
    }

    public static final nz3 d(s74 s74Var) {
        return d04.a(s74Var);
    }

    public static final nz3 e(s74 s74Var) {
        return d04.b(s74Var);
    }

    public static final Object f(nz3 nz3Var, wh1 wh1Var) {
        return g04.a(nz3Var, wh1Var);
    }

    public static final Object g(nz3 nz3Var, s74 s74Var, wh1 wh1Var) {
        return g04.b(nz3Var, s74Var, wh1Var);
    }

    public static final nz3 h(nz3 nz3Var) {
        return h04.d(nz3Var);
    }

    public static final nz3 i(nz3 nz3Var) {
        return k04.e(nz3Var);
    }

    public static final nz3 j(nz3 nz3Var, e74 e74Var) {
        return k04.f(nz3Var, e74Var);
    }

    public static final nz3 k(nz3 nz3Var, s74 s74Var) {
        return FlowKt__LimitKt.a(nz3Var, s74Var);
    }

    public static final Object l(oz3 oz3Var, nz3 nz3Var, wh1 wh1Var) {
        return g04.c(oz3Var, nz3Var, wh1Var);
    }

    public static final Object m(oz3 oz3Var, qo8 qo8Var, wh1 wh1Var) {
        return FlowKt__ChannelsKt.b(oz3Var, qo8Var, wh1Var);
    }

    public static final void n(oz3 oz3Var) {
        FlowKt__EmittersKt.b(oz3Var);
    }

    public static final Object o(nz3 nz3Var, wh1 wh1Var) {
        return FlowKt__ReduceKt.a(nz3Var, wh1Var);
    }

    public static final Object p(nz3 nz3Var, s74 s74Var, wh1 wh1Var) {
        return FlowKt__ReduceKt.b(nz3Var, s74Var, wh1Var);
    }

    public static final Object q(nz3 nz3Var, wh1 wh1Var) {
        return FlowKt__ReduceKt.c(nz3Var, wh1Var);
    }

    public static final nz3 r(s74 s74Var) {
        return d04.c(s74Var);
    }

    public static final nz3 s(nz3 nz3Var, nz3 nz3Var2, u74 u74Var) {
        return FlowKt__ZipKt.b(nz3Var, nz3Var2, u74Var);
    }

    public static final nz3 t(Object obj) {
        return d04.d(obj);
    }

    public static final nz3 u(nz3 nz3Var, d dVar) {
        return h04.e(nz3Var, dVar);
    }

    public static final nz3 v(nz3 nz3Var, s74 s74Var) {
        return FlowKt__MergeKt.a(nz3Var, s74Var);
    }

    public static final nz3 w(nz3 nz3Var, u74 u74Var) {
        return FlowKt__EmittersKt.d(nz3Var, u74Var);
    }

    public static final nz3 x(nz3 nz3Var, s74 s74Var) {
        return FlowKt__EmittersKt.e(nz3Var, s74Var);
    }

    public static final nz3 y(qo8 qo8Var) {
        return FlowKt__ChannelsKt.d(qo8Var);
    }

    public static final gx9 z(nz3 nz3Var, nk1 nk1Var, a aVar, Object obj) {
        return FlowKt__ShareKt.d(nz3Var, nk1Var, aVar, obj);
    }
}
