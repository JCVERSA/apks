package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzhy;
import com.google.android.gms.internal.play_billing.zzic;
import com.google.android.gms.internal.play_billing.zzio;
import com.google.android.gms.internal.play_billing.zziu;
import com.google.android.gms.internal.play_billing.zziv;
import com.google.android.gms.internal.play_billing.zziz;

final class q0 implements n0 {

    private final zzio f18532a;

    private final s0 f18533b;

    q0(Context context, zzio zzioVar) {
        this.f18533b = new s0(context);
        this.f18532a = zzioVar;
    }

    @Override
    public final void a(zzhy zzhyVar) {
        if (zzhyVar == null) {
            return;
        }
        try {
            zziu zziuVarZzv = zziv.zzv();
            zzio zzioVar = this.f18532a;
            if (zzioVar != null) {
                zziuVarZzv.zzk(zzioVar);
            }
            zziuVarZzv.zzi(zzhyVar);
            this.f18533b.a((zziv) zziuVarZzv.zzc());
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "Unable to log.");
        }
    }

    @Override
    public final void b(zziz zzizVar) {
        if (zzizVar == null) {
            return;
        }
        try {
            zziu zziuVarZzv = zziv.zzv();
            zzio zzioVar = this.f18532a;
            if (zzioVar != null) {
                zziuVarZzv.zzk(zzioVar);
            }
            zziuVarZzv.zzl(zzizVar);
            this.f18533b.a((zziv) zziuVarZzv.zzc());
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "Unable to log.");
        }
    }

    @Override
    public final void c(zzic zzicVar) {
        if (zzicVar == null) {
            return;
        }
        try {
            zziu zziuVarZzv = zziv.zzv();
            zzio zzioVar = this.f18532a;
            if (zzioVar != null) {
                zziuVarZzv.zzk(zzioVar);
            }
            zziuVarZzv.zzj(zzicVar);
            this.f18533b.a((zziv) zziuVarZzv.zzc());
        } catch (Throwable unused) {
            zzb.zzk("BillingLogger", "Unable to log.");
        }
    }
}
