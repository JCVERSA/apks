package defpackage;

import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.a;

public class x29 extends a implements ok1 {
    public final wh1<Object> uCont;

    public x29(d dVar, wh1 wh1Var) {
        super(dVar, true, true);
        this.uCont = wh1Var;
    }

    @Override
    public void afterCompletion(Object obj) {
        jc2.b(IntrinsicsKt__IntrinsicsJvmKt.c(this.uCont), wb1.a(obj, this.uCont));
    }

    @Override
    public void afterResume(Object obj) {
        wh1<Object> wh1Var = this.uCont;
        wh1Var.resumeWith(wb1.a(obj, wh1Var));
    }

    @Override
    public final ok1 getCallerFrame() {
        wh1<Object> wh1Var = this.uCont;
        if (wh1Var instanceof ok1) {
            return (ok1) wh1Var;
        }
        return null;
    }

    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override
    public final boolean isScopedCoroutine() {
        return true;
    }
}
