package com.transsion.postdetail.viewmodel.ugcfavorite;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.postdetail.bean.favorite.FeedFavorData;
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
import np.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.ugcfavorite.UgcFavoriteViewModel$getUgcVideoFavoriteList$1", f = "UgcFavoriteViewModel.kt", l = {Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE}, m = "invokeSuspend")
final class UgcFavoriteViewModel$getUgcVideoFavoriteList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $page;
    final String $userId;
    int label;
    final UgcFavoriteViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UgcFavoriteViewModel$getUgcVideoFavoriteList$1(UgcFavoriteViewModel ugcFavoriteViewModel, String str, String str2, Continuation<? super UgcFavoriteViewModel$getUgcVideoFavoriteList$1> continuation) {
        super(2, continuation);
        this.this$0 = ugcFavoriteViewModel;
        this.$page = str;
        this.$userId = str2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UgcFavoriteViewModel$getUgcVideoFavoriteList$1(this.this$0, this.$page, this.$userId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List<UGCVideo> items;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                a aVar = this.this$0.f48175d;
                String strA = gg.a.f61067a.a();
                String str = this.$page;
                int i11 = UgcFavoriteViewModel.f48172i;
                String str2 = this.$userId;
                this.label = 1;
                obj = aVar.a(strA, str, i11, str2, this);
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
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "subscription", "favorite data " + baseDto, false, 4, null);
            FeedFavorData feedFavorData = (FeedFavorData) baseDto.getData();
            wf.a.C0922a.f(c0922a, "subscription", "favorite data size " + ((feedFavorData == null || (items = feedFavorData.getItems()) == null) ? null : Boxing.d(items.size())), false, 4, null);
            this.this$0.e().n(baseDto.getData());
        } catch (Exception e10) {
            e10.printStackTrace();
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String simpleName = UgcFavoriteViewModel.class.getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            c0922a2.i(simpleName, "exceptionHandler " + e10.getMessage(), true);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UgcFavoriteViewModel$getUgcVideoFavoriteList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
