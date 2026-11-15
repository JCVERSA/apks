package defpackage;

import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.internal.operators.maybe.MaybeConcatArray;
import io.reactivex.internal.operators.maybe.MaybeToFlowable;
import java.util.concurrent.Callable;

public abstract class b96 implements l96 {
    public static r14 b(l96 l96Var, l96 l96Var2) {
        ac7.d(l96Var, "source1 is null");
        ac7.d(l96Var2, "source2 is null");
        return c(l96Var, l96Var2);
    }

    public static r14 c(l96... l96VarArr) {
        ac7.d(l96VarArr, "sources is null");
        if (l96VarArr.length == 0) {
            return r14.d();
        }
        return l96VarArr.length == 1 ? yw8.m(new MaybeToFlowable(l96VarArr[0])) : yw8.m(new MaybeConcatArray(l96VarArr));
    }

    public static b96 d(Callable callable) {
        ac7.d(callable, "maybeSupplier is null");
        return yw8.n(new c96(callable));
    }

    public static b96 e() {
        return yw8.n(d96.b);
    }

    public static b96 f(Callable callable) {
        ac7.d(callable, "callable is null");
        return yw8.n(new h96(callable));
    }

    public static b96 g(Object obj) {
        ac7.d(obj, "item is null");
        return yw8.n(new j96(obj));
    }

    @Override
    public final void a(k96 k96Var) {
        ac7.d(k96Var, "observer is null");
        k96 k96VarY = yw8.y(this, k96Var);
        ac7.d(k96VarY, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            j(k96VarY);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            re3.b(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final rc2 h(zf1 zf1Var, zf1 zf1Var2) {
        return i(zf1Var, zf1Var2, Functions.c);
    }

    public final rc2 i(zf1 zf1Var, zf1 zf1Var2, d5 d5Var) {
        ac7.d(zf1Var, "onSuccess is null");
        ac7.d(zf1Var2, "onError is null");
        ac7.d(d5Var, "onComplete is null");
        return (rc2) k(new MaybeCallbackObserver(zf1Var, zf1Var2, d5Var));
    }

    public abstract void j(k96 k96Var);

    public final k96 k(k96 k96Var) {
        a(k96Var);
        return k96Var;
    }

    public final xm9 l() {
        return yw8.p(new m96(this, null));
    }
}
