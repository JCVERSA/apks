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
import androidx.activity.ComponentDialog$$ExternalSyntheticApiModelOutline0;
import androidx.core.content.ContextCompat;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzke;
import com.google.android.gms.internal.play_billing.zzkg;
import com.google.android.gms.internal.play_billing.zzla;
import com.google.android.gms.internal.play_billing.zzld;

public class ProxyBillingActivity extends Activity {
    private static final int REQUEST_CODE_FIRST_PARTY_PURCHASE_FLOW = 110;
    private static final int REQUEST_CODE_IN_APP_MESSAGE_FLOW = 101;
    private static final int REQUEST_CODE_LAUNCH_ACTIVITY = 100;
    static final int RESULT_CODE_PLAY_CANCELED_WITH_ON_CREATE_RUNTIME_EXCEPTION = 5;
    static final int RESULT_CODE_PLAY_CANCELLED = 3;
    static final int RESULT_CODE_PLAY_CANCELLED_WITHOUT_COMPLETE_ACTION = 4;
    private int activityCode;
    private long billingClientTransactionId;
    zzdd billingLogger;
    private ResultReceiver inAppMessageResultReceiver;
    private boolean isFlowFromFirstPartyClient;
    zzej proxyBillingBroadcastReceiver;
    private boolean sendCancelledBroadcastIfFinished;
    private boolean wasServiceAutoReconnected;
    static final String KEY_IN_APP_MESSAGE_RESULT_RECEIVER = ProtectedFastSSH.s("㌇");
    static final String EXTERNAL_BROADCAST_PERMISSION = ProtectedFastSSH.s("㌖");
    private static final String TAG = ProtectedFastSSH.s("㌗");
    private static final String KEY_ACTIVITY_CODE = ProtectedFastSSH.s("㌪");
    private static final String KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED = ProtectedFastSSH.s("㌩");

    private zzjs getLoggingErrorReason(int i, Intent intent) {
        if (intent != null) {
            if (intent.getExtras() == null) {
                return zzjs.zzv;
            }
            return i == 5 ? zzjs.zzbI : zzjs.zza;
        }
        if (i == -1) {
            return zzjs.zzbi;
        }
        if (i == 0) {
            return zzjs.zzbj;
        }
        if (i != 3) {
            return i != 4 ? zzjs.zzbm : zzjs.zzbl;
        }
        return zzjs.zzbk;
    }

    private boolean isInAppMessageFlow(Bundle bundle) {
        if (bundle != null) {
            return bundle.containsKey(ProtectedFastSSH.s("㌇"));
        }
        if (getIntent() == null) {
            return false;
        }
        return getIntent().hasExtra(ProtectedFastSSH.s("㌆"));
    }

    private boolean isKnownError(int i, Intent intent) {
        return !getLoggingErrorReason(i, intent).equals(zzjs.zza);
    }

    private boolean isProxyBillingBroadcastReceiverRegistered() {
        return this.proxyBillingBroadcastReceiver != null;
    }

