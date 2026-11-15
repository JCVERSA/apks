package com.transsion.ad.ps.attribution;

import com.transsion.ad.db.pslink.AttributionPoint;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class AttributionProduceManager extends BaseAttributionProvider {

    public static final AttributionProduceManager f41131c = new AttributionProduceManager();

    public class a {

        public static final int[] f41132a;

        static {
            int[] iArr = new int[AttributionPoint.AttributionType.values().length];
            try {
                iArr[AttributionPoint.AttributionType.DISPLAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AttributionPoint.AttributionType.CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AttributionPoint.AttributionType.GP_CLICK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f41132a = iArr;
        }
    }

    private AttributionProduceManager() {
    }

    /* JADX WARN: Code duplicated, block: B:22:0x003f A[PHI: r0
      0x003f: PHI (r0v10 java.lang.String) = (r0v8 java.lang.String), (r0v11 java.lang.String), (r0v12 java.lang.String) binds: [B:31:0x0056, B:27:0x004d, B:20:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    private final void k(AdPlans adPlans, AttributionPoint.AttributionType attributionType) {
        String showAttributionLink;
        try {
            Result.Companion companion = Result.INSTANCE;
            List<AdMaterialList> adMaterialList = adPlans != null ? adPlans.getAdMaterialList() : null;
            if (adMaterialList != null && (!adMaterialList.isEmpty())) {
                RecommendInfo psRecommendInfo = adMaterialList.get(0).getPsRecommendInfo();
                int i10 = a.f41132a[attributionType.ordinal()];
                String str = "";
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        if (psRecommendInfo != null && (showAttributionLink = psRecommendInfo.getGpAttributionLink()) != null) {
                            str = showAttributionLink;
                        }
                    } else if (psRecommendInfo != null && (showAttributionLink = psRecommendInfo.getAttributionLink()) != null) {
                        str = showAttributionLink;
                    }
                } else if (psRecommendInfo != null && (showAttributionLink = psRecommendInfo.getShowAttributionLink()) != null) {
                    str = showAttributionLink;
                }
                f41131c.n(psRecommendInfo, attributionType, str);
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void n(RecommendInfo recommendInfo, AttributionPoint.AttributionType attributionType, String str) {
        k.d(o0.a(y0.b()), null, null, new AttributionProduceManager$reportUrl$1(str, recommendInfo, attributionType, null), 3, null);
    }

    public final void l(AdPlans adPlans, AttributionPoint.AttributionType type) {
        Intrinsics.h(type, "type");
        if (AdPlanSourceManager.f41117a.i(adPlans)) {
            k(adPlans, type);
        }
    }

    public final void m(AdPlans adPlans) {
        if (AdPlanSourceManager.f41117a.i(adPlans)) {
            k(adPlans, AttributionPoint.AttributionType.DISPLAY);
        }
    }
}
