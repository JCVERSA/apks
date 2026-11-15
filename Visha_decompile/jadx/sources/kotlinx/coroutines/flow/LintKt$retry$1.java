package kotlinx.coroutines.flow;

import defpackage.mk0;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "<anonymous>", "(Ljava/lang/Throwable;)Z"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.LintKt$retry$1", f = "Lint.kt", l = {}, m = "invokeSuspend")
public final class LintKt$retry$1 extends SuspendLambda implements s74 {
    int label;

    public LintKt$retry$1(wh1<? super LintKt$retry$1> wh1Var) {
        super(2, wh1Var);
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new LintKt$retry$1(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        return mk0.a(true);
    }

    @Override
    public final Object invoke(Throwable th, wh1<? super Boolean> wh1Var) {
        return ((LintKt$retry$1) create(th, wh1Var)).invokeSuspend(zfb.a);
    }
}
