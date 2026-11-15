package com.android.billingclient.api;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import com.android.billingclient.BuildConfig;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import defpackage.o8j;
import defpackage.r6j;
import defpackage.u8j;
import defpackage.v6j;

@zzw
@UsedByReflection("PlatformActivityProxy")
public class ProxyBillingActivity extends Activity {
    static final String EXTERNAL_BROADCAST_PERMISSION = "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST";
    private static final String KEY_ACTIVITY_CODE = "activity_code";
    static final String KEY_IN_APP_MESSAGE_RESULT_RECEIVER = "in_app_message_result_receiver";
    private static final String KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED = "send_cancelled_broadcast_if_finished";
    private static final int REQUEST_CODE_FIRST_PARTY_PURCHASE_FLOW = 110;
    private static final int REQUEST_CODE_IN_APP_MESSAGE_FLOW = 101;
    private static final int REQUEST_CODE_LAUNCH_ACTIVITY = 100;

    @VisibleForTesting
    static final int RESULT_CODE_PLAY_CANCELED_WITH_ON_CREATE_RUNTIME_EXCEPTION = 5;

    @VisibleForTesting
    static final int RESULT_CODE_PLAY_CANCELLED = 3;

    @VisibleForTesting
    static final int RESULT_CODE_PLAY_CANCELLED_WITHOUT_COMPLETE_ACTION = 4;
    private static final String TAG = "ProxyBillingActivity";
    private int activityCode;
    private long billingClientTransactionId;

    @Nullable
    @VisibleForTesting
    zzdd billingLogger;

    @Nullable
    private ResultReceiver inAppMessageResultReceiver;
    private boolean isFlowFromFirstPartyClient;

    @Nullable
    @VisibleForTesting
    zzej proxyBillingBroadcastReceiver;
    private boolean sendCancelledBroadcastIfFinished;
    private boolean wasServiceAutoReconnected;

    private zzjs getLoggingErrorReason(int i, @Nullable Intent intent) {
        if (intent != null) {
            if (intent.getExtras() == null) {
                return zzjs.NULL_BUNDLE_IN_ACTIVITY_RESULT;
            }
            return i == 5 ? zzjs.PLAY_STORE_ON_CREATE_RUNTIME_EXCEPTION : zzjs.REASON_UNSPECIFIED;
        }
        if (i == -1) {
            return zzjs.NULL_DATA_WITH_OK_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT;
        }
        if (i == 0) {
            return zzjs.NULL_DATA_WITH_CANCELLED_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT;
        }
        if (i != 3) {
            return i != 4 ? zzjs.NULL_DATA_WITH_OTHER_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT : zzjs.NULL_DATA_WITH_PLAY_CANCELED_WITHOUT_COMPLETE_ACTION_RESULT_CODE;
        }
        return zzjs.NULL_DATA_WITH_PLAY_CANCELED_RESULT_CODE;
    }

