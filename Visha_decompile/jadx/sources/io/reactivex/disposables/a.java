package io.reactivex.disposables;

import defpackage.ac7;
import defpackage.d5;
import defpackage.rc2;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;

public abstract class a {
    public static rc2 a() {
        return EmptyDisposable.INSTANCE;
    }

    public static rc2 b() {
        return d(Functions.b);
    }

    public static rc2 c(d5 d5Var) {
        ac7.d(d5Var, "run is null");
        return new ActionDisposable(d5Var);
    }

    public static rc2 d(Runnable runnable) {
        ac7.d(runnable, "run is null");
        return new RunnableDisposable(runnable);
    }
}
