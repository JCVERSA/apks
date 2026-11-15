package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zziv;

final class s0 {

    private boolean f18574a;

    private t8.h f18575b;

    s0(Context context) {
        try {
            com.google.android.datatransport.runtime.t.f(context);
            this.f18575b = com.google.android.datatransport.runtime.t.c().g(com.google.android.datatransport.cct.a.f23518g).b("PLAY_BILLING_LIBRARY", zziv.class, t8.c.b("proto"), new t8.g() {
                @Override
                public final Object apply(Object obj) {
                    return ((zziv) obj).zzc();
                }
            });
        } catch (Throwable unused) {
            this.f18574a = true;
        }
    }

    public final void a(zziv zzivVar) {
        if (this.f18574a) {
            zzb.zzk("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.f18575b.a(t8.d.f(zzivVar));
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "logging failed.");
        }
    }
}
