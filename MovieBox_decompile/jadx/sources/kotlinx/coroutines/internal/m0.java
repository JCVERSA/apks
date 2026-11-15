package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.m2;

final class m0 {

    public final CoroutineContext f64907a;

    private final Object[] f64908b;

    private final m2[] f64909c;

    private int f64910d;

    public m0(CoroutineContext coroutineContext, int i10) {
        this.f64907a = coroutineContext;
        this.f64908b = new Object[i10];
        this.f64909c = new m2[i10];
    }

    public final void a(m2 m2Var, Object obj) {
        Object[] objArr = this.f64908b;
        int i10 = this.f64910d;
        objArr[i10] = obj;
        m2[] m2VarArr = this.f64909c;
        this.f64910d = i10 + 1;
        Intrinsics.f(m2Var, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        m2VarArr[i10] = m2Var;
    }

    public final void b(CoroutineContext coroutineContext) {
        int length = this.f64909c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i10 = length - 1;
            m2 m2Var = this.f64909c[length];
            Intrinsics.e(m2Var);
            m2Var.k(coroutineContext, this.f64908b[length]);
            if (i10 < 0) {
                return;
            } else {
                length = i10;
            }
        }
    }
}
