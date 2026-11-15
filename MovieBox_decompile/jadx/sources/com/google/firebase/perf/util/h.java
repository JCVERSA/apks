package com.google.firebase.perf.util;

import com.google.firebase.perf.metrics.Trace;

public class h {

    private static final uc.a f31553a = uc.a.e();

    public static Trace a(Trace trace, com.google.firebase.perf.metrics.g.a aVar) {
        if (aVar.d() > 0) {
            trace.putMetric(Constants$CounterNames.FRAMES_TOTAL.toString(), aVar.d());
        }
        if (aVar.c() > 0) {
            trace.putMetric(Constants$CounterNames.FRAMES_SLOW.toString(), aVar.c());
        }
        if (aVar.b() > 0) {
            trace.putMetric(Constants$CounterNames.FRAMES_FROZEN.toString(), aVar.b());
        }
        f31553a.a("Screen trace: " + trace.getName() + " _fr_tot:" + aVar.d() + " _fr_slo:" + aVar.c() + " _fr_fzn:" + aVar.b());
        return trace;
    }
}
