package com.transsion.postdetail.ui.fragment;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class LocalVideoDetailFragment$screenHelper$2$1 extends FunctionReferenceImpl implements Function0<Boolean> {
    LocalVideoDetailFragment$screenHelper$2$1(Object obj) {
        super(0, obj, LocalVideoDetailFragment.class, "isCloseAutoRotation", "isCloseAutoRotation()Z", 0);
    }

    @Override
    public final Boolean invoke() {
        return Boolean.valueOf(((LocalVideoDetailFragment) this.receiver).T2());
    }
}
