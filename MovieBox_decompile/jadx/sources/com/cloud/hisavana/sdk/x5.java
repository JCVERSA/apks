package com.cloud.hisavana.sdk;

import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.net.NetGroup;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.text.StringsKt;

public final class x5 {

    public static final x5 f22445a = new x5();

    private static int f22446b = -1;

    private x5() {
    }

    public final void a() {
        Long subExpId;
        Integer numV;
        Map<String, String> info;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (f22446b != -1) {
                return;
            }
            ABTest aBTestData = CustomConfigManager.getABTestData(ClientABTestDTOKt.AB_NETWORK);
            Unit unit = null;
            str = null;
            String str = null;
            if (aBTestData != null) {
                try {
                    ABVariantState aBTestVariant = ABTestKit.getABTestVariant(aBTestData.getLayerId(), aBTestData.getReqInterval(), aBTestData.getSwitch());
                    int iIntValue = 0;
                    if (aBTestVariant.isOpen()) {
                        ABVariantState.Open open = aBTestVariant instanceof ABVariantState.Open ? (ABVariantState.Open) aBTestVariant : null;
                        ABVariant variant = open != null ? open.getVariant() : null;
                        if (variant != null && (info = variant.getInfo()) != null) {
                            str = info.get("netGroupBucketId");
                        }
                        if (str != null && (numV = StringsKt.v(str)) != null) {
                            iIntValue = numV.intValue();
                        }
                        switch (iIntValue) {
                            case 2013:
                            case 2014:
                            case 2015:
                            case 2016:
                                f22446b = iIntValue;
                                long jLongValue = (variant == null || (subExpId = variant.getSubExpId()) == null) ? 0L : subExpId.longValue();
                                com.cloud.sdk.commonutil.util.c.netLog("NetGroup gets the groupBucketId in the api = " + f22446b + ", save it in the cache");
                                String strQ = g1.o().q();
                                if (!NetGroup.a(strQ)) {
                                    com.cloud.sdk.commonutil.util.c.netLog("url is not in the white list, so it will not save groupBucketId in the cache. url = " + strQ);
                                } else {
                                    l7.a.e().p("bucketV2", f22446b);
                                    l7.a.e().q("bucketVarId", jLongValue);
                                }
                                break;
                        }
                    } else if (aBTestVariant.isClosed()) {
                        f22446b = 0;
                        l7.a.e().p("bucketV2", 0);
                        com.cloud.sdk.commonutil.util.c.netLog("network abtest is closed");
                    } else if (aBTestVariant.isPushAll()) {
                        f22446b = 2016;
                        l7.a.e().p("bucketV2", 2016);
                        com.cloud.sdk.commonutil.util.c.netLog("network abtest is push all");
                    }
                } catch (Throwable unused) {
                }
                unit = Unit.f64096a;
            }
            if (unit == null) {
                com.cloud.sdk.commonutil.util.c.netLog("network abtest config data is null");
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }
}
