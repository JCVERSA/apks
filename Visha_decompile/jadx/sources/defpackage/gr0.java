package defpackage;

import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

public abstract class gr0 {
    public static final void a(wh1 wh1Var, Throwable th) throws Throwable {
        Result.Companion companion = Result.INSTANCE;
        wh1Var.resumeWith(Result.m279constructorimpl(c.a(th)));
        throw th;
    }

    public static final void b(wh1 wh1Var, wh1 wh1Var2) throws Throwable {
        try {
            wh1 wh1VarC = IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var);
            Result.Companion companion = Result.INSTANCE;
            jc2.b(wh1VarC, Result.m279constructorimpl(zfb.a));
        } catch (Throwable th) {
            a(wh1Var2, th);
        }
    }

    public static final void c(s74 s74Var, Object obj, wh1 wh1Var) {
        try {
            wh1 wh1VarC = IntrinsicsKt__IntrinsicsJvmKt.c(IntrinsicsKt__IntrinsicsJvmKt.a(s74Var, obj, wh1Var));
            Result.Companion companion = Result.INSTANCE;
            jc2.b(wh1VarC, Result.m279constructorimpl(zfb.a));
        } catch (Throwable th) {
            a(wh1Var, th);
        }
    }
}
