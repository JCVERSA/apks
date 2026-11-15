package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;

public final class Lm {
    public final Nm a;
    public final Nm b;

    public Lm(Context context) {
        if (new SafePackageManager().hasSystemFeature(context, "android.hardware.telephony")) {
            this.a = new W2(new Pk(context));
            this.b = new W2(new Rc(context));
        } else {
            this.a = new C2510e8();
            this.b = new C2510e8();
        }
    }
}
