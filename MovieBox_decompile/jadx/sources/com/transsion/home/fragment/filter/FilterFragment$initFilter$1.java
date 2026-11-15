package com.transsion.home.fragment.filter;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
class FilterFragment$initFilter$1 extends FunctionReferenceImpl implements Function1<bl.a, Unit> {
    FilterFragment$initFilter$1(Object obj) {
        super(1, obj, FilterFragment.class, "reportClick", "reportClick(Lcom/transsion/home/view/filter/item/FilterItem;)V", 0);
    }

    @Override
    public Object invoke(Object obj) {
        invoke((bl.a) obj);
        return Unit.f64096a;
    }

    public final void invoke(bl.a p10) {
        Intrinsics.h(p10, "p0");
        ((FilterFragment) this.receiver).y1(p10);
    }
}
