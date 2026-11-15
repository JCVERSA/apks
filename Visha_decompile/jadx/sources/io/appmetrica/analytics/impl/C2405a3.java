package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.BatteryInfo;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeType;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeTypeChangeListener;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.Iterator;

public final class C2405a3 extends SafeRunnable {
    public final BatteryInfo a;
    public final C2430b3 b;

    public C2405a3(C2430b3 c2430b3, BatteryInfo batteryInfo) {
        this.b = c2430b3;
        this.a = batteryInfo;
    }

    @Override
    public final void runSafety() {
        C2455c3 c2455c3 = this.b.a;
        ChargeType chargeType = this.a.chargeType;
        ChargeType chargeType2 = C2455c3.d;
        synchronized (c2455c3) {
            Iterator it = c2455c3.c.iterator();
            while (it.hasNext()) {
                ((ChargeTypeChangeListener) it.next()).onChargeTypeChanged(chargeType);
            }
        }
    }
}