    private boolean isInAppMessageFlow(@Nullable Bundle bundle) {
        if (bundle != null) {
            return bundle.containsKey(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
        }
        if (getIntent() == null) {
            return false;
        }
        return getIntent().hasExtra("IN_APP_MESSAGE_INTENT");
    }

    private boolean isKnownError(int i, @Nullable Intent intent) {
        return !getLoggingErrorReason(i, intent).equals(zzjs.REASON_UNSPECIFIED);
    }

    private boolean isProxyBillingBroadcastReceiverRegistered() {
        return this.proxyBillingBroadcastReceiver != null;
    }

    private Intent makeAlternativeBillingIntent(String str) {
        Intent intent = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", str);
        return intent;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0068  */
    private Intent makePurchaseUpdatedIntentWithResponseCodeAndReason(zzjs zzjsVar, long j, boolean z) {
        Intent intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
        if (!z) {
            intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", 6);
            intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
            BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
            builderNewBuilder.setResponseCode(6);
            builderNewBuilder.setDebugMessage("An internal error occurred.");
            BillingResult billingResultBuild = builderNewBuilder.build();
            int i = zzdc.zza;
            intentMakePurchasesUpdatedIntent.putExtra("FAILURE_LOGGING_PAYLOAD", zzdc.zzb(zzjsVar, 2, billingResultBuild, null, zzjz.BROADCAST_ACTION_UNSPECIFIED).b());
        } else if (isProxyBillingBroadcastReceiverRegistered() && this.proxyBillingBroadcastReceiver.zza() != null) {
            BillingResult billingResultZza = this.proxyBillingBroadcastReceiver.zza();
            intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", billingResultZza.getResponseCode());
            intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", billingResultZza.getDebugMessage());
        } else if (!isProxyBillingBroadcastReceiverRegistered() || this.proxyBillingBroadcastReceiver.zzc()) {
            intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", 6);
            intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
            BillingResult.Builder builderNewBuilder2 = BillingResult.newBuilder();
            builderNewBuilder2.setResponseCode(6);
            builderNewBuilder2.setDebugMessage("An internal error occurred.");
            BillingResult billingResultBuild2 = builderNewBuilder2.build();
            int i2 = zzdc.zza;
            intentMakePurchasesUpdatedIntent.putExtra("FAILURE_LOGGING_PAYLOAD", zzdc.zzb(zzjsVar, 2, billingResultBuild2, null, zzjz.BROADCAST_ACTION_UNSPECIFIED).b());
        } else {
            intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", 3);
            intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", "Play Store is blocked.");
            BillingResult.Builder builderNewBuilder3 = BillingResult.newBuilder();
            builderNewBuilder3.setResponseCode(3);
            builderNewBuilder3.setDebugMessage("Play Store is blocked.");
            BillingResult billingResultBuild3 = builderNewBuilder3.build();
            zzjs zzjsVar2 = zzjs.PLAY_STORE_APP_BLOCKED;
            int i3 = zzdc.zza;
            intentMakePurchasesUpdatedIntent.putExtra("FAILURE_LOGGING_PAYLOAD", zzdc.zzb(zzjsVar2, 2, billingResultBuild3, null, zzjz.BROADCAST_ACTION_UNSPECIFIED).b());
        }
        intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
        intentMakePurchasesUpdatedIntent.putExtra("billingClientTransactionId", j);
        intentMakePurchasesUpdatedIntent.putExtra("wasServiceAutoReconnected", this.wasServiceAutoReconnected);
        return intentMakePurchasesUpdatedIntent;
    }

    private Intent makePurchasesUpdatedIntent() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    private synchronized void registerProxyBillingBroadcastReceiver() {
        try {
            this.proxyBillingBroadcastReceiver = new zzej(this.billingLogger);
            IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.IN_APP_BILLING_RESULT_UPDATE_ACTION");
            intentFilter.addAction("com.android.vending.billing.PLAY_BILLING_ACTIVITY_CREATED_ACTION");
            ContextCompat.registerReceiver(this, this.proxyBillingBroadcastReceiver, intentFilter, EXTERNAL_BROADCAST_PERMISSION, null, 2);
        } catch (NoSuchMethodError | RuntimeException e) {
            this.proxyBillingBroadcastReceiver = null;
            if (e instanceof NoSuchMethodError) {
                zzdd zzddVar = this.billingLogger;
                o8j o8jVarY = u8j.y();
                o8jVarY.j(2);
                zzddVar.zzl((u8j) o8jVarY.f());
            } else {
                zzdd zzddVar2 = this.billingLogger;
                o8j o8jVarY2 = u8j.y();
                o8jVarY2.j(1);
                zzddVar2.zzl((u8j) o8jVarY2.f());
            }
            a.o(TAG, "Failed to register receiver.", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0067 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0069  */
    /* JADX WARN: Code duplicated, block: B:27:0x006a A[PHI: r10
      0x006a: PHI (r10v1 int) = (r10v0 int), (r10v15 int) binds: [B:24:0x0065, B:26:0x0069] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x0089  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:37:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:38:0x00be  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:43:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:6:0x0011  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x006a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:29:0x0089, please report this as an issue */
    @Override
    @zzw
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        boolean z;
        int responseCode;
        int i3;
        String string;
        Intent intentMakePurchasesUpdatedIntent;
        boolean z2;
        int iA;
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            if (intent == null) {
                z = false;
            } else {
                z = true;
            }
            responseCode = a.i(intent, TAG).getResponseCode();
            i3 = -1;
            if (i2 != -1) {
                a.n(TAG, "Activity finished with resultCode " + i2 + " and billing's responseCode: " + responseCode);
                i3 = i2;
            } else if (responseCode != 0) {
                i2 = -1;
                a.n(TAG, "Activity finished with resultCode " + i2 + " and billing's responseCode: " + responseCode);
                i3 = i2;
            }
            if (true != z) {
                a.n(TAG, "Got null data with resultCode " + i3 + "!");
            } else if (intent.getExtras() == null) {
                a.n(TAG, "Got null bundle!");
            }
            if (isKnownError(i3, intent)) {
                zzjs loggingErrorReason = getLoggingErrorReason(i3, intent);
                long j = this.billingClientTransactionId;
                if (intent == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                intentMakePurchasesUpdatedIntent = makePurchaseUpdatedIntentWithResponseCodeAndReason(loggingErrorReason, j, z2);
            } else {
                string = intent.getExtras().getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                if (string != null) {
                    intentMakePurchasesUpdatedIntent = makeAlternativeBillingIntent(string);
                    intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                } else {
                    intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
                    intentMakePurchasesUpdatedIntent.putExtras(intent.getExtras());
                    intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                }
                intentMakePurchasesUpdatedIntent.putExtra("billingClientTransactionId", this.billingClientTransactionId);
                intentMakePurchasesUpdatedIntent.putExtra("wasServiceAutoReconnected", this.wasServiceAutoReconnected);
            }
            if (i == 110) {
                intentMakePurchasesUpdatedIntent.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            sendBroadcast(intentMakePurchasesUpdatedIntent);
        } else if (i == 110) {
            if (intent == null) {
                z = false;
            } else {
                z = true;
            }
            responseCode = a.i(intent, TAG).getResponseCode();
            i3 = -1;
            if (i2 != -1) {
                a.n(TAG, "Activity finished with resultCode " + i2 + " and billing's responseCode: " + responseCode);
                i3 = i2;
            } else if (responseCode != 0) {
                i2 = -1;
                a.n(TAG, "Activity finished with resultCode " + i2 + " and billing's responseCode: " + responseCode);
                i3 = i2;
            }
            if (true != z) {
                a.n(TAG, "Got null data with resultCode " + i3 + "!");
            } else if (intent.getExtras() == null) {
                a.n(TAG, "Got null bundle!");
            }
            if (isKnownError(i3, intent)) {
                zzjs loggingErrorReason2 = getLoggingErrorReason(i3, intent);
                long j2 = this.billingClientTransactionId;
                if (intent == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                intentMakePurchasesUpdatedIntent = makePurchaseUpdatedIntentWithResponseCodeAndReason(loggingErrorReason2, j2, z2);
            } else {
                string = intent.getExtras().getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                if (string != null) {
                    intentMakePurchasesUpdatedIntent = makeAlternativeBillingIntent(string);
                    intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                } else {
                    intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
                    intentMakePurchasesUpdatedIntent.putExtras(intent.getExtras());
                    intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                }
                intentMakePurchasesUpdatedIntent.putExtra("billingClientTransactionId", this.billingClientTransactionId);
                intentMakePurchasesUpdatedIntent.putExtra("wasServiceAutoReconnected", this.wasServiceAutoReconnected);
            }
            if (i == 110) {
                intentMakePurchasesUpdatedIntent.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            sendBroadcast(intentMakePurchasesUpdatedIntent);
        } else if (i == 101) {
            int i4 = a.a;
            if (intent == null) {
                a.n(TAG, "Got null intent!");
                intent = null;
                iA = 0;
            } else {
                iA = a.a(intent.getExtras(), TAG);
            }
            ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
            if (resultReceiver != null) {
                resultReceiver.send(iA, intent != null ? intent.getExtras() : null);
            }
        } else {
            a.n(TAG, "Got onActivityResult with wrong requestCode: " + i + "; skipping...");
        }
        this.sendCancelledBroadcastIfFinished = false;
        if (isProxyBillingBroadcastReceiverRegistered()) {
            this.proxyBillingBroadcastReceiver.zzb();
        }
        finish();
    }

    @Override
    @zzw
    public void onCreate(@Nullable Bundle bundle) {
        int i;
        PendingIntent pendingIntent;
        Bundle bundle2;
        Bundle bundle3;
        super.onCreate(bundle);
        if (!isInAppMessageFlow(bundle)) {
            try {
                i = getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e) {
                a.o(TAG, "Failed to get package info for current package.", e);
                i = -1;
            }
            if (this.billingLogger == null) {
                Context applicationContext = getApplicationContext();
                r6j r6jVarI = v6j.I();
                r6jVarI.p(getPackageName());
                r6jVarI.w(BuildConfig.VERSION_NAME);
                r6jVarI.k(i);
                r6jVarI.j(Build.VERSION.SDK_INT);
                r6jVarI.o(926300087L);
                this.billingLogger = new zzdr(applicationContext, (v6j) r6jVarI.f());
            }
            registerProxyBillingBroadcastReceiver();
        }
        if (bundle != null) {
            a.m(TAG, "Launching Play Store billing flow from savedInstanceState");
            this.sendCancelledBroadcastIfFinished = bundle.getBoolean(KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED, false);
            if (bundle.containsKey(KEY_IN_APP_MESSAGE_RESULT_RECEIVER)) {
                this.inAppMessageResultReceiver = (ResultReceiver) bundle.getParcelable(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
            }
            this.isFlowFromFirstPartyClient = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
            this.activityCode = bundle.getInt(KEY_ACTIVITY_CODE, 100);
            if (bundle.containsKey("billingClientTransactionId")) {
                this.billingClientTransactionId = bundle.getLong("billingClientTransactionId");
            }
            if (bundle.containsKey("wasServiceAutoReconnected")) {
                this.wasServiceAutoReconnected = bundle.getBoolean("wasServiceAutoReconnected");
                return;
            }
            return;
        }
        a.m(TAG, "Launching Play Store billing flow");
        this.activityCode = 100;
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                this.isFlowFromFirstPartyClient = true;
                this.activityCode = 110;
            }
        } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
            this.inAppMessageResultReceiver = (ResultReceiver) getIntent().getParcelableExtra(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
            this.activityCode = 101;
        } else {
            pendingIntent = null;
        }
        if (getIntent().hasExtra("billingClientTransactionId")) {
            this.billingClientTransactionId = getIntent().getLongExtra("billingClientTransactionId", 0L);
        }
        if (getIntent().hasExtra("wasServiceAutoReconnected")) {
            this.wasServiceAutoReconnected = getIntent().getBooleanExtra("wasServiceAutoReconnected", false);
        }
        try {
            this.sendCancelledBroadcastIfFinished = true;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 36) {
                if (i2 >= 34) {
                    bundle3 = ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(1).toBundle();
                } else {
                    bundle2 = null;
                }
                startIntentSenderForResult(pendingIntent.getIntentSender(), this.activityCode, new Intent(), 0, 0, 0, bundle2);
            }
            bundle3 = ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(3).toBundle();
            bundle2 = bundle3;
            startIntentSenderForResult(pendingIntent.getIntentSender(), this.activityCode, new Intent(), 0, 0, 0, bundle2);
        } catch (IntentSender.SendIntentException e2) {
            a.o(TAG, "Got exception while trying to start a purchase flow.", e2);
            ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
            if (resultReceiver != null) {
                resultReceiver.send(0, null);
            } else {
                Intent intentMakePurchaseUpdatedIntentWithResponseCodeAndReason = makePurchaseUpdatedIntentWithResponseCodeAndReason(zzjs.INTENT_SENDER_EXCEPTION, this.billingClientTransactionId, false);
                if (this.isFlowFromFirstPartyClient) {
                    intentMakePurchaseUpdatedIntentWithResponseCodeAndReason.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                }
                sendBroadcast(intentMakePurchaseUpdatedIntentWithResponseCodeAndReason);
            }
            this.sendCancelledBroadcastIfFinished = false;
            finish();
        }
    }

    @Override
    @zzw
    public void onDestroy() {
        BillingResult billingResultZza;
        super.onDestroy();
        if (isProxyBillingBroadcastReceiverRegistered()) {
            billingResultZza = this.proxyBillingBroadcastReceiver.zza();
            try {
                unregisterReceiver(this.proxyBillingBroadcastReceiver);
            } catch (RuntimeException e) {
                a.o(TAG, "Failed to unregister receiver.", e);
            }
        } else {
            billingResultZza = null;
        }
        if (isFinishing() && this.sendCancelledBroadcastIfFinished) {
            Intent intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
            if (billingResultZza != null) {
                intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", billingResultZza.getResponseCode());
                intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", billingResultZza.getDebugMessage());
            } else {
                intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", 1);
                intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            }
            if (this.isFlowFromFirstPartyClient) {
                intentMakePurchasesUpdatedIntent.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            int i = this.activityCode;
            if (i == 110 || i == 100) {
                intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                intentMakePurchasesUpdatedIntent.putExtra("billingClientTransactionId", this.billingClientTransactionId);
            }
            sendBroadcast(intentMakePurchasesUpdatedIntent);
        }
    }

    @Override
    @zzw
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
        if (resultReceiver != null) {
            bundle.putParcelable(KEY_IN_APP_MESSAGE_RESULT_RECEIVER, resultReceiver);
        }
        bundle.putBoolean(KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED, this.sendCancelledBroadcastIfFinished);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.isFlowFromFirstPartyClient);
        bundle.putInt(KEY_ACTIVITY_CODE, this.activityCode);
        bundle.putLong("billingClientTransactionId", this.billingClientTransactionId);
        bundle.putBoolean("wasServiceAutoReconnected", this.wasServiceAutoReconnected);
    }
}
