package io.appmetrica.analytics.impl;

import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;

public final class Vf implements InstallReferrerStateListener {
    public final InterfaceC2593hg a;
    public final Xf b;

    public Vf(Xf xf, InterfaceC2593hg interfaceC2593hg) {
        this.b = xf;
        this.a = interfaceC2593hg;
    }

    @Override
    public final void onInstallReferrerServiceDisconnected() {
    }

    @Override
    public final void onInstallReferrerSetupFinished(int i) {
        if (i == 0) {
            try {
                ReferrerDetails installReferrer = this.b.a.getInstallReferrer();
                this.b.b.execute(new Uf(this, new C2468cg(installReferrer.getInstallReferrer(), installReferrer.getReferrerClickTimestampSeconds(), installReferrer.getInstallBeginTimestampSeconds(), EnumC2443bg.c)));
            } catch (Throwable th) {
                this.b.b.execute(new Wf(this.a, th));
            }
        } else {
            this.b.b.execute(new Wf(this.a, new IllegalStateException("Referrer check failed with error " + i)));
        }
        try {
            this.b.a.endConnection();
        } catch (Throwable unused) {
        }
    }
}
