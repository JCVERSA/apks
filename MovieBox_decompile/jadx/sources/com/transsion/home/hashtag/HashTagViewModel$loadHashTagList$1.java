package com.transsion.home.hashtag;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;
import yk.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.hashtag.HashTagViewModel$loadHashTagList$1", f = "HashTagViewModel.kt", l = {Sdk$SDKError.Reason.DEEPLINK_OPEN_FAILED_VALUE}, m = "invokeSuspend")
final class HashTagViewModel$loadHashTagList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Set<UGCVideoHashTag> $currentSelectedTags;
    final boolean $isRefresh;
    final int $page;
    final String $tabSort;
    int label;
    final HashTagViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HashTagViewModel$loadHashTagList$1(HashTagViewModel hashTagViewModel, String str, int i10, Set<UGCVideoHashTag> set, boolean z10, Continuation<? super HashTagViewModel$loadHashTagList$1> continuation) {
        super(2, continuation);
        this.this$0 = hashTagViewModel;
        this.$tabSort = str;
        this.$page = i10;
        this.$currentSelectedTags = set;
        this.$isRefresh = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HashTagViewModel$loadHashTagList$1(this.this$0, this.$tabSort, this.$page, this.$currentSelectedTags, this.$isRefresh, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                RequestBody requestBodyL = this.this$0.l(this.$tabSort, this.$page, this.$currentSelectedTags);
                if (requestBodyL != null) {
                    a aVar = this.this$0.f44320c;
                    String strA = gg.a.f61067a.a();
                    this.label = 1;
                    obj = aVar.a(strA, requestBodyL, this);
                    if (obj == objF) {
                        return objF;
                    }
                } else {
                    this.this$0.n(this.$tabSort, this.$currentSelectedTags, this.$isRefresh, "Request body create failed", TmcConstants.COLD_OPEN_TYPE);
                }
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.this$0.o(this.$tabSort, this.$page, this.$currentSelectedTags, this.$isRefresh, (BaseDto) obj);
        } catch (Exception e10) {
            e10.printStackTrace();
            wf.a.f74274a.i("HashTagViewModel", "loadHashTagList exception: " + e10.getMessage() + ", tabSort=" + this.$tabSort + ", page=" + this.$page, true);
            HashTagViewModel hashTagViewModel = this.this$0;
            String str = this.$tabSort;
            Set<UGCVideoHashTag> set = this.$currentSelectedTags;
            boolean z10 = this.$isRefresh;
            String message = e10.getMessage();
            if (message == null) {
                message = "";
            }
            hashTagViewModel.n(str, set, z10, message, TmcConstants.COLD_OPEN_TYPE);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HashTagViewModel$loadHashTagList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
