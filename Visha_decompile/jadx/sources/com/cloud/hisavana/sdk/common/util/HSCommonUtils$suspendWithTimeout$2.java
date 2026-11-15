package com.cloud.hisavana.sdk.common.util;

import defpackage.e74;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.pt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.CancellableContinuationImpl;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lnk1;", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@nt1(c = "com.cloud.hisavana.sdk.common.util.HSCommonUtils$suspendWithTimeout$2", f = "HSCommonUtils.kt", l = {495}, m = "invokeSuspend")
public final class HSCommonUtils$suspendWithTimeout$2 extends SuspendLambda implements s74 {
    final e74 $block;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HSCommonUtils$suspendWithTimeout$2(e74 e74Var, wh1<? super HSCommonUtils$suspendWithTimeout$2> wh1Var) {
        super(2, wh1Var);
        this.$block = e74Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new HSCommonUtils$suspendWithTimeout$2(this.$block, wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            e74 e74Var = this.$block;
            this.L$0 = e74Var;
            this.label = 1;
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(this), 1);
            cancellableContinuationImpl.initCancellability();
            e74Var.invoke(new e74() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj2) {
                    m69invoke(obj2);
                    return zfb.a;
                }

                public final void m69invoke(Object obj2) {
                    if (cancellableContinuationImpl.isActive()) {
                        cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(obj2));
                    }
                }
            });
            obj = cancellableContinuationImpl.getResult();
            if (obj == z45.f()) {
                pt1.c(this);
            }
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return obj;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<Object> wh1Var) {
        return ((HSCommonUtils$suspendWithTimeout$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }
}
