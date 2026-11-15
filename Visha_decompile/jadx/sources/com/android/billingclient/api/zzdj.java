package com.android.billingclient.api;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;

final class zzdj {
    public static void zza(zzjs zzjsVar, BillingResult billingResult, zzdd zzddVar, int i, int i2) {
        int i3 = zzdc.zza;
        zzddVar.zzb(zzdc.zzb(zzjsVar, i, billingResult, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), i2);
    }

    public static void zzb(zzjs zzjsVar, BillingResult billingResult, zzdd zzddVar, int i, int i2, @Nullable String str) {
        int i3 = zzdc.zza;
        zzddVar.zzb(zzdc.zzb(zzjsVar, i, billingResult, str, zzjz.BROADCAST_ACTION_UNSPECIFIED), i2);
    }
}
