package com.facebook.ads.redexgen.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public final class C4C extends BroadcastReceiver {
    public final C4D A00;

    public C4C(C4D c4d) {
        this.A00 = c4d;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        int iA00 = C4D.A00(context);
        if (AbstractC06244a.A02 >= 31 && iA00 == 5) {
            C4A.A02(context, this.A00);
        } else {
            this.A00.A07(iA00);
        }
    }
}
