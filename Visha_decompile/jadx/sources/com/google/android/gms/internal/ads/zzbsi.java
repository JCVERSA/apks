package com.google.android.gms.internal.ads;

import defpackage.gaf;

final class zzbsi extends zzbgw {
    final u3 zza;

    public zzbsi(u3 u3Var, gaf gafVar) {
        this.zza = u3Var;
    }

    @Override
    public final void zze(zzbgn zzbgnVar, String str) {
        u3 u3Var = this.zza;
        if (u3Var.b == null) {
            return;
        }
        u3Var.b.onCustomClick(u3Var.f(zzbgnVar), str);
    }
}
