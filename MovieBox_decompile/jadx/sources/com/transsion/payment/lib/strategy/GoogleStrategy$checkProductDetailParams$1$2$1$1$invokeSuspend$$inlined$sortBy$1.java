package com.transsion.payment.lib.strategy;

import com.transsion.payment.lib.bean.SkuBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class GoogleStrategy$checkProductDetailParams$1$2$1$1$invokeSuspend$$inlined$sortBy$1<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int compare(T t10, T t11) {
        String coin = ((SkuBean) t10).getCoin();
        Integer numValueOf = coin != null ? Integer.valueOf(Integer.parseInt(coin)) : null;
        String coin2 = ((SkuBean) t11).getCoin();
        return ComparisonsKt.d(numValueOf, coin2 != null ? Integer.valueOf(Integer.parseInt(coin2)) : null);
    }
}
