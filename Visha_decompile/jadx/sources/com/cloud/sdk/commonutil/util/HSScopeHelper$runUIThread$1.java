package com.cloud.sdk.commonutil.util;

import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
@nt1(c = "com.cloud.sdk.commonutil.util.HSScopeHelper$runUIThread$1", f = "HSScopeHelper.kt", l = {}, m = "invokeSuspend")
public final class HSScopeHelper$runUIThread$1 extends SuspendLambda implements s74 {
    final Runnable $runnable;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HSScopeHelper$runUIThread$1(Runnable runnable, wh1<? super HSScopeHelper$runUIThread$1> wh1Var) {
        super(2, wh1Var);
        this.$runnable = runnable;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new HSScopeHelper$runUIThread$1(this.$runnable, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((HSScopeHelper$runUIThread$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        this.$runnable.run();
        return zfb.a;
    }
}
