package io.appmetrica.analytics.billingv6.impl;

import androidx.annotation.WorkerThread;
import defpackage.y45;
import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager;
import io.appmetrica.analytics.billinginterface.internal.update.UpdatePolicy;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class u implements UpdatePolicy {
    public final SystemTimeProvider a;

    /* JADX WARN: Multi-variable type inference failed */
    public u() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override
    @WorkerThread
    public final Map<String, BillingInfo> getBillingInfoToUpdate(BillingConfig billingConfig, Map<String, ? extends BillingInfo> map, BillingInfoManager billingInfoManager) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ? extends BillingInfo> entry : map.entrySet()) {
            BillingInfo value = entry.getValue();
            long jCurrentTimeMillis = this.a.currentTimeMillis();
            if (value.type != ProductType.INAPP || billingInfoManager.isFirstInappCheckOccurred()) {
                BillingInfo billingInfo = billingInfoManager.get(value.productId);
                if (billingInfo == null || !y45.e(billingInfo.purchaseToken, value.purchaseToken) || (value.type == ProductType.SUBS && jCurrentTimeMillis - billingInfo.sendTime >= TimeUnit.SECONDS.toMillis(billingConfig.sendFrequencySeconds))) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            } else if (jCurrentTimeMillis - value.purchaseTime <= TimeUnit.SECONDS.toMillis(billingConfig.firstCollectingInappMaxAgeSeconds)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public u(SystemTimeProvider systemTimeProvider) {
        this.a = systemTimeProvider;
    }

    public u(SystemTimeProvider systemTimeProvider, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new SystemTimeProvider() : systemTimeProvider);
    }
}
