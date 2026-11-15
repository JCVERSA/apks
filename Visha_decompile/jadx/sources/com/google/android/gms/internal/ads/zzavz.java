package com.google.android.gms.internal.ads;

import android.content.Context;
import defpackage.zwh;

final class zzavz implements Runnable {
    final int zza;
    final e0 zzb;

    public zzavz(e0 e0Var, int i, boolean z) {
        this.zza = i;
        this.zzb = e0Var;
    }

    @Override
    public final void run() {
        t tVarA;
        int i = this.zza;
        e0 e0Var = this.zzb;
        if (i > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException unused) {
            }
        }
        try {
            Context context = e0Var.a;
            tVarA = zwh.a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
        } catch (Throwable unused2) {
            tVarA = null;
        }
        e0 e0Var2 = this.zzb;
        e0Var2.i = tVarA;
        int i2 = this.zza;
        if (i2 < 4) {
            if (tVarA != null && tVarA.H0() && !tVarA.T0().equals("0000000000000000000000000000000000000000000000000000000000000000") && tVarA.I0() && tVarA.S0().g0() && tVarA.S0().b0() != -2) {
                return;
            }
            e0Var2.n(i2 + 1, true);
        }
    }
}
