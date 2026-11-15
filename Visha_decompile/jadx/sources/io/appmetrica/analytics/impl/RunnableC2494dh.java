package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;

public final class RunnableC2494dh implements Runnable {
    public final Context a;
    public final C2408a6 b;
    public final Bundle c;
    public final C2854s4 d;

    public RunnableC2494dh(Context context, C2408a6 c2408a6, Bundle bundle, C2854s4 c2854s4) {
        this.a = context;
        this.b = c2408a6;
        this.c = bundle;
        this.d = c2854s4;
    }

    @Override
    public final void run() {
        try {
            C2431b4 c2431b4A = C2431b4.a(this.a, this.c);
            if (c2431b4A == null) {
                return;
            }
            C2581h4 c2581h4A = C2581h4.a(c2431b4A);
            Ui uiU = C2910ua.E.u();
            uiU.a(c2431b4A.b.getAppVersion(), c2431b4A.b.getAppBuildNumber());
            uiU.a(c2431b4A.b.getDeviceType());
            G4 g4 = new G4(c2431b4A);
            this.d.a(c2581h4A, g4).a(this.b, g4);
        } catch (Throwable th) {
            Fj fj = AbstractC2521ej.a;
            String str = "Exception during processing event with type: " + this.b.d + " (" + this.b.e + "): " + th.getMessage();
            fj.getClass();
            fj.a(new C2546fj(str, th));
        }
    }
}
