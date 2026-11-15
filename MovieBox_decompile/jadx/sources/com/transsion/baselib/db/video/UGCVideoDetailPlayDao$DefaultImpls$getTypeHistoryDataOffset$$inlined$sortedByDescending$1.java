package com.transsion.baselib.db.video;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDetailPlayDao$DefaultImpls$getTypeHistoryDataOffset$$inlined$sortedByDescending$1<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int compare(T t10, T t11) {
        return ComparisonsKt.d(Long.valueOf(((UGCVideoDetailPlayBean) t11).getTimeStamp()), Long.valueOf(((UGCVideoDetailPlayBean) t10).getTimeStamp()));
    }
}
