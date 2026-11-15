package com.transsion.ad.monopoly.plan;

import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;

public final class b {

    public static final b f41119a = new b();

    private b() {
    }

    public final AdMaterialList a(AdPlans adPlans) {
        List<AdMaterialList> adMaterialList;
        List<AdMaterialList> adMaterialList2;
        if (adPlans == null || (adMaterialList = adPlans.getAdMaterialList()) == null || !(!adMaterialList.isEmpty()) || (adMaterialList2 = adPlans.getAdMaterialList()) == null) {
            return null;
        }
        return adMaterialList2.get(0);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002d  */
    public final RecommendInfo b(AdPlans adPlans) {
        Object objM453constructorimpl;
        RecommendInfo psRecommendInfo;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (AdPlanSourceManager.f41117a.i(adPlans)) {
                List<AdMaterialList> adMaterialList = adPlans != null ? adPlans.getAdMaterialList() : null;
                List<AdMaterialList> list = adMaterialList;
                if (list == null || list.isEmpty()) {
                    psRecommendInfo = null;
                } else {
                    psRecommendInfo = adMaterialList.get(0).getPsRecommendInfo();
                }
            } else {
                psRecommendInfo = null;
            }
            objM453constructorimpl = Result.m453constructorimpl(psRecommendInfo);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        return (RecommendInfo) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
    }
}
