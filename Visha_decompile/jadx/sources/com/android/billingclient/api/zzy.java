package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import defpackage.f5j;
import java.util.List;
import java.util.Objects;
import org.json.JSONException;

@VisibleForTesting
final class zzy extends BroadcastReceiver {
    final zzz zza;
    private boolean zzb;
    private final boolean zzc;

    public zzy(zzz zzzVar, boolean z) {
        Objects.requireNonNull(zzzVar);
        this.zza = zzzVar;
        this.zzc = z;
    }

    private final void zzd(Bundle bundle, BillingResult billingResult, int i, zzjz zzjzVar, long j, boolean z) {
        try {
            if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") != null) {
                this.zza.zze.zzd(f5j.D(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD")), j, z);
            } else {
                this.zza.zze.zzd(zzdc.zzb(zzjs.BILLING_RESULT_RECEIVED_FROM_PHONESKY, i, billingResult, null, zzjzVar), j, z);
            }
        } catch (Throwable unused) {
            a.n("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0039  */
    @Override
    public final void onReceive(Context context, Intent intent) {
        byte b;
        zzjz zzjzVar;
        int i;
        BillingResult billingResultI;
        int iIntValue;
        String action = intent.getAction();
        int iHashCode = action.hashCode();
        if (iHashCode != -1484087650) {
            if (iHashCode != -337612916) {
                if (iHashCode == 345207161 && action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
                    b = 2;
                } else {
                    b = -1;
                }
            } else if (action.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (action.equals("com.android.vending.billing.PURCHASES_UPDATED")) {
            b = 0;
        } else {
            b = -1;
        }
        if (b == 0) {
            zzjzVar = zzjz.PURCHASES_UPDATED_ACTION;
        } else if (b != 1) {
            zzjzVar = b != 2 ? zzjz.BROADCAST_ACTION_UNSPECIFIED : zzjz.ALTERNATIVE_BILLING_ACTION;
        } else {
            zzjzVar = zzjz.LOCAL_PURCHASES_UPDATED_ACTION;
        }
        zzjz zzjzVar2 = zzjzVar;
        zzjz zzjzVar3 = zzjz.LOCAL_PURCHASES_UPDATED_ACTION;
        if (zzjzVar2.equals(zzjzVar3) || zzjzVar2.equals(zzjz.ALTERNATIVE_BILLING_ACTION)) {
            i = 2;
        } else {
            i = zzjzVar2.equals(zzjz.PURCHASES_UPDATED_ACTION) ? 32 : 1;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            a.n("BillingBroadcastManager", "Bundle is null.");
            zzz zzzVar = this.zza;
            zzdd zzddVar = zzzVar.zze;
            zzjs zzjsVar = zzjs.NULL_BUNDLE_IN_BROADCAST_RECEIVER;
            BillingResult billingResult = zzdh.zzh;
            zzddVar.zza(zzdc.zzb(zzjsVar, i, billingResult, null, zzjzVar2));
            if (zzzVar.zzb != null) {
                zzzVar.zzb.onPurchasesUpdated(billingResult, null);
                return;
            }
            return;
        }
        if (i == 2) {
            int i2 = a.a;
            BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
            builderNewBuilder.setResponseCode(a.b(intent.getExtras(), "BillingBroadcastManager"));
            Bundle extras2 = intent.getExtras();
            if (extras2 == null) {
                a.n("BillingBroadcastManager", "Unexpected null bundle received!");
            } else {
                Object obj = extras2.get("SUB_RESPONSE_CODE");
                if (obj == null) {
                    a.m("BillingBroadcastManager", "getOnPurchasesUpdatedSubResponseCodeFromBundle() got null response code, assuming OK");
                } else {
                    if (obj instanceof Integer) {
                        iIntValue = ((Integer) obj).intValue();
                    } else {
                        a.n("BillingBroadcastManager", "Unexpected type for bundle sub response code: ".concat(obj.getClass().getName()));
                    }
                    builderNewBuilder.setOnPurchasesUpdatedSubResponseCode(iIntValue);
                    builderNewBuilder.setDebugMessage(a.j(intent.getExtras(), "BillingBroadcastManager"));
                    billingResultI = builderNewBuilder.build();
                }
            }
            iIntValue = 0;
            builderNewBuilder.setOnPurchasesUpdatedSubResponseCode(iIntValue);
            builderNewBuilder.setDebugMessage(a.j(intent.getExtras(), "BillingBroadcastManager"));
            billingResultI = builderNewBuilder.build();
        } else {
            billingResultI = a.i(intent, "BillingBroadcastManager");
        }
        long j = extras.getLong("billingClientTransactionId", 0L);
        boolean z = extras.getBoolean("wasServiceAutoReconnected", false);
        if (zzjzVar2.equals(zzjz.PURCHASES_UPDATED_ACTION) || zzjzVar2.equals(zzjzVar3)) {
            zzz zzzVar2 = this.zza;
            List<Purchase> listL = a.l(extras, zzzVar2.zzi);
            if (billingResultI.getResponseCode() == 0) {
                zzzVar2.zze.zzh(zzdc.zzc(i, zzjzVar2), j, z);
            } else {
                zzd(extras, billingResultI, i, zzjzVar2, j, z);
            }
            zzzVar2.zzb.onPurchasesUpdated(billingResultI, listL);
            return;
        }
        if (zzjzVar2.equals(zzjz.ALTERNATIVE_BILLING_ACTION)) {
            if (billingResultI.getResponseCode() != 0) {
                zzd(extras, billingResultI, i, zzjzVar2, j, z);
                this.zza.zzb.onPurchasesUpdated(billingResultI, com.google.android.gms.internal.play_billing.zzca.zzk());
                return;
            }
            zzz zzzVar3 = this.zza;
            if (zzzVar3.zzc == null && zzzVar3.zzd == null) {
                a.n("BillingBroadcastManager", "No valid alternative billing listener is registered.");
                zzdd zzddVar2 = zzzVar3.zze;
                zzjs zzjsVar2 = zzjs.NULL_DEVELOPER_MANAGED_BILLING_LISTENER;
                BillingResult billingResult2 = zzdh.zzh;
                zzddVar2.zzd(zzdc.zzb(zzjsVar2, i, billingResult2, null, zzjzVar2), j, z);
                zzzVar3.zzb.onPurchasesUpdated(billingResult2, com.google.android.gms.internal.play_billing.zzca.zzk());
                return;
            }
            String string = extras.getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
            if (string == null) {
                a.n("BillingBroadcastManager", "Couldn't find alternative billing user choice data in bundle.");
                zzdd zzddVar3 = zzzVar3.zze;
                zzjs zzjsVar3 = zzjs.MISSING_ALTERNATIVE_BILLING_USER_CHOICE_DATA;
                BillingResult billingResult3 = zzdh.zzh;
                zzddVar3.zzd(zzdc.zzb(zzjsVar3, i, billingResult3, null, zzjzVar2), j, z);
                zzzVar3.zzb.onPurchasesUpdated(billingResult3, com.google.android.gms.internal.play_billing.zzca.zzk());
                return;
            }
            try {
                if (zzzVar3.zzc != null) {
                    zzzVar3.zzc.userSelectedAlternativeBilling(new UserChoiceDetails(string));
                } else {
                    zzzVar3.zzd.onUserSelectedDeveloperBilling(new DeveloperProvidedBillingDetails(string));
                }
                this.zza.zze.zzh(zzdc.zzc(i, zzjzVar2), j, z);
            } catch (JSONException unused) {
                a.n("BillingBroadcastManager", String.format("Error when parsing invalid user choice data: [%s]", string));
                zzz zzzVar4 = this.zza;
                zzdd zzddVar4 = zzzVar4.zze;
                zzjs zzjsVar4 = zzjs.INVALID_ALTERNATIVE_BILLING_USER_CHOICE_DATA;
                BillingResult billingResult4 = zzdh.zzh;
                zzddVar4.zzd(zzdc.zzb(zzjsVar4, i, billingResult4, null, zzjzVar2), j, z);
                zzzVar4.zzb.onPurchasesUpdated(billingResult4, com.google.android.gms.internal.play_billing.zzca.zzk());
            }
        }
    }

    public final synchronized void zza(Context context, IntentFilter intentFilter) {
        try {
            if (this.zzb) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this, intentFilter, true != this.zzc ? 4 : 2);
            } else {
                context.registerReceiver(this, intentFilter);
            }
            this.zzb = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzb(Context context, IntentFilter intentFilter, String str) {
        try {
            if (this.zzb) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, true != this.zzc ? 4 : 2);
            } else {
                context.registerReceiver(this, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
            }
            this.zzb = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc(Context context) {
        if (!this.zzb) {
            a.n("BillingBroadcastManager", "Receiver is not registered.");
        } else {
            context.unregisterReceiver(this);
            this.zzb = false;
        }
    }
}
