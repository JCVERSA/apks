package com.google.android.gms.auth.api.accounttransfer;

import android.os.RemoteException;
import com.google.android.gms.internal.auth.zzau;
import com.google.android.gms.internal.auth.zzbb;

final class zzh extends zzn {
    final zzbb zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzh(AccountTransferClient accountTransferClient, int i10, zzbb zzbbVar) {
        super(1609);
        this.zza = zzbbVar;
    }

    @Override
    protected final void zza(zzau zzauVar) throws RemoteException {
        zzauVar.zze(this.zzc, this.zza);
    }
}
