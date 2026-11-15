package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.MetricType;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Deprecated
public class AWSRequestMetricsFullSupport extends AWSRequestMetrics {

    private static final Log f18362d = LogFactory.c("com.amazonaws.latency");

    private static final Object f18363e = UrlUtils.EQUAL_MARK;

    private static final Object f18364f = ", ";

    private final Map f18365b;

    private final Map f18366c;

    public AWSRequestMetricsFullSupport() {
        super(TimingInfo.n());
        this.f18365b = new HashMap();
        this.f18366c = new HashMap();
    }

    private void k(Object obj, Object obj2, StringBuilder sb2) {
        sb2.append(obj);
        sb2.append(f18363e);
        sb2.append(obj2);
        sb2.append(f18364f);
    }

    @Override
    public void a(MetricType metricType, Object obj) {
        h(metricType.name(), obj);
    }

    @Override
    public void b(MetricType metricType) {
        i(metricType.name());
    }

    @Override
    public void d(MetricType metricType) {
        j(metricType.name());
    }

    @Override
    public void e() {
        if (f18362d.c()) {
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry entry : this.f18365b.entrySet()) {
                k(entry.getKey(), entry.getValue(), sb2);
            }
            for (Map.Entry entry2 : this.f18361a.d().entrySet()) {
                k(entry2.getKey(), entry2.getValue(), sb2);
            }
            for (Map.Entry entry3 : this.f18361a.g().entrySet()) {
                k(entry3.getKey(), entry3.getValue(), sb2);
            }
            f18362d.d(sb2.toString());
        }
    }

    @Override
    public void f(MetricType metricType, long j10) {
        l(metricType.name(), j10);
    }

    @Override
    public void g(MetricType metricType) {
        m(metricType.name());
    }

    public void h(String str, Object obj) {
        List arrayList = (List) this.f18365b.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f18365b.put(str, arrayList);
        }
        arrayList.add(obj);
    }

    public void i(String str) {
        TimingInfo timingInfo = (TimingInfo) this.f18366c.get(str);
        if (timingInfo != null) {
            timingInfo.c();
            this.f18361a.a(str, TimingInfo.p(timingInfo.f(), Long.valueOf(timingInfo.e())));
            return;
        }
        LogFactory.b(getClass()).j("Trying to end an event which was never started: " + str);
    }

    public void j(String str) {
        this.f18361a.j(str);
    }

    public void l(String str, long j10) {
        this.f18361a.l(str, j10);
    }

    public void m(String str) {
        this.f18366c.put(str, TimingInfo.o(System.nanoTime()));
    }
}
