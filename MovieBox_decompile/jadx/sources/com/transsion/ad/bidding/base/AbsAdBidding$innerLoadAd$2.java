package com.transsion.ad.bidding.base;

import android.os.Handler;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/Object;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.bidding.base.AbsAdBidding$innerLoadAd$2", f = "AbsAdBidding.kt", l = {740, 793}, m = "invokeSuspend")
@SourceDebugExtension
final class AbsAdBidding$innerLoadAd$2 extends SuspendLambda implements Function2<n0, Continuation<? super Object>, Object> {
    final int $fetchCount;
    final boolean $onlyHi;
    int label;
    final AbsAdBidding this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsAdBidding$innerLoadAd$2(AbsAdBidding absAdBidding, boolean z10, int i10, Continuation<? super AbsAdBidding$innerLoadAd$2> continuation) {
        super(2, continuation);
        this.this$0 = absAdBidding;
        this.$onlyHi = z10;
        this.$fetchCount = i10;
    }

    public static final void d(AbsAdBidding absAdBidding) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AbsAdBidding$innerLoadAd$2$2$1(absAdBidding, null), 3, null);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AbsAdBidding$innerLoadAd$2(this.this$0, this.$onlyHi, this.$fetchCount, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        AbsAdBidding absAdBidding = this.this$0;
        this.label = 1;
        obj = absAdBidding.Y(this);
        if (obj == objF) {
            return objF;
        }
        List list = (List) obj;
        if (list.isEmpty()) {
            this.this$0.i(new TAdErrorCode(1101, "there are currently no plans available"));
            return Unit.f64096a;
        }
        boolean zN0 = this.this$0.n0(list);
        AbsAdBidding absAdBidding2 = this.this$0;
        if (this.$onlyHi) {
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (Intrinsics.c(((AdPlans) obj2).getAdSource(), AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_HI.getValue())) {
                    arrayList.add(obj2);
                }
            }
            list = arrayList;
        }
        absAdBidding2.f40803p = TypeIntrinsics.c(list);
        AbsAdBidding absAdBidding3 = this.this$0;
        String mSceneId = absAdBidding3.getMSceneId();
        Map mapD0 = this.this$0.d0();
        List list2 = this.this$0.f40803p;
        xh.b.a.c(absAdBidding3, 3, "innerLoadAd() --> 开始加载广告 --> sceneId = " + mSceneId + " --> ctxMap = " + mapD0 + " --> 可用广告计划 availablePlanList?.size = " + (list2 != null ? Boxing.d(list2.size()) : null) + " --> hasHiAdPlan = " + zN0, null, false, 4, null);
        this.this$0.f40798k = this.$fetchCount;
        this.this$0.f40802o.set(false);
        if (zN0) {
            AbsAdBidding absAdBidding4 = this.this$0;
            absAdBidding4.u0(absAdBidding4.getMSceneId());
        } else if (this.$onlyHi) {
            this.this$0.i(new TAdErrorCode(1101, "onlyHi == true ，但是没有Hi广告计划，不展示广告"));
            return Unit.f64096a;
        }
        if (zN0) {
            Handler handler = this.this$0.f40801n;
            final AbsAdBidding absAdBidding5 = this.this$0;
            return Boxing.a(handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    AbsAdBidding$innerLoadAd$2.d(absAdBidding5);
                }
            }, this.this$0.b0()));
        }
        AbsAdBidding absAdBidding6 = this.this$0;
        this.label = 2;
        if (absAdBidding6.V("仅有包断，直接开始竞价", this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
        return ((AbsAdBidding$innerLoadAd$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
