package com.google.android.gms.auth.api.accounttransfer;

import android.os.RemoteException;
import com.google.android.gms.internal.auth.zzaq;
import com.google.android.gms.internal.auth.zzau;

final class zzg extends zzl {
    final zzaq zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzg(AccountTransferClient accountTransferClient, int i10, zzaq zzaqVar) {
        super(1608, null);
        this.zza = zzaqVar;
    }

    @Override
    protected final void zza(zzau zzauVar) throws RemoteException {
        zzauVar.zzd(new zzf(this, this), this.zza);
    }
}
