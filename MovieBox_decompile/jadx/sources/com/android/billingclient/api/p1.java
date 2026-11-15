package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzaf;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzej;
import com.google.android.gms.internal.play_billing.zzhy;
import java.util.List;

final class p1 extends BroadcastReceiver {

    private final v f18526a;

    private final n0 f18527b;

    private boolean f18528c;

    final q1 f18529d;

    p1(q1 q1Var, t0 t0Var, n0 n0Var, n1 n1Var) {
        this.f18529d = q1Var;
        this.f18526a = null;
        this.f18527b = n0Var;
    }

    static t0 a(p1 p1Var) {
        p1Var.getClass();
        return null;
    }

    private final void d(Bundle bundle, n nVar, int i10) {
        if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") == null) {
            this.f18527b.a(m0.a(23, i10, nVar));
            return;
        }
        try {
            this.f18527b.a(zzhy.zzx(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD"), zzej.zza()));
        } catch (Throwable unused) {
            zzb.zzk("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    public final synchronized void c(Context context, IntentFilter intentFilter, String str, IntentFilter intentFilter2) {
        try {
            if (this.f18528c) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this.f18529d.f18535b, intentFilter, null, null, 2);
            } else {
                this.f18529d.f18534a.getApplicationContext().getPackageName();
                context.registerReceiver(this.f18529d.f18535b, intentFilter);
            }
            this.f18528c = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        int i10 = 1;
        if (extras == null) {
            zzb.zzk("BillingBroadcastManager", "Bundle is null.");
            n0 n0Var = this.f18527b;
            n nVar = p0.f18509j;
            n0Var.a(m0.a(11, 1, nVar));
            v vVar = this.f18526a;
            if (vVar != null) {
                vVar.a(nVar, null);
                return;
            }
            return;
        }
        n nVarZze = zzb.zze(intent, "BillingBroadcastManager");
        String action = intent.getAction();
        String string = extras.getString("INTENT_SOURCE");
        if (string == "LAUNCH_BILLING_FLOW" || (string != null && string.equals("LAUNCH_BILLING_FLOW"))) {
            i10 = 2;
        }
        if (action.equals("com.android.vending.billing.PURCHASES_UPDATED") || action.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
            List listZzi = zzb.zzi(extras);
            if (nVarZze.b() == 0) {
                this.f18527b.c(m0.b(i10));
            } else {
                d(extras, nVarZze, i10);
            }
            this.f18526a.a(nVarZze, listZzi);
            return;
        }
        if (action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
            if (nVarZze.b() != 0) {
                d(extras, nVarZze, i10);
                this.f18526a.a(nVarZze, zzaf.zzk());
                return;
            }
            zzb.zzk("BillingBroadcastManager", "AlternativeBillingListener and UserChoiceBillingListener is null.");
            n0 n0Var2 = this.f18527b;
            n nVar2 = p0.f18509j;
            n0Var2.a(m0.a(77, i10, nVar2));
            this.f18526a.a(nVar2, zzaf.zzk());
        }
    }

    p1(q1 q1Var, v vVar, c cVar, n0 n0Var, n1 n1Var) {
        this.f18529d = q1Var;
        this.f18526a = vVar;
        this.f18527b = n0Var;
    }
}
