package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.ActivityOptionsCompat;
import androidx.p003activity.ComponentActivity;
import androidx.p003activity.result.ActivityResult;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.IntentSenderRequest;
import androidx.p003activity.result.contract.ActivityResultContracts;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;

@UsedByReflection("PlatformActivityProxy")
public class ProxyBillingActivityV2 extends ComponentActivity {
    private ActivityResultLauncher zza;
    private ActivityResultLauncher zzb;
    private ActivityResultLauncher zzc;
    private ActivityResultLauncher zzd;
    private ActivityResultLauncher zze;
    private ActivityResultLauncher zzf;

    @Nullable
    private ResultReceiver zzg;

    @Nullable
    private ResultReceiver zzh;

    @Nullable
    private ResultReceiver zzi;

    @Nullable
    private ResultReceiver zzj;

    @Nullable
    private ResultReceiver zzk;

    @Nullable
    private ResultReceiver zzl;

    @Nullable
    private static final ActivityOptionsCompat zzg() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 36) {
            return ActivityOptionsCompat.makeBasic().setPendingIntentBackgroundActivityStartMode(3);
        }
        if (i >= 34) {
            return ActivityOptionsCompat.makeBasic().setPendingIntentBackgroundActivityStartMode(1);
        }
        return null;
    }

    @Override
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.zza = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                this.zza.zza((ActivityResult) obj);
            }
        });
        this.zzb = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                this.zza.zzc((ActivityResult) obj);
            }
        });
        this.zzc = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                this.zza.zzd((ActivityResult) obj);
            }
        });
        this.zzd = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                this.zza.zze((ActivityResult) obj);
            }
        });
        this.zze = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                this.zza.zzb((ActivityResult) obj);
            }
        });
        this.zzf = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() {
            @Override
            public final void onActivityResult(Object obj) {
                this.zza.zzf((ActivityResult) obj);
            }
        });
        if (bundle != null) {
            if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
                this.zzg = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
            }
            if (bundle.containsKey("external_payment_dialog_result_receiver")) {
                this.zzh = (ResultReceiver) bundle.getParcelable("external_payment_dialog_result_receiver");
            }
            if (bundle.containsKey("external_offer_flow_result_receiver")) {
                this.zzi = (ResultReceiver) bundle.getParcelable("external_offer_flow_result_receiver");
            }
            if (bundle.containsKey("launch_external_link_result_receiver")) {
                this.zzj = (ResultReceiver) bundle.getParcelable("launch_external_link_result_receiver");
            }
            if (bundle.containsKey("billing_program_information_dialog_result_receiver")) {
                this.zzk = (ResultReceiver) bundle.getParcelable("billing_program_information_dialog_result_receiver");
            }
            if (bundle.containsKey("subscription_management_action_result_receiver")) {
                this.zzl = (ResultReceiver) bundle.getParcelable("subscription_management_action_result_receiver");
                return;
            }
            return;
        }
        a.m("ProxyBillingActivityV2", "Launching Play Store billing dialog");
        if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
            PendingIntent pendingIntent = (PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            this.zzg = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
            this.zza.launch(new IntentSenderRequest.Builder(pendingIntent).build(), zzg());
            return;
        }
        if (getIntent().hasExtra("external_payment_dialog_pending_intent")) {
            PendingIntent pendingIntent2 = (PendingIntent) getIntent().getParcelableExtra("external_payment_dialog_pending_intent");
            this.zzh = (ResultReceiver) getIntent().getParcelableExtra("external_payment_dialog_result_receiver");
            this.zzb.launch(new IntentSenderRequest.Builder(pendingIntent2).build(), zzg());
            return;
        }
        if (getIntent().hasExtra("external_offer_flow_pending_intent")) {
            PendingIntent pendingIntent3 = (PendingIntent) getIntent().getParcelableExtra("external_offer_flow_pending_intent");
            this.zzi = (ResultReceiver) getIntent().getParcelableExtra("external_offer_flow_result_receiver");
            this.zzc.launch(new IntentSenderRequest.Builder(pendingIntent3).build(), zzg());
            return;
        }
        if (getIntent().hasExtra("launch_external_link_flow_pending_intent")) {
            PendingIntent pendingIntent4 = (PendingIntent) getIntent().getParcelableExtra("launch_external_link_flow_pending_intent");
            this.zzj = (ResultReceiver) getIntent().getParcelableExtra("launch_external_link_result_receiver");
            this.zzd.launch(new IntentSenderRequest.Builder(pendingIntent4).build(), zzg());
        } else if (getIntent().hasExtra("billing_program_information_dialog_pending_intent")) {
            PendingIntent pendingIntent5 = (PendingIntent) getIntent().getParcelableExtra("billing_program_information_dialog_pending_intent");
            this.zzk = (ResultReceiver) getIntent().getParcelableExtra("billing_program_information_dialog_result_receiver");
            this.zze.launch(new IntentSenderRequest.Builder(pendingIntent5).build(), zzg());
        } else if (getIntent().hasExtra("SUBSCRIPTION_MANAGEMENT_INTENT")) {
            PendingIntent pendingIntent6 = (PendingIntent) getIntent().getParcelableExtra("SUBSCRIPTION_MANAGEMENT_INTENT");
            this.zzl = (ResultReceiver) getIntent().getParcelableExtra("subscription_management_action_result_receiver");
            this.zzf.launch(new IntentSenderRequest.Builder(pendingIntent6).build(), zzg());
        }
    }

    @Override
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.zzg;
        if (resultReceiver != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.zzh;
        if (resultReceiver2 != null) {
            bundle.putParcelable("external_payment_dialog_result_receiver", resultReceiver2);
        }
        ResultReceiver resultReceiver3 = this.zzi;
        if (resultReceiver3 != null) {
            bundle.putParcelable("external_offer_flow_result_receiver", resultReceiver3);
        }
        ResultReceiver resultReceiver4 = this.zzj;
        if (resultReceiver4 != null) {
            bundle.putParcelable("launch_external_link_result_receiver", resultReceiver4);
        }
        ResultReceiver resultReceiver5 = this.zzk;
        if (resultReceiver5 != null) {
            bundle.putParcelable("billing_program_information_dialog_result_receiver", resultReceiver5);
        }
        ResultReceiver resultReceiver6 = this.zzl;
        if (resultReceiver6 != null) {
            bundle.putParcelable("subscription_management_action_result_receiver", resultReceiver6);
        }
    }

    @VisibleForTesting
    public final void zza(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        int responseCode = a.i(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zzg;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, data == null ? null : data.getExtras());
        }
        if (activityResult.getResultCode() != -1 || responseCode != 0) {
            a.n("ProxyBillingActivityV2", "Alternative billing only dialog finished with resultCode " + activityResult.getResultCode() + " and billing's responseCode: " + responseCode);
        }
        finish();
    }

    @VisibleForTesting
    public final void zzb(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        int responseCode = a.i(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zzk;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, data == null ? null : data.getExtras());
        }
        if (activityResult.getResultCode() != -1 || responseCode != 0) {
            a.n("ProxyBillingActivityV2", "Billing program info dialog finished with resultCode " + activityResult.getResultCode() + " and billing's responseCode: " + responseCode);
        }
        finish();
    }

    @VisibleForTesting
    public final void zzc(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        int responseCode = a.i(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zzh;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, data == null ? null : data.getExtras());
        }
        if (activityResult.getResultCode() != -1 || responseCode != 0) {
            a.n("ProxyBillingActivityV2", String.format("External offer dialog finished with resultCode: %s and billing's responseCode: %s", Integer.valueOf(activityResult.getResultCode()), Integer.valueOf(responseCode)));
        }
        finish();
    }

    @VisibleForTesting
    public final void zzd(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        Bundle extras = data == null ? null : data.getExtras();
        if (activityResult.getResultCode() != -1) {
            if (extras == null) {
                extras = new Bundle();
            }
            a.n("ProxyBillingActivityV2", String.format("External offer flow finished with resultCode: %s", Integer.valueOf(activityResult.getResultCode())));
            extras.putInt("INTERNAL_LOG_ERROR_REASON", zzjs.ERROR_IN_ACTIVITY_RESULT.zza());
            extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", String.format("External offer flow finished with error resultCode: %s", Integer.valueOf(activityResult.getResultCode())));
        }
        int responseCode = a.i(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zzi;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, extras);
        } else {
            a.n("ProxyBillingActivityV2", "External offer flow result receiver is null");
        }
        if (responseCode != 0) {
            a.n("ProxyBillingActivityV2", String.format("External offer flow finished with billing responseCode: %s", Integer.valueOf(responseCode)));
        }
        finish();
    }

    @VisibleForTesting
    public final void zze(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        Bundle extras = data == null ? null : data.getExtras();
        if (activityResult.getResultCode() != -1) {
            if (extras == null) {
                extras = new Bundle();
            }
            a.n("ProxyBillingActivityV2", String.format("Launch external link flow finished with resultCode: %s", Integer.valueOf(activityResult.getResultCode())));
            extras.putInt("INTERNAL_LOG_ERROR_REASON", zzjs.ERROR_IN_ACTIVITY_RESULT.zza());
            extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", String.format("Launch external link flow finished with error resultCode: %s", Integer.valueOf(activityResult.getResultCode())));
        }
        int responseCode = a.i(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zzj;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, extras);
        } else {
            a.n("ProxyBillingActivityV2", "Launch external link flow result receiver is null");
        }
        if (responseCode != 0) {
            a.n("ProxyBillingActivityV2", String.format("Launch external link flow finished with billing responseCode: %s", Integer.valueOf(responseCode)));
        }
        finish();
    }

    @VisibleForTesting
    public final void zzf(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        int responseCode = a.i(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zzl;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, data == null ? null : data.getExtras());
        }
        if (activityResult.getResultCode() != -1 || responseCode != 0) {
            a.n("ProxyBillingActivityV2", String.format("Subscription management action finished with resultCode: %s and billing's responseCode: %s", Integer.valueOf(activityResult.getResultCode()), Integer.valueOf(responseCode)));
        }
        finish();
    }
}
