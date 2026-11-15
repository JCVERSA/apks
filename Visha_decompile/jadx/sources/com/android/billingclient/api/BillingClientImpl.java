package com.android.billingclient.api;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.BundleCompat;
import com.android.billingclient.BuildConfig;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.o;
import com.google.android.gms.internal.play_billing.u;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import defpackage.c5j;
import defpackage.ckf;
import defpackage.d6f;
import defpackage.f5e;
import defpackage.f5j;
import defpackage.f7j;
import defpackage.idh;
import defpackage.j5j;
import defpackage.l9j;
import defpackage.m7j;
import defpackage.n5j;
import defpackage.nij;
import defpackage.o4j;
import defpackage.ofg;
import defpackage.p5j;
import defpackage.p9j;
import defpackage.q2j;
import defpackage.r6j;
import defpackage.s0f;
import defpackage.s8f;
import defpackage.v4j;
import defpackage.v5j;
import defpackage.v6j;
import defpackage.z2j;
import defpackage.zlj;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

class BillingClientImpl extends BillingClient {
    private boolean zzA;
    private boolean zzB;
    private boolean zzC;
    private boolean zzD;
    private boolean zzE;
    private boolean zzF;

    @Nullable
    private PendingPurchasesParams zzG;
    private boolean zzH;
    private boolean zzI;
    private com.google.android.gms.internal.play_billing.zzcf zzJ;

    @Nullable
    private volatile BillingClientStateListener zzK;
    private ExecutorService zzL;
    private final Long zzM;
    private final s8f zzN;
    private final Object zza;
    private volatile int zzb;
    private final String zzc;

    @Nullable
    private final String zzd;
    private final Handler zze;

    @Nullable
    private volatile zzz zzf;
    private Context zzg;
    private zzdd zzh;
    private volatile com.google.android.gms.internal.play_billing.zzar zzi;
    private volatile zzbz zzj;
    private boolean zzk;
    private boolean zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private boolean zzy;
    private boolean zzz;

    @AnyThread
    public BillingClientImpl(@Nullable String str, Context context, @Nullable zzdd zzddVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzJ = com.google.android.gms.internal.play_billing.zzcf.zzk();
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzM = lValueOf;
        this.zzN = s0f.a();
        this.zzc = BuildConfig.VERSION_NAME;
        String strZzaO = zzaO();
        this.zzd = strZzaO;
        this.zzg = context.getApplicationContext();
        r6j r6jVarI = v6j.I();
        r6jVarI.w(BuildConfig.VERSION_NAME);
        if (strZzaO != null) {
            r6jVarI.x(strZzaO);
        }
        r6jVarI.p(this.zzg.getPackageName());
        r6jVarI.m(lValueOf.longValue());
        r6jVarI.v(builder.zza);
        r6jVarI.j(Build.VERSION.SDK_INT);
        r6jVarI.o(926300087L);
        zzbA(r6jVarI, context);
        try {
            r6jVarI.k(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            a.o("BillingClient", "Error getting app version code.", th);
        }
        this.zzh = new zzdr(this.zzg, (v6j) r6jVarI.f());
        this.zzg.getPackageName();
        this.zzH = builder.zza;
    }

    private void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable DeveloperProvidedBillingListener developerProvidedBillingListener, String str, @Nullable zzdd zzddVar, BillingClient.Builder builder) {
        this.zzg = context.getApplicationContext();
        r6j r6jVarI = v6j.I();
        r6jVarI.w(str);
        String str2 = this.zzd;
        if (str2 != null) {
            r6jVarI.x(str2);
        }
        r6jVarI.p(this.zzg.getPackageName());
        r6jVarI.m(this.zzM.longValue());
        r6jVarI.v(builder.zza);
        r6jVarI.j(Build.VERSION.SDK_INT);
        r6jVarI.o(926300087L);
        zzbA(r6jVarI, context);
        try {
            r6jVarI.k(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            a.o("BillingClient", "Error getting app version code.", th);
        }
        if (zzddVar != null) {
            this.zzh = zzddVar;
        } else {
            this.zzh = new zzdr(this.zzg, (v6j) r6jVarI.f());
        }
        if (purchasesUpdatedListener == null) {
            a.n("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.zzf = new zzz(this.zzg, purchasesUpdatedListener, null, userChoiceBillingListener, developerProvidedBillingListener, this.zzh);
        this.zzG = pendingPurchasesParams;
        this.zzI = userChoiceBillingListener != null;
        this.zzH = builder.zza;
    }

    public static Object zzA(BillingClientImpl billingClientImpl, BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        billingClientImpl.zzaL(billingConfigResponseListener);
        return null;
    }

    public static Void zzE(BillingClientImpl billingClientImpl, AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        billingClientImpl.zzaU(alternativeBillingOnlyInformationDialogListener, activity, resultReceiver);
        return null;
    }

    public static Void zzF(BillingClientImpl billingClientImpl, ExternalOfferAvailabilityListener externalOfferAvailabilityListener) throws Exception {
        billingClientImpl.zzaT(externalOfferAvailabilityListener);
        return null;
    }

    public static Void zzG(BillingClientImpl billingClientImpl, BillingProgramAvailabilityListener billingProgramAvailabilityListener, int i) throws Exception {
        billingClientImpl.zzaS(billingProgramAvailabilityListener, i);
        return null;
    }

    public static Void zzH(BillingClientImpl billingClientImpl, LaunchExternalLinkResponseListener launchExternalLinkResponseListener, LaunchExternalLinkParams launchExternalLinkParams, Activity activity) throws RemoteException {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzcm zzcmVar = null;
        try {
            if (!billingClientImpl.zzbx(zzdq.zzb())) {
                billingClientImpl.zzbk(launchExternalLinkResponseListener, zzdh.zzj, zzjs.SERVICE_CONNECTION_NOT_READY, null);
            } else if (billingClientImpl.zzD) {
                synchronized (billingClientImpl.zza) {
                    zzarVar = billingClientImpl.zzi;
                }
                if (zzarVar == null) {
                    billingClientImpl.zzbk(launchExternalLinkResponseListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
                } else {
                    String packageName = billingClientImpl.zzg.getPackageName();
                    String str = billingClientImpl.zzd;
                    long jLongValue = billingClientImpl.zzM.longValue();
                    int i = a.a;
                    Bundle bundle = new Bundle();
                    a.c(bundle, BuildConfig.VERSION_NAME, str, jLongValue);
                    q2j q2jVarY = z2j.y();
                    o4j o4jVarY = v4j.y();
                    o4jVarY.j(launchExternalLinkParams.getLinkUri().toString());
                    q2jVarY.j("externalOfferUri", (v4j) o4jVarY.f());
                    o4j o4jVarY2 = v4j.y();
                    o4jVarY2.j(String.valueOf(launchExternalLinkParams.getLaunchMode()));
                    q2jVarY.j("externalOfferLaunchMode", (v4j) o4jVarY2.f());
                    o4j o4jVarY3 = v4j.y();
                    o4jVarY3.j(String.valueOf(launchExternalLinkParams.getLinkType()));
                    q2jVarY.j("externalOfferLinkType", (v4j) o4jVarY3.f());
                    o4j o4jVarY4 = v4j.y();
                    o4jVarY4.j(String.valueOf(launchExternalLinkParams.getBillingProgram()));
                    q2jVarY.j("externalOfferBillingProgram", (v4j) o4jVarY4.f());
                    if (!TextUtils.isEmpty(launchExternalLinkParams.getExternalTransactionToken())) {
                        o4j o4jVarY5 = v4j.y();
                        o4jVarY5.j(launchExternalLinkParams.getExternalTransactionToken());
                        q2jVarY.j("externalTransactionToken", (v4j) o4jVarY5.f());
                    }
                    bundle.putByteArray("REQUEST_PARAMS", ((z2j) q2jVarY.f()).b());
                    zzarVar.zzp(27, packageName, bundle, new zzcf(billingClientImpl, new WeakReference(activity), launchExternalLinkResponseListener, zzcmVar));
                }
            } else {
                a.n("BillingClient", "Current client doesn't support launch external link.");
                billingClientImpl.zzbk(launchExternalLinkResponseListener, zzdh.zzH, zzjs.LAUNCH_EXTERNAL_LINK_NOT_SUPPORTED, null);
            }
        } catch (RuntimeException e) {
            billingClientImpl.zzbk(launchExternalLinkResponseListener, zzdh.zzh, zzjs.SERVICE_CALL_EXCEPTION, e);
        }
        return null;
    }

    public static Void zzI(BillingClientImpl billingClientImpl, BillingProgramInformationDialogListener billingProgramInformationDialogListener, BillingProgramInformationDialogParams billingProgramInformationDialogParams, Activity activity) throws Exception {
        billingClientImpl.zzaV(billingProgramInformationDialogListener, billingProgramInformationDialogParams, activity);
        return null;
    }

    public static Void zzJ(BillingClientImpl billingClientImpl, ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) throws Exception {
        billingClientImpl.zzaR(externalOfferReportingDetailsListener);
        return null;
    }

    public static Void zzK(BillingClientImpl billingClientImpl, ExternalOfferInformationDialogListener externalOfferInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        billingClientImpl.zzaW(externalOfferInformationDialogListener, activity, resultReceiver);
        return null;
    }

    public static Void zzL(BillingClientImpl billingClientImpl, AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) throws Exception {
        billingClientImpl.zzaP(alternativeBillingOnlyReportingDetailsListener);
        return null;
    }

    public static Void zzM(BillingClientImpl billingClientImpl, BillingProgramReportingDetailsListener billingProgramReportingDetailsListener, BillingProgramReportingDetailsParams billingProgramReportingDetailsParams) throws Exception {
        billingClientImpl.zzaQ(billingProgramReportingDetailsListener, billingProgramReportingDetailsParams);
        return null;
    }

    public static Void zzN(BillingClientImpl billingClientImpl, AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzcm zzcmVar = null;
        try {
            if (!billingClientImpl.zzbx(zzdq.zzb())) {
                billingClientImpl.zzba(alternativeBillingOnlyAvailabilityListener, zzdh.zzj, zzjs.SERVICE_CONNECTION_NOT_READY, null);
            } else if (billingClientImpl.zzy) {
                synchronized (billingClientImpl.zza) {
                    zzarVar = billingClientImpl.zzi;
                }
                if (zzarVar == null) {
                    billingClientImpl.zzba(alternativeBillingOnlyAvailabilityListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzarVar.zzr(21, billingClientImpl.zzg.getPackageName(), a.h(billingClientImpl.zzc, billingClientImpl.zzd, billingClientImpl.zzM.longValue()), new zzch(alternativeBillingOnlyAvailabilityListener, billingClientImpl.zzh, billingClientImpl.zzm, zzcmVar));
                }
            } else {
                a.n("BillingClient", "Current client doesn't support alternative billing only.");
                billingClientImpl.zzba(alternativeBillingOnlyAvailabilityListener, zzdh.zzD, zzjs.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, null);
            }
        } catch (Exception e) {
            billingClientImpl.zzba(alternativeBillingOnlyAvailabilityListener, e instanceof DeadObjectException ? zzdh.zzj : zzdh.zzh, zzjs.IS_ALTERNATIVE_BILLING_ONLY_AVAILABLE_SERVICE_CALL_EXCEPTION, e);
        }
        return null;
    }

    @Nullable
    public static Future zzP(Callable callable, long j, @Nullable final Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            final Future futureSubmit = executorService.submit(callable);
            handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    a.n("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, (long) (j * 0.95d));
            return futureSubmit;
        } catch (Exception e) {
            a.o("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    public static void zzR(BillingClientImpl billingClientImpl, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        zzjs zzjsVar = zzjs.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbE(zzjsVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
    }

    public static void zzS(BillingClientImpl billingClientImpl, PurchasesResponseListener purchasesResponseListener) {
        zzjs zzjsVar = zzjs.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbE(zzjsVar, 9, billingResult);
        purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzca.zzk());
    }

    public static void zzT(BillingClientImpl billingClientImpl, BillingConfigResponseListener billingConfigResponseListener) {
        zzjs zzjsVar = zzjs.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbE(zzjsVar, 13, billingResult);
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    public static void zzX(BillingClientImpl billingClientImpl, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        zzjs zzjsVar = zzjs.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbE(zzjsVar, 3, billingResult);
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    public final Bundle zzaC(int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            return zzarVar == null ? a.d(zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL) : zzarVar.zzg(i, this.zzg.getPackageName(), str, str2, null, bundle);
        } catch (DeadObjectException e) {
            return a.e(zzdh.zzj, zzjs.LAUNCH_BILLING_FLOW_EXCEPTION, zzdc.zza(e));
        } catch (Exception e2) {
            return a.e(zzdh.zzh, zzjs.LAUNCH_BILLING_FLOW_EXCEPTION, zzdc.zza(e2));
        }
    }

    public final Bundle zzaD(String str, String str2) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            return zzarVar == null ? a.d(zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL) : zzarVar.zzf(3, this.zzg.getPackageName(), str, str2, null);
        } catch (DeadObjectException e) {
            return a.e(zzdh.zzj, zzjs.LAUNCH_BILLING_FLOW_EXCEPTION, zzdc.zza(e));
        } catch (Exception e2) {
            return a.e(zzdh.zzh, zzjs.LAUNCH_BILLING_FLOW_EXCEPTION, zzdc.zza(e2));
        }
    }

    public final Handler zzaE() {
        return Looper.myLooper() == null ? this.zze : new Handler(Looper.myLooper());
    }

    private final zzcl zzaF(BillingResult billingResult, zzjs zzjsVar, String str, @Nullable Exception exc) {
        a.o("BillingClient", str, exc);
        zzbG(zzjsVar, 7, billingResult, zzdc.zza(exc));
        return new zzcl(billingResult.getResponseCode(), billingResult.getDebugMessage(), new ArrayList(), new ArrayList());
    }

    private final BillingResult zzaG(int i) {
        a.m("BillingClient", "Service connection is valid. No need to re-initialize.");
        j5j j5jVarZ = n5j.z();
        j5jVarZ.n(6);
        l9j l9jVarY = p9j.y();
        l9jVarY.n(true);
        l9jVarY.j(i > 0);
        l9jVarY.k(i);
        j5jVarZ.m(l9jVarY);
        zzbq((n5j) j5jVarZ.f());
        return zzdh.zzi;
    }

    public final BillingResult zzaH() {
        BillingResult billingResult;
        int[] iArr = {0, 3};
        synchronized (this.zza) {
            for (int i = 0; i < 2; i++) {
                if (this.zzb == iArr[i]) {
                    billingResult = zzdh.zzj;
                }
            }
            billingResult = zzdh.zzh;
        }
        return billingResult;
    }

    private final ofg zzaI(final int i) {
        if (this.zzH && !zzby()) {
            return zlj.a(new nij() {
                @Override
                public final Object zza(u uVar) {
                    return BillingClientImpl.zzu(this.zza, i, uVar);
                }
            });
        }
        a.m("BillingClient", "Already connected or not opted into auto reconnection.");
        return o.a(zzdh.zzi);
    }

    private final Object zzaJ(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzjs zzjsVar = zzjs.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult = zzdh.zzj;
                zzbE(zzjsVar, 3, billingResult);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
            } else if (TextUtils.isEmpty(acknowledgePurchaseParams.getPurchaseToken())) {
                a.n("BillingClient", "Please provide a valid purchase token.");
                zzjs zzjsVar2 = zzjs.EMPTY_PURCHASE_TOKEN;
                BillingResult billingResult2 = zzdh.zzg;
                zzbE(zzjsVar2, 3, billingResult2);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult2);
            } else if (this.zzp) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar != null) {
                    String packageName = this.zzg.getPackageName();
                    String purchaseToken = acknowledgePurchaseParams.getPurchaseToken();
                    String str = this.zzd;
                    long jLongValue = this.zzM.longValue();
                    int i = a.a;
                    Bundle bundle = new Bundle();
                    a.c(bundle, BuildConfig.VERSION_NAME, str, jLongValue);
                    Bundle bundleZzd = zzarVar.zzd(9, packageName, purchaseToken, bundle);
                    acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(zzdh.zza(a.b(bundleZzd, "BillingClient"), a.j(bundleZzd, "BillingClient")));
                    return null;
                }
                zzaZ(acknowledgePurchaseResponseListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
            } else {
                zzjs zzjsVar3 = zzjs.API_VERSION_NOT_V9;
                BillingResult billingResult3 = zzdh.zza;
                zzbE(zzjsVar3, 3, billingResult3);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult3);
            }
            return null;
        } catch (DeadObjectException e) {
            zzaZ(acknowledgePurchaseResponseListener, zzdh.zzj, zzjs.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION, e);
            return null;
        } catch (Exception e2) {
            zzaZ(acknowledgePurchaseResponseListener, zzdh.zzh, zzjs.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION, e2);
            return null;
        }
    }

