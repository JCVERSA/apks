package com.google.firebase.perf.metrics;

import com.google.firebase.perf.util.Timer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import xc.k;

public class h {

    private static final uc.a f31470f = uc.a.e();

    private final i f31471a;

    private final Timer f31472b;

    private boolean f31475e;

    private boolean f31474d = false;

    private final Map f31473c = new ConcurrentHashMap();

    public h(String str, String str2, k kVar, Timer timer) {
        this.f31475e = false;
        this.f31472b = timer;
        i iVarF = i.b(kVar).q(str).f(str2);
        this.f31471a = iVarF;
        iVarF.h();
        if (com.google.firebase.perf.config.a.g().K()) {
            return;
        }
        f31470f.g("HttpMetric feature is disabled. URL %s", str);
        this.f31475e = true;
    }

    public void a(int i10) {
        this.f31471a.g(i10);
    }
}
