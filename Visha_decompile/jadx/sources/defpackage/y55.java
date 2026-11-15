package defpackage;

import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.net.NetGroup;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.transsion.livecaption.constant.ICode;
import java.util.Map;
import kotlin.Result;
import kotlin.c;

public final class y55 {
    public static final y55 a = new y55();
    public static int b = -1;

    public final void a() {
        Long subExpId;
        Integer numR;
        Map<String, String> info;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (b != -1) {
                return;
            }
            ABTest aBTestData = CustomConfigManager.getABTestData(ClientABTestDTOKt.AB_NETWORK);
            zfb zfbVar = null;
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
                        if (str != null && (numR = f1a.r(str)) != null) {
                            iIntValue = numR.intValue();
                        }
                        switch (iIntValue) {
                            case ICode.Function.EVENT_CODE_AI_ENGINE_UPDATING:
                            case 2014:
                            case ICode.Function.EVENT_CODE_AI_ENGINE_STOPPED:
                            case 2016:
                                b = iIntValue;
                                long jLongValue = (variant == null || (subExpId = variant.getSubExpId()) == null) ? 0L : subExpId.longValue();
                                ja1.netLog("NetGroup gets the groupBucketId in the api = " + b + ", save it in the cache");
                                String strQ = cgc.n().q();
                                if (!NetGroup.a(strQ)) {
                                    ja1.netLog("url is not in the white list, so it will not save groupBucketId in the cache. url = " + strQ);
                                } else {
                                    o9.e().p("bucketV2", b);
                                    o9.e().q("bucketVarId", jLongValue);
                                }
                                break;
                        }
                    } else if (aBTestVariant.isClosed()) {
                        b = 0;
                        o9.e().p("bucketV2", 0);
                        ja1.netLog("network abtest is closed");
                    } else if (aBTestVariant.isPushAll()) {
                        b = 2016;
                        o9.e().p("bucketV2", 2016);
                        ja1.netLog("network abtest is push all");
                    }
                } catch (Throwable unused) {
                }
                zfbVar = zfb.a;
            }
            if (zfbVar == null) {
                ja1.netLog("network abtest config data is null");
            }
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(c.a(th));
        }
    }
}
