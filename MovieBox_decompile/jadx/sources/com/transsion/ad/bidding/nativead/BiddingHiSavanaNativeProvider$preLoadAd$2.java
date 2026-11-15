package com.transsion.ad.bidding.nativead;

import com.transsion.ad.monopoly.manager.AdPlansStorageManager;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.bidding.nativead.BiddingHiSavanaNativeProvider$preLoadAd$2", f = "BiddingHiSavanaNativeProvider.kt", l = {235}, m = "invokeSuspend")
@SourceDebugExtension
final class BiddingHiSavanaNativeProvider$preLoadAd$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Map<String, Object> $ctxMap;
    final String $sceneId;
    int label;
    final BiddingHiSavanaNativeProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingHiSavanaNativeProvider$preLoadAd$2(String str, BiddingHiSavanaNativeProvider biddingHiSavanaNativeProvider, Map<String, ? extends Object> map, Continuation<? super BiddingHiSavanaNativeProvider$preLoadAd$2> continuation) {
        super(2, continuation);
        this.$sceneId = str;
        this.this$0 = biddingHiSavanaNativeProvider;
        this.$ctxMap = map;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BiddingHiSavanaNativeProvider$preLoadAd$2(this.$sceneId, this.this$0, this.$ctxMap, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            this.label = 1;
            obj = AdPlansStorageManager.e(AdPlansStorageManager.f41107a, this.$sceneId, com.transsion.ad.strategy.c.f41178a.a(null), null, new AdPlanSourceManager.AdPlanEnum[0], this, 4, null);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List list = (List) obj;
        xh.a aVar = xh.a.f75336a;
        String classTag = this.this$0.getClassTag();
        String classTag2 = this.this$0.getClassTag();
        String str = this.$sceneId;
        Map<String, Object> map = this.$ctxMap;
        int size = list.size();
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AdPlans) it.next()).getName());
        }
        xh.a.m(aVar, classTag, classTag2 + " --> sceneId = " + str + " preload --> ctxMap: " + map + ", 可用广告计划：" + size + " --> " + arrayList, 0, false, 4, null);
        if (list.isEmpty()) {
            return Unit.f64096a;
        }
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                if (AdPlanSourceManager.f41117a.d((AdPlans) it2.next())) {
                    xh.a.m(xh.a.f75336a, "ad_n", this.this$0.getClassTag() + " --> preLoadAd() --> " + this.this$0.l(), 0, false, 4, null);
                    BiddingHiSavanaNativeProvider.p(this.this$0, null, 1, null);
                    return Unit.f64096a;
                }
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BiddingHiSavanaNativeProvider$preLoadAd$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