    private final Object zzaK(BillingChoiceInfoResponseListener billingChoiceInfoResponseListener, GetBillingChoiceInfoParams getBillingChoiceInfoParams) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbb(billingChoiceInfoResponseListener, zzdh.zzj, zzjs.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzm < 24) {
                zzbb(billingChoiceInfoResponseListener, zzdh.zzK, zzjs.FEATURE_NOT_SUPPORTED, null);
            } else {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbb(billingChoiceInfoResponseListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
                } else {
                    String str = this.zzc;
                    idh idhVarZzb = zzdl.zzb(str, 24, this.zzg, zzdk.GET_BILLING_CHOICE_INFO_ASYNC.zza());
                    q2j q2jVarY = z2j.y();
                    o4j o4jVarY = v4j.y();
                    o4jVarY.j(str);
                    q2jVarY.j("PLAY_BILLING_LIBRARY_VERSION", (v4j) o4jVarY.f());
                    o4j o4jVarY2 = v4j.y();
                    o4jVarY2.j(this.zzg.getPackageName());
                    q2jVarY.j("CALLING_PACKAGE", (v4j) o4jVarY2.f());
                    o4j o4jVarY3 = v4j.y();
                    o4jVarY3.j(String.valueOf(getBillingChoiceInfoParams.getBillingProgram()));
                    q2jVarY.j("BILLING_PROGRAM", (v4j) o4jVarY3.f());
                    if (getBillingChoiceInfoParams.getUserLocale() != null) {
                        o4j o4jVarY4 = v4j.y();
                        o4jVarY4.j(getBillingChoiceInfoParams.getUserLocale().toLanguageTag());
                        q2jVarY.j("LANGUAGE", (v4j) o4jVarY4.f());
                    }
                    if (getBillingChoiceInfoParams.getPlayBillingChoiceImageLayout() != null) {
                        o4j o4jVarY5 = v4j.y();
                        o4jVarY5.j(getBillingChoiceInfoParams.getPlayBillingChoiceImageLayout());
                        q2jVarY.j("PLAY_BILLING_CHOICE_IMAGE_LAYOUT", (v4j) o4jVarY5.f());
                    }
                    zzarVar.zzm(zzdl.zza(idhVarZzb, (z2j) q2jVarY.f()), new zzdv(billingChoiceInfoResponseListener, this.zzh, this.zzm));
                }
            }
        } catch (DeadObjectException e) {
            zzbb(billingChoiceInfoResponseListener, zzdh.zzj, zzjs.SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbb(billingChoiceInfoResponseListener, zzdh.zzh, zzjs.SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final Object zzaL(BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzcm zzcmVar = null;
        try {
            if (!zzbx(zzdq.zzb())) {
                a.n("BillingClient", "Service disconnected.");
                zzjs zzjsVar = zzjs.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult = zzdh.zzj;
                zzbE(zzjsVar, 13, billingResult);
                billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
            } else if (this.zzv) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbj(billingConfigResponseListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
                } else if (zzdq.zzj() && this.zzB) {
                    String str = this.zzc;
                    idh idhVarZzb = zzdl.zzb(str, 24, this.zzg, zzdk.GET_BILLING_CONFIG.zza());
                    q2j q2jVarY = z2j.y();
                    o4j o4jVarY = v4j.y();
                    o4jVarY.j(str);
                    q2jVarY.j("PLAY_BILLING_LIBRARY_VERSION", (v4j) o4jVarY.f());
                    o4j o4jVarY2 = v4j.y();
                    o4jVarY2.j(this.zzg.getPackageName());
                    q2jVarY.j("CALLING_PACKAGE", (v4j) o4jVarY2.f());
                    Bundle bundleZza = zzdl.zza(idhVarZzb, (z2j) q2jVarY.f());
                    if (!TextUtils.isEmpty(null)) {
                        bundleZza.putString("accountName", null);
                    }
                    zzarVar.zzm(bundleZza, new zzdx(billingConfigResponseListener, this.zzh, this.zzm));
                } else {
                    String packageName = this.zzg.getPackageName();
                    String str2 = this.zzd;
                    long jLongValue = this.zzM.longValue();
                    int i = a.a;
                    Bundle bundle = new Bundle();
                    a.c(bundle, BuildConfig.VERSION_NAME, str2, jLongValue);
                    if (!TextUtils.isEmpty(null)) {
                        bundle.putString("accountName", null);
                    }
                    zzarVar.zzo(18, packageName, bundle, new zzcd(billingConfigResponseListener, this.zzh, this.zzm, zzcmVar));
                }
            } else {
                a.n("BillingClient", "Current client doesn't support get billing config.");
                zzjs zzjsVar2 = zzjs.GET_BILLING_CONFIG_NOT_SUPPORTED;
                BillingResult billingResult2 = zzdh.zzz;
                zzbE(zzjsVar2, 13, billingResult2);
                billingConfigResponseListener.onBillingConfigResponse(billingResult2, null);
            }
        } catch (DeadObjectException e) {
            zzbj(billingConfigResponseListener, zzdh.zzj, zzjs.GET_BILLING_CONFIG_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbj(billingConfigResponseListener, zzdh.zzh, zzjs.GET_BILLING_CONFIG_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final Object zzaM(Bundle bundle, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            if (zzarVar == null) {
                zzbn(-1, zzjs.SERVICE_RESET_TO_NULL, null);
            } else {
                zzarVar.zzt(12, this.zzg.getPackageName(), bundle, new zzcj(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzbn(-1, zzjs.SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbn(6, zzjs.SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final String zzaN(QueryProductDetailsParams queryProductDetailsParams) {
        if (TextUtils.isEmpty(null)) {
            return this.zzg.getPackageName();
        }
        return null;
    }

    @Nullable
    @SuppressLint({"PrivateApi"})
    private static String zzaO() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private final Void zzaP(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzcm zzcmVar = null;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzj, zzjs.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzy) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzarVar.zzk(21, this.zzg.getPackageName(), a.h(this.zzc, this.zzd, this.zzM.longValue()), new zzca(alternativeBillingOnlyReportingDetailsListener, this.zzh, this.zzm, zzcmVar));
                }
            } else {
                a.n("BillingClient", "Current client doesn't support alternative billing only.");
                zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzD, zzjs.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzj, zzjs.CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzh, zzjs.CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final Void zzaQ(BillingProgramReportingDetailsListener billingProgramReportingDetailsListener, BillingProgramReportingDetailsParams billingProgramReportingDetailsParams) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbf(billingProgramReportingDetailsListener, zzdh.zzj, zzjs.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzD) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbf(billingProgramReportingDetailsListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
                } else {
                    String str = this.zzc;
                    idh idhVarZzb = zzdl.zzb(str, 24, this.zzg, zzdk.CREATE_BILLING_PROGRAM_REPORTING_DETAILS_ASYNC.zza());
                    q2j q2jVarY = z2j.y();
                    o4j o4jVarY = v4j.y();
                    o4jVarY.j(str);
                    q2jVarY.j("PLAY_BILLING_LIBRARY_VERSION", (v4j) o4jVarY.f());
                    o4j o4jVarY2 = v4j.y();
                    o4jVarY2.j(this.zzg.getPackageName());
                    q2jVarY.j("CALLING_PACKAGE", (v4j) o4jVarY2.f());
                    o4j o4jVarY3 = v4j.y();
                    o4jVarY3.j(String.valueOf(billingProgramReportingDetailsParams.getBillingProgram()));
                    q2jVarY.j("BILLING_PROGRAM", (v4j) o4jVarY3.f());
                    o4j o4jVarY4 = v4j.y();
                    o4jVarY4.j("RESPONSE_FORMAT_PROTO");
                    q2jVarY.j("RESPONSE_FORMAT", (v4j) o4jVarY4.f());
                    if (billingProgramReportingDetailsParams.getBillingProgram() == 3) {
                        o4j o4jVarY5 = v4j.y();
                        o4jVarY5.j(String.valueOf(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).firstInstallTime));
                        q2jVarY.j("APP_INSTALL_TIME_MILLIS", (v4j) o4jVarY5.f());
                    } else if (billingProgramReportingDetailsParams.getBillingProgram() == 5) {
                        o4j o4jVarY6 = v4j.y();
                        o4jVarY6.j(String.valueOf(billingProgramReportingDetailsParams.getDeveloperBillingType()));
                        q2jVarY.j("DEVELOPER_BILLING_TYPE", (v4j) o4jVarY6.f());
                    }
                    zzarVar.zzm(zzdl.zza(idhVarZzb, (z2j) q2jVarY.f()), new CreateBillingProgramReportingDetailsDelegateToBackendCallback(billingProgramReportingDetailsListener, billingProgramReportingDetailsParams.getBillingProgram(), this.zzh, this.zzm, zzaE(), zzO()));
                }
            } else {
                a.n("BillingClient", "Current client doesn't support the provided billing program.");
                zzbf(billingProgramReportingDetailsListener, zzdh.zzG, zzjs.BILLING_PROGRAM_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzbf(billingProgramReportingDetailsListener, zzdh.zzj, zzjs.SERVICE_CALL_EXCEPTION, e);
        } catch (RuntimeException e2) {
            zzbf(billingProgramReportingDetailsListener, zzdh.zzh, zzjs.SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final Void zzaR(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzcm zzcmVar = null;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbg(externalOfferReportingDetailsListener, zzdh.zzj, zzjs.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzz) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbg(externalOfferReportingDetailsListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
                } else {
                    String packageName = this.zzg.getPackageName();
                    long j = this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).firstInstallTime;
                    String str = this.zzd;
                    long jLongValue = this.zzM.longValue();
                    int i = a.a;
                    Bundle bundle = new Bundle();
                    a.c(bundle, BuildConfig.VERSION_NAME, str, jLongValue);
                    bundle.putLong("appInstallTimeMillis", j);
                    zzarVar.zzl(22, packageName, bundle, new zzcb(externalOfferReportingDetailsListener, this.zzh, this.zzm, zzcmVar));
                }
            } else {
                a.n("BillingClient", "Current client doesn't support external offer.");
                zzbg(externalOfferReportingDetailsListener, zzdh.zzu, zzjs.EXTERNAL_OFFER_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzbg(externalOfferReportingDetailsListener, zzdh.zzj, zzjs.CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbg(externalOfferReportingDetailsListener, zzdh.zzh, zzjs.CREATE_EXTERNAL_PAYMENT_REPORTING_DETAILS_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final Void zzaS(BillingProgramAvailabilityListener billingProgramAvailabilityListener, int i) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbc(billingProgramAvailabilityListener, i, zzdh.zzj, zzjs.SERVICE_CONNECTION_NOT_READY, null);
                return null;
            }
            if (!this.zzD) {
                a.n("BillingClient", "Current client doesn't support the provided billing program.");
                zzbc(billingProgramAvailabilityListener, i, zzdh.zzG, zzjs.BILLING_PROGRAM_NOT_SUPPORTED, null);
                return null;
            }
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            if (zzarVar == null) {
                zzbc(billingProgramAvailabilityListener, i, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
                return null;
            }
            String str = this.zzc;
            idh idhVarZzb = zzdl.zzb(str, 24, this.zzg, zzdk.IS_BILLING_PROGRAM_AVAILABLE_ASYNC.zza());
            q2j q2jVarY = z2j.y();
            o4j o4jVarY = v4j.y();
            o4jVarY.j(str);
            q2jVarY.j("PLAY_BILLING_LIBRARY_VERSION", (v4j) o4jVarY.f());
            o4j o4jVarY2 = v4j.y();
            o4jVarY2.j(this.zzg.getPackageName());
            q2jVarY.j("CALLING_PACKAGE", (v4j) o4jVarY2.f());
            o4j o4jVarY3 = v4j.y();
            o4jVarY3.j(String.valueOf(i));
            q2jVarY.j("BILLING_PROGRAM", (v4j) o4jVarY3.f());
            zzarVar.zzm(zzdl.zza(idhVarZzb, (z2j) q2jVarY.f()), new IsBillingProgramAvailableDelegateToBackendCallback(billingProgramAvailabilityListener, i, this.zzh, this.zzm, zzaE(), zzO()));
            return null;
        } catch (DeadObjectException e) {
            zzbc(billingProgramAvailabilityListener, i, zzdh.zzj, zzjs.GET_BILLING_CONFIG_SERVICE_CALL_EXCEPTION, e);
            return null;
        } catch (Exception e2) {
            zzbc(billingProgramAvailabilityListener, i, zzdh.zzh, zzjs.SERVICE_CALL_EXCEPTION, e2);
            return null;
        }
    }

    private final Void zzaT(ExternalOfferAvailabilityListener externalOfferAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzcm zzcmVar = null;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbh(externalOfferAvailabilityListener, zzdh.zzj, zzjs.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzB) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbh(externalOfferAvailabilityListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
                } else {
                    zzarVar.zzs(24, this.zzg.getPackageName(), a.h(this.zzc, this.zzd, this.zzM.longValue()), new zzci(externalOfferAvailabilityListener, this.zzh, this.zzm, zzcmVar));
                }
            } else {
                a.n("BillingClient", "Current client doesn't support external offer.");
                zzbh(externalOfferAvailabilityListener, zzdh.zzu, zzjs.EXTERNAL_OFFER_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzbh(externalOfferAvailabilityListener, zzdh.zzj, zzjs.IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbh(externalOfferAvailabilityListener, zzdh.zzh, zzjs.IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final Void zzaU(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            if (zzarVar == null) {
                zzbl(alternativeBillingOnlyInformationDialogListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
            } else {
                zzarVar.zzn(21, this.zzg.getPackageName(), a.h(this.zzc, this.zzd, this.zzM.longValue()), new zzcc(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzbl(alternativeBillingOnlyInformationDialogListener, zzdh.zzj, zzjs.SHOW_ALTERNATIVE_BILLING_ONLY_DIALOG_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbl(alternativeBillingOnlyInformationDialogListener, zzdh.zzh, zzjs.SHOW_ALTERNATIVE_BILLING_ONLY_DIALOG_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final Void zzaV(BillingProgramInformationDialogListener billingProgramInformationDialogListener, BillingProgramInformationDialogParams billingProgramInformationDialogParams, Activity activity) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbm(billingProgramInformationDialogListener, zzdh.zzj, zzjs.SERVICE_CONNECTION_NOT_READY, null);
            } else if (this.zzF) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbm(billingProgramInformationDialogListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
                } else {
                    String packageName = this.zzg.getPackageName();
                    String str = this.zzd;
                    long jLongValue = this.zzM.longValue();
                    int i = a.a;
                    Bundle bundle = new Bundle();
                    a.c(bundle, BuildConfig.VERSION_NAME, str, jLongValue);
                    q2j q2jVarY = z2j.y();
                    o4j o4jVarY = v4j.y();
                    o4jVarY.j(String.valueOf(billingProgramInformationDialogParams.getBillingProgram()));
                    q2jVarY.j("developerBillingProgram", (v4j) o4jVarY.f());
                    if (billingProgramInformationDialogParams.getExternalTransactionToken() != null) {
                        o4j o4jVarY2 = v4j.y();
                        o4jVarY2.j(billingProgramInformationDialogParams.getExternalTransactionToken());
                        q2jVarY.j("externalTransactionToken", (v4j) o4jVarY2.f());
                    }
                    bundle.putByteArray("REQUEST_PARAMS", ((z2j) q2jVarY.f()).b());
                    zzarVar.zzn(28, packageName, bundle, new zzck(new WeakReference(activity), new zzbn(this, this.zze, billingProgramInformationDialogListener), null));
                }
            } else {
                a.n("BillingClient", "Current client doesn't support showBillingProgramInformationDialog.");
                zzbm(billingProgramInformationDialogListener, zzdh.zzJ, zzjs.FEATURE_NOT_SUPPORTED, null);
            }
        } catch (DeadObjectException e) {
            zzbm(billingProgramInformationDialogListener, zzdh.zzj, zzjs.SERVICE_CALL_EXCEPTION, e);
        } catch (RuntimeException e2) {
            zzbm(billingProgramInformationDialogListener, zzdh.zzh, zzjs.SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    private final Void zzaW(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, Activity activity, ResultReceiver resultReceiver) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            if (zzarVar == null) {
                zzbi(externalOfferInformationDialogListener, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, null);
            } else {
                zzarVar.zzp(22, this.zzg.getPackageName(), a.h(this.zzc, this.zzd, this.zzM.longValue()), new zzce(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzbi(externalOfferInformationDialogListener, zzdh.zzj, zzjs.SHOW_EXTERNAL_PAYMENT_DIALOG_SERVICE_CALL_EXCEPTION, e);
        } catch (Exception e2) {
            zzbi(externalOfferInformationDialogListener, zzdh.zzh, zzjs.SHOW_EXTERNAL_PAYMENT_DIALOG_SERVICE_CALL_EXCEPTION, e2);
        }
        return null;
    }

    @Nullable
    private final Future zzaX(Callable callable, long j, @Nullable final Runnable runnable, Handler handler) throws Exception {
        try {
            final Future futureSubmit = zzO().submit(callable);
            handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    Future future = futureSubmit;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    Runnable runnable2 = runnable;
                    future.cancel(true);
                    a.n("BillingClient", "Async task is taking too long, cancel it!");
                    runnable2.run();
                }
            }, 28500L);
            return futureSubmit;
        } catch (Exception e) {
            a.o("BillingClient", "Async task throws exception!", e);
            throw e;
        }
    }

    private final void zzaY(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        int iZza;
        String strJ;
        String purchaseToken = consumeParams.getPurchaseToken();
        try {
            a.m("BillingClient", "Consuming purchase with token: " + purchaseToken);
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            if (zzarVar == null) {
                zzbd(consumeResponseListener, purchaseToken, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, "Service has been reset to null.", null);
                return;
            }
            if (this.zzp) {
                String packageName = this.zzg.getPackageName();
                boolean z = this.zzp;
                String str = this.zzd;
                long jLongValue = this.zzM.longValue();
                Bundle bundle = new Bundle();
                if (z) {
                    a.c(bundle, BuildConfig.VERSION_NAME, str, jLongValue);
                }
                Bundle bundleZze = zzarVar.zze(9, packageName, purchaseToken, bundle);
                iZza = bundleZze.getInt("RESPONSE_CODE");
                strJ = a.j(bundleZze, "BillingClient");
            } else {
                iZza = zzarVar.zza(3, this.zzg.getPackageName(), purchaseToken);
                strJ = "";
            }
            BillingResult billingResultZza = zzdh.zza(iZza, strJ);
            if (iZza != 0) {
                zzbd(consumeResponseListener, purchaseToken, billingResultZza, zzjs.BILLING_RESULT_RECEIVED_FROM_PHONESKY, zza.zza(iZza, "Error consuming purchase with token. Response code: "), null);
            } else {
                a.m("BillingClient", "Successfully consumed purchase.");
                consumeResponseListener.onConsumeResponse(billingResultZza, purchaseToken);
            }
        } catch (DeadObjectException e) {
            zzbd(consumeResponseListener, purchaseToken, zzdh.zzj, zzjs.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", e);
        } catch (Exception e2) {
            zzbd(consumeResponseListener, purchaseToken, zzdh.zzh, zzjs.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", e2);
        }
    }

    private final void zzaZ(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        a.o("BillingClient", "Error in acknowledge purchase!", exc);
        zzbG(zzjsVar, 3, billingResult, zzdc.zza(exc));
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    public static void zzaa(BillingClientImpl billingClientImpl, ProductDetailsResponseListener productDetailsResponseListener) {
        zzjs zzjsVar = zzjs.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbE(zzjsVar, 7, billingResult);
        productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzca.zzk(), com.google.android.gms.internal.play_billing.zzca.zzk()));
    }

    public static void zzac(BillingClientImpl billingClientImpl, BillingResult billingResult) {
        if (billingClientImpl.zzf.zze() != null) {
            billingClientImpl.zzf.zze().onPurchasesUpdated(billingResult, null);
        } else {
            a.n("BillingClient", "No valid listener is set in BroadcastManager");
        }
    }

    public static void zzat(BillingClientImpl billingClientImpl, int i) {
        billingClientImpl.zzm = i;
        billingClientImpl.zzF = i >= 29;
        billingClientImpl.zzE = i >= 28;
        billingClientImpl.zzD = i >= 27;
        billingClientImpl.zzC = i >= 26;
        billingClientImpl.zzB = i >= 24;
        billingClientImpl.zzA = i >= 23;
        billingClientImpl.zzz = i >= 22;
        billingClientImpl.zzy = i >= 21;
        billingClientImpl.zzx = i >= 20;
        billingClientImpl.zzw = i >= 19;
        billingClientImpl.zzv = i >= 18;
        billingClientImpl.zzu = i >= 17;
        billingClientImpl.zzt = i >= 16;
        billingClientImpl.zzs = i >= 15;
        billingClientImpl.zzr = i >= 14;
        billingClientImpl.zzq = i >= 12;
        billingClientImpl.zzp = i >= 9;
        billingClientImpl.zzo = i >= 8;
        billingClientImpl.zzn = i >= 6;
    }

    public static void zzav(BillingClientImpl billingClientImpl, int i) {
        if (i != 0) {
            billingClientImpl.zzbs(0);
            return;
        }
        synchronized (billingClientImpl.zza) {
            try {
                if (billingClientImpl.zzb == 3) {
                    return;
                }
                billingClientImpl.zzbs(2);
                zzz zzzVar = billingClientImpl.zzf != null ? billingClientImpl.zzf : null;
                if (zzzVar != null) {
                    zzzVar.zzi(billingClientImpl.zzy);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean zzaz(BillingClientImpl billingClientImpl) {
        boolean z;
        synchronized (billingClientImpl.zza) {
            z = true;
            if (billingClientImpl.zzb != 1) {
                z = false;
            }
        }
        return z;
    }

    private static final void zzbA(r6j r6jVar, Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null) {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                r6jVar.u((int) (memoryInfo.totalMem / 1048576));
                r6jVar.q(Build.BRAND);
                r6jVar.t(Build.MODEL);
                r6jVar.s(Build.MANUFACTURER);
                r6jVar.r(Build.FINGERPRINT);
            }
        } catch (RuntimeException e) {
            a.o("BillingClient", "Runtime error while populating device info.", e);
        }
    }

    private final zzek zzbB(int i, BillingResult billingResult, zzjs zzjsVar, String str, @Nullable Exception exc) {
        zzbG(zzjsVar, 9, billingResult, zzdc.zza(exc));
        a.o("BillingClient", str, exc);
        return new zzek(billingResult, null);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x018a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:0x01f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0199  */
    /* JADX WARN: Code duplicated, block: B:74:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:78:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:84:0x020a  */
    public final zzek zzbC(String str, boolean z, int i) {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        int i2;
        int i3;
        Bundle bundleZzi;
        zzjs zzjsVar;
        BillingResult billingResult;
        zzjs zzjsVar2;
        ArrayList<String> stringArrayList;
        ArrayList<String> stringArrayList2;
        ArrayList<String> stringArrayList3;
        int i4;
        boolean z2;
        Purchase purchase;
        a.m("BillingClient", "Querying owned items, item type: ".concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z3 = this.zzp;
        boolean z4 = this.zzw;
        boolean zIsEnabledForOneTimeProducts = this.zzG.isEnabledForOneTimeProducts();
        boolean zIsEnabledForPrepaidPlans = this.zzG.isEnabledForPrepaidPlans();
        long jLongValue = this.zzM.longValue();
        Bundle bundle = new Bundle();
        a.c(bundle, BuildConfig.VERSION_NAME, this.zzd, jLongValue);
        if (z3 && zIsEnabledForOneTimeProducts) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (z4 && zIsEnabledForPrepaidPlans) {
            bundle.putBoolean("enablePendingPurchaseForSubscriptions", true);
        }
        if (z) {
            bundle.putBoolean("includeSuspendedSubscriptions", true);
        }
        String string = null;
        do {
            try {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    return zzbB(9, zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, "Service has been reset to null", null);
                }
                if (z && !this.zzC) {
                    return zzbB(9, zzdh.zzx, zzjs.INCLUDE_SUSPENDED_SUBSCRIPTIONS_NOT_SUPPORTED, "Include suspended subscriptions is not supported", null);
                }
                if (this.zzp) {
                    if (this.zzC) {
                        i3 = 26;
                    } else if (this.zzB) {
                        i3 = 24;
                    } else {
                        if (this.zzw) {
                            i3 = 19;
                        } else {
                            i2 = 9;
                        }
                        bundleZzi = zzarVar.zzi(i2, this.zzg.getPackageName(), str, string, bundle);
                    }
                    i2 = i3;
                    bundleZzi = zzarVar.zzi(i2, this.zzg.getPackageName(), str, string, bundle);
                } else {
                    bundleZzi = zzarVar.zzh(3, this.zzg.getPackageName(), str, string);
                }
                BillingResult billingResult2 = zzdh.zzh;
                if (bundleZzi == null) {
                    a.n("BillingClient", String.format("%s got null owned items list", "getPurchase()"));
                    zzjsVar = zzjs.NULL_OWNED_ITEMS_LIST;
                } else {
                    int iB = a.b(bundleZzi, "BillingClient");
                    String strJ = a.j(bundleZzi, "BillingClient");
                    BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
                    builderNewBuilder.setResponseCode(iB);
                    builderNewBuilder.setDebugMessage(strJ);
                    BillingResult billingResultBuild = builderNewBuilder.build();
                    if (iB != 0) {
                        a.n("BillingClient", String.format("%s failed. Response code: %s", "getPurchase()", Integer.valueOf(iB)));
                        zzjsVar2 = zzjs.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
                        billingResult = billingResultBuild;
                    } else if (bundleZzi.containsKey("INAPP_PURCHASE_ITEM_LIST") && bundleZzi.containsKey("INAPP_PURCHASE_DATA_LIST") && bundleZzi.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                        ArrayList<String> stringArrayList4 = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                        ArrayList<String> stringArrayList5 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        ArrayList<String> stringArrayList6 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                        if (stringArrayList4 == null) {
                            a.n("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", "getPurchase()"));
                            zzjsVar = zzjs.NULL_SKUS_LIST;
                        } else if (stringArrayList5 == null) {
                            a.n("BillingClient", String.format("Bundle returned from %s contains null purchases list.", "getPurchase()"));
                            zzjsVar = zzjs.NULL_PURCHASES_LIST;
                        } else if (stringArrayList6 == null) {
                            a.n("BillingClient", String.format("Bundle returned from %s contains null signatures list.", "getPurchase()"));
                            zzjsVar = zzjs.NULL_SIGNATURES_LIST;
                        } else {
                            billingResult = zzdh.zzi;
                            zzjsVar2 = zzjs.REASON_UNSPECIFIED;
                        }
                    } else {
                        a.n("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", "getPurchase()"));
                        zzjsVar = zzjs.MISSING_REQUIRED_PURCHASE_KEY;
                    }
                    if (billingResult != zzdh.zzi) {
                        return zzbB(9, billingResult, zzjsVar2, "Purchase bundle invalid", null);
                    }
                    stringArrayList = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                    stringArrayList2 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                    stringArrayList3 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                    z2 = false;
                    for (i4 = 0; i4 < stringArrayList2.size(); i4++) {
                        String str2 = stringArrayList2.get(i4);
                        String str3 = stringArrayList3.get(i4);
                        a.m("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i4))));
                        try {
                            purchase = new Purchase(str2, str3);
                            this.zzJ.isEmpty();
                            if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                                a.n("BillingClient", "BUG: empty/null token!");
                                z2 = true;
                            }
                            arrayList.add(purchase);
                        } catch (JSONException e) {
                            return zzbB(9, zzdh.zzh, zzjs.ERROR_DECODING_PURCHASE_DATA, "Got an exception trying to decode the purchase!", e);
                        }
                    }
                    if (z2) {
                        zzbE(zzjs.EMPTY_PURCHASE_TOKEN, 9, billingResult2);
                    }
                    string = bundleZzi.getString("INAPP_CONTINUATION_TOKEN");
                    a.m("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
                }
                zzjsVar2 = zzjsVar;
                billingResult = billingResult2;
                if (billingResult != zzdh.zzi) {
                    return zzbB(9, billingResult, zzjsVar2, "Purchase bundle invalid", null);
                }
                stringArrayList = bundleZzi.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                stringArrayList2 = bundleZzi.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                stringArrayList3 = bundleZzi.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                z2 = false;
                while (i4 < stringArrayList2.size()) {
                    String str4 = stringArrayList2.get(i4);
                    String str5 = stringArrayList3.get(i4);
                    a.m("BillingClient", "Sku is owned: ".concat(String.valueOf(stringArrayList.get(i4))));
                    purchase = new Purchase(str4, str5);
                    this.zzJ.isEmpty();
                    if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                        a.n("BillingClient", "BUG: empty/null token!");
                        z2 = true;
                    }
                    arrayList.add(purchase);
                }
                if (z2) {
                    zzbE(zzjs.EMPTY_PURCHASE_TOKEN, 9, billingResult2);
                }
                string = bundleZzi.getString("INAPP_CONTINUATION_TOKEN");
                a.m("BillingClient", "Continuation token: ".concat(String.valueOf(string)));
            } catch (DeadObjectException e2) {
                return zzbB(9, zzdh.zzj, zzjs.GET_PURCHASE_SERVICE_CALL_EXCEPTION, "Got exception trying to get purchases try to reconnect", e2);
            } catch (Exception e3) {
                return zzbB(9, zzdh.zzh, zzjs.GET_PURCHASE_SERVICE_CALL_EXCEPTION, "Got exception trying to get purchases try to reconnect", e3);
            }
        } while (!TextUtils.isEmpty(string));
        return new zzek(zzdh.zzi, arrayList);
    }

    private final void zzbD(BillingResult billingResult, zzjs zzjsVar, int i) {
        n5j n5jVar = null;
        f5j f5jVar = null;
        if (billingResult.getResponseCode() == 0) {
            int i2 = zzdc.zza;
            try {
                j5j j5jVarZ = n5j.z();
                j5jVarZ.n(5);
                f7j f7jVarY = m7j.y();
                f7jVarY.j(i);
                j5jVarZ.k((m7j) f7jVarY.f());
                n5jVar = (n5j) j5jVarZ.f();
            } catch (Exception e) {
                a.o("BillingLogger", "Unable to create logging payload", e);
            }
            zzbq(n5jVar);
            return;
        }
        int i3 = zzdc.zza;
        try {
            c5j c5jVarB = f5j.B();
            p5j p5jVarZ = v5j.z();
            p5jVarZ.o(billingResult.getResponseCode());
            p5jVarZ.k(billingResult.getDebugMessage());
            p5jVarZ.n(zzjsVar);
            c5jVarB.k(p5jVarZ);
            c5jVarB.o(5);
            f7j f7jVarY2 = m7j.y();
            f7jVarY2.j(i);
            c5jVarB.l((m7j) f7jVarY2.f());
            f5jVar = (f5j) c5jVarB.f();
        } catch (Exception e2) {
            a.o("BillingLogger", "Unable to create logging payload", e2);
        }
        zzbo(f5jVar);
    }

    public void zzbE(zzjs zzjsVar, int i, BillingResult billingResult) {
        try {
            int i2 = zzdc.zza;
            zzbo(zzdc.zzb(zzjsVar, i, billingResult, null, zzjz.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzbF(zzjs zzjsVar, int i, BillingResult billingResult, long j) {
        try {
            int i2 = zzdc.zza;
            try {
                this.zzh.zzc(zzdc.zzb(zzjsVar, 2, billingResult, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), this.zzm, j);
            } catch (Throwable th) {
                a.o("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            a.o("BillingClient", "Unable to log.", th2);
        }
    }

    private final void zzbG(zzjs zzjsVar, int i, BillingResult billingResult, @Nullable String str) {
        try {
            int i2 = zzdc.zza;
            zzbo(zzdc.zzb(zzjsVar, i, billingResult, str, zzjz.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzbH(zzjs zzjsVar, int i, BillingResult billingResult, long j, boolean z) {
        try {
            int i2 = zzdc.zza;
            zzbp(zzdc.zzb(zzjsVar, 2, billingResult, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), j, z);
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzbI(zzjs zzjsVar, int i, BillingResult billingResult, @Nullable String str, long j, boolean z) {
        try {
            int i2 = zzdc.zza;
            zzbp(zzdc.zzb(zzjsVar, 2, billingResult, str, zzjz.BROADCAST_ACTION_UNSPECIFIED), j, z);
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    private void zzbJ(int i) {
        try {
            int i2 = zzdc.zza;
            zzbq(zzdc.zzc(i, zzjz.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzba(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzbG(zzjsVar, 14, billingResult, zzdc.zza(exc));
        alternativeBillingOnlyAvailabilityListener.onAlternativeBillingOnlyAvailabilityResponse(billingResult);
    }

    public final void zzbb(BillingChoiceInfoResponseListener billingChoiceInfoResponseListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        a.o("BillingClient", "getBillingChoiceInfo got an exception.", exc);
        zzbG(zzjsVar, 40, billingResult, zzdc.zza(exc));
        billingChoiceInfoResponseListener.onBillingChoiceInfoResponse(billingResult, null);
    }

    public final void zzbc(BillingProgramAvailabilityListener billingProgramAvailabilityListener, int i, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzbG(zzjsVar, 33, billingResult, zzdc.zza(exc));
        billingProgramAvailabilityListener.onBillingProgramAvailabilityResponse(billingResult, new BillingProgramAvailabilityDetails(i));
    }

    private final void zzbd(ConsumeResponseListener consumeResponseListener, String str, BillingResult billingResult, zzjs zzjsVar, String str2, @Nullable Exception exc) {
        a.o("BillingClient", str2, exc);
        zzbG(zzjsVar, 4, billingResult, zzdc.zza(exc));
        consumeResponseListener.onConsumeResponse(billingResult, str);
    }

    public final void zzbe(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzbG(zzjsVar, 15, billingResult, zzdc.zza(exc));
        alternativeBillingOnlyReportingDetailsListener.onAlternativeBillingOnlyTokenResponse(billingResult, null);
    }

    public final void zzbf(BillingProgramReportingDetailsListener billingProgramReportingDetailsListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzbG(zzjsVar, 35, billingResult, zzdc.zza(exc));
        billingProgramReportingDetailsListener.onCreateBillingProgramReportingDetailsResponse(billingResult, null);
    }

    public final void zzbg(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzbG(zzjsVar, 24, billingResult, zzdc.zza(exc));
        externalOfferReportingDetailsListener.onExternalOfferReportingDetailsResponse(billingResult, null);
    }

    public final void zzbh(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzbG(zzjsVar, 23, billingResult, zzdc.zza(exc));
        externalOfferAvailabilityListener.onExternalOfferAvailabilityResponse(billingResult);
    }

    public final void zzbi(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzbG(zzjsVar, 25, billingResult, zzdc.zza(exc));
        externalOfferInformationDialogListener.onExternalOfferInformationDialogResponse(billingResult);
    }

    private final void zzbj(BillingConfigResponseListener billingConfigResponseListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        a.o("BillingClient", "getBillingConfig got an exception.", exc);
        zzbG(zzjsVar, 13, billingResult, zzdc.zza(exc));
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    public final void zzbk(LaunchExternalLinkResponseListener launchExternalLinkResponseListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzbG(zzjsVar, 37, billingResult, zzdc.zza(exc));
        launchExternalLinkResponseListener.onLaunchExternalLinkResponse(billingResult);
    }

    public final void zzbl(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzbG(zzjsVar, 16, billingResult, zzdc.zza(exc));
        alternativeBillingOnlyInformationDialogListener.onAlternativeBillingOnlyInformationDialogResponse(billingResult);
    }

    public final void zzbm(BillingProgramInformationDialogListener billingProgramInformationDialogListener, BillingResult billingResult, zzjs zzjsVar, @Nullable Exception exc) {
        zzbG(zzjsVar, 39, billingResult, zzdc.zza(exc));
        billingProgramInformationDialogListener.onBillingProgramInformationDialogResponse(billingResult);
    }

    private final void zzbn(int i, zzjs zzjsVar, @Nullable Exception exc) {
        f5j f5jVar;
        a.o("BillingClient", "showInAppMessages error.", exc);
        zzdd zzddVar = this.zzh;
        String strZza = zzdc.zza(exc);
        try {
            p5j p5jVarZ = v5j.z();
            p5jVarZ.o(i);
            if (zzjsVar != null) {
                p5jVarZ.n(zzjsVar);
            }
            if (strZza != null) {
                p5jVarZ.j(strZza);
            }
            c5j c5jVarB = f5j.B();
            c5jVarB.k(p5jVarZ);
            c5jVarB.o(30);
            f5jVar = (f5j) c5jVarB.f();
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to create logging payload", th);
            f5jVar = null;
        }
        zzddVar.zza(f5jVar);
    }

    public final void zzbo(f5j f5jVar) {
        try {
            this.zzh.zzb(f5jVar, this.zzm);
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    private final void zzbp(f5j f5jVar, long j, boolean z) {
        try {
            this.zzh.zze(f5jVar, this.zzm, j, z);
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzbq(n5j n5jVar) {
        try {
            this.zzh.zzg(n5jVar, this.zzm);
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzbr(zzjs zzjsVar, BillingResult billingResult, int i) {
        try {
            int i2 = zzdc.zza;
            c5j c5jVar = (c5j) zzdc.zzb(zzjsVar, 6, billingResult, null, zzjz.BROADCAST_ACTION_UNSPECIFIED).p();
            l9j l9jVarY = p9j.y();
            l9jVarY.j(i > 0);
            l9jVarY.k(i);
            c5jVar.n(l9jVarY);
            zzbo((f5j) c5jVar.f());
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzbs(int i) {
        synchronized (this.zza) {
            try {
                if (this.zzb == 3) {
                    return;
                }
                a.m("BillingClient", "Setting clientState from " + zzbz(this.zzb) + " to " + zzbz(i));
                this.zzb = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final synchronized void zzbt() {
        ExecutorService executorService = this.zzL;
        if (executorService != null) {
            executorService.shutdownNow();
            this.zzL = null;
        }
    }

    private final void zzbu(BillingClientStateListener billingClientStateListener, int i) {
        zzjs zzjsVar;
        BillingResult billingResultZzaG;
        BillingResult billingResult;
        synchronized (this.zza) {
            try {
                if (zzby()) {
                    billingResultZzaG = zzaG(i);
                } else {
                    if (this.zzb == 1) {
                        a.n("BillingClient", "Client is already in the process of connecting to billing service.");
                        zzjs zzjsVar2 = zzjs.BILLING_CLIENT_CONNECTING;
                        billingResult = zzdh.zzd;
                        zzbr(zzjsVar2, billingResult, i);
                    } else if (this.zzb == 3) {
                        a.n("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                        zzjs zzjsVar3 = zzjs.BILLING_CLIENT_CLOSED;
                        billingResult = zzdh.zzj;
                        zzbr(zzjsVar3, billingResult, i);
                    } else {
                        zzbs(1);
                        if (i == 0) {
                            this.zzK = billingClientStateListener;
                            i = 0;
                        }
                        zzbv();
                        a.m("BillingClient", "Starting in-app billing setup.");
                        this.zzj = new zzbz(this, billingClientStateListener, i, null);
                        this.zzj.zzf();
                        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                        intent.setPackage("com.android.vending");
                        List<ResolveInfo> listQueryIntentServices = this.zzg.getPackageManager().queryIntentServices(intent, 0);
                        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                            zzjsVar = zzjs.INTENT_SERVICE_NOT_FOUND;
                        } else {
                            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
                            if (serviceInfo != null) {
                                String str = serviceInfo.packageName;
                                String str2 = serviceInfo.name;
                                if (!Objects.equals(str, "com.android.vending") || str2 == null) {
                                    zzjsVar = zzjs.INVALID_PHONESKY_PACKAGE;
                                    a.n("BillingClient", "The device doesn't have valid Play Store.");
                                } else {
                                    ComponentName componentName = new ComponentName(str, str2);
                                    Intent intent2 = new Intent(intent);
                                    intent2.setComponent(componentName);
                                    intent2.putExtra("playBillingLibraryVersion", this.zzc);
                                    synchronized (this.zza) {
                                        try {
                                            if (this.zzb == 2) {
                                                billingResultZzaG = zzaG(i);
                                            } else if (this.zzb != 1) {
                                                a.n("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                                zzjs zzjsVar4 = zzjs.BILLING_CLIENT_TRANSITIONED_OUT_OF_CONNECTING;
                                                billingResult = zzdh.zzj;
                                                zzbr(zzjsVar4, billingResult, i);
                                            } else {
                                                zzbz zzbzVar = this.zzj;
                                                if (i > 0 ? this.zzg.bindService(intent2, 1, zzO(), zzbzVar) : this.zzg.bindService(intent2, zzbzVar, 1)) {
                                                    a.m("BillingClient", "Service was bonded successfully.");
                                                    billingResultZzaG = null;
                                                } else {
                                                    zzjsVar = zzjs.BILLING_SERVICE_BLOCKED;
                                                    a.n("BillingClient", "Connection to Billing service is blocked.");
                                                }
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                }
                            } else {
                                zzjsVar = zzjs.INVALID_PHONESKY_PACKAGE;
                                a.n("BillingClient", "The device doesn't have valid Play Store.");
                            }
                        }
                        zzbs(0);
                        a.m("BillingClient", "Billing service unavailable on device.");
                        BillingResult billingResult2 = zzdh.zzb;
                        zzbr(zzjsVar, billingResult2, i);
                        billingResultZzaG = billingResult2;
                    }
                    billingResultZzaG = billingResult;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (billingResultZzaG != null) {
            billingClientStateListener.onBillingSetupFinished(billingResultZzaG);
        }
    }

    public final void zzbv() {
        synchronized (this.zza) {
            if (this.zzj != null) {
                try {
                    this.zzg.unbindService(this.zzj);
                    this.zzi = null;
                    this.zzj = null;
                } catch (Throwable th) {
                    try {
                        a.o("BillingClient", "There was an exception while unbinding service!", th);
                        this.zzi = null;
                        this.zzj = null;
                    } catch (Throwable th2) {
                        this.zzi = null;
                        this.zzj = null;
                        throw th2;
                    }
                }
            }
        }
    }

    private final boolean zzbw(long j) {
        try {
            BillingResult billingResult = (BillingResult) zzaI(1).get(j, TimeUnit.MILLISECONDS);
            if (billingResult.getResponseCode() == 0) {
                a.m("BillingClient", "Reconnection succeeded with result: " + billingResult.getResponseCode());
            } else {
                a.n("BillingClient", "Reconnection failed with result: " + billingResult.getResponseCode());
            }
        } catch (Exception e) {
            if (e instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            a.o("BillingClient", "Error during reconnection attempt: ", e);
        }
        return zzby();
    }

    public final boolean zzbx(long j) {
        d6f d6fVarB = d6f.b(this.zzN);
        int iZza = zzdq.zza();
        long jA = j;
        for (int i = 1; i <= iZza; i++) {
            try {
                long jMax = Math.max(0L, jA);
                if (jMax <= 0) {
                    a.n("BillingClient", "No time remaining for reconnection attempt.");
                    return zzby();
                }
                BillingResult billingResult = (BillingResult) zzaI(i).get(jMax, TimeUnit.MILLISECONDS);
                if (billingResult.getResponseCode() == 0) {
                    a.m("BillingClient", "Reconnection succeeded with result: " + billingResult.getResponseCode());
                    return zzby();
                }
                a.n("BillingClient", "Reconnection failed with result: " + billingResult.getResponseCode());
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                jA = j - d6fVarB.a(timeUnit);
                long jPow = ((long) Math.pow(2.0d, i - 1)) * 1000;
                if (jA < jPow) {
                    a.n("BillingClient", "Reconnection failed due to timeout limit reached.");
                    return zzby();
                }
                if (i < iZza && jPow > 0) {
                    try {
                        Thread.sleep(jPow);
                        jA = j - d6fVarB.a(timeUnit);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        a.o("BillingClient", "Error sleeping during reconnection attempt: ", e);
                    }
                }
            } catch (Exception e2) {
                if (e2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                a.o("BillingClient", "Error during reconnection attempt: ", e2);
            }
        }
        a.n("BillingClient", "Max retries reached.");
        return zzby();
    }

    private final boolean zzby() {
        boolean z;
        synchronized (this.zza) {
            try {
                z = false;
                if (this.zzb == 2 && this.zzi != null && this.zzj != null) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    private static final String zzbz(int i) {
        if (i == 0) {
            return "DISCONNECTED";
        }
        if (i != 1) {
            return i != 2 ? "CLOSED" : "CONNECTED";
        }
        return "CONNECTING";
    }

    public static ResultReceiver zzg(BillingClientImpl billingClientImpl, LaunchExternalLinkResponseListener launchExternalLinkResponseListener) {
        return new zzbw(billingClientImpl, billingClientImpl.zze, launchExternalLinkResponseListener);
    }

    public static BillingResult zzn(Exception exc) {
        return exc instanceof DeadObjectException ? zzdh.zzj : zzdh.zzh;
    }

    public static Object zzu(BillingClientImpl billingClientImpl, int i, u uVar) {
        billingClientImpl.zzbu(new zzbv(billingClientImpl, uVar), i);
        return "reconnectIfNeeded";
    }

    public static Object zzv(BillingClientImpl billingClientImpl, BillingChoiceInfoResponseListener billingChoiceInfoResponseListener, GetBillingChoiceInfoParams getBillingChoiceInfoParams) throws Exception {
        billingClientImpl.zzaK(billingChoiceInfoResponseListener, getBillingChoiceInfoParams);
        return null;
    }

    public static Object zzw(BillingClientImpl billingClientImpl, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        if (billingClientImpl.zzbx(zzdq.zzb())) {
            billingClientImpl.zzaY(consumeParams, consumeResponseListener);
            return null;
        }
        zzjs zzjsVar = zzjs.SERVICE_CONNECTION_NOT_READY;
        BillingResult billingResult = zzdh.zzj;
        billingClientImpl.zzbE(zzjsVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
        return null;
    }

    public static Object zzx(BillingClientImpl billingClientImpl, ProductDetailsResponseListener productDetailsResponseListener, QueryProductDetailsParams queryProductDetailsParams) throws JSONException {
        if (!billingClientImpl.zzbx(zzdq.zzb())) {
            zzjs zzjsVar = zzjs.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzdh.zzj;
            billingClientImpl.zzbE(zzjsVar, 7, billingResult);
            productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzca.zzk(), com.google.android.gms.internal.play_billing.zzca.zzk()));
            return null;
        }
        if (billingClientImpl.zzu) {
            zzcl zzclVarZzi = billingClientImpl.zzi(queryProductDetailsParams);
            productDetailsResponseListener.onProductDetailsResponse(zzdh.zza(zzclVarZzi.zza(), zzclVarZzi.zzb()), new QueryProductDetailsResult(zzclVarZzi.zzc(), zzclVarZzi.zzd()));
            return null;
        }
        a.n("BillingClient", "Querying product details is not supported.");
        zzjs zzjsVar2 = zzjs.PRODUCT_DETAILS_NOT_SUPPORTED;
        BillingResult billingResult2 = zzdh.zzs;
        billingClientImpl.zzbE(zzjsVar2, 7, billingResult2);
        productDetailsResponseListener.onProductDetailsResponse(billingResult2, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzca.zzk(), com.google.android.gms.internal.play_billing.zzca.zzk()));
        return null;
    }

    public static Object zzy(BillingClientImpl billingClientImpl, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) throws Exception {
        billingClientImpl.zzaJ(acknowledgePurchaseResponseListener, acknowledgePurchaseParams);
        return null;
    }

    public static Object zzz(BillingClientImpl billingClientImpl, Bundle bundle, Activity activity, ResultReceiver resultReceiver) throws Exception {
        billingClientImpl.zzaM(bundle, activity, resultReceiver);
        return null;
    }

    @Override
    public void acknowledgePurchase(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        if (zzP(new Callable() {
            @Override
            public final Object call() throws Exception {
                BillingClientImpl.zzy(this.zza, acknowledgePurchaseResponseListener, acknowledgePurchaseParams);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                BillingClientImpl.zzX(this.zza, acknowledgePurchaseResponseListener);
            }
        }, zzaE(), zzO()) == null) {
            BillingResult billingResultZzaH = zzaH();
            zzbE(zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, 3, billingResultZzaH);
            acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResultZzaH);
        }
    }

    @Override
    public void consumeAsync(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (zzP(new Callable() {
            @Override
            public final Object call() {
                BillingClientImpl.zzw(this.zza, consumeResponseListener, consumeParams);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                BillingClientImpl.zzR(this.zza, consumeResponseListener, consumeParams);
            }
        }, zzaE(), zzO()) == null) {
            BillingResult billingResultZzaH = zzaH();
            zzbE(zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, 4, billingResultZzaH);
            consumeResponseListener.onConsumeResponse(billingResultZzaH, consumeParams.getPurchaseToken());
        }
    }

    @Override
    @zzc
    public void createAlternativeBillingOnlyReportingDetailsAsync(final AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) {
        if (zzP(new Callable() {
            @Override
            public final Object call() throws Exception {
                BillingClientImpl.zzL(this.zza, alternativeBillingOnlyReportingDetailsListener);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                this.zza.zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaE(), zzO()) == null) {
            zzbe(alternativeBillingOnlyReportingDetailsListener, zzaH(), zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override
    @zzf
    public void createBillingProgramReportingDetailsAsync(final BillingProgramReportingDetailsParams billingProgramReportingDetailsParams, final BillingProgramReportingDetailsListener billingProgramReportingDetailsListener) {
        try {
            zzaX(new Callable() {
                @Override
                public final Object call() throws Exception {
                    BillingClientImpl.zzM(this.zza, billingProgramReportingDetailsListener, billingProgramReportingDetailsParams);
                    return null;
                }
            }, 30000L, new Runnable() {
                @Override
                public final void run() {
                    this.zza.zzbf(billingProgramReportingDetailsListener, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
                }
            }, zzaE());
        } catch (Exception e) {
            zzbf(billingProgramReportingDetailsListener, zzaH(), zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, e);
        }
    }

    @Override
    @zzi
    public void createExternalOfferReportingDetailsAsync(final ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) {
        if (zzP(new Callable() {
            @Override
            public final Object call() throws Exception {
                BillingClientImpl.zzJ(this.zza, externalOfferReportingDetailsListener);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                this.zza.zzbg(externalOfferReportingDetailsListener, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaE(), zzO()) == null) {
            zzbg(externalOfferReportingDetailsListener, zzaH(), zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override
    public void endConnection() {
        zzbJ(12);
        synchronized (this.zza) {
            try {
                if (this.zzf != null) {
                    this.zzf.zzh();
                    try {
                        a.m("BillingClient", "Unbinding from service.");
                        zzbv();
                    } catch (Throwable th) {
                        a.o("BillingClient", "There was an exception while unbinding from the service while ending connection!", th);
                    }
                    try {
                        zzbt();
                        zzbs(3);
                    } catch (Throwable th2) {
                        try {
                            a.o("BillingClient", "There was an exception while shutting down the executor service while ending connection!", th2);
                            zzbs(3);
                        } catch (Throwable th3) {
                            zzbs(3);
                            this.zzK = null;
                            throw th3;
                        }
                    }
                    this.zzK = null;
                } else {
                    a.m("BillingClient", "Unbinding from service.");
                    zzbv();
                    zzbt();
                    zzbs(3);
                    this.zzK = null;
                }
            } catch (Throwable th4) {
                a.o("BillingClient", "There was an exception while shutting down broadcast manager while ending connection!", th4);
            }
            throw th;
        }
    }

    @Override
    @zze
    public void getBillingChoiceInfoAsync(final GetBillingChoiceInfoParams getBillingChoiceInfoParams, final BillingChoiceInfoResponseListener billingChoiceInfoResponseListener) {
        if (billingChoiceInfoResponseListener == null) {
            throw new IllegalArgumentException("Please provide a valid listener.");
        }
        if (getBillingChoiceInfoParams == null) {
            throw new IllegalArgumentException("Please provide valid GetBillingChoiceInfoParams.");
        }
        if (zzP(new Callable() {
            @Override
            public final Object call() throws Exception {
                BillingClientImpl.zzv(this.zza, billingChoiceInfoResponseListener, getBillingChoiceInfoParams);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                this.zza.zzbb(billingChoiceInfoResponseListener, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaE(), zzO()) == null) {
            zzbb(billingChoiceInfoResponseListener, zzaH(), zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override
    @zzl
    public void getBillingConfigAsync(GetBillingConfigParams getBillingConfigParams, final BillingConfigResponseListener billingConfigResponseListener) {
        if (zzP(new Callable() {
            @Override
            public final Object call() throws Exception {
                BillingClientImpl.zzA(this.zza, billingConfigResponseListener);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                BillingClientImpl.zzT(this.zza, billingConfigResponseListener);
            }
        }, zzaE(), zzO()) == null) {
            BillingResult billingResultZzaH = zzaH();
            zzbE(zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, 13, billingResultZzaH);
            billingConfigResponseListener.onBillingConfigResponse(billingResultZzaH, null);
        }
    }

    @Override
    public final int getConnectionState() {
        int i;
        synchronized (this.zza) {
            i = this.zzb;
        }
        return i;
    }

    @Override
    @zzc
    public void isAlternativeBillingOnlyAvailableAsync(final AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        if (zzP(new Callable() {
            @Override
            public final Object call() {
                BillingClientImpl.zzN(this.zza, alternativeBillingOnlyAvailabilityListener);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                this.zza.zzba(alternativeBillingOnlyAvailabilityListener, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaE(), zzO()) == null) {
            zzba(alternativeBillingOnlyAvailabilityListener, zzaH(), zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override
    @zzf
    public void isBillingProgramAvailableAsync(final int i, final BillingProgramAvailabilityListener billingProgramAvailabilityListener) {
        if (zzP(new Callable() {
            @Override
            public final Object call() throws Exception {
                BillingClientImpl.zzG(this.zza, billingProgramAvailabilityListener, i);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                this.zza.zzbc(billingProgramAvailabilityListener, i, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaE(), zzO()) == null) {
            zzbc(billingProgramAvailabilityListener, i, zzaH(), zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    @Override
    @zzi
    public void isExternalOfferAvailableAsync(final ExternalOfferAvailabilityListener externalOfferAvailabilityListener) {
        if (zzP(new Callable() {
            @Override
            public final Object call() throws Exception {
                BillingClientImpl.zzF(this.zza, externalOfferAvailabilityListener);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                this.zza.zzbh(externalOfferAvailabilityListener, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, zzaE(), zzO()) == null) {
            zzbh(externalOfferAvailabilityListener, zzaH(), zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:66:0x0101  */
    @Override
    public final BillingResult isFeatureSupported(String str) {
        if (!zzbw(zzdq.zzc())) {
            BillingResult billingResult = zzdh.zzj;
            zzjs zzjsVar = zzjs.SERVICE_CONNECTION_NOT_READY;
            if (billingResult.getResponseCode() != 0) {
                zzbE(zzjsVar, 5, billingResult);
            } else {
                zzbJ(5);
            }
            return billingResult;
        }
        int i = zzdh.zzL;
        switch (str) {
            case "subscriptions":
                BillingResult billingResult2 = this.zzk ? zzdh.zzi : zzdh.zzl;
                zzbD(billingResult2, zzjs.SUBSCRIPTIONS_NOT_SUPPORTED, 2);
                return billingResult2;
            case "subscriptionsUpdate":
                BillingResult billingResult3 = this.zzl ? zzdh.zzi : zzdh.zzm;
                zzbD(billingResult3, zzjs.SUBSCRIPTIONS_UPDATE_NOT_SUPPORTED, 3);
                return billingResult3;
            case "priceChangeConfirmation":
                BillingResult billingResult4 = this.zzo ? zzdh.zzi : zzdh.zzn;
                zzbD(billingResult4, zzjs.PRICE_CHANGE_CONFIRMATION_NOT_SUPPORTED, 4);
                return billingResult4;
            case "bbb":
                BillingResult billingResult5 = this.zzq ? zzdh.zzi : zzdh.zzt;
                zzbD(billingResult5, zzjs.IN_APP_MESSAGE_NOT_SUPPORTED, 5);
                return billingResult5;
            case "aaa":
                BillingResult billingResult6 = this.zzs ? zzdh.zzi : zzdh.zzo;
                zzbD(billingResult6, zzjs.CROSS_APP_NOT_SUPPORTED, 6);
                return billingResult6;
            case "ddd":
                BillingResult billingResult7 = this.zzr ? zzdh.zzi : zzdh.zzq;
                zzbD(billingResult7, zzjs.OFFER_ID_TOKEN_NOT_SUPPORTED, 7);
                return billingResult7;
            case "ccc":
                BillingResult billingResult8 = this.zzt ? zzdh.zzi : zzdh.zzp;
                zzbD(billingResult8, zzjs.MULTI_ITEM_NOT_SUPPORTED, 8);
                return billingResult8;
            case "eee":
                BillingResult billingResult9 = this.zzt ? zzdh.zzi : zzdh.zzp;
                zzbD(billingResult9, zzjs.PBL_FOR_PAYMENTS_GATEWAY_BUYFLOW_NOT_SUPPORTED, 9);
                return billingResult9;
            case "fff":
                BillingResult billingResult10 = this.zzu ? zzdh.zzi : zzdh.zzs;
                zzbD(billingResult10, zzjs.PRODUCT_DETAILS_NOT_SUPPORTED, 10);
                return billingResult10;
            case "ggg":
                BillingResult billingResult11 = this.zzv ? zzdh.zzi : zzdh.zzz;
                zzbD(billingResult11, zzjs.GET_BILLING_CONFIG_NOT_SUPPORTED, 11);
                return billingResult11;
            case "hhh":
                BillingResult billingResult12 = this.zzv ? zzdh.zzi : zzdh.zzA;
                zzbD(billingResult12, zzjs.QUERY_PRODUCT_DETAILS_WITH_SERIALIZED_DOCID_NOT_SUPPORTED, 12);
                return billingResult12;
            case "iii":
                BillingResult billingResult13 = this.zzx ? zzdh.zzi : zzdh.zzC;
                zzbD(billingResult13, zzjs.QUERY_PRODUCT_DETAILS_WITH_DEVELOPER_SPECIFIED_ACCOUNT_NOT_SUPPORTED, 13);
                return billingResult13;
            case "jjj":
                BillingResult billingResult14 = this.zzy ? zzdh.zzi : zzdh.zzD;
                zzbD(billingResult14, zzjs.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED, 14);
                return billingResult14;
            case "kkk":
                BillingResult billingResult15 = this.zzB ? zzdh.zzi : zzdh.zzu;
                zzbD(billingResult15, zzjs.EXTERNAL_OFFER_NOT_SUPPORTED, 18);
                return billingResult15;
            case "lll":
                BillingResult billingResult16 = this.zzA ? zzdh.zzi : zzdh.zzv;
                zzbD(billingResult16, zzjs.MULTI_ITEM_WITH_SEASON_PASS_NOT_SUPPORTED, 19);
                return billingResult16;
            case "mmm":
                BillingResult billingResult17 = this.zzB ? zzdh.zzi : zzdh.zzw;
                zzbD(billingResult17, zzjs.AUTO_PAY_NOT_SUPPORTED, 20);
                return billingResult17;
            case "nnn":
                BillingResult billingResult18 = this.zzC ? zzdh.zzi : zzdh.zzx;
                zzbD(billingResult18, zzjs.INCLUDE_SUSPENDED_SUBSCRIPTIONS_NOT_SUPPORTED, 21);
                return billingResult18;
            case "ooo":
                BillingResult billingResult19 = this.zzE ? zzdh.zzi : zzdh.zzr;
                zzbD(billingResult19, zzjs.GIFT_CODE_PURCHASE_NOT_SUPPORTED, 22);
                return billingResult19;
            default:
                a.n("BillingClient", "Unsupported feature: ".concat(str));
                BillingResult billingResult20 = zzdh.zzy;
                zzbD(billingResult20, zzjs.UNKNOWN_FEATURE, 1);
                return billingResult20;
        }
    }

    @Override
    public final boolean isReady() {
        if (this.zzH) {
            return true;
        }
        return zzby();
    }

    @Override
    public BillingResult launchBillingFlow(Activity activity, final BillingFlowParams billingFlowParams) {
        boolean zZzg;
        String str;
        boolean z;
        Future futureZzP;
        boolean z2;
        zzjs zzjsVarZzb;
        String string;
        Object obj;
        String str2;
        String str3;
        boolean z3;
        int i;
        long jNextLong = new Random().nextLong();
        if (this.zzf == null || this.zzf.zze() == null) {
            zzjs zzjsVar = zzjs.MISSING_LISTENER;
            BillingResult billingResult = zzdh.zzE;
            zzbF(zzjsVar, 2, billingResult, jNextLong);
            return billingResult;
        }
        if (billingFlowParams.getDeveloperBillingOptionParams() != null && this.zzf.zzc() == null) {
            zzjs zzjsVar2 = zzjs.MISSING_DEVELOPER_PROVIDED_BILLING_LISTENER;
            BillingResult billingResult2 = zzdh.zzI;
            zzbF(zzjsVar2, 2, billingResult2, jNextLong);
            return billingResult2;
        }
        if (!zzbw(zzdq.zzc())) {
            zzjs zzjsVar3 = zzjs.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult3 = zzdh.zzj;
            zzbF(zzjsVar3, 2, billingResult3, jNextLong);
            zzo(billingResult3);
            return billingResult3;
        }
        synchronized (this.zza) {
            try {
                zZzg = this.zzj != null ? this.zzj.zzg() : false;
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList arrayListZzj = billingFlowParams.zzj();
        List listZzk = billingFlowParams.zzk();
        zzeu zzeuVar = (zzeu) ckf.a(arrayListZzj, null);
        BillingFlowParams.ProductDetailsParams productDetailsParams = (BillingFlowParams.ProductDetailsParams) ckf.a(listZzk, null);
        if (zzeuVar != null) {
            throw null;
        }
        final String productId = productDetailsParams.zza().getProductId();
        final String productType = productDetailsParams.zza().getProductType();
        if (productType.equals(BillingClient.ProductType.SUBS) && !this.zzk) {
            a.n("BillingClient", "Current client doesn't support subscriptions.");
            zzjs zzjsVar4 = zzjs.SUBSCRIPTIONS_NOT_SUPPORTED;
            BillingResult billingResult4 = zzdh.zzl;
            zzbH(zzjsVar4, 2, billingResult4, jNextLong, zZzg);
            zzo(billingResult4);
            return billingResult4;
        }
        if (billingFlowParams.zzu() && !this.zzn) {
            a.n("BillingClient", "Current client doesn't support extra params for buy intent.");
            zzjs zzjsVar5 = zzjs.EXTRA_PARAMS_NOT_SUPPORTED;
            BillingResult billingResult5 = zzdh.zzf;
            zzbH(zzjsVar5, 2, billingResult5, jNextLong, zZzg);
            zzo(billingResult5);
            return billingResult5;
        }
        if (arrayListZzj.size() > 1 && !this.zzt) {
            a.n("BillingClient", "Current client doesn't support multi-item purchases.");
            zzjs zzjsVar6 = zzjs.MULTI_ITEM_NOT_SUPPORTED;
            BillingResult billingResult6 = zzdh.zzp;
            zzbH(zzjsVar6, 2, billingResult6, jNextLong, zZzg);
            zzo(billingResult6);
            return billingResult6;
        }
        if (!listZzk.isEmpty() && !this.zzu) {
            a.n("BillingClient", "Current client doesn't support purchases with ProductDetails.");
            zzjs zzjsVar7 = zzjs.PRODUCT_DETAILS_NOT_SUPPORTED;
            BillingResult billingResult7 = zzdh.zzs;
            zzbH(zzjsVar7, 2, billingResult7, jNextLong, zZzg);
            zzo(billingResult7);
            return billingResult7;
        }
        Iterator it = listZzk.iterator();
        while (it.hasNext()) {
            String strZzb = ((BillingFlowParams.ProductDetailsParams) it.next()).zzb();
            if (strZzb != null && strZzb.contains(StringUtils.PROCESS_POSTFIX_DELIMITER) && !this.zzE) {
                a.n("BillingClient", "Current Play Store version doesn't support gift code purchase.");
                zzjs zzjsVar8 = zzjs.GIFT_CODE_PURCHASE_NOT_SUPPORTED;
                BillingResult billingResult8 = zzdh.zzr;
                zzbH(zzjsVar8, 2, billingResult8, jNextLong, zZzg);
                zzo(billingResult8);
                return billingResult8;
            }
        }
        BillingResult billingResultZzd = billingFlowParams.zzd();
        if (billingResultZzd != zzdh.zzi) {
            zzbH(zzjs.INVALID_BILLING_FLOW_PARAMS, 2, billingResultZzd, jNextLong, zZzg);
            zzo(billingResultZzd);
            return billingResultZzd;
        }
        if (this.zzn) {
            z = zZzg;
            final Bundle bundleF = a.f(billingFlowParams, this.zzp, this.zzw, this.zzG.isEnabledForOneTimeProducts(), this.zzG.isEnabledForPrepaidPlans(), this.zzI, this.zzc, this.zzd, this.zzM.longValue(), this.zzg.getPackageName(), jNextLong);
            if (arrayListZzj.isEmpty()) {
                ArrayList<String> arrayList = new ArrayList<>(listZzk.size() - 1);
                ArrayList<String> arrayList2 = new ArrayList<>(listZzk.size() - 1);
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                ArrayList<Integer> arrayList6 = new ArrayList<>();
                int i2 = 0;
                while (i2 < listZzk.size()) {
                    BillingFlowParams.ProductDetailsParams productDetailsParams2 = (BillingFlowParams.ProductDetailsParams) listZzk.get(i2);
                    ProductDetails productDetailsZza = productDetailsParams2.zza();
                    if (!productDetailsZza.zzb().isEmpty()) {
                        arrayList3.add(productDetailsZza.zzb());
                    }
                    String strZzb2 = productDetailsParams2.zzb();
                    arrayList4.add(strZzb2);
                    String strZzc = productDetailsZza.zzc(strZzb2);
                    if (!TextUtils.isEmpty(strZzc)) {
                        arrayList5.add(strZzc);
                    }
                    if (i2 > 0) {
                        arrayList.add(((BillingFlowParams.ProductDetailsParams) listZzk.get(i2)).zza().getProductId());
                        arrayList2.add(((BillingFlowParams.ProductDetailsParams) listZzk.get(i2)).zza().getProductType());
                    }
                    i2++;
                    productId = productId;
                }
                str2 = productId;
                bundleF.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);
                if (!arrayList6.isEmpty()) {
                    bundleF.putIntegerArrayList("autoPayBalanceThresholdList", arrayList6);
                }
                if (!arrayList3.isEmpty()) {
                    bundleF.putStringArrayList("skuDetailsTokens", arrayList3);
                }
                if (!arrayList5.isEmpty()) {
                    bundleF.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (!arrayList.isEmpty()) {
                    bundleF.putStringArrayList("additionalSkus", arrayList);
                    bundleF.putStringArrayList("additionalSkuTypes", arrayList2);
                }
            } else {
                ArrayList<String> arrayList7 = new ArrayList<>();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                new ArrayList();
                Iterator it2 = arrayListZzj.iterator();
                if (it2.hasNext()) {
                    throw null;
                }
                if (!arrayList7.isEmpty()) {
                    bundleF.putStringArrayList("skuDetailsTokens", arrayList7);
                }
                if (arrayListZzj.size() > 1) {
                    ArrayList<String> arrayList8 = new ArrayList<>(arrayListZzj.size() - 1);
                    ArrayList<String> arrayList9 = new ArrayList<>(arrayListZzj.size() - 1);
                    if (arrayListZzj.size() > 1) {
                        throw null;
                    }
                    bundleF.putStringArrayList("additionalSkus", arrayList8);
                    bundleF.putStringArrayList("additionalSkuTypes", arrayList9);
                }
                str2 = productId;
            }
            if (bundleF.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !this.zzr) {
                zzjs zzjsVar9 = zzjs.OFFER_ID_TOKEN_NOT_SUPPORTED;
                BillingResult billingResult9 = zzdh.zzq;
                zzbH(zzjsVar9, 2, billingResult9, jNextLong, z);
                zzo(billingResult9);
                return billingResult9;
            }
            if (TextUtils.isEmpty(productDetailsParams.zza().zza())) {
                str3 = null;
                z3 = false;
            } else {
                bundleF.putString("skuPackageName", productDetailsParams.zza().zza());
                str3 = null;
                z3 = true;
            }
            if (!TextUtils.isEmpty(str3)) {
                bundleF.putString("accountName", str3);
            }
            Intent intent = activity.getIntent();
            if (intent == null) {
                a.n("BillingClient", "Activity's intent is null.");
            } else if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                bundleF.putString("proxyPackage", stringExtra);
                try {
                    bundleF.putString("proxyPackageVersion", this.zzg.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                } catch (PackageManager.NameNotFoundException unused) {
                    bundleF.putString("proxyPackageVersion", "package not found");
                }
            }
            if (this.zzE) {
                i = 28;
            } else if (this.zzu && !listZzk.isEmpty()) {
                i = 17;
            } else if (this.zzs && z3) {
                i = 15;
            } else {
                i = this.zzp ? 9 : 6;
            }
            final int i3 = i;
            final String str4 = str2;
            str = str3;
            futureZzP = zzP(new Callable() {
                @Override
                public final Object call() {
                    return this.zza.zzaC(i3, str4, productType, billingFlowParams, bundleF);
                }
            }, 5000L, null, this.zze, zzO());
        } else {
            str = null;
            z = zZzg;
            futureZzP = zzP(new Callable() {
                @Override
                public final Object call() {
                    return this.zza.zzaD(productId, productType);
                }
            }, 5000L, null, this.zze, zzO());
        }
        try {
            try {
                if (futureZzP == null) {
                    zzjs zzjsVar10 = zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC;
                    BillingResult billingResult10 = zzdh.zzc;
                    zzbH(zzjsVar10, 2, billingResult10, jNextLong, z);
                    zzo(billingResult10);
                    return billingResult10;
                }
                Bundle bundle = (Bundle) futureZzP.get(5000L, TimeUnit.MILLISECONDS);
                int iB = a.b(bundle, "BillingClient");
                String strJ = a.j(bundle, "BillingClient");
                if (iB == 0) {
                    Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                    intent2.putExtra("BUY_INTENT", (PendingIntent) bundle.getParcelable("BUY_INTENT"));
                    intent2.putExtra("billingClientTransactionId", jNextLong);
                    z2 = z;
                    try {
                        intent2.putExtra("wasServiceAutoReconnected", z2);
                        activity.startActivity(intent2);
                        return zzdh.zzi;
                    } catch (CancellationException | TimeoutException e) {
                        e = e;
                        a.o("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                        zzjs zzjsVar11 = zzjs.LAUNCH_BILLING_FLOW_TIMEOUT;
                        BillingResult billingResult11 = zzdh.zzk;
                        zzbI(zzjsVar11, 2, billingResult11, zzdc.zza(e), jNextLong, z2);
                        zzo(billingResult11);
                        return billingResult11;
                    } catch (Exception e2) {
                        e = e2;
                        a.o("BillingClient", "Exception while launching billing flow. Try to reconnect", e);
                        zzjs zzjsVar12 = zzjs.LAUNCH_BILLING_FLOW_EXCEPTION;
                        BillingResult billingResult12 = zzdh.zzj;
                        zzbI(zzjsVar12, 2, billingResult12, zzdc.zza(e), jNextLong, z2);
                        zzo(billingResult12);
                        return billingResult12;
                    }
                }
                a.n("BillingClient", zza.zza(iB, "Unable to buy item, Error response code: "));
                BillingResult billingResultZza = zzdh.zza(iB, strJ);
                try {
                    if (bundle == null || (obj = bundle.get("LOG_REASON")) == null) {
                        zzjsVarZzb = zzjs.REASON_UNSPECIFIED;
                    } else if (obj instanceof Integer) {
                        zzjsVarZzb = zzjs.zzb(((Integer) obj).intValue());
                    } else {
                        a.n("BillingClient", "Unexpected type for bundle log reason: " + obj.getClass().getName());
                        zzjsVarZzb = zzjs.REASON_UNSPECIFIED;
                    }
                } catch (Throwable th2) {
                    a.n("BillingClient", "Failed to get log reason from bundle: ".concat(String.valueOf(th2.getMessage())));
                    zzjsVarZzb = zzjs.REASON_UNSPECIFIED;
                }
                if (zzjsVarZzb == zzjs.REASON_UNSPECIFIED) {
                    zzjsVarZzb = zzjs.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
                }
                zzjs zzjsVar13 = zzjsVarZzb;
                if (bundle == null) {
                    string = str;
                } else {
                    try {
                        string = bundle.getString("ADDITIONAL_LOG_DETAILS");
                    } catch (Throwable th3) {
                        a.n("BillingClient", "Failed to get additional log details from bundle: ".concat(String.valueOf(th3.getMessage())));
                        string = str;
                    }
                }
                zzbI(zzjsVar13, 2, billingResultZza, string, jNextLong, z);
                zzo(billingResultZza);
                return billingResultZza;
            } catch (Exception e3) {
                e = e3;
                z2 = z;
            }
        } catch (CancellationException | TimeoutException e4) {
            e = e4;
            z2 = z;
        }
    }

    @Override
    @zzn
    public void launchExternalLink(final Activity activity, final LaunchExternalLinkParams launchExternalLinkParams, final LaunchExternalLinkResponseListener launchExternalLinkResponseListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        try {
            zzaX(new Callable() {
                @Override
                public final Object call() throws RemoteException {
                    BillingClientImpl.zzH(this.zza, launchExternalLinkResponseListener, launchExternalLinkParams, activity);
                    return null;
                }
            }, 30000L, new Runnable() {
                @Override
                public final void run() {
                    this.zza.zzbk(launchExternalLinkResponseListener, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
                }
            }, zzaE());
        } catch (Exception e) {
            zzbk(launchExternalLinkResponseListener, zzaH(), zzjs.SERVICE_CALL_EXCEPTION, e);
        }
    }

    @Override
    public void queryProductDetailsAsync(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        if (zzP(new Callable() {
            @Override
            public final Object call() throws JSONException {
                BillingClientImpl.zzx(this.zza, productDetailsResponseListener, queryProductDetailsParams);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                BillingClientImpl.zzaa(this.zza, productDetailsResponseListener);
            }
        }, zzaE(), zzO()) == null) {
            BillingResult billingResultZzaH = zzaH();
            zzbE(zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, 7, billingResultZzaH);
            productDetailsResponseListener.onProductDetailsResponse(billingResultZzaH, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzca.zzk(), com.google.android.gms.internal.play_billing.zzca.zzk()));
        }
    }

    @Override
    public final void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, final PurchasesResponseListener purchasesResponseListener) {
        if (zzP(new zzbp(this, purchasesResponseListener, queryPurchasesParams.zza(), queryPurchasesParams.getIncludeSuspendedSubscriptions()), 30000L, new Runnable() {
            @Override
            public final void run() {
                BillingClientImpl.zzS(this.zza, purchasesResponseListener);
            }
        }, zzaE(), zzO()) == null) {
            BillingResult billingResultZzaH = zzaH();
            zzbE(zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, 9, billingResultZzaH);
            purchasesResponseListener.onQueryPurchasesResponse(billingResultZzaH, com.google.android.gms.internal.play_billing.zzca.zzk());
        }
    }

    @Override
    @zzc
    public BillingResult showAlternativeBillingOnlyInformationDialog(final Activity activity, final AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        if (!zzbw(zzdq.zzc())) {
            zzjs zzjsVar = zzjs.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzdh.zzj;
            zzbE(zzjsVar, 16, billingResult);
            return billingResult;
        }
        if (!this.zzy) {
            a.n("BillingClient", "Current Play Store version doesn't support alternative billing only.");
            zzjs zzjsVar2 = zzjs.ALTERNATIVE_BILLING_ONLY_NOT_SUPPORTED;
            BillingResult billingResult2 = zzdh.zzD;
            zzbE(zzjsVar2, 16, billingResult2);
            return billingResult2;
        }
        Handler handler = this.zze;
        final zzbr zzbrVar = new zzbr(this, handler, alternativeBillingOnlyInformationDialogListener);
        if (zzP(new Callable() {
            @Override
            public final Object call() throws Exception {
                BillingClientImpl.zzE(this.zza, alternativeBillingOnlyInformationDialogListener, activity, zzbrVar);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                this.zza.zzbl(alternativeBillingOnlyInformationDialogListener, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, handler, zzO()) != null) {
            return zzdh.zzi;
        }
        BillingResult billingResultZzaH = zzaH();
        zzbE(zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, 16, billingResultZzaH);
        return billingResultZzaH;
    }

    @Override
    @zze
    public void showBillingProgramInformationDialog(final Activity activity, final BillingProgramInformationDialogParams billingProgramInformationDialogParams, final BillingProgramInformationDialogListener billingProgramInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        try {
            zzaX(new Callable() {
                @Override
                public final Object call() throws Exception {
                    BillingClientImpl.zzI(this.zza, billingProgramInformationDialogListener, billingProgramInformationDialogParams, activity);
                    return null;
                }
            }, 30000L, new Runnable() {
                @Override
                public final void run() {
                    this.zza.zzbm(billingProgramInformationDialogListener, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
                }
            }, zzaE());
        } catch (Exception e) {
            zzbm(billingProgramInformationDialogListener, zzaH(), zzjs.SERVICE_CALL_EXCEPTION, e);
        }
    }

    @Override
    @zzi
    public BillingResult showExternalOfferInformationDialog(final Activity activity, final ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException("Please provide a valid activity.");
        }
        if (!zzbw(zzdq.zzc())) {
            zzjs zzjsVar = zzjs.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzdh.zzj;
            zzbE(zzjsVar, 25, billingResult);
            return billingResult;
        }
        if (!this.zzz) {
            a.n("BillingClient", "Current Play Store version doesn't support external offer.");
            zzjs zzjsVar2 = zzjs.EXTERNAL_OFFER_NOT_SUPPORTED;
            BillingResult billingResult2 = zzdh.zzu;
            zzbE(zzjsVar2, 25, billingResult2);
            return billingResult2;
        }
        Handler handler = this.zze;
        final zzbs zzbsVar = new zzbs(this, handler, externalOfferInformationDialogListener);
        if (zzP(new Callable() {
            @Override
            public final Object call() throws Exception {
                BillingClientImpl.zzK(this.zza, externalOfferInformationDialogListener, activity, zzbsVar);
                return null;
            }
        }, 30000L, new Runnable() {
            @Override
            public final void run() {
                this.zza.zzbi(externalOfferInformationDialogListener, zzdh.zzk, zzjs.EXECUTE_ASYNC_TIMEOUT, null);
            }
        }, handler, zzO()) != null) {
            return zzdh.zzi;
        }
        BillingResult billingResultZzaH = zzaH();
        zzbE(zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, 25, billingResultZzaH);
        return billingResultZzaH;
    }

    @Override
    public final BillingResult showInAppMessages(final Activity activity, InAppMessageParams inAppMessageParams, InAppMessageResponseListener inAppMessageResponseListener) {
        if (!zzbw(zzdq.zzc())) {
            a.n("BillingClient", "Service disconnected.");
            return zzdh.zzj;
        }
        if (!this.zzq) {
            a.n("BillingClient", "Current client doesn't support showing in-app messages.");
            return zzdh.zzt;
        }
        View viewFindViewById = activity.findViewById(R.id.content);
        IBinder windowToken = viewFindViewById.getWindowToken();
        if (windowToken == null) {
            a.n("BillingClient", "Could not retrieve the window token from the activity instance.");
        }
        Rect rect = new Rect();
        viewFindViewById.getGlobalVisibleRect(rect);
        final Bundle bundle = new Bundle();
        BundleCompat.putBinder(bundle, "KEY_WINDOW_TOKEN", windowToken);
        bundle.putInt("KEY_DIMEN_LEFT", rect.left);
        bundle.putInt("KEY_DIMEN_TOP", rect.top);
        bundle.putInt("KEY_DIMEN_RIGHT", rect.right);
        bundle.putInt("KEY_DIMEN_BOTTOM", rect.bottom);
        bundle.putString("playBillingLibraryVersion", this.zzc);
        String str = this.zzd;
        if (str != null) {
            bundle.putString("playBillingLibraryWrapperVersion", str);
        }
        bundle.putIntegerArrayList("KEY_CATEGORY_IDS", inAppMessageParams.zza());
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("accountName", null);
        }
        Handler handler = this.zze;
        final zzbq zzbqVar = new zzbq(this, handler, inAppMessageResponseListener);
        zzP(new Callable() {
            @Override
            public final Object call() throws Exception {
                BillingClientImpl.zzz(this.zza, bundle, activity, zzbqVar);
                return null;
            }
        }, 5000L, null, handler, zzO());
        return zzdh.zzi;
    }

    @Override
    public void startConnection(BillingClientStateListener billingClientStateListener) {
        zzbu(billingClientStateListener, 0);
    }

    public final synchronized ExecutorService zzO() {
        try {
            if (this.zzL == null) {
                this.zzL = Executors.newFixedThreadPool(a.a, new zzbo(this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zzL;
    }

    public final void zzax(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            this.zze.post(runnable);
        }
    }

    @VisibleForTesting
    public final zzcl zzi(QueryProductDetailsParams queryProductDetailsParams) throws JSONException {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String strZzb = queryProductDetailsParams.zzb();
        com.google.android.gms.internal.play_billing.zzca zzcaVarZza = queryProductDetailsParams.zza();
        int size = zzcaVarZza.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 20;
            ArrayList<QueryProductDetailsParams.Product> arrayList3 = new ArrayList(zzcaVarZza.subList(i, i2 > size ? size : i2));
            ArrayList<String> arrayList4 = new ArrayList<>();
            int size2 = arrayList3.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList4.add(((QueryProductDetailsParams.Product) arrayList3.get(i3)).zza());
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList4);
            String str = this.zzc;
            bundle.putString("playBillingLibraryVersion", str);
            try {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    return zzaF(zzdh.zzj, zzjs.SERVICE_RESET_TO_NULL, "Service has been reset to null.", null);
                }
                boolean z = this.zzw && this.zzG.isEnabledForPrepaidPlans();
                zzaN(queryProductDetailsParams);
                zzaN(queryProductDetailsParams);
                zzaN(queryProductDetailsParams);
                zzaN(queryProductDetailsParams);
                Bundle bundleZzj = zzarVar.zzj(true != this.zzx ? 17 : 20, this.zzg.getPackageName(), strZzb, bundle, a.g(str, this.zzd, arrayList3, null, null, f5e.a(z, true, true, true, false, true), this.zzM.longValue()));
                if (bundleZzj == null) {
                    return zzaF(zzdh.zzB, zzjs.NULL_BUNDLE_FROM_GET_SKU_DETAILS_SERVICE_CALL, "queryProductDetailsAsync got empty product details response.", null);
                }
                if (!bundleZzj.containsKey("DETAILS_LIST")) {
                    int iB = a.b(bundleZzj, "BillingClient");
                    String strJ = a.j(bundleZzj, "BillingClient");
                    return iB != 0 ? zzaF(zzdh.zza(iB, strJ), zzjs.BILLING_RESULT_RECEIVED_FROM_PHONESKY, zza.zza(iB, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "), null) : zzaF(zzdh.zza(6, strJ), zzjs.MISSING_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.", null);
                }
                ArrayList<String> stringArrayList = bundleZzj.getStringArrayList("DETAILS_LIST");
                if (stringArrayList == null) {
                    return zzaF(zzdh.zzB, zzjs.NULL_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "queryProductDetailsAsync got null response list", null);
                }
                ArrayList arrayList5 = new ArrayList();
                int size3 = stringArrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    try {
                        ProductDetails productDetails = new ProductDetails(stringArrayList.get(i4));
                        a.m("BillingClient", "Got product details: ".concat(productDetails.toString()));
                        arrayList5.add(productDetails);
                    } catch (JSONException e) {
                        return zzaF(zzdh.zza(6, "Error trying to decode SkuDetails."), zzjs.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e);
                    }
                }
                ArrayList<String> stringArrayList2 = bundleZzj.getStringArrayList("UNFETCHED_PRODUCT_LIST");
                new ArrayList();
                try {
                    ArrayList arrayList6 = new ArrayList();
                    if (stringArrayList2 == null) {
                        for (QueryProductDetailsParams.Product product : arrayList3) {
                            Iterator it = arrayList5.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    arrayList6.add(new UnfetchedProduct(new JSONObject().put("productId", product.zza()).put("type", product.zzb()).put("statusCode", 0).toString()));
                                    break;
                                }
                                ProductDetails productDetails2 = (ProductDetails) it.next();
                                if (product.zza().equals(productDetails2.getProductId()) && product.zzb().equals(productDetails2.getProductType())) {
                                    break;
                                }
                            }
                        }
                    } else {
                        Iterator<String> it2 = stringArrayList2.iterator();
                        while (it2.hasNext()) {
                            UnfetchedProduct unfetchedProduct = new UnfetchedProduct(it2.next());
                            a.m("BillingClient", "Got unfetchedProduct: ".concat(unfetchedProduct.toString()));
                            arrayList6.add(unfetchedProduct);
                        }
                    }
                    arrayList.addAll(arrayList5);
                    arrayList2.addAll(arrayList6);
                    i = i2;
                } catch (JSONException e2) {
                    return zzaF(zzdh.zza(6, "Error trying to decode SkuDetails."), zzjs.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: ", e2);
                }
            } catch (DeadObjectException e3) {
                return zzaF(zzdh.zzj, zzjs.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e3);
            } catch (Exception e4) {
                return zzaF(zzdh.zzh, zzjs.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e4);
            }
        }
        return new zzcl(0, "", arrayList, arrayList2);
    }

    public final zzdd zzl() {
        return this.zzh;
    }

    public final BillingResult zzo(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.zze.post(new Runnable() {
            @Override
            public final void run() {
                BillingClientImpl.zzac(this.zza, billingResult);
            }
        });
        return billingResult;
    }

    private void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, String str, @Nullable zzdd zzddVar, BillingClient.Builder builder) {
        this.zzg = context.getApplicationContext();
        r6j r6jVarI = v6j.I();
        r6jVarI.w(str);
        String str2 = this.zzd;
        if (str2 != null) {
            r6jVarI.x(str2);
        }
        r6jVarI.p(this.zzg.getPackageName());
        r6jVarI.m(this.zzM.longValue());
        r6jVarI.v(builder.zza);
        r6jVarI.j(Build.VERSION.SDK_INT);
        r6jVarI.o(926300087L);
        zzbA(r6jVarI, context);
        try {
            r6jVarI.k(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            a.o("BillingClient", "Error getting app version code.", th);
        }
        if (zzddVar != null) {
            this.zzh = zzddVar;
        } else {
            this.zzh = new zzdr(this.zzg, (v6j) r6jVarI.f());
        }
        if (purchasesUpdatedListener == null) {
            a.n("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.zzf = new zzz(this.zzg, purchasesUpdatedListener, null, null, null, this.zzh);
        this.zzG = pendingPurchasesParams;
        this.zzg.getPackageName();
        this.zzH = builder.zza;
    }

    @AnyThread
    public BillingClientImpl(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzdu zzduVar, @Nullable zzdd zzddVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzJ = com.google.android.gms.internal.play_billing.zzcf.zzk();
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzM = lValueOf;
        this.zzN = s0f.a();
        this.zzc = BuildConfig.VERSION_NAME;
        String strZzaO = zzaO();
        this.zzd = strZzaO;
        this.zzg = context.getApplicationContext();
        r6j r6jVarI = v6j.I();
        r6jVarI.w(BuildConfig.VERSION_NAME);
        if (strZzaO != null) {
            r6jVarI.x(strZzaO);
        }
        r6jVarI.p(this.zzg.getPackageName());
        r6jVarI.m(lValueOf.longValue());
        r6jVarI.v(builder.zza);
        r6jVarI.j(Build.VERSION.SDK_INT);
        r6jVarI.o(926300087L);
        zzbA(r6jVarI, context);
        try {
            r6jVarI.k(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            a.o("BillingClient", "Error getting app version code.", th);
        }
        this.zzh = new zzdr(this.zzg, (v6j) r6jVarI.f());
        a.n("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.zzf = new zzz(this.zzg, null, null, null, null, this.zzh);
        this.zzG = pendingPurchasesParams;
        this.zzg.getPackageName();
        this.zzH = builder.zza;
    }

    @AnyThread
    public BillingClientImpl(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable zzdd zzddVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzJ = com.google.android.gms.internal.play_billing.zzcf.zzk();
        this.zzM = Long.valueOf(new Random().nextLong());
        this.zzN = s0f.a();
        this.zzc = BuildConfig.VERSION_NAME;
        this.zzd = zzaO();
        initialize(context, purchasesUpdatedListener, pendingPurchasesParams, BuildConfig.VERSION_NAME, null, builder);
    }

    @AnyThread
    public BillingClientImpl(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable DeveloperProvidedBillingListener developerProvidedBillingListener, @Nullable zzdd zzddVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzJ = com.google.android.gms.internal.play_billing.zzcf.zzk();
        this.zzM = Long.valueOf(new Random().nextLong());
        this.zzN = s0f.a();
        this.zzc = BuildConfig.VERSION_NAME;
        this.zzd = zzaO();
        initialize(context, purchasesUpdatedListener, pendingPurchasesParams, userChoiceBillingListener, developerProvidedBillingListener, BuildConfig.VERSION_NAME, null, builder);
    }
}
