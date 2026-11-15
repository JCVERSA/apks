package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.monitor.BillingMonitor;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationState;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateObserver;

public final class C2654k3 implements ApplicationStateObserver {
    public final C2679l3 a;

    public C2654k3(C2679l3 c2679l3) {
        this.a = c2679l3;
    }

    @Override
    public final void onApplicationStateChanged(ApplicationState applicationState) {
        C2679l3 c2679l3 = this.a;
        c2679l3.getClass();
        if (applicationState == ApplicationState.VISIBLE) {
            try {
                BillingMonitor billingMonitor = c2679l3.a;
                if (billingMonitor != null) {
                    billingMonitor.onSessionResumed();
                }
            } catch (Throwable unused) {
            }
        }
    }
}
