package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import defpackage.g7f;
import java.lang.ref.WeakReference;

final class zzck extends com.google.android.gms.internal.play_billing.zzad {
    final WeakReference zza;
    final ResultReceiver zzb;

    public zzck(WeakReference weakReference, ResultReceiver resultReceiver, zzcm zzcmVar) {
        this.zza = weakReference;
        this.zzb = resultReceiver;
    }

    @Override
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            this.zzb.send(6, null);
            return;
        }
        if (!bundle.containsKey("RESPONSE_CODE")) {
            a.n("BillingClient", "Response bundle doesn't contain a response code");
            this.zzb.send(6, bundle);
            return;
        }
        int iB = a.b(bundle, "BillingClient");
        if (iB != 0) {
            a.n("BillingClient", zza.zza(iB, "Unable to launch intent for billing program information dialog"));
            this.zzb.send(iB, bundle);
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
        if (pendingIntent == null) {
            a.m("BillingClient", "User has acknowledged the billing program information dialog before.");
            this.zzb.send(0, bundle);
            return;
        }
        try {
            Activity activity = (Activity) this.zza.get();
            if (activity != null && !activity.isFinishing() && !activity.isDestroyed()) {
                Intent intent = new Intent(activity, (Class<?>) ProxyBillingActivityV2.class);
                intent.putExtra("billing_program_information_dialog_result_receiver", this.zzb);
                intent.putExtra("billing_program_information_dialog_pending_intent", pendingIntent);
                activity.startActivity(intent);
                return;
            }
            a.n("BillingClient", "Activity is null or unavailable, unable to launch intent for billing program information dialog.");
            Bundle bundle2 = new Bundle();
            bundle2.putInt("RESPONSE_CODE", 5);
            bundle2.putString("DEBUG_MESSAGE", "Activity is null or unavailable.");
            this.zzb.send(5, bundle2);
        } catch (RuntimeException e) {
            a.o("BillingClient", "Runtime error while launching intent for billing program information dialog.", e);
            Bundle bundle3 = new Bundle();
            bundle3.putInt("RESPONSE_CODE", 6);
            bundle3.putString("DEBUG_MESSAGE", "An internal error occurred.");
            bundle3.putInt("INTERNAL_LOG_ERROR_REASON", zzjs.RUNTIME_EXCEPTION_WHEN_LAUNCHING_INTENT.zza());
            bundle3.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", String.format("%s: %s", e.getClass().getName(), g7f.c(e.getMessage())));
            this.zzb.send(6, bundle3);
        }
    }
}
