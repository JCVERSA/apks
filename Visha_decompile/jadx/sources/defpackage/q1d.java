package defpackage;

import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.c;

public final class q1d {
    public static final q1d a = new q1d();
    public static volatile int b = -1;
    public static volatile long c = -1;
    public static AtomicBoolean d = new AtomicBoolean(false);

    public final long a() {
        return c;
    }

    public final int b() {
        return b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r8v8, types: [o9] */
    public final void c() {
        Long subExpId;
        Boolean boolH1;
        Map<String, String> info;
        ?? r0 = 0;
        boolean zBooleanValue = true;
        if (d.compareAndSet(false, true)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                ABTest aBTestData = CustomConfigManager.getABTestData(ClientABTestDTOKt.DCDN_NET);
                long jLongValue = 0;
                zfb zfbVar = null;
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
                        zBooleanValue = (str == null || (boolH1 = j1a.h1(str)) == null) ? false : boolH1.booleanValue();
                        if (variant != null && (subExpId = variant.getSubExpId()) != null) {
                            jLongValue = subExpId.longValue();
                        }
                        ikd.b().d("DCDNManager", "dcdn abtest is open, isSupportDcdn is " + zBooleanValue + ", varid is " + jLongValue);
                    } else {
                        if (aBTestVariant.isClosed()) {
                            ikd.b().d("DCDNManager", "dcdn abtest is closed");
                        } else if (aBTestVariant.isPushAll()) {
                            ikd.b().d("DCDNManager", "dcdn abtest is push all");
                        }
                        zBooleanValue = false;
                    }
                    zfbVar = zfb.a;
                } else {
                    zBooleanValue = false;
                }
                if (zfbVar == null) {
                    ikd.b().d("DCDNManager", "dcdn abtest config data is null");
                } else {
                    r0 = zBooleanValue;
                }
                o9.e().p("support_dcdn_status", r0);
                o9.e().q("dcdn_var_id", jLongValue);
                Result.m279constructorimpl(zfb.a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m279constructorimpl(c.a(th));
            }
        }
    }

    public final void d() {
        if (b == -1) {
            b = o9.e().g("support_dcdn_status", 0);
        }
        if (c == -1) {
            c = o9.e().i("dcdn_var_id", 0L);
        }
    }
}
