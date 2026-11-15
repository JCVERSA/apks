package defpackage;

import java.util.Collections;
import java.util.concurrent.Callable;

public abstract class xqh {
    public static final crh a(Callable callable, Object obj, erh erhVar) {
        return b(callable, erhVar.a, obj, erhVar);
    }

    public static final crh b(Callable callable, g8i g8iVar, Object obj, erh erhVar) {
        return new crh(erhVar, obj, erh.d, Collections.emptyList(), g8iVar.m(callable));
    }

    public static final crh c(im5 im5Var, Object obj, erh erhVar) {
        return new crh(erhVar, obj, erh.d, Collections.emptyList(), im5Var);
    }

    public static final crh d(final qqh qqhVar, g8i g8iVar, Object obj, erh erhVar) {
        return b(new Callable() {
            @Override
            public final Object call() {
                qqhVar.zza();
                return null;
            }
        }, g8iVar, obj, erhVar);
    }
}
