package com.transsion.baselib.net;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.therouter.TheRouter;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.baselib.net.AppLifeStatusInterceptor$requestForBackToForeground$1", f = "AppLifeStatusInterceptor.kt", l = {RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH}, m = "invokeSuspend")
final class AppLifeStatusInterceptor$requestForBackToForeground$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    AppLifeStatusInterceptor$requestForBackToForeground$1(Continuation<? super AppLifeStatusInterceptor$requestForBackToForeground$1> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AppLifeStatusInterceptor$requestForBackToForeground$1(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            bm.e.p(bm.e.f15845a, null, null, 3, null);
            vw.b bVar = (vw.b) TheRouter.d(vw.b.class, new Object[0]);
            if (bVar != null) {
                this.label = 1;
                if (bVar.c(this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        im.b bVar2 = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar2 != null) {
            im.b.a.a(bVar2, null, 1, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AppLifeStatusInterceptor$requestForBackToForeground$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
