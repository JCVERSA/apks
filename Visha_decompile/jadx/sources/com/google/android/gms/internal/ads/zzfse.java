package com.google.android.gms.internal.ads;

import android.os.Bundle;
import defpackage.n1i;
import defpackage.o1i;
import defpackage.p1i;

final class zzfse extends zzfqx {
    final j6 zza;
    private final p1i zzb;

    public zzfse(j6 j6Var, p1i p1iVar) {
        this.zza = j6Var;
        this.zzb = p1iVar;
    }

    @Override
    public final void zzb(Bundle bundle) {
        int i = bundle.getInt("statusCode", 8150);
        String string = bundle.getString("sessionToken");
        n1i n1iVarC = o1i.c();
        n1iVarC.b(i);
        if (string != null) {
            n1iVarC.a(string);
        }
        this.zzb.a(n1iVarC.c());
        if (i == 8157) {
            this.zza.d();
        }
    }
}
