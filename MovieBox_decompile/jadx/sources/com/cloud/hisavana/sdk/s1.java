package com.cloud.hisavana.sdk;

import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.text.StringsKt;

public final class s1 {

    public static final s1 f22253a = new s1();

    private static volatile int f22254b = -1;

    private static volatile long f22255c = -1;

    private static AtomicBoolean f22256d = new AtomicBoolean(false);

    private s1() {
    }

    public final long a() {
        return f22255c;
    }

    public final int b() {
        return f22254b;
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
        if (f22256d.compareAndSet(false, true)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                ABTest aBTestData = CustomConfigManager.getABTestData(ClientABTestDTOKt.DCDN_NET);
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
                            str = info.get("isSupportDcdn");
                        }
                        zBooleanValue = (str == null || (boolM1 = StringsKt.m1(str)) == null) ? false : boolM1.booleanValue();
                        if (variant != null && (subExpId = variant.getSubExpId()) != null) {
                            jLongValue = subExpId.longValue();
                        }
                        b4.b().d("DCDNManager", "dcdn abtest is open, isSupportDcdn is " + zBooleanValue + ", varid is " + jLongValue);
                    } else {
                        if (aBTestVariant.isClosed()) {
                            b4.b().d("DCDNManager", "dcdn abtest is closed");
                        } else if (aBTestVariant.isPushAll()) {
                            b4.b().d("DCDNManager", "dcdn abtest is push all");
                        }
                        zBooleanValue = false;
                    }
                    unit = Unit.f64096a;
                } else {
                    zBooleanValue = false;
                }
                if (unit == null) {
                    b4.b().d("DCDNManager", "dcdn abtest config data is null");
                } else {
                    r10 = zBooleanValue;
                }
                l7.a.e().p("support_dcdn_status", r10);
                l7.a.e().q("dcdn_var_id", jLongValue);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public final void d() {
        if (f22254b == -1) {
            f22254b = l7.a.e().g("support_dcdn_status", 0);
        }
        if (f22255c == -1) {
            f22255c = l7.a.e().i("dcdn_var_id", 0L);
        }
    }
}
