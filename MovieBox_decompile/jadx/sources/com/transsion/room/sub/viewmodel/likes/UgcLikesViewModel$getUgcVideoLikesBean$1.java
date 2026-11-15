package com.transsion.room.sub.viewmodel.likes;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.room.sub.bean.likes.GetUgcVideoLikesBean;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import wf.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.sub.viewmodel.likes.UgcLikesViewModel$getUgcVideoLikesBean$1", f = "UgcLikesViewModel.kt", l = {Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE}, m = "invokeSuspend")
final class UgcLikesViewModel$getUgcVideoLikesBean$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $page;
    final String $userId;
    int label;
    final UgcLikesViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UgcLikesViewModel$getUgcVideoLikesBean$1(String str, String str2, UgcLikesViewModel ugcLikesViewModel, Continuation<? super UgcLikesViewModel$getUgcVideoLikesBean$1> continuation) {
        super(2, continuation);
        this.$page = str;
        this.$userId = str2;
        this.this$0 = ugcLikesViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UgcLikesViewModel$getUgcVideoLikesBean$1(this.$page, this.$userId, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List<UGCVideo> items;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                a.C0922a c0922a = a.f74274a;
                a.C0922a.f(c0922a, "UgcLikesViewModel", "Likes page:" + this.$page, false, 4, null);
                a.C0922a.f(c0922a, "UgcLikesViewModel", "Likes perPage:" + UgcLikesViewModel.f49759j, false, 4, null);
                a.C0922a.f(c0922a, "UgcLikesViewModel", "Likes userId:" + this.$userId, false, 4, null);
                op.a aVar = this.this$0.f49762d;
                String strA = gg.a.f61067a.a();
                String str = this.$page;
                int i11 = UgcLikesViewModel.f49759j;
                String str2 = this.$userId;
                this.label = 1;
                obj = aVar.b(strA, str, i11, str2, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            a.C0922a c0922a2 = a.f74274a;
            a.C0922a.f(c0922a2, "UgcLikesViewModel", "Likes getUgcVideoLikesBean " + baseDto, false, 4, null);
            GetUgcVideoLikesBean getUgcVideoLikesBean = (GetUgcVideoLikesBean) baseDto.getData();
            a.C0922a.f(c0922a2, "UgcLikesViewModel", "Likes getUgcVideoLikesBean size:" + ((getUgcVideoLikesBean == null || (items = getUgcVideoLikesBean.getItems()) == null) ? null : Boxing.d(items.size())), false, 4, null);
            this.this$0.f().n(baseDto.getData());
        } catch (Exception e10) {
            e10.printStackTrace();
            a.C0922a c0922a3 = a.f74274a;
            String simpleName = UgcLikesViewModel.class.getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            c0922a3.i(simpleName, "exceptionHandler " + e10.getMessage(), true);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UgcLikesViewModel$getUgcVideoLikesBean$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
