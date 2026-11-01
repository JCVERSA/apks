package com.android.billingclient.api;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import androidx.core.util.Consumer;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.internal.play_billing.zzjl;
import com.google.android.gms.internal.play_billing.zzjp;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class zzda extends BillingClientImpl {
    private final Context zza;
    private volatile int zzb;
    private volatile com.google.android.gms.internal.play_billing.zzba zzc;
    private volatile zzcy zzd;
    private volatile ScheduledExecutorService zze;

    zzda(String str, Context context, zzdd zzddVar, ExecutorService executorService, BillingClient.Builder builder) {
        super(null, context, null, null, builder);
        this.zzb = 0;
        this.zza = context;
    }

    zzda(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, UserChoiceBillingListener userChoiceBillingListener, DeveloperProvidedBillingListener developerProvidedBillingListener, zzdd zzddVar, ExecutorService executorService, BillingClient.Builder builder) {
        super(null, pendingPurchasesParams, context, purchasesUpdatedListener, userChoiceBillingListener, developerProvidedBillingListener, null, null, builder);
        this.zzb = 0;
        this.zza = context;
    }

    zzda(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzdd zzddVar, ExecutorService executorService, BillingClient.Builder builder) {
        super((String) null, pendingPurchasesParams, context, purchasesUpdatedListener, (zzdd) null, (ExecutorService) null, builder);
        this.zzb = 0;
        this.zza = context;
    }

    zzda(String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzdu zzduVar, zzdd zzddVar, ExecutorService executorService, BillingClient.Builder builder) {
        super((String) null, pendingPurchasesParams, context, (zzdu) null, (zzdd) null, (ExecutorService) null, builder);
        this.zzb = 0;
        this.zza = context;
    }

    public static BillingResult zzaC(zzda zzdaVar, Activity activity, BillingFlowParams billingFlowParams) {
        return super.launchBillingFlow(activity, billingFlowParams);
    }

    public static void zzaD(zzda zzdaVar, AcknowledgePurchaseParams acknowledgePurchaseParams, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        super.acknowledgePurchase(acknowledgePurchaseParams, acknowledgePurchaseResponseListener);
    }

    public static void zzaE(zzda zzdaVar, ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) {
        super.consumeAsync(consumeParams, consumeResponseListener);
    }

    public static void zzaF(zzda zzdaVar, QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener) {
        super.queryProductDetailsAsync(queryProductDetailsParams, productDetailsResponseListener);
    }

    public static void zzaG(zzda zzdaVar, BillingResult billingResult) {
        super.zzo(billingResult);
    }

    static void zzaH(zzda zzdaVar, com.google.android.gms.internal.play_billing.zzba zzbaVar) {
        zzdaVar.zzc = zzbaVar;
    }

    static void zzaI(zzda zzdaVar, int i) {
        zzdaVar.zzb = i;
    }

    static boolean zzaJ(zzda zzdaVar, int i) {
        return zzaT(i);
    }

    static BillingResult zzaL(zzda zzdaVar, int i, int i2) {
        return zzdaVar.zzaU(i, i2);
    }

    public static Object zzaM(zzda zzdaVar, int i, com.google.android.gms.internal.play_billing.zzp zzpVar) {
        String strS;
        try {
            if (zzdaVar.zzc == null) {
                throw null;
            }
            com.google.android.gms.internal.play_billing.zzba zzbaVar = zzdaVar.zzc;
            String packageName = zzdaVar.zza.getPackageName();
            if (i == 2) {
                strS = ProtectedFastSSH.s("㐥");
            } else if (i == 3) {
                strS = ProtectedFastSSH.s("㐤");
            } else if (i == 4) {
                strS = ProtectedFastSSH.s("㐣");
            } else if (i != 5) {
                strS = i != 6 ? ProtectedFastSSH.s("㐠") : ProtectedFastSSH.s("㐡");
            } else {
                strS = ProtectedFastSSH.s("㐢");
            }
            zzbaVar.zza(packageName, strS, new zzcx(zzpVar));
            return ProtectedFastSSH.s("㐨");
        } catch (Exception e) {
            zzdaVar.zzaW(zzjs.zzaQ, 28, zzdh.zzF);
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐧"), e);
            zzpVar.zzb(0);
        }
    }

    static void zzaN(zzda zzdaVar, zzjs zzjsVar, int i, BillingResult billingResult) {
        zzdaVar.zzaW(zzjsVar, 28, billingResult);
    }

    static void zzaO(zzda zzdaVar, int i) {
        zzdaVar.zzaX(26);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int zzaP(com.google.android.gms.internal.play_billing.zzdk zzdkVar) {
        String strS = ProtectedFastSSH.s("㐦");
        try {
            return ((Integer) zzdkVar.get(28500L, TimeUnit.MILLISECONDS)).intValue();
        } catch (TimeoutException e) {
            zzaW(zzjs.zzaX, 28, zzdh.zzF);
            com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㐩"), e);
            return 0;
        } catch (Exception e2) {
            if (e2 instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            zzaW(zzjs.zzaQ, 28, zzdh.zzF);
            com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㐧"), e2);
            return 0;
        }
    }

    private final synchronized ScheduledExecutorService zzaQ() {
        if (this.zze == null) {
            this.zze = Executors.newSingleThreadScheduledExecutor();
        }
        return this.zze;
    }

    private final synchronized void zzaR() {
        zzaX(27);
        try {
            try {
                if (this.zzd != null && this.zzc != null) {
                    com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐪"));
                    this.zza.unbindService(this.zzd);
                    this.zzd = new zzcy(this, null);
                }
                this.zzc = null;
                if (this.zze != null) {
                    this.zze.shutdownNow();
                    this.zze = null;
                }
            } catch (RuntimeException e) {
                com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐫"), e);
            }
            this.zzb = 3;
        } catch (Throwable th) {
            this.zzb = 3;
            throw th;
        }
    }

    private final synchronized void zzaS() {
        if (zzaK()) {
            com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐬"));
            zzaX(26);
            return;
        }
        if (this.zzb == 1) {
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐭"));
            return;
        }
        if (this.zzb == 3) {
            com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐮"));
            zzaW(zzjs.zzL, 26, zzdh.zza(-1, ProtectedFastSSH.s("㐯")));
            return;
        }
        this.zzb = 1;
        com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐰"));
        this.zzd = new zzcy(this, null);
        Intent intent = new Intent(ProtectedFastSSH.s("㐱"));
        intent.setPackage(ProtectedFastSSH.s("㐲"));
        Context context = this.zza;
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        zzjs zzjsVar = zzjs.zza;
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            zzjsVar = zzjs.zzO;
        } else {
            ResolveInfo resolveInfo = listQueryIntentServices.get(0);
            if (resolveInfo.serviceInfo != null) {
                String str = resolveInfo.serviceInfo.packageName;
                String str2 = resolveInfo.serviceInfo.name;
                if (!Objects.equals(str, ProtectedFastSSH.s("㐲")) || str2 == null) {
                    String strS = ProtectedFastSSH.s("㐦");
                    String strS2 = ProtectedFastSSH.s("㐵");
                    zzjsVar = zzjs.zzM;
                    com.google.android.gms.internal.play_billing.zzc.zzn(strS, strS2);
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    if (context.bindService(intent2, this.zzd, 1)) {
                        com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐳"));
                        return;
                    }
                    String strS3 = ProtectedFastSSH.s("㐦");
                    String strS4 = ProtectedFastSSH.s("㐴");
                    zzjsVar = zzjs.zzM;
                    com.google.android.gms.internal.play_billing.zzc.zzn(strS3, strS4);
                }
            }
        }
        this.zzb = 0;
        com.google.android.gms.internal.play_billing.zzc.zzm(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐶"));
        zzaW(zzjsVar, 26, zzdh.zza(2, ProtectedFastSSH.s("㐶")));
    }

    private static final boolean zzaT(int i) {
        return i > 0;
    }

    private final BillingResult zzaU(int i, int i2) {
        BillingResult billingResultZza = zzdh.zza(i2, ProtectedFastSSH.s("㐷"));
        zzaW(zzjs.zzaO, i, billingResultZza);
        return billingResultZza;
    }

    private final com.google.android.gms.internal.play_billing.zzdk zzaV(int i) {
        if (zzaK()) {
            return com.google.android.gms.internal.play_billing.zzu.zza(new zzcr(this, i));
        }
        com.google.android.gms.internal.play_billing.zzc.zzn(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐸"));
        zzaW(zzjs.zzaP, 28, zzdh.zza(-1, ProtectedFastSSH.s("㐯")));
        return com.google.android.gms.internal.play_billing.zzdf.zza(0);
    }

    private final void zzaW(zzjs zzjsVar, int i, BillingResult billingResult) {
        int i2 = zzdc.zza;
        zzl().zza((zzjl) Objects.requireNonNull(zzdc.zzb(zzjsVar, i, billingResult, null, zzjz.zza), ProtectedFastSSH.s("㐹")));
    }

    private final void zzaX(int i) {
        int i2 = zzdc.zza;
        zzl().zzf((zzjp) Objects.requireNonNull(zzdc.zzc(i, zzjz.zza), ProtectedFastSSH.s("㐺")));
    }

    private final void zzaY(int i, Consumer consumer, Runnable runnable) {
        com.google.android.gms.internal.play_billing.zzdf.zzc(com.google.android.gms.internal.play_billing.zzdf.zzb(zzaV(i), 28500L, TimeUnit.MILLISECONDS, zzaQ()), new zzcw(this, i, consumer, runnable), zzO());
    }

    @Override
    public final void acknowledgePurchase(AcknowledgePurchaseParams acknowledgePurchaseParams, AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        Objects.requireNonNull(acknowledgePurchaseResponseListener);
        zzaY(3, new zzcs(acknowledgePurchaseResponseListener), new zzct(this, acknowledgePurchaseParams, acknowledgePurchaseResponseListener));
    }

    @Override
    public final void consumeAsync(ConsumeParams consumeParams, ConsumeResponseListener consumeResponseListener) {
        zzaY(4, new zzcp(consumeResponseListener, consumeParams), new zzcq(this, consumeParams, consumeResponseListener));
    }

    @Override
    public final void endConnection() {
        zzaR();
        super.endConnection();
    }

    @Override
    public final BillingResult launchBillingFlow(Activity activity, BillingFlowParams billingFlowParams) {
        zzcu zzcuVar = new zzcu(this);
        zzcv zzcvVar = new zzcv(this, activity, billingFlowParams);
        int iZzaP = zzaP(zzaV(2));
        if (zzaT(iZzaP)) {
            BillingResult billingResultZzaU = zzaU(2, iZzaP);
            zzcuVar.accept(billingResultZzaU);
            return billingResultZzaU;
        }
        try {
            return (BillingResult) zzcvVar.call();
        } catch (Exception e) {
            zzjs zzjsVar = zzjs.zzaY;
            BillingResult billingResult = zzdh.zzh;
            zzaW(zzjsVar, 2, billingResult);
            com.google.android.gms.internal.play_billing.zzc.zzo(ProtectedFastSSH.s("㐦"), ProtectedFastSSH.s("㐻"), e);
            return billingResult;
        }
    }

    @Override
    public final void queryProductDetailsAsync(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener) {
        zzaY(7, new zzcn(productDetailsResponseListener), new zzco(this, queryProductDetailsParams, productDetailsResponseListener));
    }

    @Override
    public final void startConnection(BillingClientStateListener billingClientStateListener) {
        zzaS();
        super.startConnection(billingClientStateListener);
    }

    public final synchronized boolean zzaK() {
        return (this.zzb != 2 || this.zzc == null || this.zzd == null) ? false : true;
    }
}
