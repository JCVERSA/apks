package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import defpackage.wd8;

final class zzcu extends zzdt {
    final Bundle zza;
    final b zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcu(b bVar, Bundle bundle) {
        super(bVar, true);
        this.zzb = bVar;
        this.zza = bundle;
    }

    @Override
    public final void zza() throws RemoteException {
        ((zzcc) wd8.l(this.zzb.i)).setConsentThirdParty(this.zza, this.zzh);
    }
}
