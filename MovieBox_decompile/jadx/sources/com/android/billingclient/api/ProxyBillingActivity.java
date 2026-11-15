package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.zzb;

@UsedByReflection("PlatformActivityProxy")
public class ProxyBillingActivity extends ComponentActivity {

    private androidx.activity.result.b f18411a;

    private ResultReceiver f18412b;

    private ResultReceiver f18413c;

    private ResultReceiver f18414d;

    private boolean f18415e;

    private boolean f18416f;

    private Intent B(String str) {
        Intent intent = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", str);
        return intent;
    }

    private Intent C() {
        getApplicationContext().getPackageName();
        Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    void D(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        int iZzc = zzb.zzc(data, "ProxyBillingActivity");
        ResultReceiver resultReceiver = this.f18414d;
        if (resultReceiver != null) {
            resultReceiver.send(iZzc, data == null ? null : data.getExtras());
        }
        if (activityResult.getResultCode() != -1 || iZzc != 0) {
            zzb.zzk("ProxyBillingActivity", "Alternative billing only dialog finished with resultCode " + activityResult.getResultCode() + " and billing's responseCode: " + iZzc);
        }
        finish();
    }

    @Override
    protected void onActivityResult(int i10, int i11, Intent intent) {
        Intent intentC;
        super.onActivityResult(i10, i11, intent);
        if (i10 == 100 || i10 == 110) {
            int iZzc = zzb.zzc(intent, "ProxyBillingActivity");
            if (i11 != -1) {
                zzb.zzk("ProxyBillingActivity", "Activity finished with resultCode " + i11 + " and billing's responseCode: " + iZzc);
            } else if (iZzc != 0) {
                i11 = -1;
                zzb.zzk("ProxyBillingActivity", "Activity finished with resultCode " + i11 + " and billing's responseCode: " + iZzc);
            } else {
                iZzc = 0;
            }
            ResultReceiver resultReceiver = this.f18412b;
            if (resultReceiver != null) {
                resultReceiver.send(iZzc, intent != null ? intent.getExtras() : null);
            } else {
                if (intent == null) {
                    intentC = C();
                } else if (intent.getExtras() != null) {
                    String string = intent.getExtras().getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                    if (string != null) {
                        intentC = B(string);
                        intentC.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                    } else {
                        intentC = C();
                        intentC.putExtras(intent.getExtras());
                        intentC.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                    }
                } else {
                    intentC = C();
                    zzb.zzk("ProxyBillingActivity", "Got null bundle!");
                    intentC.putExtra("RESPONSE_CODE", 6);
                    intentC.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    n.a aVarC = n.c();
                    aVarC.c(6);
                    aVarC.b("An internal error occurred.");
                    intentC.putExtra("FAILURE_LOGGING_PAYLOAD", m0.a(22, 2, aVarC.a()).zzc());
                    intentC.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                }
                if (i10 == 110) {
                    intentC.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                }
                sendBroadcast(intentC);
            }
        } else if (i10 == 101) {
            int iZza = zzb.zza(intent, "ProxyBillingActivity");
            ResultReceiver resultReceiver2 = this.f18413c;
            if (resultReceiver2 != null) {
                resultReceiver2.send(iZza, intent != null ? intent.getExtras() : null);
            }
        } else {
            zzb.zzk("ProxyBillingActivity", "Got onActivityResult with wrong requestCode: " + i10 + "; skipping...");
        }
        this.f18415e = false;
        finish();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        int i10;
        PendingIntent pendingIntent;
        int i11;
        super.onCreate(bundle);
        this.f18411a = registerForActivityResult(new f.k(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                this.f18431a.D((ActivityResult) obj);
            }
        });
        if (bundle != null) {
            zzb.zzj("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            this.f18415e = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (bundle.containsKey("result_receiver")) {
                this.f18412b = (ResultReceiver) bundle.getParcelable("result_receiver");
            } else if (bundle.containsKey("in_app_message_result_receiver")) {
                this.f18413c = (ResultReceiver) bundle.getParcelable("in_app_message_result_receiver");
            } else if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
                this.f18414d = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
            }
            this.f18416f = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
            return;
        }
        zzb.zzj("ProxyBillingActivity", "Launching Play Store billing flow");
        if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
            PendingIntent pendingIntent2 = (PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            this.f18414d = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
            this.f18411a.a(new IntentSenderRequest.a(pendingIntent2).a());
            return;
        }
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                this.f18416f = true;
                i11 = 110;
                i10 = i11;
            } else {
                i10 = 100;
            }
        } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
            this.f18412b = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
            i10 = 100;
        } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
            this.f18413c = (ResultReceiver) getIntent().getParcelableExtra("in_app_message_result_receiver");
            i11 = 101;
            i10 = i11;
        } else {
            i10 = 100;
            pendingIntent = null;
        }
        try {
            this.f18415e = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), i10, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e10) {
            zzb.zzl("ProxyBillingActivity", "Got exception while trying to start a purchase flow.", e10);
            ResultReceiver resultReceiver = this.f18412b;
            if (resultReceiver != null) {
                resultReceiver.send(6, null);
            } else {
                ResultReceiver resultReceiver2 = this.f18413c;
                if (resultReceiver2 != null) {
                    resultReceiver2.send(0, null);
                } else {
                    Intent intentC = C();
                    if (this.f18416f) {
                        intentC.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                    }
                    intentC.putExtra("RESPONSE_CODE", 6);
                    intentC.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    sendBroadcast(intentC);
                }
            }
            this.f18415e = false;
            finish();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f18415e) {
            Intent intentC = C();
            intentC.putExtra("RESPONSE_CODE", 1);
            intentC.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            sendBroadcast(intentC);
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f18412b;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f18413c;
        if (resultReceiver2 != null) {
            bundle.putParcelable("in_app_message_result_receiver", resultReceiver2);
        }
        ResultReceiver resultReceiver3 = this.f18414d;
        if (resultReceiver3 != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver3);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f18415e);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.f18416f);
    }
}
