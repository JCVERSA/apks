package com.google.firebase.perf.application;

import android.app.Activity;
import android.os.Build;
import android.util.SparseIntArray;
import androidx.core.app.g;
import androidx.fragment.app.Fragment;
import com.google.firebase.perf.util.e;
import java.util.HashMap;
import java.util.Map;

public class d {

    private static final uc.a f31395e = uc.a.e();

    private final Activity f31396a;

    private final g f31397b;

    private final Map f31398c;

    private boolean f31399d;

    public d(Activity activity) {
        this(activity, new g(), new HashMap());
    }

    static boolean a() {
        return true;
    }

    private e b() {
        if (!this.f31399d) {
            f31395e.a("No recording has been started.");
            return e.a();
        }
        SparseIntArray[] sparseIntArrayArrB = this.f31397b.b();
        if (sparseIntArrayArrB == null) {
            f31395e.a("FrameMetricsAggregator.mMetrics is uninitialized.");
            return e.a();
        }
        if (sparseIntArrayArrB[0] != null) {
            return e.e(com.google.firebase.perf.metrics.g.a(sparseIntArrayArrB));
        }
        f31395e.a("FrameMetricsAggregator.mMetrics[TOTAL_INDEX] is uninitialized.");
        return e.a();
    }

    public void c() {
        if (this.f31399d) {
            f31395e.b("FrameMetricsAggregator is already recording %s", this.f31396a.getClass().getSimpleName());
        } else {
            this.f31397b.a(this.f31396a);
            this.f31399d = true;
        }
    }

    public void d(Fragment fragment) {
        if (!this.f31399d) {
            f31395e.a("Cannot start sub-recording because FrameMetricsAggregator is not recording");
            return;
        }
        if (this.f31398c.containsKey(fragment)) {
            f31395e.b("Cannot start sub-recording because one is already ongoing with the key %s", fragment.getClass().getSimpleName());
            return;
        }
        e eVarB = b();
        if (eVarB.d()) {
            this.f31398c.put(fragment, (com.google.firebase.perf.metrics.g.a) eVarB.c());
        } else {
            f31395e.b("startFragment(%s): snapshot() failed", fragment.getClass().getSimpleName());
        }
    }

    public e e() {
        if (!this.f31399d) {
            f31395e.a("Cannot stop because no recording was started");
            return e.a();
        }
        if (!this.f31398c.isEmpty()) {
            f31395e.a("Sub-recordings are still ongoing! Sub-recordings should be stopped first before stopping Activity screen trace.");
            this.f31398c.clear();
        }
        e eVarB = b();
        try {
            this.f31397b.c(this.f31396a);
        } catch (IllegalArgumentException | NullPointerException e10) {
            if ((e10 instanceof NullPointerException) && Build.VERSION.SDK_INT > 28) {
                throw e10;
            }
            f31395e.k("View not hardware accelerated. Unable to collect FrameMetrics. %s", e10.toString());
            eVarB = e.a();
        }
        this.f31397b.d();
        this.f31399d = false;
        return eVarB;
    }

    public e f(Fragment fragment) {
        if (!this.f31399d) {
            f31395e.a("Cannot stop sub-recording because FrameMetricsAggregator is not recording");
            return e.a();
        }
        if (!this.f31398c.containsKey(fragment)) {
            f31395e.b("Sub-recording associated with key %s was not started or does not exist", fragment.getClass().getSimpleName());
            return e.a();
        }
        com.google.firebase.perf.metrics.g.a aVar = (com.google.firebase.perf.metrics.g.a) this.f31398c.remove(fragment);
        e eVarB = b();
        if (eVarB.d()) {
            return e.e(((com.google.firebase.perf.metrics.g.a) eVarB.c()).a(aVar));
        }
        f31395e.b("stopFragment(%s): snapshot() failed", fragment.getClass().getSimpleName());
        return e.a();
    }

    d(Activity activity, g gVar, Map map) {
        this.f31399d = false;
        this.f31396a = activity;
        this.f31397b = gVar;
        this.f31398c = map;
    }
}
