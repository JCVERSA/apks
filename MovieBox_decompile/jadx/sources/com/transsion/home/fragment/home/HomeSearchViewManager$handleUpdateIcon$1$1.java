package com.transsion.home.fragment.home;

import android.app.Activity;
import android.content.Context;
import com.transsion.version.update.UpdateManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.fragment.home.HomeSearchViewManager$handleUpdateIcon$1$1", f = "HomeSearchViewManager.kt", l = {Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE}, m = "invokeSuspend")
final class HomeSearchViewManager$handleUpdateIcon$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final HomeSearchViewManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HomeSearchViewManager$handleUpdateIcon$1$1(HomeSearchViewManager homeSearchViewManager, Continuation<? super HomeSearchViewManager$handleUpdateIcon$1$1> continuation) {
        super(2, continuation);
        this.this$0 = homeSearchViewManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HomeSearchViewManager$handleUpdateIcon$1$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            UpdateManager updateManagerA = UpdateManager.f55354f.a();
            Context context = this.this$0.f43944d;
            if (context == null) {
                Intrinsics.y("context");
                context = null;
            }
            this.label = 1;
            obj = updateManagerA.i((Activity) context, "app_center", "wefeed-mobile-bff", "", true, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        wf.a.C0922a.f(wf.a.f74274a, "update", "checkUpdate " + zBooleanValue, false, 4, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HomeSearchViewManager$handleUpdateIcon$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
