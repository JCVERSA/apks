package defpackage;

import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

public abstract class yh1 {
    public static final void a(s74 s74Var, Object obj, wh1 wh1Var) {
        y45.j(s74Var, "<this>");
        y45.j(wh1Var, "completion");
        wh1 wh1VarC = IntrinsicsKt__IntrinsicsJvmKt.c(IntrinsicsKt__IntrinsicsJvmKt.a(s74Var, obj, wh1Var));
        Result.Companion companion = Result.INSTANCE;
        wh1VarC.resumeWith(Result.m279constructorimpl(zfb.a));
    }
}
