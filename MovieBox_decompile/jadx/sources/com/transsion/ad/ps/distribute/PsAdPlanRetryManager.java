package com.transsion.ad.ps.distribute;

import android.os.SystemClock;
import com.transsion.ad.monopoly.model.AdPlans;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class PsAdPlanRetryManager {

    public static final PsAdPlanRetryManager f41138a = new PsAdPlanRetryManager();

    private static long f41139b;

    private PsAdPlanRetryManager() {
    }

    private final String a() {
        String simpleName = PsAdPlanRetryManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void b(AdPlans adPlans) {
        if (SystemClock.elapsedRealtime() - f41139b < com.transsion.ad.scene.b.f41153a.e()) {
            return;
        }
        f41139b = SystemClock.elapsedRealtime();
        xh.a.i(xh.a.f75336a, a() + " --> retry() --> PS 直投的虚拟计划 --> 无商单重试 --> 请求PS商单接口", 5, false, 4, null);
        k.d(o0.a(y0.b()), null, null, new PsAdPlanRetryManager$retry$1(adPlans, null), 3, null);
    }
}
