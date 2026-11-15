package defpackage;

import kotlin.Result;
import kotlin.a;
import kotlin.c;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

public final class qu1 extends pu1 implements wh1 {
    public u74 b;
    public Object c;
    public wh1 d;
    public Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qu1(u74 u74Var, Object obj) {
        super(null);
        y45.j(u74Var, "block");
        this.b = u74Var;
        this.c = obj;
        y45.h(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.d = this;
        this.e = a.a;
    }

    @Override
    public Object a(Object obj, wh1 wh1Var) {
        y45.h(wh1Var, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.d = wh1Var;
        this.c = obj;
        Object objF = z45.f();
        if (objF == z45.f()) {
            pt1.c(wh1Var);
        }
        return objF;
    }

    public final Object b() {
        while (true) {
            Object obj = this.e;
            wh1 wh1Var = this.d;
            if (wh1Var == null) {
                c.b(obj);
                return obj;
            }
            if (Result.m281equalsimpl0(a.a, obj)) {
                try {
                    u74 u74Var = this.b;
                    Object obj2 = this.c;
                    Object objE = !(u74Var instanceof BaseContinuationImpl) ? IntrinsicsKt__IntrinsicsJvmKt.e(u74Var, this, obj2, wh1Var) : ((u74) ccb.f(u74Var, 3)).invoke(this, obj2, wh1Var);
                    if (objE != z45.f()) {
                        wh1Var.resumeWith(Result.m279constructorimpl(objE));
                    }
                } catch (Throwable th) {
                    Result.Companion companion = Result.INSTANCE;
                    wh1Var.resumeWith(Result.m279constructorimpl(c.a(th)));
                }
            } else {
                this.e = a.a;
                wh1Var.resumeWith(obj);
            }
        }
    }

    @Override
    public d getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override
    public void resumeWith(Object obj) {
        this.d = null;
        this.e = obj;
    }
}
