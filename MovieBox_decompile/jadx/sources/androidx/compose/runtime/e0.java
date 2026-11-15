package androidx.compose.runtime;

import kotlin.jvm.functions.Function0;

public final class e0 extends s1 {

    private final q2 f3384b;

    public e0(q2 q2Var, Function0 function0) {
        super(function0);
        this.f3384b = q2Var;
    }

    @Override
    public t1 c(Object obj) {
        return new t1(this, obj, obj == null, this.f3384b, null, null, true);
    }
}
