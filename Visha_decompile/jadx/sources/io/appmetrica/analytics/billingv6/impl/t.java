package io.appmetrica.analytics.billingv6.impl;

import com.android.billingclient.api.BillingClient;
import defpackage.y45;
import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.Map;

public final class t {
    public static void a(Map map, Map map2, String str, BillingInfoManager billingInfoManager) {
        long jCurrentTimeMillis = new SystemTimeProvider().currentTimeMillis();
        for (BillingInfo billingInfo : map.values()) {
            if (map2.containsKey(billingInfo.productId)) {
                billingInfo.sendTime = jCurrentTimeMillis;
            } else {
                BillingInfo billingInfo2 = billingInfoManager.get(billingInfo.productId);
                if (billingInfo2 != null) {
                    billingInfo.sendTime = billingInfo2.sendTime;
                }
            }
        }
        billingInfoManager.update(map);
        if (billingInfoManager.isFirstInappCheckOccurred() || !y45.e(BillingClient.ProductType.INAPP, str)) {
            return;
        }
        billingInfoManager.markFirstInappCheckOccurred();
    }
}