    private Intent makeAlternativeBillingIntent(String str) {
        Intent intent = new Intent(ProtectedFastSSH.s("㌈"));
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra(ProtectedFastSSH.s("㌉"), str);
        return intent;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x007c  */
    private Intent makePurchaseUpdatedIntentWithResponseCodeAndReason(zzjs zzjsVar, long j, boolean z) {
        Intent intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
        String strS = ProtectedFastSSH.s("㌊");
        String strS2 = ProtectedFastSSH.s("㌋");
        String strS3 = ProtectedFastSSH.s("㌌");
        if (!z) {
            intentMakePurchasesUpdatedIntent.putExtra(strS3, 6);
            String strS4 = ProtectedFastSSH.s("㌎");
            intentMakePurchasesUpdatedIntent.putExtra(strS2, strS4);
            BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
            builderNewBuilder.setResponseCode(6);
            builderNewBuilder.setDebugMessage(strS4);
            BillingResult billingResultBuild = builderNewBuilder.build();
            int i = zzdc.zza;
            intentMakePurchasesUpdatedIntent.putExtra(strS, zzdc.zzb(zzjsVar, 2, billingResultBuild, null, zzjz.zza).zzQ());
        } else if (isProxyBillingBroadcastReceiverRegistered() && this.proxyBillingBroadcastReceiver.zza() != null) {
            BillingResult billingResultZza = this.proxyBillingBroadcastReceiver.zza();
            intentMakePurchasesUpdatedIntent.putExtra(strS3, billingResultZza.getResponseCode());
            intentMakePurchasesUpdatedIntent.putExtra(strS2, billingResultZza.getDebugMessage());
        } else if (!isProxyBillingBroadcastReceiverRegistered() || this.proxyBillingBroadcastReceiver.zzc()) {
            intentMakePurchasesUpdatedIntent.putExtra(strS3, 6);
            String strS5 = ProtectedFastSSH.s("㌎");
            intentMakePurchasesUpdatedIntent.putExtra(strS2, strS5);
            BillingResult.Builder builderNewBuilder2 = BillingResult.newBuilder();
            builderNewBuilder2.setResponseCode(6);
            builderNewBuilder2.setDebugMessage(strS5);
            BillingResult billingResultBuild2 = builderNewBuilder2.build();
            int i2 = zzdc.zza;
            intentMakePurchasesUpdatedIntent.putExtra(strS, zzdc.zzb(zzjsVar, 2, billingResultBuild2, null, zzjz.zza).zzQ());
        } else {
            intentMakePurchasesUpdatedIntent.putExtra(strS3, 3);
            String strS6 = ProtectedFastSSH.s("㌍");
            intentMakePurchasesUpdatedIntent.putExtra(strS2, strS6);
            BillingResult.Builder builderNewBuilder3 = BillingResult.newBuilder();
            builderNewBuilder3.setResponseCode(3);
            builderNewBuilder3.setDebugMessage(strS6);
            BillingResult billingResultBuild3 = builderNewBuilder3.build();
            zzjs zzjsVar2 = zzjs.zzbL;
            int i3 = zzdc.zza;
            intentMakePurchasesUpdatedIntent.putExtra(strS, zzdc.zzb(zzjsVar2, 2, billingResultBuild3, null, zzjz.zza).zzQ());
        }
        intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌏"), ProtectedFastSSH.s("㌐"));
        intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌑"), j);
        intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌒"), this.wasServiceAutoReconnected);
        return intentMakePurchasesUpdatedIntent;
    }

    private Intent makePurchasesUpdatedIntent() {
        Intent intent = new Intent(ProtectedFastSSH.s("㌓"));
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0043 A[Catch: all -> 0x007d, TryCatch #5 {all -> 0x007d, blocks: (B:5:0x002c, B:19:0x003d, B:21:0x0043, B:23:0x006a, B:22:0x0057, B:27:0x007e), top: B:29:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0057 A[Catch: all -> 0x007d, TryCatch #5 {all -> 0x007d, blocks: (B:5:0x002c, B:19:0x003d, B:21:0x0043, B:23:0x006a, B:22:0x0057, B:27:0x007e), top: B:29:0x0001 }] */
    private synchronized void registerProxyBillingBroadcastReceiver() throws Throwable {
        ProxyBillingActivity proxyBillingActivity;
        try {
            try {
                this.proxyBillingBroadcastReceiver = new zzej(this.billingLogger);
                IntentFilter intentFilter = new IntentFilter(ProtectedFastSSH.s("㌔"));
                intentFilter.addAction(ProtectedFastSSH.s("㌕"));
                proxyBillingActivity = this;
                try {
                    ContextCompat.registerReceiver(proxyBillingActivity, this.proxyBillingBroadcastReceiver, intentFilter, ProtectedFastSSH.s("㌖"), null, 2);
                } catch (NoSuchMethodError e) {
                    e = e;
                    proxyBillingActivity.proxyBillingBroadcastReceiver = null;
                    if (e instanceof NoSuchMethodError) {
                        zzdd zzddVar = proxyBillingActivity.billingLogger;
                        zzla zzlaVarZza = zzld.zza();
                        zzlaVarZza.zza(2);
                        zzddVar.zzl((zzld) zzlaVarZza.zzi());
                    } else {
                        zzdd zzddVar2 = proxyBillingActivity.billingLogger;
                        zzla zzlaVarZza2 = zzld.zza();
                        zzlaVarZza2.zza(1);
                        zzddVar2.zzl((zzld) zzlaVarZza2.zzi());
                    }
                    com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㌗"), ProtectedFastSSH.s("㌘"), e);
                } catch (RuntimeException e2) {
                    e = e2;
                    proxyBillingActivity.proxyBillingBroadcastReceiver = null;
                    if (e instanceof NoSuchMethodError) {
                        zzdd zzddVar3 = proxyBillingActivity.billingLogger;
                        zzla zzlaVarZza3 = zzld.zza();
                        zzlaVarZza3.zza(2);
                        zzddVar3.zzl((zzld) zzlaVarZza3.zzi());
                    } else {
                        zzdd zzddVar4 = proxyBillingActivity.billingLogger;
                        zzla zzlaVarZza4 = zzld.zza();
                        zzlaVarZza4.zza(1);
                        zzddVar4.zzl((zzld) zzlaVarZza4.zzi());
                    }
                    com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㌗"), ProtectedFastSSH.s("㌘"), e);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (NoSuchMethodError e3) {
            e = e3;
            proxyBillingActivity = this;
            proxyBillingActivity.proxyBillingBroadcastReceiver = null;
            if (e instanceof NoSuchMethodError) {
                zzdd zzddVar5 = proxyBillingActivity.billingLogger;
                zzla zzlaVarZza5 = zzld.zza();
                zzlaVarZza5.zza(2);
                zzddVar5.zzl((zzld) zzlaVarZza5.zzi());
            } else {
                zzdd zzddVar6 = proxyBillingActivity.billingLogger;
                zzla zzlaVarZza6 = zzld.zza();
                zzlaVarZza6.zza(1);
                zzddVar6.zzl((zzld) zzlaVarZza6.zzi());
            }
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㌗"), ProtectedFastSSH.s("㌘"), e);
        } catch (RuntimeException e4) {
            e = e4;
            proxyBillingActivity = this;
            proxyBillingActivity.proxyBillingBroadcastReceiver = null;
            if (e instanceof NoSuchMethodError) {
                zzdd zzddVar7 = proxyBillingActivity.billingLogger;
                zzla zzlaVarZza7 = zzld.zza();
                zzlaVarZza7.zza(2);
                zzddVar7.zzl((zzld) zzlaVarZza7.zzi());
            } else {
                zzdd zzddVar8 = proxyBillingActivity.billingLogger;
                zzla zzlaVarZza8 = zzld.zza();
                zzlaVarZza8.zza(1);
                zzddVar8.zzl((zzld) zzlaVarZza8.zzi());
            }
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㌗"), ProtectedFastSSH.s("㌘"), e);
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0069  */
    /* JADX WARN: Code duplicated, block: B:22:0x006b  */
    /* JADX WARN: Code duplicated, block: B:25:0x0077 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x007a A[PHI: r10
      0x007a: PHI (r10v1 int) = (r10v0 int), (r10v16 int) binds: [B:24:0x0075, B:26:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:37:0x00df  */
    /* JADX WARN: Code duplicated, block: B:38:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:42:0x0106  */
    /* JADX WARN: Code duplicated, block: B:43:0x010e  */
    /* JADX WARN: Code duplicated, block: B:46:0x0136  */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x007a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:29:0x00a0, please report this as an issue */
    @Override
    protected void onActivityResult(int i, int i2, Intent intent) {
        boolean z;
        int responseCode;
        int i3;
        String string;
        String strS;
        String strS2;
        Intent intentMakePurchasesUpdatedIntent;
        boolean z2;
        int iZza;
        super.onActivityResult(i, i2, intent);
        String strS3 = ProtectedFastSSH.s("㌗");
        if (i == 100) {
            if (intent == null) {
                z = false;
            } else {
                z = true;
            }
            responseCode = com.google.android.gms.internal.play_billing.zzc.zzi(intent, strS3).getResponseCode();
            i3 = -1;
            if (i2 != -1) {
                com.google.android.gms.internal.play_billing.zzc.zzn(strS3, ProtectedFastSSH.s("㌜") + i2 + ProtectedFastSSH.s("㌝") + responseCode);
                i3 = i2;
            } else if (responseCode != 0) {
                i2 = -1;
                com.google.android.gms.internal.play_billing.zzc.zzn(strS3, ProtectedFastSSH.s("㌜") + i2 + ProtectedFastSSH.s("㌝") + responseCode);
                i3 = i2;
            }
            if (true != z) {
                com.google.android.gms.internal.play_billing.zzc.zzn(strS3, ProtectedFastSSH.s("㌞") + i3 + ProtectedFastSSH.s("㌟"));
            } else if (intent.getExtras() == null) {
                com.google.android.gms.internal.play_billing.zzc.zzn(strS3, ProtectedFastSSH.s("㌠"));
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
                string = intent.getExtras().getString(ProtectedFastSSH.s("㌉"));
                strS = ProtectedFastSSH.s("㌐");
                strS2 = ProtectedFastSSH.s("㌏");
                if (string != null) {
                    intentMakePurchasesUpdatedIntent = makeAlternativeBillingIntent(string);
                    intentMakePurchasesUpdatedIntent.putExtra(strS2, strS);
                } else {
                    intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
                    intentMakePurchasesUpdatedIntent.putExtras(intent.getExtras());
                    intentMakePurchasesUpdatedIntent.putExtra(strS2, strS);
                }
                intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌑"), this.billingClientTransactionId);
                intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌒"), this.wasServiceAutoReconnected);
            }
            if (i == 110) {
                intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌡"), true);
            }
            sendBroadcast(intentMakePurchasesUpdatedIntent);
        } else if (i == 110) {
            if (intent == null) {
                z = false;
            } else {
                z = true;
            }
            responseCode = com.google.android.gms.internal.play_billing.zzc.zzi(intent, strS3).getResponseCode();
            i3 = -1;
            if (i2 != -1) {
                com.google.android.gms.internal.play_billing.zzc.zzn(strS3, ProtectedFastSSH.s("㌜") + i2 + ProtectedFastSSH.s("㌝") + responseCode);
                i3 = i2;
            } else if (responseCode != 0) {
                i2 = -1;
                com.google.android.gms.internal.play_billing.zzc.zzn(strS3, ProtectedFastSSH.s("㌜") + i2 + ProtectedFastSSH.s("㌝") + responseCode);
                i3 = i2;
            }
            if (true != z) {
                com.google.android.gms.internal.play_billing.zzc.zzn(strS3, ProtectedFastSSH.s("㌞") + i3 + ProtectedFastSSH.s("㌟"));
            } else if (intent.getExtras() == null) {
                com.google.android.gms.internal.play_billing.zzc.zzn(strS3, ProtectedFastSSH.s("㌠"));
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
                string = intent.getExtras().getString(ProtectedFastSSH.s("㌉"));
                strS = ProtectedFastSSH.s("㌐");
                strS2 = ProtectedFastSSH.s("㌏");
                if (string != null) {
                    intentMakePurchasesUpdatedIntent = makeAlternativeBillingIntent(string);
                    intentMakePurchasesUpdatedIntent.putExtra(strS2, strS);
                } else {
                    intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
                    intentMakePurchasesUpdatedIntent.putExtras(intent.getExtras());
                    intentMakePurchasesUpdatedIntent.putExtra(strS2, strS);
                }
                intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌑"), this.billingClientTransactionId);
                intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌒"), this.wasServiceAutoReconnected);
            }
            if (i == 110) {
                intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌡"), true);
            }
            sendBroadcast(intentMakePurchasesUpdatedIntent);
        } else if (i == 101) {
            int i4 = com.google.android.gms.internal.play_billing.zzc.zza;
            if (intent == null) {
                com.google.android.gms.internal.play_billing.zzc.zzn(strS3, ProtectedFastSSH.s("㌙"));
                intent = null;
                iZza = 0;
            } else {
                iZza = com.google.android.gms.internal.play_billing.zzc.zza(intent.getExtras(), strS3);
            }
            ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
            if (resultReceiver != null) {
                resultReceiver.send(iZza, intent != null ? intent.getExtras() : null);
            }
        } else {
            com.google.android.gms.internal.play_billing.zzc.zzn(strS3, ProtectedFastSSH.s("㌚") + i + ProtectedFastSSH.s("㌛"));
        }
        this.sendCancelledBroadcastIfFinished = false;
        if (isProxyBillingBroadcastReceiverRegistered()) {
            this.proxyBillingBroadcastReceiver.zzb();
        }
        finish();
    }

    @Override
    protected void onCreate(Bundle bundle) throws Throwable {
        int i;
        PendingIntent pendingIntent;
        Bundle bundle2;
        Bundle bundle3;
        super.onCreate(bundle);
        boolean zIsInAppMessageFlow = isInAppMessageFlow(bundle);
        String strS = ProtectedFastSSH.s("㌗");
        if (!zIsInAppMessageFlow) {
            try {
                i = getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e) {
                com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㌢"), e);
                i = -1;
            }
            if (this.billingLogger == null) {
                Context applicationContext = getApplicationContext();
                zzke zzkeVarZza = zzkg.zza();
                zzkeVarZza.zzq(getPackageName());
                zzkeVarZza.zzx(ProtectedFastSSH.s("㌣"));
                zzkeVarZza.zzb(i);
                zzkeVarZza.zza(Build.VERSION.SDK_INT);
                zzkeVarZza.zzp(926300087L);
                this.billingLogger = new zzdr(applicationContext, (zzkg) zzkeVarZza.zzi());
            }
            registerProxyBillingBroadcastReceiver();
        }
        String strS2 = ProtectedFastSSH.s("㌤");
        String strS3 = ProtectedFastSSH.s("㌇");
        String strS4 = ProtectedFastSSH.s("㌒");
        String strS5 = ProtectedFastSSH.s("㌑");
        if (bundle != null) {
            com.google.android.gms.internal.play_billing.zzc.zzm(strS, ProtectedFastSSH.s("㌨"));
            this.sendCancelledBroadcastIfFinished = bundle.getBoolean(ProtectedFastSSH.s("㌩"), false);
            if (bundle.containsKey(strS3)) {
                this.inAppMessageResultReceiver = (ResultReceiver) bundle.getParcelable(strS3);
            }
            this.isFlowFromFirstPartyClient = bundle.getBoolean(strS2, false);
            this.activityCode = bundle.getInt(ProtectedFastSSH.s("㌪"), 100);
            if (bundle.containsKey(strS5)) {
                this.billingClientTransactionId = bundle.getLong(strS5);
            }
            if (bundle.containsKey(strS4)) {
                this.wasServiceAutoReconnected = bundle.getBoolean(strS4);
                return;
            }
            return;
        }
        com.google.android.gms.internal.play_billing.zzc.zzm(strS, ProtectedFastSSH.s("㌥"));
        this.activityCode = 100;
        Intent intent = getIntent();
        String strS6 = ProtectedFastSSH.s("㌦");
        if (intent.hasExtra(strS6)) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra(strS6);
            if (getIntent().hasExtra(strS2) && getIntent().getBooleanExtra(strS2, false)) {
                this.isFlowFromFirstPartyClient = true;
                this.activityCode = 110;
            }
        } else {
            Intent intent2 = getIntent();
            String strS7 = ProtectedFastSSH.s("㌆");
            if (intent2.hasExtra(strS7)) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra(strS7);
                this.inAppMessageResultReceiver = (ResultReceiver) getIntent().getParcelableExtra(strS3);
                this.activityCode = 101;
            } else {
                pendingIntent = null;
            }
        }
        if (getIntent().hasExtra(strS5)) {
            this.billingClientTransactionId = getIntent().getLongExtra(strS5, 0L);
        }
        if (getIntent().hasExtra(strS4)) {
            this.wasServiceAutoReconnected = getIntent().getBooleanExtra(strS4, false);
        }
        try {
            this.sendCancelledBroadcastIfFinished = true;
            if (Build.VERSION.SDK_INT < 36) {
                if (Build.VERSION.SDK_INT >= 34) {
                    bundle3 = ComponentDialog$$ExternalSyntheticApiModelOutline0.m$1(ActivityOptions.makeBasic(), 1).toBundle();
                } else {
                    bundle2 = null;
                }
                startIntentSenderForResult(pendingIntent.getIntentSender(), this.activityCode, new Intent(), 0, 0, 0, bundle2);
            }
            bundle3 = ComponentDialog$$ExternalSyntheticApiModelOutline0.m$1(ActivityOptions.makeBasic(), 3).toBundle();
            bundle2 = bundle3;
            startIntentSenderForResult(pendingIntent.getIntentSender(), this.activityCode, new Intent(), 0, 0, 0, bundle2);
        } catch (IntentSender.SendIntentException e2) {
            com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㌧"), e2);
            ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
            if (resultReceiver != null) {
                resultReceiver.send(0, null);
            } else {
                Intent intentMakePurchaseUpdatedIntentWithResponseCodeAndReason = makePurchaseUpdatedIntentWithResponseCodeAndReason(zzjs.zzbG, this.billingClientTransactionId, false);
                if (this.isFlowFromFirstPartyClient) {
                    intentMakePurchaseUpdatedIntentWithResponseCodeAndReason.putExtra(ProtectedFastSSH.s("㌡"), true);
                }
                sendBroadcast(intentMakePurchaseUpdatedIntentWithResponseCodeAndReason);
            }
            this.sendCancelledBroadcastIfFinished = false;
            finish();
        }
    }

    @Override
    protected void onDestroy() {
        BillingResult billingResultZza;
        super.onDestroy();
        if (isProxyBillingBroadcastReceiverRegistered()) {
            billingResultZza = this.proxyBillingBroadcastReceiver.zza();
            try {
                unregisterReceiver(this.proxyBillingBroadcastReceiver);
            } catch (RuntimeException e) {
                com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㌗"), ProtectedFastSSH.s("㌫"), e);
            }
        } else {
            billingResultZza = null;
        }
        if (isFinishing() && this.sendCancelledBroadcastIfFinished) {
            Intent intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
            String strS = ProtectedFastSSH.s("㌋");
            String strS2 = ProtectedFastSSH.s("㌌");
            if (billingResultZza != null) {
                intentMakePurchasesUpdatedIntent.putExtra(strS2, billingResultZza.getResponseCode());
                intentMakePurchasesUpdatedIntent.putExtra(strS, billingResultZza.getDebugMessage());
            } else {
                intentMakePurchasesUpdatedIntent.putExtra(strS2, 1);
                intentMakePurchasesUpdatedIntent.putExtra(strS, ProtectedFastSSH.s("㌬"));
            }
            if (this.isFlowFromFirstPartyClient) {
                intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌡"), true);
            }
            int i = this.activityCode;
            if (i == 110 || i == 100) {
                intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌏"), ProtectedFastSSH.s("㌐"));
                intentMakePurchasesUpdatedIntent.putExtra(ProtectedFastSSH.s("㌑"), this.billingClientTransactionId);
            }
            sendBroadcast(intentMakePurchasesUpdatedIntent);
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
        if (resultReceiver != null) {
            bundle.putParcelable(ProtectedFastSSH.s("㌇"), resultReceiver);
        }
        bundle.putBoolean(ProtectedFastSSH.s("㌩"), this.sendCancelledBroadcastIfFinished);
        bundle.putBoolean(ProtectedFastSSH.s("㌤"), this.isFlowFromFirstPartyClient);
        bundle.putInt(ProtectedFastSSH.s("㌪"), this.activityCode);
        bundle.putLong(ProtectedFastSSH.s("㌑"), this.billingClientTransactionId);
        bundle.putBoolean(ProtectedFastSSH.s("㌒"), this.wasServiceAutoReconnected);
    }
}
