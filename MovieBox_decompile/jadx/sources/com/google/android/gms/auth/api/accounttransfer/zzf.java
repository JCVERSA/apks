package com.google.android.gms.auth.api.accounttransfer;

final class zzf extends zzj {
    final zzg zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzf(zzg zzgVar, zzl zzlVar) {
        super(zzlVar);
        this.zza = zzgVar;
    }

    @Override
    public final void zzc(DeviceMetaData deviceMetaData) {
        this.zza.zzb.setResult(deviceMetaData);
    }
}
