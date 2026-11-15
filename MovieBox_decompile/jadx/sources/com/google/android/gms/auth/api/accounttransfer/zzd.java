package com.google.android.gms.auth.api.accounttransfer;

final class zzd extends zzj {
    final zze zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzd(zze zzeVar, zzl zzlVar) {
        super(zzlVar);
        this.zza = zzeVar;
    }

    @Override
    public final void zzb(byte[] bArr) {
        this.zza.zzb.setResult(bArr);
    }
}
