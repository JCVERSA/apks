package androidx.compose.runtime;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

public final class t1 {

    public static final int f3732i = 8;

    private final q f3733a;

    private final boolean f3734b;

    private final q2 f3735c;

    private final i1 f3736d;

    private final Function1 f3737e;

    private final boolean f3738f;

    private final Object f3739g;

    private boolean f3740h = true;

    public t1(q qVar, Object obj, boolean z10, q2 q2Var, i1 i1Var, Function1 function1, boolean z11) {
        this.f3733a = qVar;
        this.f3734b = z10;
        this.f3735c = q2Var;
        this.f3736d = i1Var;
        this.f3737e = function1;
        this.f3738f = z11;
        this.f3739g = obj;
    }

    public final boolean a() {
        return this.f3740h;
    }

    public final q b() {
        return this.f3733a;
    }

    public final Function1 c() {
        return this.f3737e;
    }

    public final Object d() {
        if (this.f3734b) {
            return null;
        }
        i1 i1Var = this.f3736d;
        if (i1Var != null) {
            return i1Var.getValue();
        }
        Object obj = this.f3739g;
        if (obj != null) {
            return obj;
        }
        k.s("Unexpected form of a provided value");
        throw new KotlinNothingValueException();
    }

    public final q2 e() {
        return this.f3735c;
    }

    public final i1 f() {
        return this.f3736d;
    }

    public final Object g() {
        return this.f3739g;
    }

    public final t1 h() {
        this.f3740h = false;
        return this;
    }

    public final boolean i() {
        return this.f3738f;
    }

    public final boolean j() {
        return (this.f3734b || g() != null) && !this.f3738f;
    }
}
