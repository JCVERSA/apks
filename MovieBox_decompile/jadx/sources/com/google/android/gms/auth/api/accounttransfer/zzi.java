package com.google.android.gms.auth.api.accounttransfer;

import android.os.RemoteException;
import com.google.android.gms.internal.auth.zzau;
import com.google.android.gms.internal.auth.zzav;

final class zzi extends zzn {
    final zzav zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzi(AccountTransferClient accountTransferClient, int i10, zzav zzavVar) {
        super(1610);
        this.zza = zzavVar;
    }

    @Override
    protected final void zza(zzau zzauVar) throws RemoteException {
        zzauVar.zzf(this.zzc, this.zza);
    }
}
