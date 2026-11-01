package com.android.billingclient.api;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
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
import androidx.core.app.BundleCompat;
import androidx.work.WorkRequest;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.internal.play_billing.zzij;
import com.google.android.gms.internal.play_billing.zzim;
import com.google.android.gms.internal.play_billing.zzjd;
import com.google.android.gms.internal.play_billing.zzjf;
import com.google.android.gms.internal.play_billing.zzjj;
import com.google.android.gms.internal.play_billing.zzjl;
import com.google.android.gms.internal.play_billing.zzjn;
import com.google.android.gms.internal.play_billing.zzjp;
import com.google.android.gms.internal.play_billing.zzjq;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzju;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzke;
import com.google.android.gms.internal.play_billing.zzkg;
import com.google.android.gms.internal.play_billing.zzkk;
import com.google.android.gms.internal.play_billing.zzkn;
import com.google.android.gms.internal.play_billing.zzll;
import com.google.android.gms.internal.play_billing.zzln;
import com.google.common.base.Ascii;
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
    private PendingPurchasesParams zzG;
    private boolean zzH;
    private boolean zzI;
    private com.google.android.gms.internal.play_billing.zzcf zzJ;
    private volatile BillingClientStateListener zzK;
    private ExecutorService zzL;
    private final Long zzM;
    private final com.google.android.gms.internal.play_billing.zzbq zzN;
    private final Object zza;
    private volatile int zzb;
    private final String zzc;
    private final String zzd;
    private final Handler zze;
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

    BillingClientImpl(String str, Context context, zzdd zzddVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzJ = com.google.android.gms.internal.play_billing.zzcf.zzk();
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzM = lValueOf;
        this.zzN = com.google.android.gms.internal.play_billing.zzbf.zza();
        String strS = ProtectedFastSSH.s("㇁");
        this.zzc = strS;
        String strZzaO = zzaO();
        this.zzd = strZzaO;
        this.zzg = context.getApplicationContext();
        zzke zzkeVarZza = zzkg.zza();
        zzkeVarZza.zzx(strS);
        if (strZzaO != null) {
            zzkeVarZza.zzy(strZzaO);
        }
        zzkeVarZza.zzq(this.zzg.getPackageName());
        zzkeVarZza.zzd(lValueOf.longValue());
        zzkeVarZza.zzw(builder.zza);
        zzkeVarZza.zza(Build.VERSION.SDK_INT);
        zzkeVarZza.zzp(926300087L);
        zzbA(zzkeVarZza, context);
        try {
            zzkeVarZza.zzb(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇃"), th);
        }
        this.zzh = new zzdr(this.zzg, (zzkg) zzkeVarZza.zzi());
        this.zzg.getPackageName();
        com.google.android.gms.internal.play_billing.zzbq zzbqVar = builder.zzb;
        this.zzH = builder.zza;
    }

    BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, UserChoiceBillingListener userChoiceBillingListener, DeveloperProvidedBillingListener developerProvidedBillingListener, zzdd zzddVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzJ = com.google.android.gms.internal.play_billing.zzcf.zzk();
        this.zzM = Long.valueOf(new Random().nextLong());
        this.zzN = com.google.android.gms.internal.play_billing.zzbf.zza();
        String strS = ProtectedFastSSH.s("㇁");
        this.zzc = strS;
        this.zzd = zzaO();
        initialize(context, purchasesUpdatedListener, pendingPurchasesParams, userChoiceBillingListener, developerProvidedBillingListener, strS, null, builder);
    }

    BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzdd zzddVar, ExecutorService executorService, BillingClient.Builder builder) {
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzJ = com.google.android.gms.internal.play_billing.zzcf.zzk();
        this.zzM = Long.valueOf(new Random().nextLong());
        this.zzN = com.google.android.gms.internal.play_billing.zzbf.zza();
        String strS = ProtectedFastSSH.s("㇁");
        this.zzc = strS;
        this.zzd = zzaO();
        initialize(context, purchasesUpdatedListener, pendingPurchasesParams, strS, null, builder);
    }

    BillingClientImpl(String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzdu zzduVar, zzdd zzddVar, ExecutorService executorService, BillingClient.Builder builder) {
        String strS = ProtectedFastSSH.s("㇂");
        this.zza = new Object();
        this.zzb = 0;
        this.zze = new Handler(Looper.getMainLooper());
        this.zzm = 0;
        this.zzJ = com.google.android.gms.internal.play_billing.zzcf.zzk();
        Long lValueOf = Long.valueOf(new Random().nextLong());
        this.zzM = lValueOf;
        this.zzN = com.google.android.gms.internal.play_billing.zzbf.zza();
        String strS2 = ProtectedFastSSH.s("㇁");
        this.zzc = strS2;
        String strZzaO = zzaO();
        this.zzd = strZzaO;
        this.zzg = context.getApplicationContext();
        zzke zzkeVarZza = zzkg.zza();
        zzkeVarZza.zzx(strS2);
        if (strZzaO != null) {
            zzkeVarZza.zzy(strZzaO);
        }
        zzkeVarZza.zzq(this.zzg.getPackageName());
        zzkeVarZza.zzd(lValueOf.longValue());
        zzkeVarZza.zzw(builder.zza);
        zzkeVarZza.zza(Build.VERSION.SDK_INT);
        zzkeVarZza.zzp(926300087L);
        zzbA(zzkeVarZza, context);
        try {
            zzkeVarZza.zzb(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㇃"), th);
        }
        this.zzh = new zzdr(this.zzg, (zzkg) zzkeVarZza.zzi());
        com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㇄"));
        this.zzf = new zzz(this.zzg, null, null, null, null, this.zzh);
        this.zzG = pendingPurchasesParams;
        this.zzg.getPackageName();
        com.google.android.gms.internal.play_billing.zzbq zzbqVar = builder.zzb;
        this.zzH = builder.zza;
    }

    private void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, UserChoiceBillingListener userChoiceBillingListener, DeveloperProvidedBillingListener developerProvidedBillingListener, String str, zzdd zzddVar, BillingClient.Builder builder) {
        String strS = ProtectedFastSSH.s("㇂");
        this.zzg = context.getApplicationContext();
        zzke zzkeVarZza = zzkg.zza();
        zzkeVarZza.zzx(str);
        String str2 = this.zzd;
        if (str2 != null) {
            zzkeVarZza.zzy(str2);
        }
        zzkeVarZza.zzq(this.zzg.getPackageName());
        zzkeVarZza.zzd(this.zzM.longValue());
        zzkeVarZza.zzw(builder.zza);
        zzkeVarZza.zza(Build.VERSION.SDK_INT);
        zzkeVarZza.zzp(926300087L);
        zzbA(zzkeVarZza, context);
        try {
            zzkeVarZza.zzb(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㇃"), th);
        }
        if (zzddVar != null) {
            this.zzh = zzddVar;
        } else {
            this.zzh = new zzdr(this.zzg, (zzkg) zzkeVarZza.zzi());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㇄"));
        }
        this.zzf = new zzz(this.zzg, purchasesUpdatedListener, null, userChoiceBillingListener, developerProvidedBillingListener, this.zzh);
        this.zzG = pendingPurchasesParams;
        this.zzI = userChoiceBillingListener != null;
        com.google.android.gms.internal.play_billing.zzbq zzbqVar = builder.zzb;
        this.zzH = builder.zza;
    }

    private void initialize(Context context, PurchasesUpdatedListener purchasesUpdatedListener, PendingPurchasesParams pendingPurchasesParams, String str, zzdd zzddVar, BillingClient.Builder builder) {
        String strS = ProtectedFastSSH.s("㇂");
        this.zzg = context.getApplicationContext();
        zzke zzkeVarZza = zzkg.zza();
        zzkeVarZza.zzx(str);
        String str2 = this.zzd;
        if (str2 != null) {
            zzkeVarZza.zzy(str2);
        }
        zzkeVarZza.zzq(this.zzg.getPackageName());
        zzkeVarZza.zzd(this.zzM.longValue());
        zzkeVarZza.zzw(builder.zza);
        zzkeVarZza.zza(Build.VERSION.SDK_INT);
        zzkeVarZza.zzp(926300087L);
        zzbA(zzkeVarZza, context);
        try {
            zzkeVarZza.zzb(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㇃"), th);
        }
        if (zzddVar != null) {
            this.zzh = zzddVar;
        } else {
            this.zzh = new zzdr(this.zzg, (zzkg) zzkeVarZza.zzi());
        }
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㇄"));
        }
        this.zzf = new zzz(this.zzg, purchasesUpdatedListener, null, null, null, this.zzh);
        this.zzG = pendingPurchasesParams;
        this.zzg.getPackageName();
        com.google.android.gms.internal.play_billing.zzbq zzbqVar = builder.zzb;
        this.zzH = builder.zza;
    }

    public static Object zzA(BillingClientImpl billingClientImpl, BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        billingClientImpl.zzaL(billingConfigResponseListener);
        return null;
    }

    static Object zzB(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zza;
    }

    static String zzC(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzc;
    }

    static String zzD(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzd;
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
        try {
            if (!billingClientImpl.zzbx(zzdq.zzb())) {
                billingClientImpl.zzbk(launchExternalLinkResponseListener, zzdh.zzj, zzjs.zzb, null);
            } else if (billingClientImpl.zzD) {
                synchronized (billingClientImpl.zza) {
                    zzarVar = billingClientImpl.zzi;
                }
                if (zzarVar == null) {
                    billingClientImpl.zzbk(launchExternalLinkResponseListener, zzdh.zzj, zzjs.zzbc, null);
                } else {
                    String packageName = billingClientImpl.zzg.getPackageName();
                    String str = billingClientImpl.zzd;
                    long jLongValue = billingClientImpl.zzM.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    String strS = ProtectedFastSSH.s("㇁");
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, strS, str, jLongValue);
                    zzij zzijVarZza = zzim.zza();
                    String strS2 = ProtectedFastSSH.s("㇆");
                    zzjd zzjdVarZza = zzjf.zza();
                    zzjdVarZza.zza(launchExternalLinkParams.getLinkUri().toString());
                    zzijVarZza.zza(strS2, (zzjf) zzjdVarZza.zzi());
                    String strS3 = ProtectedFastSSH.s("㇇");
                    zzjd zzjdVarZza2 = zzjf.zza();
                    zzjdVarZza2.zza(String.valueOf(launchExternalLinkParams.getLaunchMode()));
                    zzijVarZza.zza(strS3, (zzjf) zzjdVarZza2.zzi());
                    String strS4 = ProtectedFastSSH.s("㇈");
                    zzjd zzjdVarZza3 = zzjf.zza();
                    zzjdVarZza3.zza(String.valueOf(launchExternalLinkParams.getLinkType()));
                    zzijVarZza.zza(strS4, (zzjf) zzjdVarZza3.zzi());
                    String strS5 = ProtectedFastSSH.s("㇉");
                    zzjd zzjdVarZza4 = zzjf.zza();
                    zzjdVarZza4.zza(String.valueOf(launchExternalLinkParams.getBillingProgram()));
                    zzijVarZza.zza(strS5, (zzjf) zzjdVarZza4.zzi());
                    if (!TextUtils.isEmpty(launchExternalLinkParams.getExternalTransactionToken())) {
                        String strS6 = ProtectedFastSSH.s("㇊");
                        zzjd zzjdVarZza5 = zzjf.zza();
                        zzjdVarZza5.zza(launchExternalLinkParams.getExternalTransactionToken());
                        zzijVarZza.zza(strS6, (zzjf) zzjdVarZza5.zzi());
                    }
                    bundle.putByteArray(ProtectedFastSSH.s("㇋"), ((zzim) zzijVarZza.zzi()).zzQ());
                    zzarVar.zzp(27, packageName, bundle, new zzcf(billingClientImpl, new WeakReference(activity), launchExternalLinkResponseListener, null));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇅"));
                billingClientImpl.zzbk(launchExternalLinkResponseListener, zzdh.zzH, zzjs.zzbs, null);
            }
        } catch (RuntimeException e) {
            billingClientImpl.zzbk(launchExternalLinkResponseListener, zzdh.zzh, zzjs.zzbb, e);
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
        try {
            if (!billingClientImpl.zzbx(zzdq.zzb())) {
                billingClientImpl.zzba(alternativeBillingOnlyAvailabilityListener, zzdh.zzj, zzjs.zzb, null);
            } else if (billingClientImpl.zzy) {
                synchronized (billingClientImpl.zza) {
                    zzarVar = billingClientImpl.zzi;
                }
                if (zzarVar == null) {
                    billingClientImpl.zzba(alternativeBillingOnlyAvailabilityListener, zzdh.zzj, zzjs.zzbc, null);
                } else {
                    zzarVar.zzr(21, billingClientImpl.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzh(billingClientImpl.zzc, billingClientImpl.zzd, billingClientImpl.zzM.longValue()), new zzch(alternativeBillingOnlyAvailabilityListener, billingClientImpl.zzh, billingClientImpl.zzm, null));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇌"));
                billingClientImpl.zzba(alternativeBillingOnlyAvailabilityListener, zzdh.zzD, zzjs.zzan, null);
            }
        } catch (Exception e) {
            billingClientImpl.zzba(alternativeBillingOnlyAvailabilityListener, e instanceof DeadObjectException ? zzdh.zzj : zzdh.zzh, zzjs.zzaq, e);
        }
        return null;
    }

    static Future zzP(Callable callable, long j, Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            Future futureSubmit = executorService.submit(callable);
            handler.postDelayed(new zzbb(futureSubmit, runnable), (long) (j * 0.95d));
            return futureSubmit;
        } catch (Exception e) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇍"), e);
            return null;
        }
    }

    public static void zzQ(BillingClientImpl billingClientImpl, BillingProgramInformationDialogListener billingProgramInformationDialogListener) {
        billingClientImpl.zzbm(billingProgramInformationDialogListener, zzdh.zzk, zzjs.zzx, null);
    }

    public static void zzR(BillingClientImpl billingClientImpl, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) {
        zzjs zzjsVar = zzjs.zzx;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbE(zzjsVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
    }

    public static void zzS(BillingClientImpl billingClientImpl, PurchasesResponseListener purchasesResponseListener) {
        zzjs zzjsVar = zzjs.zzx;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbE(zzjsVar, 9, billingResult);
        purchasesResponseListener.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzca.zzk());
    }

    public static void zzT(BillingClientImpl billingClientImpl, BillingConfigResponseListener billingConfigResponseListener) {
        zzjs zzjsVar = zzjs.zzx;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbE(zzjsVar, 13, billingResult);
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    public static void zzU(BillingClientImpl billingClientImpl, AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        billingClientImpl.zzba(alternativeBillingOnlyAvailabilityListener, zzdh.zzk, zzjs.zzx, null);
    }

    public static void zzV(BillingClientImpl billingClientImpl, BillingProgramAvailabilityListener billingProgramAvailabilityListener, int i) {
        billingClientImpl.zzbc(billingProgramAvailabilityListener, i, zzdh.zzk, zzjs.zzx, null);
    }

    public static void zzW(BillingClientImpl billingClientImpl, LaunchExternalLinkResponseListener launchExternalLinkResponseListener) {
        billingClientImpl.zzbk(launchExternalLinkResponseListener, zzdh.zzk, zzjs.zzx, null);
    }

    public static void zzX(BillingClientImpl billingClientImpl, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        zzjs zzjsVar = zzjs.zzx;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbE(zzjsVar, 3, billingResult);
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    public static void zzY(BillingClientImpl billingClientImpl, ExternalOfferAvailabilityListener externalOfferAvailabilityListener) {
        billingClientImpl.zzbh(externalOfferAvailabilityListener, zzdh.zzk, zzjs.zzx, null);
    }

    public static void zzZ(BillingClientImpl billingClientImpl, BillingChoiceInfoResponseListener billingChoiceInfoResponseListener) {
        billingClientImpl.zzbb(billingChoiceInfoResponseListener, zzdh.zzk, zzjs.zzx, null);
    }

    static int zza(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzb;
    }

    static zzek zzaA(BillingClientImpl billingClientImpl, String str, boolean z, int i) {
        return billingClientImpl.zzbC(str, z, 9);
    }

    static void zzaB(BillingClientImpl billingClientImpl, zzjs zzjsVar, int i, BillingResult billingResult) {
        billingClientImpl.zzbE(zzjsVar, i, billingResult);
    }

    private final Bundle zzaC(int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            return zzarVar == null ? com.google.android.gms.internal.play_billing.zzc.zzd(zzdh.zzj, zzjs.zzbc) : zzarVar.zzg(i, this.zzg.getPackageName(), str, str2, null, bundle);
        } catch (DeadObjectException e) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzdh.zzj, zzjs.zze, zzdc.zza(e));
        } catch (Exception e2) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzdh.zzh, zzjs.zze, zzdc.zza(e2));
        }
    }

    private final Bundle zzaD(String str, String str2) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            synchronized (this.zza) {
                zzarVar = this.zzi;
            }
            return zzarVar == null ? com.google.android.gms.internal.play_billing.zzc.zzd(zzdh.zzj, zzjs.zzbc) : zzarVar.zzf(3, this.zzg.getPackageName(), str, str2, null);
        } catch (DeadObjectException e) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzdh.zzj, zzjs.zze, zzdc.zza(e));
        } catch (Exception e2) {
            return com.google.android.gms.internal.play_billing.zzc.zze(zzdh.zzh, zzjs.zze, zzdc.zza(e2));
        }
    }

    private final Handler zzaE() {
        return Looper.myLooper() == null ? this.zze : new Handler(Looper.myLooper());
    }

    private final zzcl zzaF(BillingResult billingResult, zzjs zzjsVar, String str, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), str, exc);
        zzbG(zzjsVar, 7, billingResult, zzdc.zza(exc));
        return new zzcl(billingResult.getResponseCode(), billingResult.getDebugMessage(), new ArrayList(), new ArrayList());
    }

    private final BillingResult zzaG(int i) {
        com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇎"));
        zzjn zzjnVarZza = zzjp.zza();
        zzjnVarZza.zze(6);
        zzll zzllVarZza = zzln.zza();
        zzllVarZza.zze(true);
        zzllVarZza.zza(i > 0);
        zzllVarZza.zzb(i);
        zzjnVarZza.zzd(zzllVarZza);
        zzbq((zzjp) zzjnVarZza.zzi());
        return zzdh.zzi;
    }

    private final BillingResult zzaH() {
        int[] iArr = {0, 3};
        synchronized (this.zza) {
            for (int i = 0; i < 2; i++) {
                if (this.zzb == iArr[i]) {
                    return zzdh.zzj;
                }
            }
            return zzdh.zzh;
        }
    }

    private final com.google.android.gms.internal.play_billing.zzdk zzaI(int i) {
        if (this.zzH && !zzby()) {
            return com.google.android.gms.internal.play_billing.zzu.zza(new zzab(this, i));
        }
        com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇏"));
        return com.google.android.gms.internal.play_billing.zzdf.zza(zzdh.zzi);
    }

    private final Object zzaJ(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, AcknowledgePurchaseParams acknowledgePurchaseParams) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzjs zzjsVar = zzjs.zzb;
                BillingResult billingResult = zzdh.zzj;
                zzbE(zzjsVar, 3, billingResult);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
            } else if (TextUtils.isEmpty(acknowledgePurchaseParams.getPurchaseToken())) {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇐"));
                zzjs zzjsVar2 = zzjs.zzz;
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
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    String strS = ProtectedFastSSH.s("㇁");
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, strS, str, jLongValue);
                    Bundle bundleZzd = zzarVar.zzd(9, packageName, purchaseToken, bundle);
                    acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(zzdh.zza(com.google.android.gms.internal.play_billing.zzc.zzb(bundleZzd, ProtectedFastSSH.s("㇂")), com.google.android.gms.internal.play_billing.zzc.zzj(bundleZzd, ProtectedFastSSH.s("㇂"))));
                    return null;
                }
                zzaZ(acknowledgePurchaseResponseListener, zzdh.zzj, zzjs.zzbc, null);
            } else {
                zzjs zzjsVar3 = zzjs.zzA;
                BillingResult billingResult3 = zzdh.zza;
                zzbE(zzjsVar3, 3, billingResult3);
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult3);
            }
            return null;
        } catch (DeadObjectException e) {
            zzaZ(acknowledgePurchaseResponseListener, zzdh.zzj, zzjs.zzB, e);
            return null;
        } catch (Exception e2) {
            zzaZ(acknowledgePurchaseResponseListener, zzdh.zzh, zzjs.zzB, e2);
            return null;
        }
    }

    private final Object zzaK(BillingChoiceInfoResponseListener billingChoiceInfoResponseListener, GetBillingChoiceInfoParams getBillingChoiceInfoParams) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbb(billingChoiceInfoResponseListener, zzdh.zzj, zzjs.zzb, null);
            } else if (this.zzm < 24) {
                zzbb(billingChoiceInfoResponseListener, zzdh.zzK, zzjs.zzbP, null);
            } else {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbb(billingChoiceInfoResponseListener, zzdh.zzj, zzjs.zzbc, null);
                } else {
                    String str = this.zzc;
                    com.google.android.gms.internal.play_billing.zzes zzesVarZzb = zzdl.zzb(str, 24, this.zzg, zzdk.zzd.zza());
                    zzij zzijVarZza = zzim.zza();
                    String strS = ProtectedFastSSH.s("㇑");
                    zzjd zzjdVarZza = zzjf.zza();
                    zzjdVarZza.zza(str);
                    zzijVarZza.zza(strS, (zzjf) zzjdVarZza.zzi());
                    String strS2 = ProtectedFastSSH.s("㇒");
                    zzjd zzjdVarZza2 = zzjf.zza();
                    zzjdVarZza2.zza(this.zzg.getPackageName());
                    zzijVarZza.zza(strS2, (zzjf) zzjdVarZza2.zzi());
                    String strS3 = ProtectedFastSSH.s("㇓");
                    zzjd zzjdVarZza3 = zzjf.zza();
                    zzjdVarZza3.zza(String.valueOf(getBillingChoiceInfoParams.getBillingProgram()));
                    zzijVarZza.zza(strS3, (zzjf) zzjdVarZza3.zzi());
                    if (getBillingChoiceInfoParams.getUserLocale() != null) {
                        String strS4 = ProtectedFastSSH.s("㇔");
                        zzjd zzjdVarZza4 = zzjf.zza();
                        zzjdVarZza4.zza(getBillingChoiceInfoParams.getUserLocale().toLanguageTag());
                        zzijVarZza.zza(strS4, (zzjf) zzjdVarZza4.zzi());
                    }
                    if (getBillingChoiceInfoParams.getPlayBillingChoiceImageLayout() != null) {
                        String strS5 = ProtectedFastSSH.s("㇕");
                        zzjd zzjdVarZza5 = zzjf.zza();
                        zzjdVarZza5.zza(getBillingChoiceInfoParams.getPlayBillingChoiceImageLayout());
                        zzijVarZza.zza(strS5, (zzjf) zzjdVarZza5.zzi());
                    }
                    zzarVar.zzm(zzdl.zza(zzesVarZzb, (zzim) zzijVarZza.zzi()), new zzdv(billingChoiceInfoResponseListener, this.zzh, this.zzm));
                }
            }
        } catch (DeadObjectException e) {
            zzbb(billingChoiceInfoResponseListener, zzdh.zzj, zzjs.zzbb, e);
        } catch (Exception e2) {
            zzbb(billingChoiceInfoResponseListener, zzdh.zzh, zzjs.zzbb, e2);
        }
        return null;
    }

    private final Object zzaL(BillingConfigResponseListener billingConfigResponseListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇖"));
                zzjs zzjsVar = zzjs.zzb;
                BillingResult billingResult = zzdh.zzj;
                zzbE(zzjsVar, 13, billingResult);
                billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
            } else if (this.zzv) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbj(billingConfigResponseListener, zzdh.zzj, zzjs.zzbc, null);
                } else if (zzdq.zzj() && this.zzB) {
                    String str = this.zzc;
                    com.google.android.gms.internal.play_billing.zzes zzesVarZzb = zzdl.zzb(str, 24, this.zzg, zzdk.zza.zza());
                    zzij zzijVarZza = zzim.zza();
                    String strS = ProtectedFastSSH.s("㇑");
                    zzjd zzjdVarZza = zzjf.zza();
                    zzjdVarZza.zza(str);
                    zzijVarZza.zza(strS, (zzjf) zzjdVarZza.zzi());
                    String strS2 = ProtectedFastSSH.s("㇒");
                    zzjd zzjdVarZza2 = zzjf.zza();
                    zzjdVarZza2.zza(this.zzg.getPackageName());
                    zzijVarZza.zza(strS2, (zzjf) zzjdVarZza2.zzi());
                    Bundle bundleZza = zzdl.zza(zzesVarZzb, (zzim) zzijVarZza.zzi());
                    if (!TextUtils.isEmpty(null)) {
                        bundleZza.putString(ProtectedFastSSH.s("㇘"), null);
                    }
                    zzarVar.zzm(bundleZza, new zzdx(billingConfigResponseListener, this.zzh, this.zzm));
                } else {
                    String packageName = this.zzg.getPackageName();
                    String str2 = this.zzd;
                    long jLongValue = this.zzM.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    String strS3 = ProtectedFastSSH.s("㇁");
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, strS3, str2, jLongValue);
                    if (!TextUtils.isEmpty(null)) {
                        bundle.putString(ProtectedFastSSH.s("㇘"), null);
                    }
                    zzarVar.zzo(18, packageName, bundle, new zzcd(billingConfigResponseListener, this.zzh, this.zzm, null));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇗"));
                zzjs zzjsVar2 = zzjs.zzF;
                BillingResult billingResult2 = zzdh.zzz;
                zzbE(zzjsVar2, 13, billingResult2);
                billingConfigResponseListener.onBillingConfigResponse(billingResult2, null);
            }
        } catch (DeadObjectException e) {
            zzbj(billingConfigResponseListener, zzdh.zzj, zzjs.zzaj, e);
        } catch (Exception e2) {
            zzbj(billingConfigResponseListener, zzdh.zzh, zzjs.zzaj, e2);
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
                zzbn(-1, zzjs.zzbc, null);
            } else {
                zzarVar.zzt(12, this.zzg.getPackageName(), bundle, new zzcj(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzbn(-1, zzjs.zzbb, e);
        } catch (Exception e2) {
            zzbn(6, zzjs.zzbb, e2);
        }
        return null;
    }

    private final String zzaN(QueryProductDetailsParams queryProductDetailsParams) {
        if (TextUtils.isEmpty(null)) {
            return this.zzg.getPackageName();
        }
        return null;
    }

    private static String zzaO() {
        try {
            return (String) Class.forName(ProtectedFastSSH.s("㇙")).getField(ProtectedFastSSH.s("㇚")).get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private final Void zzaP(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzj, zzjs.zzb, null);
            } else if (this.zzy) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzj, zzjs.zzbc, null);
                } else {
                    zzarVar.zzk(21, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzh(this.zzc, this.zzd, this.zzM.longValue()), new zzca(alternativeBillingOnlyReportingDetailsListener, this.zzh, this.zzm, null));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇌"));
                zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzD, zzjs.zzan, null);
            }
        } catch (DeadObjectException e) {
            zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzj, zzjs.zzar, e);
        } catch (Exception e2) {
            zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzh, zzjs.zzar, e2);
        }
        return null;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x015b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Void zzaQ(BillingProgramReportingDetailsListener billingProgramReportingDetailsListener, BillingProgramReportingDetailsParams billingProgramReportingDetailsParams) throws Exception {
        RuntimeException runtimeException;
        DeadObjectException deadObjectException;
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            try {
                if (!zzbx(zzdq.zzb())) {
                    zzbf(billingProgramReportingDetailsListener, zzdh.zzj, zzjs.zzb, null);
                } else if (this.zzD) {
                    synchronized (this.zza) {
                        try {
                            try {
                                zzarVar = this.zzi;
                            } catch (Throwable th) {
                                th = th;
                                while (true) {
                                    throw th;
                                }
                            }
                        } catch (DeadObjectException e) {
                            e = e;
                            deadObjectException = e;
                            zzbf(billingProgramReportingDetailsListener, zzdh.zzj, zzjs.zzbb, deadObjectException);
                        } catch (RuntimeException e2) {
                            e = e2;
                            runtimeException = e;
                            zzbf(billingProgramReportingDetailsListener, zzdh.zzh, zzjs.zzbb, runtimeException);
                        }
                    }
                    if (zzarVar == null) {
                        zzbf(billingProgramReportingDetailsListener, zzdh.zzj, zzjs.zzbc, null);
                    } else {
                        String str = this.zzc;
                        com.google.android.gms.internal.play_billing.zzes zzesVarZzb = zzdl.zzb(str, 24, this.zzg, zzdk.zzc.zza());
                        zzij zzijVarZza = zzim.zza();
                        String strS = ProtectedFastSSH.s("㇑");
                        zzjd zzjdVarZza = zzjf.zza();
                        zzjdVarZza.zza(str);
                        zzijVarZza.zza(strS, (zzjf) zzjdVarZza.zzi());
                        String strS2 = ProtectedFastSSH.s("㇒");
                        zzjd zzjdVarZza2 = zzjf.zza();
                        zzjdVarZza2.zza(this.zzg.getPackageName());
                        zzijVarZza.zza(strS2, (zzjf) zzjdVarZza2.zzi());
                        String strS3 = ProtectedFastSSH.s("㇓");
                        zzjd zzjdVarZza3 = zzjf.zza();
                        zzjdVarZza3.zza(String.valueOf(billingProgramReportingDetailsParams.getBillingProgram()));
                        zzijVarZza.zza(strS3, (zzjf) zzjdVarZza3.zzi());
                        String strS4 = ProtectedFastSSH.s("㇜");
                        zzjd zzjdVarZza4 = zzjf.zza();
                        zzjdVarZza4.zza(ProtectedFastSSH.s("㇝"));
                        zzijVarZza.zza(strS4, (zzjf) zzjdVarZza4.zzi());
                        if (billingProgramReportingDetailsParams.getBillingProgram() == 3) {
                            String strS5 = ProtectedFastSSH.s("㇞");
                            zzjd zzjdVarZza5 = zzjf.zza();
                            zzjdVarZza5.zza(String.valueOf(this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).firstInstallTime));
                            zzijVarZza.zza(strS5, (zzjf) zzjdVarZza5.zzi());
                        } else if (billingProgramReportingDetailsParams.getBillingProgram() == 5) {
                            String strS6 = ProtectedFastSSH.s("㇟");
                            zzjd zzjdVarZza6 = zzjf.zza();
                            zzjdVarZza6.zza(String.valueOf(billingProgramReportingDetailsParams.getDeveloperBillingType()));
                            zzijVarZza.zza(strS6, (zzjf) zzjdVarZza6.zzi());
                        }
                        zzarVar.zzm(zzdl.zza(zzesVarZzb, (zzim) zzijVarZza.zzi()), new CreateBillingProgramReportingDetailsDelegateToBackendCallback(billingProgramReportingDetailsListener, billingProgramReportingDetailsParams.getBillingProgram(), this.zzh, this.zzm, zzaE(), zzO()));
                    }
                } else {
                    com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇛"));
                    zzbf(billingProgramReportingDetailsListener, zzdh.zzG, zzjs.zzbp, null);
                }
            } catch (DeadObjectException e3) {
                deadObjectException = e3;
                zzbf(billingProgramReportingDetailsListener, zzdh.zzj, zzjs.zzbb, deadObjectException);
            } catch (RuntimeException e4) {
                runtimeException = e4;
                zzbf(billingProgramReportingDetailsListener, zzdh.zzh, zzjs.zzbb, runtimeException);
            }
        } catch (DeadObjectException e5) {
            e = e5;
        } catch (RuntimeException e6) {
            e = e6;
        }
        return null;
    }

    private final Void zzaR(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbg(externalOfferReportingDetailsListener, zzdh.zzj, zzjs.zzb, null);
            } else if (this.zzz) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbg(externalOfferReportingDetailsListener, zzdh.zzj, zzjs.zzbc, null);
                } else {
                    String packageName = this.zzg.getPackageName();
                    long j = this.zzg.getPackageManager().getPackageInfo(this.zzg.getPackageName(), 0).firstInstallTime;
                    String str = this.zzd;
                    long jLongValue = this.zzM.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    String strS = ProtectedFastSSH.s("㇁");
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, strS, str, jLongValue);
                    bundle.putLong(ProtectedFastSSH.s("㇡"), j);
                    zzarVar.zzl(22, packageName, bundle, new zzcb(externalOfferReportingDetailsListener, this.zzh, this.zzm, null));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇠"));
                zzbg(externalOfferReportingDetailsListener, zzdh.zzu, zzjs.zzaE, null);
            }
        } catch (DeadObjectException e) {
            zzbg(externalOfferReportingDetailsListener, zzdh.zzj, zzjs.zzaF, e);
        } catch (Exception e2) {
            zzbg(externalOfferReportingDetailsListener, zzdh.zzh, zzjs.zzaF, e2);
        }
        return null;
    }

    private final Void zzaS(BillingProgramAvailabilityListener billingProgramAvailabilityListener, int i) throws Exception {
        BillingClientImpl billingClientImpl;
        BillingProgramAvailabilityListener billingProgramAvailabilityListener2;
        int i2;
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            try {
                try {
                    if (zzbx(zzdq.zzb())) {
                        billingClientImpl = this;
                        billingProgramAvailabilityListener2 = billingProgramAvailabilityListener;
                        i2 = i;
                        try {
                            if (!billingClientImpl.zzD) {
                                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇛"));
                                billingClientImpl.zzbc(billingProgramAvailabilityListener2, i2, zzdh.zzG, zzjs.zzbp, null);
                                return null;
                            }
                            synchronized (billingClientImpl.zza) {
                                zzarVar = billingClientImpl.zzi;
                            }
                            if (zzarVar == null) {
                                billingClientImpl.zzbc(billingProgramAvailabilityListener2, i2, zzdh.zzj, zzjs.zzbc, null);
                                return null;
                            }
                            String str = billingClientImpl.zzc;
                            com.google.android.gms.internal.play_billing.zzes zzesVarZzb = zzdl.zzb(str, 24, billingClientImpl.zzg, zzdk.zzb.zza());
                            zzij zzijVarZza = zzim.zza();
                            String strS = ProtectedFastSSH.s("㇑");
                            zzjd zzjdVarZza = zzjf.zza();
                            zzjdVarZza.zza(str);
                            zzijVarZza.zza(strS, (zzjf) zzjdVarZza.zzi());
                            String strS2 = ProtectedFastSSH.s("㇒");
                            zzjd zzjdVarZza2 = zzjf.zza();
                            zzjdVarZza2.zza(billingClientImpl.zzg.getPackageName());
                            zzijVarZza.zza(strS2, (zzjf) zzjdVarZza2.zzi());
                            String strS3 = ProtectedFastSSH.s("㇓");
                            zzjd zzjdVarZza3 = zzjf.zza();
                            zzjdVarZza3.zza(String.valueOf(i2));
                            zzijVarZza.zza(strS3, (zzjf) zzjdVarZza3.zzi());
                            try {
                                zzarVar.zzm(zzdl.zza(zzesVarZzb, (zzim) zzijVarZza.zzi()), new IsBillingProgramAvailableDelegateToBackendCallback(billingProgramAvailabilityListener2, i2, billingClientImpl.zzh, billingClientImpl.zzm, zzaE(), zzO()));
                                return null;
                            } catch (DeadObjectException e) {
                                e = e;
                                billingProgramAvailabilityListener2 = billingProgramAvailabilityListener2;
                                i2 = i2;
                            } catch (Exception e2) {
                                e = e2;
                                billingProgramAvailabilityListener2 = billingProgramAvailabilityListener2;
                                i2 = i2;
                                billingClientImpl.zzbc(billingProgramAvailabilityListener2, i2, zzdh.zzh, zzjs.zzbb, e);
                                return null;
                            }
                        } catch (DeadObjectException e3) {
                            e = e3;
                        } catch (Exception e4) {
                            e = e4;
                        }
                    } else {
                        try {
                            zzbc(billingProgramAvailabilityListener, i, zzdh.zzj, zzjs.zzb, null);
                            return null;
                        } catch (DeadObjectException e5) {
                            e = e5;
                            billingProgramAvailabilityListener2 = billingProgramAvailabilityListener;
                            i2 = i;
                        } catch (Exception e6) {
                            e = e6;
                            billingClientImpl = this;
                            billingProgramAvailabilityListener2 = billingProgramAvailabilityListener;
                            i2 = i;
                            billingClientImpl.zzbc(billingProgramAvailabilityListener2, i2, zzdh.zzh, zzjs.zzbb, e);
                            return null;
                        }
                    }
                } catch (DeadObjectException e7) {
                    e = e7;
                    billingProgramAvailabilityListener2 = billingProgramAvailabilityListener;
                    i2 = i;
                }
            } catch (DeadObjectException e8) {
                e = e8;
            }
        } catch (Exception e9) {
            e = e9;
            billingClientImpl = this;
            billingProgramAvailabilityListener2 = billingProgramAvailabilityListener;
            i2 = i;
        }
        zzbc(billingProgramAvailabilityListener2, i2, zzdh.zzj, zzjs.zzaj, e);
        return null;
    }

    private final Void zzaT(ExternalOfferAvailabilityListener externalOfferAvailabilityListener) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbh(externalOfferAvailabilityListener, zzdh.zzj, zzjs.zzb, null);
            } else if (this.zzB) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbh(externalOfferAvailabilityListener, zzdh.zzj, zzjs.zzbc, null);
                } else {
                    zzarVar.zzs(24, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzh(this.zzc, this.zzd, this.zzM.longValue()), new zzci(externalOfferAvailabilityListener, this.zzh, this.zzm, null));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇠"));
                zzbh(externalOfferAvailabilityListener, zzdh.zzu, zzjs.zzaE, null);
            }
        } catch (DeadObjectException e) {
            zzbh(externalOfferAvailabilityListener, zzdh.zzj, zzjs.zzaC, e);
        } catch (Exception e2) {
            zzbh(externalOfferAvailabilityListener, zzdh.zzh, zzjs.zzaC, e2);
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
                zzbl(alternativeBillingOnlyInformationDialogListener, zzdh.zzj, zzjs.zzbc, null);
            } else {
                zzarVar.zzn(21, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzh(this.zzc, this.zzd, this.zzM.longValue()), new zzcc(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzbl(alternativeBillingOnlyInformationDialogListener, zzdh.zzj, zzjs.zzav, e);
        } catch (Exception e2) {
            zzbl(alternativeBillingOnlyInformationDialogListener, zzdh.zzh, zzjs.zzav, e2);
        }
        return null;
    }

    private final Void zzaV(BillingProgramInformationDialogListener billingProgramInformationDialogListener, BillingProgramInformationDialogParams billingProgramInformationDialogParams, Activity activity) throws Exception {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        try {
            if (!zzbx(zzdq.zzb())) {
                zzbm(billingProgramInformationDialogListener, zzdh.zzj, zzjs.zzb, null);
            } else if (this.zzF) {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    zzbm(billingProgramInformationDialogListener, zzdh.zzj, zzjs.zzbc, null);
                } else {
                    String packageName = this.zzg.getPackageName();
                    String str = this.zzd;
                    long jLongValue = this.zzM.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.zza;
                    String strS = ProtectedFastSSH.s("㇁");
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.zzc(bundle, strS, str, jLongValue);
                    zzij zzijVarZza = zzim.zza();
                    String strS2 = ProtectedFastSSH.s("㇣");
                    zzjd zzjdVarZza = zzjf.zza();
                    zzjdVarZza.zza(String.valueOf(billingProgramInformationDialogParams.getBillingProgram()));
                    zzijVarZza.zza(strS2, (zzjf) zzjdVarZza.zzi());
                    if (billingProgramInformationDialogParams.getExternalTransactionToken() != null) {
                        String strS3 = ProtectedFastSSH.s("㇊");
                        zzjd zzjdVarZza2 = zzjf.zza();
                        zzjdVarZza2.zza(billingProgramInformationDialogParams.getExternalTransactionToken());
                        zzijVarZza.zza(strS3, (zzjf) zzjdVarZza2.zzi());
                    }
                    bundle.putByteArray(ProtectedFastSSH.s("㇋"), ((zzim) zzijVarZza.zzi()).zzQ());
                    zzarVar.zzn(28, packageName, bundle, new zzck(new WeakReference(activity), new zzbn(this, this.zze, billingProgramInformationDialogListener), null));
                }
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇢"));
                zzbm(billingProgramInformationDialogListener, zzdh.zzJ, zzjs.zzbP, null);
            }
        } catch (DeadObjectException e) {
            zzbm(billingProgramInformationDialogListener, zzdh.zzj, zzjs.zzbb, e);
        } catch (RuntimeException e2) {
            zzbm(billingProgramInformationDialogListener, zzdh.zzh, zzjs.zzbb, e2);
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
                zzbi(externalOfferInformationDialogListener, zzdh.zzj, zzjs.zzbc, null);
            } else {
                zzarVar.zzp(22, this.zzg.getPackageName(), com.google.android.gms.internal.play_billing.zzc.zzh(this.zzc, this.zzd, this.zzM.longValue()), new zzce(new WeakReference(activity), resultReceiver, null));
            }
        } catch (DeadObjectException e) {
            zzbi(externalOfferInformationDialogListener, zzdh.zzj, zzjs.zzaJ, e);
        } catch (Exception e2) {
            zzbi(externalOfferInformationDialogListener, zzdh.zzh, zzjs.zzaJ, e2);
        }
        return null;
    }

    private final Future zzaX(Callable callable, long j, Runnable runnable, Handler handler) throws Exception {
        try {
            Future futureSubmit = zzO().submit(callable);
            handler.postDelayed(new zzbm(futureSubmit, runnable), 28500L);
            return futureSubmit;
        } catch (Exception e) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㇍"), e);
            throw e;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00ca */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzaY(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) throws Throwable {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        int iZza;
        String strZzj;
        String strS = ProtectedFastSSH.s("\u31e4");
        String purchaseToken = consumeParams.getPurchaseToken();
        try {
            com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), strS + purchaseToken);
            try {
                synchronized (this.zza) {
                    try {
                        zzarVar = this.zzi;
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            throw th;
                        }
                    }
                }
                if (zzarVar == null) {
                    try {
                        zzbd(consumeResponseListener, purchaseToken, zzdh.zzj, zzjs.zzbc, ProtectedFastSSH.s("\u31e5"), null);
                        return;
                    } catch (DeadObjectException e) {
                        e = e;
                        zzbd(consumeResponseListener, purchaseToken, zzdh.zzj, zzjs.zzC, ProtectedFastSSH.s("\u31e9"), e);
                    } catch (Exception e2) {
                        e = e2;
                        zzbd(consumeResponseListener, purchaseToken, zzdh.zzh, zzjs.zzC, ProtectedFastSSH.s("\u31e9"), e);
                    }
                }
                if (this.zzp) {
                    String packageName = this.zzg.getPackageName();
                    boolean z = this.zzp;
                    String str = this.zzd;
                    long jLongValue = this.zzM.longValue();
                    String strS2 = ProtectedFastSSH.s("㇁");
                    Bundle bundle = new Bundle();
                    if (z) {
                        com.google.android.gms.internal.play_billing.zzc.zzc(bundle, strS2, str, jLongValue);
                    }
                    Bundle bundleZze = zzarVar.zze(9, packageName, purchaseToken, bundle);
                    iZza = bundleZze.getInt(ProtectedFastSSH.s("\u31e6"));
                    strZzj = com.google.android.gms.internal.play_billing.zzc.zzj(bundleZze, ProtectedFastSSH.s("㇂"));
                } else {
                    iZza = zzarVar.zza(3, this.zzg.getPackageName(), purchaseToken);
                    strZzj = "";
                }
                BillingResult billingResultZza = zzdh.zza(iZza, strZzj);
                if (iZza != 0) {
                    zzbd(consumeResponseListener, purchaseToken, billingResultZza, zzjs.zzw, zza.zza(iZza, ProtectedFastSSH.s("\u31e8")), null);
                } else {
                    com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("\u31e7"));
                    consumeResponseListener.onConsumeResponse(billingResultZza, purchaseToken);
                }
            } catch (DeadObjectException e3) {
                e = e3;
                zzbd(consumeResponseListener, purchaseToken, zzdh.zzj, zzjs.zzC, ProtectedFastSSH.s("\u31e9"), e);
            } catch (Exception e4) {
                e = e4;
                zzbd(consumeResponseListener, purchaseToken, zzdh.zzh, zzjs.zzC, ProtectedFastSSH.s("\u31e9"), e);
            }
        } catch (DeadObjectException e5) {
            e = e5;
        } catch (Exception e6) {
            e = e6;
        }
    }

    private final void zzaZ(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("\u31ea"), exc);
        zzbG(zzjsVar, 3, billingResult, zzdc.zza(exc));
        acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResult);
    }

    public static void zzaa(BillingClientImpl billingClientImpl, ProductDetailsResponseListener productDetailsResponseListener) {
        zzjs zzjsVar = zzjs.zzx;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbE(zzjsVar, 7, billingResult);
        productDetailsResponseListener.onProductDetailsResponse(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzca.zzk(), com.google.android.gms.internal.play_billing.zzca.zzk()));
    }

    public static void zzab(BillingClientImpl billingClientImpl, AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener) {
        billingClientImpl.zzbl(alternativeBillingOnlyInformationDialogListener, zzdh.zzk, zzjs.zzx, null);
    }

    public static void zzac(BillingClientImpl billingClientImpl, BillingResult billingResult) {
        if (billingClientImpl.zzf.zze() != null) {
            billingClientImpl.zzf.zze().onPurchasesUpdated(billingResult, null);
        } else {
            zzz zzzVar = billingClientImpl.zzf;
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("\u31eb"));
        }
    }

    public static void zzad(BillingClientImpl billingClientImpl, BillingProgramReportingDetailsListener billingProgramReportingDetailsListener) {
        billingClientImpl.zzbf(billingProgramReportingDetailsListener, zzdh.zzk, zzjs.zzx, null);
    }

    public static void zzae(BillingClientImpl billingClientImpl, ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        billingClientImpl.zzbi(externalOfferInformationDialogListener, zzdh.zzk, zzjs.zzx, null);
    }

    public static void zzaf(BillingClientImpl billingClientImpl, ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) {
        billingClientImpl.zzbg(externalOfferReportingDetailsListener, zzdh.zzk, zzjs.zzx, null);
    }

    public static void zzag(BillingClientImpl billingClientImpl, AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) {
        billingClientImpl.zzbe(alternativeBillingOnlyReportingDetailsListener, zzdh.zzk, zzjs.zzx, null);
    }

    static void zzah(BillingClientImpl billingClientImpl, int i) {
        billingClientImpl.zzm = i;
    }

    static void zzai(BillingClientImpl billingClientImpl, com.google.android.gms.internal.play_billing.zzar zzarVar) {
        billingClientImpl.zzi = zzarVar;
    }

    static void zzaj(BillingClientImpl billingClientImpl, boolean z) {
        billingClientImpl.zzl = z;
    }

    static void zzak(BillingClientImpl billingClientImpl, boolean z) {
        billingClientImpl.zzk = z;
    }

    static void zzal(BillingClientImpl billingClientImpl, com.google.android.gms.internal.play_billing.zzcf zzcfVar) {
        billingClientImpl.zzJ = zzcfVar;
    }

    static void zzam(BillingClientImpl billingClientImpl, ExternalOfferInformationDialogListener externalOfferInformationDialogListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        billingClientImpl.zzbi(externalOfferInformationDialogListener, billingResult, zzjsVar, null);
    }

    static void zzan(BillingClientImpl billingClientImpl, LaunchExternalLinkResponseListener launchExternalLinkResponseListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        billingClientImpl.zzbk(launchExternalLinkResponseListener, billingResult, zzjsVar, null);
    }

    static void zzao(BillingClientImpl billingClientImpl, AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        billingClientImpl.zzbl(alternativeBillingOnlyInformationDialogListener, billingResult, zzjsVar, null);
    }

    static void zzap(BillingClientImpl billingClientImpl, BillingProgramInformationDialogListener billingProgramInformationDialogListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        billingClientImpl.zzbm(billingProgramInformationDialogListener, billingResult, zzjsVar, null);
    }

    static void zzaq(BillingClientImpl billingClientImpl, zzjl zzjlVar) {
        billingClientImpl.zzbo(zzjlVar);
    }

    static void zzar(BillingClientImpl billingClientImpl, zzjp zzjpVar) {
        billingClientImpl.zzbq(zzjpVar);
    }

    static void zzas(BillingClientImpl billingClientImpl, zzjs zzjsVar, BillingResult billingResult, int i) {
        billingClientImpl.zzbr(zzjsVar, billingResult, i);
    }

    static void zzat(BillingClientImpl billingClientImpl, int i) {
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

    static void zzau(BillingClientImpl billingClientImpl, int i) {
        billingClientImpl.zzbs(0);
    }

    static void zzav(BillingClientImpl billingClientImpl, int i) {
        if (i != 0) {
            billingClientImpl.zzbs(0);
            return;
        }
        synchronized (billingClientImpl.zza) {
            if (billingClientImpl.zzb == 3) {
                return;
            }
            billingClientImpl.zzbs(2);
            zzz zzzVar = billingClientImpl.zzf != null ? billingClientImpl.zzf : null;
            if (zzzVar != null) {
                zzzVar.zzi(billingClientImpl.zzy);
            }
        }
    }

    static void zzaw(BillingClientImpl billingClientImpl) {
        billingClientImpl.zzbv();
    }

    static boolean zzay(BillingClientImpl billingClientImpl, long j) {
        return billingClientImpl.zzbx(j);
    }

    static boolean zzaz(BillingClientImpl billingClientImpl) {
        boolean z;
        synchronized (billingClientImpl.zza) {
            z = true;
            if (billingClientImpl.zzb != 1) {
                z = false;
            }
        }
        return z;
    }

    static int zzb(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzm;
    }

    private static final void zzbA(zzke zzkeVar, Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(ProtectedFastSSH.s("\u31ec"));
            if (activityManager != null) {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                zzkeVar.zzv((int) (memoryInfo.totalMem / 1048576));
                zzkeVar.zzr(Build.BRAND);
                zzkeVar.zzu(Build.MODEL);
                zzkeVar.zzt(Build.MANUFACTURER);
                zzkeVar.zzs(Build.FINGERPRINT);
            }
        } catch (RuntimeException e) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("\u31ed"), e);
        }
    }

    private final zzek zzbB(int i, BillingResult billingResult, zzjs zzjsVar, String str, Exception exc) {
        zzbG(zzjsVar, 9, billingResult, zzdc.zza(exc));
        com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), str, exc);
        return new zzek(billingResult, null);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x02c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x0277 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:70:0x0226  */
    /* JADX WARN: Code duplicated, block: B:74:0x0265  */
    /* JADX WARN: Code duplicated, block: B:80:0x0294  */
    /* JADX WARN: Code duplicated, block: B:85:0x02cb A[LOOP:0: B:99:0x0072->B:85:0x02cb, LOOP_END] */
    private final zzek zzbC(String str, boolean z, int i) {
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        int i2;
        int i3;
        Bundle bundleZzi;
        BillingResult billingResultBuild;
        zzjs zzjsVar;
        ArrayList<String> stringArrayList;
        ArrayList<String> stringArrayList2;
        ArrayList<String> stringArrayList3;
        boolean z2;
        Purchase purchase;
        com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("\u31ee").concat(String.valueOf(str)));
        ArrayList arrayList = new ArrayList();
        boolean z3 = this.zzp;
        boolean z4 = this.zzw;
        boolean zIsEnabledForOneTimeProducts = this.zzG.isEnabledForOneTimeProducts();
        boolean zIsEnabledForPrepaidPlans = this.zzG.isEnabledForPrepaidPlans();
        long jLongValue = this.zzM.longValue();
        Bundle bundle = new Bundle();
        com.google.android.gms.internal.play_billing.zzc.zzc(bundle, ProtectedFastSSH.s("㇁"), this.zzd, jLongValue);
        int i4 = 1;
        if (z3 && zIsEnabledForOneTimeProducts) {
            bundle.putBoolean(ProtectedFastSSH.s("\u31ef"), true);
        }
        if (z4 && zIsEnabledForPrepaidPlans) {
            bundle.putBoolean(ProtectedFastSSH.s("ㇰ"), true);
        }
        if (z) {
            bundle.putBoolean(ProtectedFastSSH.s("ㇱ"), true);
        }
        String string = null;
        while (true) {
            try {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    return zzbB(9, zzdh.zzj, zzjs.zzbc, ProtectedFastSSH.s("ㇲ"), null);
                }
                if (z && !this.zzC) {
                    return zzbB(9, zzdh.zzx, zzjs.zzbH, ProtectedFastSSH.s("ㇳ"), null);
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
                BillingResult billingResult = zzdh.zzh;
                String strS = ProtectedFastSSH.s("ㇴ");
                String strS2 = ProtectedFastSSH.s("㇂");
                if (bundleZzi == null) {
                    Object[] objArr = new Object[i4];
                    objArr[0] = strS;
                    com.google.android.gms.internal.play_billing.zzc.zzn(strS2, String.format(ProtectedFastSSH.s("ㇵ"), objArr));
                    zzjsVar = zzjs.zzab;
                } else {
                    int iZzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundleZzi, strS2);
                    String strZzj = com.google.android.gms.internal.play_billing.zzc.zzj(bundleZzi, strS2);
                    BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
                    builderNewBuilder.setResponseCode(iZzb);
                    builderNewBuilder.setDebugMessage(strZzj);
                    billingResultBuild = builderNewBuilder.build();
                    if (iZzb != 0) {
                        Integer numValueOf = Integer.valueOf(iZzb);
                        Object[] objArr2 = new Object[2];
                        objArr2[0] = strS;
                        objArr2[i4] = numValueOf;
                        com.google.android.gms.internal.play_billing.zzc.zzn(strS2, String.format(ProtectedFastSSH.s("ㇶ"), objArr2));
                        zzjsVar = zzjs.zzw;
                    } else if (bundleZzi.containsKey(ProtectedFastSSH.s("ㇷ")) && bundleZzi.containsKey(ProtectedFastSSH.s("ㇸ")) && bundleZzi.containsKey(ProtectedFastSSH.s("ㇹ"))) {
                        ArrayList<String> stringArrayList4 = bundleZzi.getStringArrayList(ProtectedFastSSH.s("ㇷ"));
                        ArrayList<String> stringArrayList5 = bundleZzi.getStringArrayList(ProtectedFastSSH.s("ㇸ"));
                        ArrayList<String> stringArrayList6 = bundleZzi.getStringArrayList(ProtectedFastSSH.s("ㇹ"));
                        if (stringArrayList4 == null) {
                            Object[] objArr3 = new Object[i4];
                            objArr3[0] = strS;
                            com.google.android.gms.internal.play_billing.zzc.zzn(strS2, String.format(ProtectedFastSSH.s("ㇺ"), objArr3));
                            zzjsVar = zzjs.zzad;
                        } else if (stringArrayList5 == null) {
                            Object[] objArr4 = new Object[i4];
                            objArr4[0] = strS;
                            com.google.android.gms.internal.play_billing.zzc.zzn(strS2, String.format(ProtectedFastSSH.s("ㇻ"), objArr4));
                            zzjsVar = zzjs.zzae;
                        } else if (stringArrayList6 == null) {
                            Object[] objArr5 = new Object[i4];
                            objArr5[0] = strS;
                            com.google.android.gms.internal.play_billing.zzc.zzn(strS2, String.format(ProtectedFastSSH.s("ㇼ"), objArr5));
                            zzjsVar = zzjs.zzaf;
                        } else {
                            billingResultBuild = zzdh.zzi;
                            zzjsVar = zzjs.zza;
                        }
                    } else {
                        Object[] objArr6 = new Object[i4];
                        objArr6[0] = strS;
                        com.google.android.gms.internal.play_billing.zzc.zzn(strS2, String.format(ProtectedFastSSH.s("ㇽ"), objArr6));
                        zzjsVar = zzjs.zzac;
                    }
                    if (billingResultBuild != zzdh.zzi) {
                        return zzbB(9, billingResultBuild, zzjsVar, ProtectedFastSSH.s("ㇾ"), null);
                    }
                    stringArrayList = bundleZzi.getStringArrayList(ProtectedFastSSH.s("ㇷ"));
                    stringArrayList2 = bundleZzi.getStringArrayList(ProtectedFastSSH.s("ㇸ"));
                    stringArrayList3 = bundleZzi.getStringArrayList(ProtectedFastSSH.s("ㇹ"));
                    z2 = false;
                    for (int i5 = 0; i5 < stringArrayList2.size(); i5++) {
                        String str2 = stringArrayList2.get(i5);
                        String str3 = stringArrayList3.get(i5);
                        com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("ㇿ").concat(String.valueOf(stringArrayList.get(i5))));
                        try {
                            purchase = new Purchase(str2, str3);
                            this.zzJ.isEmpty();
                            if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈀"));
                                z2 = true;
                            }
                            arrayList.add(purchase);
                        } catch (JSONException e) {
                            return zzbB(9, zzdh.zzh, zzjs.zzY, ProtectedFastSSH.s("㈁"), e);
                        }
                    }
                    if (z2) {
                        zzbE(zzjs.zzz, 9, billingResult);
                    }
                    string = bundleZzi.getString(ProtectedFastSSH.s("㈂"));
                    com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈃").concat(String.valueOf(string)));
                    if (TextUtils.isEmpty(string)) {
                        return new zzek(zzdh.zzi, arrayList);
                    }
                    i4 = 1;
                }
                billingResultBuild = billingResult;
                if (billingResultBuild != zzdh.zzi) {
                    return zzbB(9, billingResultBuild, zzjsVar, ProtectedFastSSH.s("ㇾ"), null);
                }
                stringArrayList = bundleZzi.getStringArrayList(ProtectedFastSSH.s("ㇷ"));
                stringArrayList2 = bundleZzi.getStringArrayList(ProtectedFastSSH.s("ㇸ"));
                stringArrayList3 = bundleZzi.getStringArrayList(ProtectedFastSSH.s("ㇹ"));
                z2 = false;
                while (i5 < stringArrayList2.size()) {
                    String str4 = stringArrayList2.get(i5);
                    String str5 = stringArrayList3.get(i5);
                    com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("ㇿ").concat(String.valueOf(stringArrayList.get(i5))));
                    purchase = new Purchase(str4, str5);
                    this.zzJ.isEmpty();
                    if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                        com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈀"));
                        z2 = true;
                    }
                    arrayList.add(purchase);
                }
                if (z2) {
                    zzbE(zzjs.zzz, 9, billingResult);
                }
                string = bundleZzi.getString(ProtectedFastSSH.s("㈂"));
                com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈃").concat(String.valueOf(string)));
                if (TextUtils.isEmpty(string)) {
                    return new zzek(zzdh.zzi, arrayList);
                }
                i4 = 1;
            } catch (DeadObjectException e2) {
                return zzbB(9, zzdh.zzj, zzjs.zzZ, ProtectedFastSSH.s("㈄"), e2);
            } catch (Exception e3) {
                return zzbB(9, zzdh.zzh, zzjs.zzZ, ProtectedFastSSH.s("㈄"), e3);
            }
        }
    }

    private final void zzbD(BillingResult billingResult, zzjs zzjsVar, int i) {
        int responseCode = billingResult.getResponseCode();
        zzjp zzjpVar = null;
        zzjl zzjlVar = null;
        String strS = ProtectedFastSSH.s("㈅");
        String strS2 = ProtectedFastSSH.s("㈆");
        if (responseCode == 0) {
            int i2 = zzdc.zza;
            try {
                zzjn zzjnVarZza = zzjp.zza();
                zzjnVarZza.zze(5);
                zzkk zzkkVarZza = zzkn.zza();
                zzkkVarZza.zza(i);
                zzjnVarZza.zzb((zzkn) zzkkVarZza.zzi());
                zzjpVar = (zzjp) zzjnVarZza.zzi();
            } catch (Exception e) {
                com.google.android.gms.internal.play_billing.zzc.zzo(strS2, strS, e);
            }
            zzbq(zzjpVar);
            return;
        }
        int i3 = zzdc.zza;
        try {
            zzjj zzjjVarZza = zzjl.zza();
            zzjq zzjqVarZza = zzju.zza();
            zzjqVarZza.zzp(billingResult.getResponseCode());
            zzjqVarZza.zzb(billingResult.getDebugMessage());
            zzjqVarZza.zze(zzjsVar);
            zzjjVarZza.zzb(zzjqVarZza);
            zzjjVarZza.zzp(5);
            zzkk zzkkVarZza2 = zzkn.zza();
            zzkkVarZza2.zza(i);
            zzjjVarZza.zzc((zzkn) zzkkVarZza2.zzi());
            zzjlVar = (zzjl) zzjjVarZza.zzi();
        } catch (Exception e2) {
            com.google.android.gms.internal.play_billing.zzc.zzo(strS2, strS, e2);
        }
        zzbo(zzjlVar);
    }

    private void zzbE(zzjs zzjsVar, int i, BillingResult billingResult) {
        try {
            int i2 = zzdc.zza;
            zzbo(zzdc.zzb(zzjsVar, i, billingResult, null, zzjz.zza));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈇"), th);
        }
    }

    private final void zzbF(zzjs zzjsVar, int i, BillingResult billingResult, long j) {
        String strS = ProtectedFastSSH.s("㈇");
        String strS2 = ProtectedFastSSH.s("㇂");
        try {
            int i2 = zzdc.zza;
            try {
                this.zzh.zzc(zzdc.zzb(zzjsVar, 2, billingResult, null, zzjz.zza), this.zzm, j);
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zzc.zzo(strS2, strS, th);
            }
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo(strS2, strS, th2);
        }
    }

    private final void zzbG(zzjs zzjsVar, int i, BillingResult billingResult, String str) {
        try {
            int i2 = zzdc.zza;
            zzbo(zzdc.zzb(zzjsVar, i, billingResult, str, zzjz.zza));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈇"), th);
        }
    }

    private final void zzbH(zzjs zzjsVar, int i, BillingResult billingResult, long j, boolean z) {
        try {
            int i2 = zzdc.zza;
            zzbp(zzdc.zzb(zzjsVar, 2, billingResult, null, zzjz.zza), j, z);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈇"), th);
        }
    }

    private final void zzbI(zzjs zzjsVar, int i, BillingResult billingResult, String str, long j, boolean z) {
        try {
            int i2 = zzdc.zza;
            zzbp(zzdc.zzb(zzjsVar, 2, billingResult, str, zzjz.zza), j, z);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈇"), th);
        }
    }

    private void zzbJ(int i) {
        try {
            int i2 = zzdc.zza;
            zzbq(zzdc.zzc(i, zzjz.zza));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈇"), th);
        }
    }

    private final void zzba(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        zzbG(zzjsVar, 14, billingResult, zzdc.zza(exc));
        alternativeBillingOnlyAvailabilityListener.onAlternativeBillingOnlyAvailabilityResponse(billingResult);
    }

    private final void zzbb(BillingChoiceInfoResponseListener billingChoiceInfoResponseListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈈"), exc);
        zzbG(zzjsVar, 40, billingResult, zzdc.zza(exc));
        billingChoiceInfoResponseListener.onBillingChoiceInfoResponse(billingResult, null);
    }

    private final void zzbc(BillingProgramAvailabilityListener billingProgramAvailabilityListener, int i, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        zzbG(zzjsVar, 33, billingResult, zzdc.zza(exc));
        billingProgramAvailabilityListener.onBillingProgramAvailabilityResponse(billingResult, new BillingProgramAvailabilityDetails(i));
    }

    private final void zzbd(ConsumeResponseListener consumeResponseListener, String str, BillingResult billingResult, zzjs zzjsVar, String str2, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), str2, exc);
        zzbG(zzjsVar, 4, billingResult, zzdc.zza(exc));
        consumeResponseListener.onConsumeResponse(billingResult, str);
    }

    private final void zzbe(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        zzbG(zzjsVar, 15, billingResult, zzdc.zza(exc));
        alternativeBillingOnlyReportingDetailsListener.onAlternativeBillingOnlyTokenResponse(billingResult, null);
    }

    private final void zzbf(BillingProgramReportingDetailsListener billingProgramReportingDetailsListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        zzbG(zzjsVar, 35, billingResult, zzdc.zza(exc));
        billingProgramReportingDetailsListener.onCreateBillingProgramReportingDetailsResponse(billingResult, null);
    }

    private final void zzbg(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        zzbG(zzjsVar, 24, billingResult, zzdc.zza(exc));
        externalOfferReportingDetailsListener.onExternalOfferReportingDetailsResponse(billingResult, null);
    }

    private final void zzbh(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        zzbG(zzjsVar, 23, billingResult, zzdc.zza(exc));
        externalOfferAvailabilityListener.onExternalOfferAvailabilityResponse(billingResult);
    }

    private final void zzbi(ExternalOfferInformationDialogListener externalOfferInformationDialogListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        zzbG(zzjsVar, 25, billingResult, zzdc.zza(exc));
        externalOfferInformationDialogListener.onExternalOfferInformationDialogResponse(billingResult);
    }

    private final void zzbj(BillingConfigResponseListener billingConfigResponseListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈉"), exc);
        zzbG(zzjsVar, 13, billingResult, zzdc.zza(exc));
        billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
    }

    private final void zzbk(LaunchExternalLinkResponseListener launchExternalLinkResponseListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        zzbG(zzjsVar, 37, billingResult, zzdc.zza(exc));
        launchExternalLinkResponseListener.onLaunchExternalLinkResponse(billingResult);
    }

    private final void zzbl(AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        zzbG(zzjsVar, 16, billingResult, zzdc.zza(exc));
        alternativeBillingOnlyInformationDialogListener.onAlternativeBillingOnlyInformationDialogResponse(billingResult);
    }

    private final void zzbm(BillingProgramInformationDialogListener billingProgramInformationDialogListener, BillingResult billingResult, zzjs zzjsVar, Exception exc) {
        zzbG(zzjsVar, 39, billingResult, zzdc.zza(exc));
        billingProgramInformationDialogListener.onBillingProgramInformationDialogResponse(billingResult);
    }

    private final void zzbn(int i, zzjs zzjsVar, Exception exc) {
        zzjl zzjlVar;
        com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈊"), exc);
        zzdd zzddVar = this.zzh;
        String strZza = zzdc.zza(exc);
        try {
            zzjq zzjqVarZza = zzju.zza();
            zzjqVarZza.zzp(i);
            if (zzjsVar != null) {
                zzjqVarZza.zze(zzjsVar);
            }
            if (strZza != null) {
                zzjqVarZza.zza(strZza);
            }
            zzjj zzjjVarZza = zzjl.zza();
            zzjjVarZza.zzb(zzjqVarZza);
            zzjjVarZza.zzp(30);
            zzjlVar = (zzjl) zzjjVarZza.zzi();
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㈆"), ProtectedFastSSH.s("㈅"), th);
            zzjlVar = null;
        }
        zzddVar.zza(zzjlVar);
    }

    private final void zzbo(zzjl zzjlVar) {
        try {
            this.zzh.zzb(zzjlVar, this.zzm);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈇"), th);
        }
    }

    private final void zzbp(zzjl zzjlVar, long j, boolean z) {
        try {
            this.zzh.zze(zzjlVar, this.zzm, j, z);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈇"), th);
        }
    }

    private final void zzbq(zzjp zzjpVar) {
        try {
            this.zzh.zzg(zzjpVar, this.zzm);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈇"), th);
        }
    }

    private final void zzbr(zzjs zzjsVar, BillingResult billingResult, int i) {
        try {
            int i2 = zzdc.zza;
            zzjj zzjjVar = (zzjj) zzdc.zzb(zzjsVar, 6, billingResult, null, zzjz.zza).zzq();
            zzll zzllVarZza = zzln.zza();
            zzllVarZza.zza(i > 0);
            zzllVarZza.zzb(i);
            zzjjVar.zze(zzllVarZza);
            zzbo((zzjl) zzjjVar.zzi());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈇"), th);
        }
    }

    private final void zzbs(int i) {
        String strS = ProtectedFastSSH.s("㈋");
        synchronized (this.zza) {
            if (this.zzb == 3) {
                return;
            }
            com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), strS + zzbz(this.zzb) + ProtectedFastSSH.s("㈌") + zzbz(i));
            this.zzb = i;
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
            if (zzby()) {
                billingResultZzaG = zzaG(i);
            } else {
                if (this.zzb == 1) {
                    com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈍"));
                    zzjs zzjsVar2 = zzjs.zzK;
                    billingResult = zzdh.zzd;
                    zzbr(zzjsVar2, billingResult, i);
                } else if (this.zzb == 3) {
                    com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈎"));
                    zzjs zzjsVar3 = zzjs.zzL;
                    billingResult = zzdh.zzj;
                    zzbr(zzjsVar3, billingResult, i);
                } else {
                    zzbs(1);
                    if (i == 0) {
                        this.zzK = billingClientStateListener;
                        i = 0;
                    }
                    zzbv();
                    com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈏"));
                    this.zzj = new zzbz(this, billingClientStateListener, i, null);
                    this.zzj.zzf();
                    Intent intent = new Intent(ProtectedFastSSH.s("㈐"));
                    intent.setPackage(ProtectedFastSSH.s("㈑"));
                    List<ResolveInfo> listQueryIntentServices = this.zzg.getPackageManager().queryIntentServices(intent, 0);
                    if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                        zzjsVar = zzjs.zzO;
                    } else {
                        ResolveInfo resolveInfo = listQueryIntentServices.get(0);
                        if (resolveInfo.serviceInfo != null) {
                            String str = resolveInfo.serviceInfo.packageName;
                            String str2 = resolveInfo.serviceInfo.name;
                            if (!Objects.equals(str, ProtectedFastSSH.s("㈑")) || str2 == null) {
                                String strS = ProtectedFastSSH.s("㇂");
                                String strS2 = ProtectedFastSSH.s("㈖");
                                zzjsVar = zzjs.zzN;
                                com.google.android.gms.internal.play_billing.zzc.zzn(strS, strS2);
                            } else {
                                ComponentName componentName = new ComponentName(str, str2);
                                Intent intent2 = new Intent(intent);
                                intent2.setComponent(componentName);
                                intent2.putExtra(ProtectedFastSSH.s("㈒"), this.zzc);
                                synchronized (this.zza) {
                                    if (this.zzb == 2) {
                                        billingResultZzaG = zzaG(i);
                                    } else if (this.zzb != 1) {
                                        com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈓"));
                                        zzjs zzjsVar4 = zzjs.zzba;
                                        billingResult = zzdh.zzj;
                                        zzbr(zzjsVar4, billingResult, i);
                                    } else {
                                        zzbz zzbzVar = this.zzj;
                                        if ((i <= 0 || Build.VERSION.SDK_INT < 29) ? this.zzg.bindService(intent2, zzbzVar, 1) : zzy$$ExternalSyntheticApiModelOutline0.m(this.zzg, intent2, 1, zzO(), zzbzVar)) {
                                            com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈔"));
                                            billingResultZzaG = null;
                                        } else {
                                            String strS3 = ProtectedFastSSH.s("㇂");
                                            String strS4 = ProtectedFastSSH.s("㈕");
                                            zzjsVar = zzjs.zzM;
                                            com.google.android.gms.internal.play_billing.zzc.zzn(strS3, strS4);
                                        }
                                    }
                                }
                            }
                        } else {
                            String strS5 = ProtectedFastSSH.s("㇂");
                            String strS6 = ProtectedFastSSH.s("㈖");
                            zzjsVar = zzjs.zzN;
                            com.google.android.gms.internal.play_billing.zzc.zzn(strS5, strS6);
                        }
                    }
                    zzbs(0);
                    com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈗"));
                    BillingResult billingResult2 = zzdh.zzb;
                    zzbr(zzjsVar, billingResult2, i);
                    billingResultZzaG = billingResult2;
                }
                billingResultZzaG = billingResult;
            }
        }
        if (billingResultZzaG != null) {
            billingClientStateListener.onBillingSetupFinished(billingResultZzaG);
        }
    }

    private final void zzbv() {
        synchronized (this.zza) {
            if (this.zzj != null) {
                try {
                    this.zzg.unbindService(this.zzj);
                    this.zzi = null;
                    this.zzj = null;
                } catch (Throwable th) {
                    try {
                        com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈘"), th);
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

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zzbw(long j) {
        String strS = ProtectedFastSSH.s("㇂");
        String strS2 = ProtectedFastSSH.s("㈙");
        String strS3 = ProtectedFastSSH.s("㈚");
        try {
            if (Build.VERSION.SDK_INT < 29) {
                j = 0;
            }
            BillingResult billingResult = (BillingResult) zzaI(1).get(j, TimeUnit.MILLISECONDS);
            if (billingResult.getResponseCode() == 0) {
                com.google.android.gms.internal.play_billing.zzc.zzm(strS, strS2 + billingResult.getResponseCode());
            } else {
                com.google.android.gms.internal.play_billing.zzc.zzn(strS, strS3 + billingResult.getResponseCode());
            }
        } catch (Exception e) {
            if (e instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㈛"), e);
        }
        return zzby();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zzbx(long j) {
        String strS;
        com.google.android.gms.internal.play_billing.zzbn zzbnVarZzb = com.google.android.gms.internal.play_billing.zzbn.zzb(this.zzN);
        int iZza = zzdq.zza();
        int i = 1;
        long jZza = j;
        while (true) {
            strS = ProtectedFastSSH.s("㇂");
            if (i > iZza) {
                break;
            }
            try {
                long jMax = Math.max(0L, jZza);
                if (jMax <= 0) {
                    com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㈜"));
                    return zzby();
                }
                BillingResult billingResult = (BillingResult) zzaI(i).get(jMax, TimeUnit.MILLISECONDS);
                if (billingResult.getResponseCode() == 0) {
                    com.google.android.gms.internal.play_billing.zzc.zzm(strS, ProtectedFastSSH.s("㈙") + billingResult.getResponseCode());
                    return zzby();
                }
                com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㈚") + billingResult.getResponseCode());
                jZza = j - zzbnVarZzb.zza(TimeUnit.MILLISECONDS);
                long jPow = ((long) Math.pow(2.0d, i - 1)) * 1000;
                if (jZza < jPow) {
                    com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㈝"));
                    return zzby();
                }
                if (i < iZza && jPow > 0) {
                    try {
                        Thread.sleep(jPow);
                        jZza = j - zzbnVarZzb.zza(TimeUnit.MILLISECONDS);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㈞"), e);
                    }
                }
                i++;
            } catch (Exception e2) {
                if (e2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㈛"), e2);
            }
        }
        com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("\u321f"));
        return zzby();
    }

    private final boolean zzby() {
        boolean z;
        synchronized (this.zza) {
            z = false;
            if (this.zzb == 2 && this.zzi != null && this.zzj != null) {
                z = true;
            }
        }
        return z;
    }

    private static final String zzbz(int i) {
        if (i == 0) {
            return ProtectedFastSSH.s("㈣");
        }
        if (i != 1) {
            return i != 2 ? ProtectedFastSSH.s("㈠") : ProtectedFastSSH.s("㈡");
        }
        return ProtectedFastSSH.s("㈢");
    }

    static Context zzc(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzg;
    }

    public static Bundle zzd(BillingClientImpl billingClientImpl, String str, String str2) {
        return billingClientImpl.zzaD(str, str2);
    }

    public static Bundle zze(BillingClientImpl billingClientImpl, int i, String str, String str2, BillingFlowParams billingFlowParams, Bundle bundle) {
        return billingClientImpl.zzaC(i, str, str2, billingFlowParams, bundle);
    }

    static Handler zzf(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzaE();
    }

    static ResultReceiver zzg(BillingClientImpl billingClientImpl, LaunchExternalLinkResponseListener launchExternalLinkResponseListener) {
        return new zzbw(billingClientImpl, billingClientImpl.zze, launchExternalLinkResponseListener);
    }

    static zzz zzh(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzf;
    }

    static BillingClientStateListener zzj(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzK;
    }

    static zzdd zzk(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzh;
    }

    static BillingResult zzm(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzaH();
    }

    static BillingResult zzn(Exception exc) {
        return exc instanceof DeadObjectException ? zzdh.zzj : zzdh.zzh;
    }

    static PendingPurchasesParams zzp(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzG;
    }

    static com.google.android.gms.internal.play_billing.zzar zzq(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzi;
    }

    static com.google.android.gms.internal.play_billing.zzbq zzr(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzN;
    }

    static com.google.android.gms.internal.play_billing.zzcf zzs(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzJ;
    }

    static Long zzt(BillingClientImpl billingClientImpl) {
        return billingClientImpl.zzM;
    }

    public static Object zzu(BillingClientImpl billingClientImpl, int i, com.google.android.gms.internal.play_billing.zzp zzpVar) {
        billingClientImpl.zzbu(new zzbv(billingClientImpl, zzpVar), i);
        return ProtectedFastSSH.s("㈤");
    }

    public static Object zzv(BillingClientImpl billingClientImpl, BillingChoiceInfoResponseListener billingChoiceInfoResponseListener, GetBillingChoiceInfoParams getBillingChoiceInfoParams) throws Exception {
        billingClientImpl.zzaK(billingChoiceInfoResponseListener, getBillingChoiceInfoParams);
        return null;
    }

    public static Object zzw(BillingClientImpl billingClientImpl, ConsumeResponseListener consumeResponseListener, ConsumeParams consumeParams) throws Throwable {
        if (billingClientImpl.zzbx(zzdq.zzb())) {
            billingClientImpl.zzaY(consumeParams, consumeResponseListener);
            return null;
        }
        zzjs zzjsVar = zzjs.zzb;
        BillingResult billingResult = zzdh.zzj;
        billingClientImpl.zzbE(zzjsVar, 4, billingResult);
        consumeResponseListener.onConsumeResponse(billingResult, consumeParams.getPurchaseToken());
        return null;
    }

    public static Object zzx(BillingClientImpl billingClientImpl, ProductDetailsResponseListener productDetailsResponseListener, QueryProductDetailsParams queryProductDetailsParams) throws JSONException {
        if (!billingClientImpl.zzbx(zzdq.zzb())) {
            zzjs zzjsVar = zzjs.zzb;
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
        com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈥"));
        zzjs zzjsVar2 = zzjs.zzt;
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
    public void acknowledgePurchase(AcknowledgePurchaseParams acknowledgePurchaseParams, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        if (zzP(new zzaj(this, acknowledgePurchaseResponseListener, acknowledgePurchaseParams), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzal(this, acknowledgePurchaseResponseListener), zzaE(), zzO()) == null) {
            BillingResult billingResultZzaH = zzaH();
            zzbE(zzjs.zzy, 3, billingResultZzaH);
            acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse(billingResultZzaH);
        }
    }

    @Override
    public void consumeAsync(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) {
        if (zzP(new zzbc(this, consumeResponseListener, consumeParams), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzbd(this, consumeResponseListener, consumeParams), zzaE(), zzO()) == null) {
            BillingResult billingResultZzaH = zzaH();
            zzbE(zzjs.zzy, 4, billingResultZzaH);
            consumeResponseListener.onConsumeResponse(billingResultZzaH, consumeParams.getPurchaseToken());
        }
    }

    @Override
    public void createAlternativeBillingOnlyReportingDetailsAsync(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener) {
        if (zzP(new zzax(this, alternativeBillingOnlyReportingDetailsListener), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzay(this, alternativeBillingOnlyReportingDetailsListener), zzaE(), zzO()) == null) {
            zzbe(alternativeBillingOnlyReportingDetailsListener, zzaH(), zzjs.zzy, null);
        }
    }

    @Override
    public void createBillingProgramReportingDetailsAsync(BillingProgramReportingDetailsParams billingProgramReportingDetailsParams, BillingProgramReportingDetailsListener billingProgramReportingDetailsListener) {
        try {
            try {
                zzaX(new zzaq(this, billingProgramReportingDetailsListener, billingProgramReportingDetailsParams), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzar(this, billingProgramReportingDetailsListener), zzaE());
            } catch (Exception e) {
                e = e;
                zzbf(billingProgramReportingDetailsListener, zzaH(), zzjs.zzy, e);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override
    public void createExternalOfferReportingDetailsAsync(ExternalOfferReportingDetailsListener externalOfferReportingDetailsListener) {
        if (zzP(new zzav(this, externalOfferReportingDetailsListener), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzbe(this, externalOfferReportingDetailsListener), zzaE(), zzO()) == null) {
            zzbg(externalOfferReportingDetailsListener, zzaH(), zzjs.zzy, null);
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
                        com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈧"));
                        zzbv();
                    } catch (Throwable th) {
                        com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈨"), th);
                    }
                    try {
                        zzbt();
                        zzbs(3);
                    } catch (Throwable th2) {
                        try {
                            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈩"), th2);
                            zzbs(3);
                        } catch (Throwable th3) {
                            zzbs(3);
                            this.zzK = null;
                            throw th3;
                        }
                    }
                    this.zzK = null;
                } else {
                    com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈧"));
                    zzbv();
                    zzbt();
                    zzbs(3);
                    this.zzK = null;
                }
            } catch (Throwable th4) {
                com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈦"), th4);
            }
            throw th;
        }
    }

    @Override
    public void getBillingChoiceInfoAsync(GetBillingChoiceInfoParams getBillingChoiceInfoParams, BillingChoiceInfoResponseListener billingChoiceInfoResponseListener) {
        if (billingChoiceInfoResponseListener == null) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("㈫"));
        }
        if (getBillingChoiceInfoParams == null) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("㈪"));
        }
        if (zzP(new zzbj(this, billingChoiceInfoResponseListener, getBillingChoiceInfoParams), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzbk(this, billingChoiceInfoResponseListener), zzaE(), zzO()) == null) {
            zzbb(billingChoiceInfoResponseListener, zzaH(), zzjs.zzy, null);
        }
    }

    @Override
    public void getBillingConfigAsync(GetBillingConfigParams getBillingConfigParams, BillingConfigResponseListener billingConfigResponseListener) {
        if (zzP(new zzas(this, billingConfigResponseListener), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzat(this, billingConfigResponseListener), zzaE(), zzO()) == null) {
            BillingResult billingResultZzaH = zzaH();
            zzbE(zzjs.zzy, 13, billingResultZzaH);
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
    public void isAlternativeBillingOnlyAvailableAsync(AlternativeBillingOnlyAvailabilityListener alternativeBillingOnlyAvailabilityListener) {
        if (zzP(new zzaz(this, alternativeBillingOnlyAvailabilityListener), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzba(this, alternativeBillingOnlyAvailabilityListener), zzaE(), zzO()) == null) {
            zzba(alternativeBillingOnlyAvailabilityListener, zzaH(), zzjs.zzy, null);
        }
    }

    @Override
    public void isBillingProgramAvailableAsync(int i, BillingProgramAvailabilityListener billingProgramAvailabilityListener) {
        if (zzP(new zzao(this, billingProgramAvailabilityListener, i), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzap(this, billingProgramAvailabilityListener, i), zzaE(), zzO()) == null) {
            zzbc(billingProgramAvailabilityListener, i, zzaH(), zzjs.zzy, null);
        }
    }

    @Override
    public void isExternalOfferAvailableAsync(ExternalOfferAvailabilityListener externalOfferAvailabilityListener) {
        if (zzP(new zzad(this, externalOfferAvailabilityListener), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzae(this, externalOfferAvailabilityListener), zzaE(), zzO()) == null) {
            zzbh(externalOfferAvailabilityListener, zzaH(), zzjs.zzy, null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:67:0x0159  */
    @Override
    public final BillingResult isFeatureSupported(String str) {
        byte b;
        if (!zzbw(zzdq.zzc())) {
            BillingResult billingResult = zzdh.zzj;
            zzjs zzjsVar = zzjs.zzb;
            if (billingResult.getResponseCode() != 0) {
                zzbE(zzjsVar, 5, billingResult);
                return billingResult;
            }
            zzbJ(5);
            return billingResult;
        }
        int i = zzdh.zzL;
        switch (str.hashCode()) {
            case -422092961:
                if (!str.equals(ProtectedFastSSH.s("㈽"))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 96321:
                if (!str.equals(ProtectedFastSSH.s("㈼"))) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 97314:
                if (!str.equals(ProtectedFastSSH.s("㈻"))) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 98307:
                if (!str.equals(ProtectedFastSSH.s("㈺"))) {
                    b = -1;
                } else {
                    b = 6;
                }
                break;
            case 99300:
                if (!str.equals(ProtectedFastSSH.s("㈹"))) {
                    b = -1;
                } else {
                    b = 5;
                }
                break;
            case 100293:
                if (!str.equals(ProtectedFastSSH.s("㈸"))) {
                    b = -1;
                } else {
                    b = 7;
                }
                break;
            case 101286:
                if (!str.equals(ProtectedFastSSH.s("㈷"))) {
                    b = -1;
                } else {
                    b = 8;
                }
                break;
            case 102279:
                if (!str.equals(ProtectedFastSSH.s("㈶"))) {
                    b = -1;
                } else {
                    b = 9;
                }
                break;
            case 103272:
                if (!str.equals(ProtectedFastSSH.s("㈵"))) {
                    b = -1;
                } else {
                    b = 10;
                }
                break;
            case 104265:
                if (!str.equals(ProtectedFastSSH.s("㈴"))) {
                    b = -1;
                } else {
                    b = 11;
                }
                break;
            case 105258:
                if (!str.equals(ProtectedFastSSH.s("㈳"))) {
                    b = -1;
                } else {
                    b = 12;
                }
                break;
            case 106251:
                if (!str.equals(ProtectedFastSSH.s("㈲"))) {
                    b = -1;
                } else {
                    b = 13;
                }
                break;
            case 107244:
                if (!str.equals(ProtectedFastSSH.s("㈱"))) {
                    b = -1;
                } else {
                    b = 14;
                }
                break;
            case 108237:
                if (!str.equals(ProtectedFastSSH.s("㈰"))) {
                    b = -1;
                } else {
                    b = Ascii.SI;
                }
                break;
            case 109230:
                if (!str.equals(ProtectedFastSSH.s("㈯"))) {
                    b = -1;
                } else {
                    b = Ascii.DLE;
                }
                break;
            case 110223:
                if (!str.equals(ProtectedFastSSH.s("㈮"))) {
                    b = -1;
                } else {
                    b = 17;
                }
                break;
            case 207616302:
                if (!str.equals(ProtectedFastSSH.s("㈭"))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1987365622:
                if (!str.equals(ProtectedFastSSH.s("㈬"))) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                BillingResult billingResult2 = this.zzk ? zzdh.zzi : zzdh.zzl;
                zzbD(billingResult2, zzjs.zzi, 2);
                return billingResult2;
            case 1:
                BillingResult billingResult3 = this.zzl ? zzdh.zzi : zzdh.zzm;
                zzbD(billingResult3, zzjs.zzj, 3);
                return billingResult3;
            case 2:
                BillingResult billingResult4 = this.zzo ? zzdh.zzi : zzdh.zzn;
                zzbD(billingResult4, zzjs.zzI, 4);
                return billingResult4;
            case 3:
                BillingResult billingResult5 = this.zzq ? zzdh.zzi : zzdh.zzt;
                zzbD(billingResult5, zzjs.zzD, 5);
                return billingResult5;
            case 4:
                BillingResult billingResult6 = this.zzs ? zzdh.zzi : zzdh.zzo;
                zzbD(billingResult6, zzjs.zzE, 6);
                return billingResult6;
            case 5:
                BillingResult billingResult7 = this.zzr ? zzdh.zzi : zzdh.zzq;
                zzbD(billingResult7, zzjs.zzu, 7);
                return billingResult7;
            case 6:
                BillingResult billingResult8 = this.zzt ? zzdh.zzi : zzdh.zzp;
                zzbD(billingResult8, zzjs.zzs, 8);
                return billingResult8;
            case 7:
                BillingResult billingResult9 = this.zzt ? zzdh.zzi : zzdh.zzp;
                zzbD(billingResult9, zzjs.zzai, 9);
                return billingResult9;
            case 8:
                BillingResult billingResult10 = this.zzu ? zzdh.zzi : zzdh.zzs;
                zzbD(billingResult10, zzjs.zzt, 10);
                return billingResult10;
            case 9:
                BillingResult billingResult11 = this.zzv ? zzdh.zzi : zzdh.zzz;
                zzbD(billingResult11, zzjs.zzF, 11);
                return billingResult11;
            case 10:
                BillingResult billingResult12 = this.zzv ? zzdh.zzi : zzdh.zzA;
                zzbD(billingResult12, zzjs.zzG, 12);
                return billingResult12;
            case 11:
                BillingResult billingResult13 = this.zzx ? zzdh.zzi : zzdh.zzC;
                zzbD(billingResult13, zzjs.zzah, 13);
                return billingResult13;
            case 12:
                BillingResult billingResult14 = this.zzy ? zzdh.zzi : zzdh.zzD;
                zzbD(billingResult14, zzjs.zzan, 14);
                return billingResult14;
            case 13:
                BillingResult billingResult15 = this.zzB ? zzdh.zzi : zzdh.zzu;
                zzbD(billingResult15, zzjs.zzaE, 18);
                return billingResult15;
            case 14:
                BillingResult billingResult16 = this.zzA ? zzdh.zzi : zzdh.zzv;
                zzbD(billingResult16, zzjs.zzaZ, 19);
                return billingResult16;
            case 15:
                BillingResult billingResult17 = this.zzB ? zzdh.zzi : zzdh.zzw;
                zzbD(billingResult17, zzjs.zzbo, 20);
                return billingResult17;
            case 16:
                BillingResult billingResult18 = this.zzC ? zzdh.zzi : zzdh.zzx;
                zzbD(billingResult18, zzjs.zzbH, 21);
                return billingResult18;
            case 17:
                BillingResult billingResult19 = this.zzE ? zzdh.zzi : zzdh.zzr;
                zzbD(billingResult19, zzjs.zzbM, 22);
                return billingResult19;
            default:
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㈾").concat(String.valueOf(str)));
                BillingResult billingResult20 = zzdh.zzy;
                zzbD(billingResult20, zzjs.zzH, 1);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v0, types: [com.android.billingclient.api.BillingClientImpl] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    @Override
    public BillingResult launchBillingFlow(Activity activity, BillingFlowParams billingFlowParams) {
        boolean zZzg;
        long j;
        Future futureZzP;
        ?? r5;
        zzjs zzjsVarZzb;
        String string;
        Object obj;
        boolean z;
        int i;
        long jNextLong = new Random().nextLong();
        if (this.zzf == null || this.zzf.zze() == null) {
            zzjs zzjsVar = zzjs.zzl;
            BillingResult billingResult = zzdh.zzE;
            zzbF(zzjsVar, 2, billingResult, jNextLong);
            return billingResult;
        }
        if (billingFlowParams.getDeveloperBillingOptionParams() != null && this.zzf.zzc() == null) {
            zzjs zzjsVar2 = zzjs.zzbJ;
            BillingResult billingResult2 = zzdh.zzI;
            zzbF(zzjsVar2, 2, billingResult2, jNextLong);
            return billingResult2;
        }
        if (!zzbw(zzdq.zzc())) {
            zzjs zzjsVar3 = zzjs.zzb;
            BillingResult billingResult3 = zzdh.zzj;
            zzbF(zzjsVar3, 2, billingResult3, jNextLong);
            zzo(billingResult3);
            return billingResult3;
        }
        synchronized (this.zza) {
            zZzg = this.zzj != null ? this.zzj.zzg() : false;
        }
        ArrayList arrayListZzj = billingFlowParams.zzj();
        List listZzk = billingFlowParams.zzk();
        zzeu zzeuVar = (zzeu) com.google.android.gms.internal.play_billing.zzcg.zza(arrayListZzj, null);
        BillingFlowParams.ProductDetailsParams productDetailsParams = (BillingFlowParams.ProductDetailsParams) com.google.android.gms.internal.play_billing.zzcg.zza(listZzk, null);
        if (zzeuVar != null) {
            throw null;
        }
        String productId = productDetailsParams.zza().getProductId();
        String productType = productDetailsParams.zza().getProductType();
        if (productType.equals(ProtectedFastSSH.s("㈿")) && !this.zzk) {
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉀"));
            zzjs zzjsVar4 = zzjs.zzi;
            BillingResult billingResult4 = zzdh.zzl;
            zzbH(zzjsVar4, 2, billingResult4, jNextLong, zZzg);
            zzo(billingResult4);
            return billingResult4;
        }
        if (billingFlowParams.zzu() && !this.zzn) {
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉁"));
            zzjs zzjsVar5 = zzjs.zzr;
            BillingResult billingResult5 = zzdh.zzf;
            zzbH(zzjsVar5, 2, billingResult5, jNextLong, zZzg);
            zzo(billingResult5);
            return billingResult5;
        }
        if (arrayListZzj.size() > 1 && !this.zzt) {
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉂"));
            zzjs zzjsVar6 = zzjs.zzs;
            BillingResult billingResult6 = zzdh.zzp;
            zzbH(zzjsVar6, 2, billingResult6, jNextLong, zZzg);
            zzo(billingResult6);
            return billingResult6;
        }
        if (!listZzk.isEmpty() && !this.zzu) {
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉃"));
            zzjs zzjsVar7 = zzjs.zzt;
            BillingResult billingResult7 = zzdh.zzs;
            zzbH(zzjsVar7, 2, billingResult7, jNextLong, zZzg);
            zzo(billingResult7);
            return billingResult7;
        }
        Iterator it = listZzk.iterator();
        while (it.hasNext()) {
            String strZzb = ((BillingFlowParams.ProductDetailsParams) it.next()).zzb();
            if (strZzb != null && strZzb.contains(ProtectedFastSSH.s("㉄")) && !this.zzE) {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉅"));
                zzjs zzjsVar8 = zzjs.zzbM;
                BillingResult billingResult8 = zzdh.zzr;
                zzbH(zzjsVar8, 2, billingResult8, jNextLong, zZzg);
                zzo(billingResult8);
                return billingResult8;
            }
        }
        BillingResult billingResultZzd = billingFlowParams.zzd();
        if (billingResultZzd != zzdh.zzi) {
            zzbH(zzjs.zzbd, 2, billingResultZzd, jNextLong, zZzg);
            zzo(billingResultZzd);
            return billingResultZzd;
        }
        boolean z2 = zZzg;
        if (this.zzn) {
            long j2 = jNextLong;
            Bundle bundleZzf = com.google.android.gms.internal.play_billing.zzc.zzf(billingFlowParams, this.zzp, this.zzw, this.zzG.isEnabledForOneTimeProducts(), this.zzG.isEnabledForPrepaidPlans(), this.zzI, this.zzc, this.zzd, this.zzM.longValue(), this.zzg.getPackageName(), j2);
            if (arrayListZzj.isEmpty()) {
                ArrayList<String> arrayList = new ArrayList<>(listZzk.size() - 1);
                ArrayList<String> arrayList2 = new ArrayList<>(listZzk.size() - 1);
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                ArrayList<Integer> arrayList6 = new ArrayList<>();
                for (int i2 = 0; i2 < listZzk.size(); i2++) {
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
                }
                bundleZzf.putStringArrayList(ProtectedFastSSH.s("㉉"), arrayList4);
                if (!arrayList6.isEmpty()) {
                    bundleZzf.putIntegerArrayList(ProtectedFastSSH.s("㉊"), arrayList6);
                }
                if (!arrayList3.isEmpty()) {
                    bundleZzf.putStringArrayList(ProtectedFastSSH.s("㉆"), arrayList3);
                }
                if (!arrayList5.isEmpty()) {
                    bundleZzf.putStringArrayList(ProtectedFastSSH.s("㉋"), arrayList5);
                }
                if (!arrayList.isEmpty()) {
                    bundleZzf.putStringArrayList(ProtectedFastSSH.s("㉇"), arrayList);
                    bundleZzf.putStringArrayList(ProtectedFastSSH.s("㉈"), arrayList2);
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
                    bundleZzf.putStringArrayList(ProtectedFastSSH.s("㉆"), arrayList7);
                }
                if (arrayListZzj.size() > 1) {
                    ArrayList<String> arrayList8 = new ArrayList<>(arrayListZzj.size() - 1);
                    ArrayList<String> arrayList9 = new ArrayList<>(arrayListZzj.size() - 1);
                    if (arrayListZzj.size() > 1) {
                        throw null;
                    }
                    bundleZzf.putStringArrayList(ProtectedFastSSH.s("㉇"), arrayList8);
                    bundleZzf.putStringArrayList(ProtectedFastSSH.s("㉈"), arrayList9);
                }
            }
            if (bundleZzf.containsKey(ProtectedFastSSH.s("㉉")) && !this.zzr) {
                zzjs zzjsVar9 = zzjs.zzu;
                BillingResult billingResult9 = zzdh.zzq;
                zzbH(zzjsVar9, 2, billingResult9, j2, z2);
                zzo(billingResult9);
                return billingResult9;
            }
            if (productDetailsParams == null || TextUtils.isEmpty(productDetailsParams.zza().zza())) {
                z = false;
            } else {
                bundleZzf.putString(ProtectedFastSSH.s("㉌"), productDetailsParams.zza().zza());
                z = true;
            }
            if (!TextUtils.isEmpty(null)) {
                bundleZzf.putString(ProtectedFastSSH.s("㇘"), null);
            }
            Intent intent = activity.getIntent();
            if (intent == null) {
                com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉍"));
            } else if (!TextUtils.isEmpty(intent.getStringExtra(ProtectedFastSSH.s("㉎")))) {
                String stringExtra = intent.getStringExtra(ProtectedFastSSH.s("㉎"));
                bundleZzf.putString(ProtectedFastSSH.s("㉏"), stringExtra);
                try {
                    bundleZzf.putString(ProtectedFastSSH.s("㉐"), this.zzg.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                } catch (PackageManager.NameNotFoundException unused) {
                    bundleZzf.putString(ProtectedFastSSH.s("㉐"), ProtectedFastSSH.s("㉑"));
                }
            }
            if (this.zzE) {
                i = 28;
            } else if (this.zzu && !listZzk.isEmpty()) {
                i = 17;
            } else if (this.zzs && z) {
                i = 15;
            } else {
                i = this.zzp ? 9 : 6;
            }
            BillingFlowParams billingFlowParams2 = billingFlowParams;
            futureZzP = zzP(new zzaf(this, i, productId, productType, billingFlowParams2, bundleZzf), 5000L, null, this.zze, zzO());
            r5 = billingFlowParams2;
            j = j2;
        } else {
            j = jNextLong;
            futureZzP = zzP(new zzag(this, productId, productType), 5000L, null, this.zze, zzO());
            r5 = jNextLong;
        }
        try {
            if (futureZzP == null) {
                try {
                    zzjs zzjsVar10 = zzjs.zzy;
                    BillingResult billingResult10 = zzdh.zzc;
                    zzbH(zzjsVar10, 2, billingResult10, j, z2);
                    zzo(billingResult10);
                    return billingResult10;
                } catch (CancellationException e) {
                    e = e;
                    r5 = j;
                    com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉜"), e);
                    zzjs zzjsVar11 = zzjs.zzd;
                    BillingResult billingResult11 = zzdh.zzk;
                    zzbI(zzjsVar11, 2, billingResult11, zzdc.zza(e), r5, z2);
                    zzo(billingResult11);
                    return billingResult11;
                } catch (TimeoutException e2) {
                    e = e2;
                    r5 = j;
                    com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉜"), e);
                    zzjs zzjsVar12 = zzjs.zzd;
                    BillingResult billingResult12 = zzdh.zzk;
                    zzbI(zzjsVar12, 2, billingResult12, zzdc.zza(e), r5, z2);
                    zzo(billingResult12);
                    return billingResult12;
                } catch (Exception e3) {
                    e = e3;
                    r5 = j;
                    com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉛"), e);
                    zzjs zzjsVar13 = zzjs.zze;
                    BillingResult billingResult13 = zzdh.zzj;
                    zzbI(zzjsVar13, 2, billingResult13, zzdc.zza(e), r5, z2);
                    zzo(billingResult13);
                    return billingResult13;
                }
            }
            long j3 = j;
            Bundle bundle = (Bundle) futureZzP.get(5000L, TimeUnit.MILLISECONDS);
            int iZzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundle, ProtectedFastSSH.s("㇂"));
            String strZzj = com.google.android.gms.internal.play_billing.zzc.zzj(bundle, ProtectedFastSSH.s("㇂"));
            if (iZzb == 0) {
                Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                intent2.putExtra(ProtectedFastSSH.s("㉘"), (PendingIntent) bundle.getParcelable(ProtectedFastSSH.s("㉘")));
                intent2.putExtra(ProtectedFastSSH.s("㉙"), j3);
                intent2.putExtra(ProtectedFastSSH.s("㉚"), z2);
                activity.startActivity(intent2);
                return zzdh.zzi;
            }
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), zza.zza(iZzb, ProtectedFastSSH.s("㉒")));
            BillingResult billingResultZza = zzdh.zza(iZzb, strZzj);
            String strS = ProtectedFastSSH.s("㇂");
            try {
                if (bundle == null || (obj = bundle.get(ProtectedFastSSH.s("㉓"))) == null) {
                    zzjsVarZzb = zzjs.zza;
                } else if (obj instanceof Integer) {
                    zzjsVarZzb = zzjs.zzb(((Integer) obj).intValue());
                } else {
                    com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㉔") + obj.getClass().getName());
                    zzjsVarZzb = zzjs.zza;
                }
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㉕").concat(String.valueOf(th.getMessage())));
                zzjsVarZzb = zzjs.zza;
            }
            if (zzjsVarZzb == zzjs.zza) {
                zzjsVarZzb = zzjs.zzw;
            }
            zzjs zzjsVar14 = zzjsVarZzb;
            String strS2 = ProtectedFastSSH.s("㇂");
            if (bundle == null) {
                string = null;
            } else {
                try {
                    string = bundle.getString(ProtectedFastSSH.s("㉖"));
                } catch (Throwable th2) {
                    com.google.android.gms.internal.play_billing.zzc.zzn(strS2, ProtectedFastSSH.s("㉗").concat(String.valueOf(th2.getMessage())));
                    string = null;
                }
            }
            try {
                zzbI(zzjsVar14, 2, billingResultZza, string, j3, z2);
                zzo(billingResultZza);
                return billingResultZza;
            } catch (CancellationException e4) {
                e = e4;
                r5 = j3;
                z2 = z2;
                com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉜"), e);
                zzjs zzjsVar15 = zzjs.zzd;
                BillingResult billingResult14 = zzdh.zzk;
                zzbI(zzjsVar15, 2, billingResult14, zzdc.zza(e), r5, z2);
                zzo(billingResult14);
                return billingResult14;
            } catch (TimeoutException e5) {
                e = e5;
                r5 = j3;
                z2 = z2;
                com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉜"), e);
                zzjs zzjsVar16 = zzjs.zzd;
                BillingResult billingResult15 = zzdh.zzk;
                zzbI(zzjsVar16, 2, billingResult15, zzdc.zza(e), r5, z2);
                zzo(billingResult15);
                return billingResult15;
            } catch (Exception e6) {
                e = e6;
                r5 = j3;
                z2 = z2;
                com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉛"), e);
                zzjs zzjsVar17 = zzjs.zze;
                BillingResult billingResult16 = zzdh.zzj;
                zzbI(zzjsVar17, 2, billingResult16, zzdc.zza(e), r5, z2);
                zzo(billingResult16);
                return billingResult16;
            }
        } catch (CancellationException e7) {
            e = e7;
        } catch (TimeoutException e8) {
            e = e8;
        } catch (Exception e9) {
            e = e9;
        }
    }

    @Override
    public void launchExternalLink(Activity activity, LaunchExternalLinkParams launchExternalLinkParams, LaunchExternalLinkResponseListener launchExternalLinkResponseListener) {
        if (activity == null) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("㉝"));
        }
        try {
            try {
                zzaX(new zzau(this, launchExternalLinkResponseListener, launchExternalLinkParams, activity), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzaw(this, launchExternalLinkResponseListener), zzaE());
            } catch (Exception e) {
                e = e;
                zzbk(launchExternalLinkResponseListener, zzaH(), zzjs.zzbb, e);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override
    public void queryProductDetailsAsync(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener) {
        if (zzP(new zzbh(this, productDetailsResponseListener, queryProductDetailsParams), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzbi(this, productDetailsResponseListener), zzaE(), zzO()) == null) {
            BillingResult billingResultZzaH = zzaH();
            zzbE(zzjs.zzy, 7, billingResultZzaH);
            productDetailsResponseListener.onProductDetailsResponse(billingResultZzaH, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzca.zzk(), com.google.android.gms.internal.play_billing.zzca.zzk()));
        }
    }

    @Override
    public final void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener) {
        if (zzP(new zzbp(this, purchasesResponseListener, queryPurchasesParams.zza(), queryPurchasesParams.getIncludeSuspendedSubscriptions()), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzac(this, purchasesResponseListener), zzaE(), zzO()) == null) {
            BillingResult billingResultZzaH = zzaH();
            zzbE(zzjs.zzy, 9, billingResultZzaH);
            purchasesResponseListener.onQueryPurchasesResponse(billingResultZzaH, com.google.android.gms.internal.play_billing.zzca.zzk());
        }
    }

    @Override
    public BillingResult showAlternativeBillingOnlyInformationDialog(Activity activity, AlternativeBillingOnlyInformationDialogListener alternativeBillingOnlyInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("㉝"));
        }
        if (!zzbw(zzdq.zzc())) {
            zzjs zzjsVar = zzjs.zzb;
            BillingResult billingResult = zzdh.zzj;
            zzbE(zzjsVar, 16, billingResult);
            return billingResult;
        }
        if (!this.zzy) {
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉞"));
            zzjs zzjsVar2 = zzjs.zzan;
            BillingResult billingResult2 = zzdh.zzD;
            zzbE(zzjsVar2, 16, billingResult2);
            return billingResult2;
        }
        Handler handler = this.zze;
        if (zzP(new zzah(this, alternativeBillingOnlyInformationDialogListener, activity, new zzbr(this, handler, alternativeBillingOnlyInformationDialogListener)), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzai(this, alternativeBillingOnlyInformationDialogListener), handler, zzO()) != null) {
            return zzdh.zzi;
        }
        BillingResult billingResultZzaH = zzaH();
        zzbE(zzjs.zzy, 16, billingResultZzaH);
        return billingResultZzaH;
    }

    @Override
    public void showBillingProgramInformationDialog(Activity activity, BillingProgramInformationDialogParams billingProgramInformationDialogParams, BillingProgramInformationDialogListener billingProgramInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("㉝"));
        }
        try {
            try {
                zzaX(new zzam(this, billingProgramInformationDialogListener, billingProgramInformationDialogParams, activity), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzan(this, billingProgramInformationDialogListener), zzaE());
            } catch (Exception e) {
                e = e;
                zzbm(billingProgramInformationDialogListener, zzaH(), zzjs.zzbb, e);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override
    public BillingResult showExternalOfferInformationDialog(Activity activity, ExternalOfferInformationDialogListener externalOfferInformationDialogListener) {
        if (activity == null) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("㉝"));
        }
        if (!zzbw(zzdq.zzc())) {
            zzjs zzjsVar = zzjs.zzb;
            BillingResult billingResult = zzdh.zzj;
            zzbE(zzjsVar, 25, billingResult);
            return billingResult;
        }
        if (!this.zzz) {
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉟"));
            zzjs zzjsVar2 = zzjs.zzaE;
            BillingResult billingResult2 = zzdh.zzu;
            zzbE(zzjsVar2, 25, billingResult2);
            return billingResult2;
        }
        Handler handler = this.zze;
        if (zzP(new zzbf(this, externalOfferInformationDialogListener, activity, new zzbs(this, handler, externalOfferInformationDialogListener)), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new zzbg(this, externalOfferInformationDialogListener), handler, zzO()) != null) {
            return zzdh.zzi;
        }
        BillingResult billingResultZzaH = zzaH();
        zzbE(zzjs.zzy, 25, billingResultZzaH);
        return billingResultZzaH;
    }

    @Override
    public final BillingResult showInAppMessages(Activity activity, InAppMessageParams inAppMessageParams, InAppMessageResponseListener inAppMessageResponseListener) {
        boolean zZzbw = zzbw(zzdq.zzc());
        String strS = ProtectedFastSSH.s("㇂");
        if (!zZzbw) {
            com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㇖"));
            return zzdh.zzj;
        }
        if (!this.zzq) {
            com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㉠"));
            return zzdh.zzt;
        }
        View viewFindViewById = activity.findViewById(R.id.content);
        IBinder windowToken = viewFindViewById.getWindowToken();
        if (windowToken == null) {
            com.google.android.gms.internal.play_billing.zzc.zzn(strS, ProtectedFastSSH.s("㉡"));
        }
        Rect rect = new Rect();
        viewFindViewById.getGlobalVisibleRect(rect);
        Bundle bundle = new Bundle();
        BundleCompat.putBinder(bundle, ProtectedFastSSH.s("㉢"), windowToken);
        bundle.putInt(ProtectedFastSSH.s("㉣"), rect.left);
        bundle.putInt(ProtectedFastSSH.s("㉤"), rect.top);
        bundle.putInt(ProtectedFastSSH.s("㉥"), rect.right);
        bundle.putInt(ProtectedFastSSH.s("㉦"), rect.bottom);
        bundle.putString(ProtectedFastSSH.s("㈒"), this.zzc);
        String str = this.zzd;
        if (str != null) {
            bundle.putString(ProtectedFastSSH.s("㉧"), str);
        }
        bundle.putIntegerArrayList(ProtectedFastSSH.s("㉨"), inAppMessageParams.zza());
        if (!TextUtils.isEmpty(null)) {
            bundle.putString(ProtectedFastSSH.s("㇘"), null);
        }
        Handler handler = this.zze;
        zzP(new zzbl(this, bundle, activity, new zzbq(this, handler, inAppMessageResponseListener)), 5000L, null, handler, zzO());
        return zzdh.zzi;
    }

    @Override
    public void startConnection(BillingClientStateListener billingClientStateListener) {
        zzbu(billingClientStateListener, 0);
    }

    final synchronized ExecutorService zzO() {
        if (this.zzL == null) {
            this.zzL = Executors.newFixedThreadPool(com.google.android.gms.internal.play_billing.zzc.zza, new zzbo(this));
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

    final zzcl zzi(QueryProductDetailsParams queryProductDetailsParams) throws JSONException {
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
            bundle.putStringArrayList(ProtectedFastSSH.s("㉩"), arrayList4);
            String str = this.zzc;
            bundle.putString(ProtectedFastSSH.s("㈒"), str);
            try {
                synchronized (this.zza) {
                    zzarVar = this.zzi;
                }
                if (zzarVar == null) {
                    return zzaF(zzdh.zzj, zzjs.zzbc, ProtectedFastSSH.s("\u31e5"), null);
                }
                boolean z = this.zzw && this.zzG.isEnabledForPrepaidPlans();
                zzaN(queryProductDetailsParams);
                zzaN(queryProductDetailsParams);
                zzaN(queryProductDetailsParams);
                zzaN(queryProductDetailsParams);
                com.google.android.gms.internal.play_billing.zza zzaVarZza = com.google.android.gms.internal.play_billing.zza.zza(z, true, true, true, false, true);
                Bundle bundleZzj = zzarVar.zzj(true != this.zzx ? 17 : 20, this.zzg.getPackageName(), strZzb, bundle, com.google.android.gms.internal.play_billing.zzc.zzg(str, this.zzd, arrayList3, null, null, zzaVarZza, this.zzM.longValue()));
                if (bundleZzj == null) {
                    return zzaF(zzdh.zzB, zzjs.zzR, ProtectedFastSSH.s("㉪"), null);
                }
                if (!bundleZzj.containsKey(ProtectedFastSSH.s("㉫"))) {
                    int iZzb = com.google.android.gms.internal.play_billing.zzc.zzb(bundleZzj, ProtectedFastSSH.s("㇂"));
                    String strZzj = com.google.android.gms.internal.play_billing.zzc.zzj(bundleZzj, ProtectedFastSSH.s("㇂"));
                    if (iZzb != 0) {
                        return zzaF(zzdh.zza(iZzb, strZzj), zzjs.zzw, zza.zza(iZzb, ProtectedFastSSH.s("㉬")), null);
                    }
                    return zzaF(zzdh.zza(6, strZzj), zzjs.zzS, ProtectedFastSSH.s("㉭"), null);
                }
                ArrayList<String> stringArrayList = bundleZzj.getStringArrayList(ProtectedFastSSH.s("㉫"));
                if (stringArrayList == null) {
                    return zzaF(zzdh.zzB, zzjs.zzT, ProtectedFastSSH.s("㉮"), null);
                }
                ArrayList arrayList5 = new ArrayList();
                int size3 = stringArrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    try {
                        ProductDetails productDetails = new ProductDetails(stringArrayList.get(i4));
                        com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉯").concat(productDetails.toString()));
                        arrayList5.add(productDetails);
                    } catch (JSONException e) {
                        return zzaF(zzdh.zza(6, ProtectedFastSSH.s("㉰")), zzjs.zzU, ProtectedFastSSH.s("㉱"), e);
                    }
                }
                ArrayList<String> stringArrayList2 = bundleZzj.getStringArrayList(ProtectedFastSSH.s("㉲"));
                new ArrayList();
                try {
                    ArrayList arrayList6 = new ArrayList();
                    if (stringArrayList2 == null) {
                        for (QueryProductDetailsParams.Product product : arrayList3) {
                            Iterator it = arrayList5.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    arrayList6.add(new UnfetchedProduct(new JSONObject().put(ProtectedFastSSH.s("㉴"), product.zza()).put(ProtectedFastSSH.s("㉵"), product.zzb()).put(ProtectedFastSSH.s("㉶"), 0).toString()));
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
                            com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㇂"), ProtectedFastSSH.s("㉳").concat(unfetchedProduct.toString()));
                            arrayList6.add(unfetchedProduct);
                        }
                    }
                    arrayList.addAll(arrayList5);
                    arrayList2.addAll(arrayList6);
                    i = i2;
                } catch (JSONException e2) {
                    return zzaF(zzdh.zza(6, ProtectedFastSSH.s("㉰")), zzjs.zzU, ProtectedFastSSH.s("㉷"), e2);
                }
            } catch (DeadObjectException e3) {
                return zzaF(zzdh.zzj, zzjs.zzQ, ProtectedFastSSH.s("㉸"), e3);
            } catch (Exception e4) {
                return zzaF(zzdh.zzh, zzjs.zzQ, ProtectedFastSSH.s("㉸"), e4);
            }
        }
        return new zzcl(0, "", arrayList, arrayList2);
    }

    final zzdd zzl() {
        return this.zzh;
    }

    final BillingResult zzo(BillingResult billingResult) {
        if (Thread.interrupted()) {
            return billingResult;
        }
        this.zze.post(new zzak(this, billingResult));
        return billingResult;
    }
}
