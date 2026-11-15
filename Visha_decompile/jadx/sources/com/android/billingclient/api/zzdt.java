package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.a;
import defpackage.c8j;
import defpackage.h7b;
import defpackage.j9b;
import defpackage.ka3;
import defpackage.rd3;
import defpackage.uo0;
import defpackage.x8b;

final class zzdt {
    private boolean zza;
    private x8b zzb;

    public zzdt(Context context) {
        try {
            j9b.f(context);
            this.zzb = j9b.c().g(uo0.g).a("PLAY_BILLING_LIBRARY", c8j.class, ka3.b("proto"), new h7b() {
                @Override
                public final Object apply(Object obj) {
                    return ((c8j) obj).b();
                }
            });
        } catch (Throwable unused) {
            this.zza = true;
        }
    }

    public final void zza(c8j c8jVar) {
        if (this.zza) {
            a.n("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.zzb.a(rd3.e(c8jVar));
        } catch (Throwable unused) {
            a.n("BillingLogger", "logging failed.");
        }
    }
}
