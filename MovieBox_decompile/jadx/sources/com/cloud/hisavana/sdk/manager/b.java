package com.cloud.hisavana.sdk.manager;

import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.hisavana.common.tracking.TrackingKey;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.text.StringsKt;

public final class b {

    public static final b f22054a = new b();

    private static volatile int f22055b = -1;

    private static volatile long f22056c = -1;

    private static AtomicBoolean f22057d = new AtomicBoolean(false);

    private b() {
    }

    public final long a() {
        return f22056c;
    }

    public final int b() {
        return f22055b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [l7.a] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    public final void c() {
        Long subExpId;
        Boolean boolM1;
        Map<String, String> info;
        ?? r10 = 0;
        boolean zBooleanValue = true;
        if (f22057d.compareAndSet(false, true)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                ABTest aBTestData = CustomConfigManager.getABTestData(ClientABTestDTOKt.MEDIATION_EW_STRATEGY);
                long jLongValue = 0;
                Unit unit = null;
                str = null;
                String str = null;
                if (aBTestData != null) {
                    ABVariantState aBTestVariant = ABTestKit.getABTestVariant(aBTestData.getLayerId(), aBTestData.getReqInterval(), aBTestData.getSwitch());
                    if (aBTestVariant.isOpen()) {
                        ABVariantState.Open open = aBTestVariant instanceof ABVariantState.Open ? (ABVariantState.Open) aBTestVariant : null;
                        ABVariant variant = open != null ? open.getVariant() : null;
                        if (variant != null && (info = variant.getInfo()) != null) {
                            str = info.get("isChangeEwRequestStrategy");
                        }
                        zBooleanValue = (str == null || (boolM1 = StringsKt.m1(str)) == null) ? false : boolM1.booleanValue();
                        if (variant != null && (subExpId = variant.getSubExpId()) != null) {
                            jLongValue = subExpId.longValue();
                        }
                        b4.b().d("RequestStrategyABManager", "ew Strategy abtest is open, isChangeEwRequestStrategy is " + zBooleanValue + ", varid is " + jLongValue);
                    } else {
                        if (aBTestVariant.isClosed()) {
                            b4.b().d("RequestStrategyABManager", "ew Strategy abtest is closed");
                        } else if (aBTestVariant.isPushAll()) {
                            b4.b().d("RequestStrategyABManager", "ew Strategy abtest is push all");
                        }
                        zBooleanValue = false;
                    }
                    unit = Unit.f64096a;
                } else {
                    zBooleanValue = false;
                }
                if (unit == null) {
                    b4.b().d("RequestStrategyABManager", "ew Strategy abtest config data is null");
                } else {
                    r10 = zBooleanValue;
                }
                l7.a.e().p("request_strategy_status", r10);
                l7.a.e().q(TrackingKey.EW_STRATEGY_VAR_ID, jLongValue);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public final void d() {
        if (f22055b == -1) {
            f22055b = l7.a.e().g("request_strategy_status", 0);
        }
        if (f22056c == -1) {
            f22056c = l7.a.e().i(TrackingKey.EW_STRATEGY_VAR_ID, 0L);
        }
    }
}
