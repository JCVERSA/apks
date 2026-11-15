package com.vungle.ads.internal.protos;

import com.google.protobuf.s0;
import com.google.protobuf.t0;
import java.util.List;

public interface b extends t0 {
    @Override
    s0 getDefaultInstanceForType();

    Sdk$SDKMetric getMetrics(int i10);

    int getMetricsCount();

    List<Sdk$SDKMetric> getMetricsList();

    @Override
    boolean isInitialized();
}
