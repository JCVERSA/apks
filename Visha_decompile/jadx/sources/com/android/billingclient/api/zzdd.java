package com.android.billingclient.api;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzjz;
import defpackage.a9j;
import defpackage.b6j;
import defpackage.f5j;
import defpackage.i9j;
import defpackage.n5j;
import defpackage.u8j;

interface zzdd {
    public static final int zza = 0;

    static {
        com.google.android.gms.internal.play_billing.zzcd.zzc("com.android.vending.billing.PURCHASES_UPDATED", zzjz.PURCHASES_UPDATED_ACTION, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED", zzjz.LOCAL_PURCHASES_UPDATED_ACTION, "com.android.vending.billing.ALTERNATIVE_BILLING", zzjz.ALTERNATIVE_BILLING_ACTION);
    }

    void zza(f5j f5jVar);

    void zzb(@Nullable f5j f5jVar, int i);

    void zzc(f5j f5jVar, int i, long j);

    void zzd(f5j f5jVar, long j, boolean z);

    void zze(f5j f5jVar, int i, long j, boolean z);

    void zzf(@Nullable n5j n5jVar);

    void zzg(@Nullable n5j n5jVar, int i);

    void zzh(n5j n5jVar, long j, boolean z);

    void zzi(b6j b6jVar);

    void zzj(@Nullable BillingResult billingResult, long j);

    void zzk(long j);

    void zzl(u8j u8jVar);

    void zzm(a9j a9jVar);

    void zzn(@Nullable i9j i9jVar);
}
