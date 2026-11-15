package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.event.CounterReportApi;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerReporter;

public final class C2415ad implements ModuleEventServiceHandlerReporter {
    public final C2810q9 a;
    public final C2408a6 b;

    public C2415ad(C2810q9 c2810q9, C2408a6 c2408a6) {
        this.a = c2810q9;
        this.b = c2408a6;
    }

    @Override
    public final void report(CounterReportApi counterReportApi) {
        C2408a6 c2408a6D = C2408a6.d(this.b);
        c2408a6D.d = counterReportApi.getType();
        c2408a6D.e = counterReportApi.getCustomType();
        c2408a6D.setName(counterReportApi.getName());
        c2408a6D.setValue(counterReportApi.getValue());
        c2408a6D.setValueBytes(counterReportApi.getValueBytes());
        c2408a6D.g = counterReportApi.getBytesTruncated();
        C2810q9 c2810q9 = this.a;
        c2810q9.a(c2408a6D, C2945vk.a(c2810q9.c.b(c2408a6D), c2408a6D.i));
    }
}
