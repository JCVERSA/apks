package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.BatteryInfo;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeType;

public final class C2430b3 implements Consumer {
    public final C2455c3 a;

    public C2430b3(C2455c3 c2455c3) {
        this.a = c2455c3;
    }

    @Override
    public final void consume(Object obj) {
        Intent intent = (Intent) obj;
        BatteryInfo batteryInfo = this.a.b;
        ChargeType chargeType = batteryInfo == null ? null : batteryInfo.chargeType;
        this.a.getClass();
        BatteryInfo batteryInfoA = C2455c3.a(intent);
        this.a.b = batteryInfoA;
        if (chargeType != batteryInfoA.chargeType) {
            this.a.a.execute(new C2405a3(this, batteryInfoA));
        }
    }
}
