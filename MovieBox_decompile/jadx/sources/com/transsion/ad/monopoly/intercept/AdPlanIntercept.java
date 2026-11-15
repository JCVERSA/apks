package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public final class AdPlanIntercept {

    public static final AdPlanIntercept f41097a = new AdPlanIntercept();

    private AdPlanIntercept() {
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00c9 A[Catch: all -> 0x002b, TryCatch #0 {all -> 0x002b, blocks: (B:11:0x0026, B:23:0x00c4, B:27:0x00d0, B:26:0x00c9, B:18:0x0039, B:20:0x00bb), top: B:35:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        AdPlanIntercept$isHit$1 adPlanIntercept$isHit$1;
        Object objM453constructorimpl;
        Throwable thM456exceptionOrNullimpl;
        AdPlansHitResponse adPlansHitResponse;
        if (continuation instanceof AdPlanIntercept$isHit$1) {
            adPlanIntercept$isHit$1 = (AdPlanIntercept$isHit$1) continuation;
            int i10 = adPlanIntercept$isHit$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                adPlanIntercept$isHit$1.label = i10 - Integer.MIN_VALUE;
            } else {
                adPlanIntercept$isHit$1 = new AdPlanIntercept$isHit$1(this, continuation);
            }
        } else {
            adPlanIntercept$isHit$1 = new AdPlanIntercept$isHit$1(this, continuation);
        }
        Object objB = adPlanIntercept$isHit$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = adPlanIntercept$isHit$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                a aVarB = new a.C0569a().a(new ShowOnNetworkStateHandler()).a(new SceneInWhitelistHandler()).a(new CountryInWhitelistHandler()).a(new InDenyBrandHandler()).a(new BrandInWhitelistHandler()).a(new InDenyModelHandler()).a(new ModelInWhitelistHandler()).a(new ValidTimeHandler()).a(new ValidDispatchTimeHandler()).a(new ValidTimesHandler()).a(new c()).a(new b()).a(new AdResourceDownloadedHandler()).b();
                if (aVarB != null) {
                    adPlanIntercept$isHit$1.label = 1;
                    objB = aVarB.b(str, mbAdDbPlans, map, adPlanIntercept$isHit$1);
                    if (objB == objF) {
                        return objF;
                    }
                } else {
                    adPlansHitResponse = new AdPlansHitResponse(false, "default");
                }
                objM453constructorimpl = Result.m453constructorimpl(adPlansHitResponse);
                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl == null) {
                    return objM453constructorimpl;
                }
                return new AdPlansHitResponse(false, thM456exceptionOrNullimpl.getMessage());
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objB);
            adPlansHitResponse = (AdPlansHitResponse) objB;
            if (adPlansHitResponse == null) {
                adPlansHitResponse = new AdPlansHitResponse(false, "default");
            }
            objM453constructorimpl = Result.m453constructorimpl(adPlansHitResponse);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl == null) {
            return objM453constructorimpl;
        }
        return new AdPlansHitResponse(false, thM456exceptionOrNullimpl.getMessage());
    }
}
