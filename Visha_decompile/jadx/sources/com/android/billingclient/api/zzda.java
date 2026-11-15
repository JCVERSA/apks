package com.android.billingclient.api;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.core.util.Consumer;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.o;
import com.google.android.gms.internal.play_billing.u;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import defpackage.f5j;
import defpackage.n5j;
import defpackage.nij;
import defpackage.ofg;
import defpackage.zlj;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class zzda extends BillingClientImpl {
    private final Context zza;
    private volatile int zzb;

    @Nullable
    private volatile com.google.android.gms.internal.play_billing.zzba zzc;
    private volatile zzcy zzd;

    @Nullable
    private volatile ScheduledExecutorService zze;

    @AnyThread
    public zzda(@Nullable String str, Context context, @Nullable zzdd zzddVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        super(null, context, null, null, builder);
        this.zzb = 0;
        this.zza = context;
    }

    public static Object zzaM(zzda zzdaVar, int i, u uVar) {
        String str;
        try {
            if (zzdaVar.zzc == null) {
                throw null;
            }
            com.google.android.gms.internal.play_billing.zzba zzbaVar = zzdaVar.zzc;
            String packageName = zzdaVar.zza.getPackageName();
            if (i == 2) {
                str = "LAUNCH_BILLING_FLOW";
            } else if (i == 3) {
                str = "ACKNOWLEDGE_PURCHASE";
            } else if (i == 4) {
                str = "CONSUME_ASYNC";
            } else if (i != 5) {
                str = i != 6 ? "QUERY_PRODUCT_DETAILS_ASYNC" : "START_CONNECTION";
            } else {
                str = "IS_FEATURE_SUPPORTED";
            }
            zzbaVar.zza(packageName, str, new zzcx(uVar));
            return "billingOverrideService.getBillingOverride";
        } catch (Exception e) {
            zzdaVar.zzaW(zzjs.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, zzdh.zzF);
            a.o("BillingClientTesting", "An error occurred while retrieving billing override.", e);
            uVar.b(0);
            return "billingOverrideService.getBillingOverride";
        }
    }

    private final int zzaP(ofg ofgVar) {
        try {
            return ((Integer) ofgVar.get(28500L, TimeUnit.MILLISECONDS)).intValue();
        } catch (TimeoutException e) {
            zzaW(zzjs.BILLING_OVERRIDE_SERVICE_CALL_TIMEOUT, 28, zzdh.zzF);
            a.o("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", e);
            return 0;
        } catch (Exception e2) {
            if (e2 instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            zzaW(zzjs.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, zzdh.zzF);
            a.o("BillingClientTesting", "An error occurred while retrieving billing override.", e2);
            return 0;
        }
    }

    private final synchronized ScheduledExecutorService zzaQ() {
        try {
            if (this.zze == null) {
                this.zze = Executors.newSingleThreadScheduledExecutor();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zze;
    }

    private final synchronized void zzaR() {
        zzaX(27);
        try {
            try {
                zzcz zzczVar = null;
                if (this.zzd != null && this.zzc != null) {
                    a.m("BillingClientTesting", "Unbinding from Billing Override Service.");
                    this.zza.unbindService(this.zzd);
                    this.zzd = new zzcy(this, zzczVar);
                }
                this.zzc = null;
                if (this.zze != null) {
                    this.zze.shutdownNow();
                    this.zze = null;
                }
            } catch (RuntimeException e) {
                a.o("BillingClientTesting", "There was an exception while ending Billing Override Service connection!", e);
            }
            this.zzb = 3;
        } catch (Throwable th) {
            this.zzb = 3;
            throw th;
        }
    }

    private final synchronized void zzaS() {
        if (zzaK()) {
            a.m("BillingClientTesting", "Billing Override Service connection is valid. No need to re-initialize.");
            zzaX(26);
            return;
        }
        if (this.zzb == 1) {
            a.n("BillingClientTesting", "Client is already in the process of connecting to Billing Override Service.");
            return;
        }
        if (this.zzb == 3) {
            a.n("BillingClientTesting", "Billing Override Service Client was already closed and can't be reused. Please create another instance.");
            zzaW(zzjs.BILLING_CLIENT_CLOSED, 26, zzdh.zza(-1, "Billing Override Service connection is disconnected."));
            return;
        }
        this.zzb = 1;
        a.m("BillingClientTesting", "Starting Billing Override Service setup.");
        this.zzd = new zzcy(this, null);
        Intent intent = new Intent("com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND");
        intent.setPackage("com.google.android.apps.play.billingtestcompanion");
        Context context = this.zza;
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        zzjs zzjsVar = zzjs.REASON_UNSPECIFIED;
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            zzjsVar = zzjs.INTENT_SERVICE_NOT_FOUND;
        } else {
            ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
            if (serviceInfo != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if (!Objects.equals(str, "com.google.android.apps.play.billingtestcompanion") || str2 == null) {
                    zzjsVar = zzjs.BILLING_SERVICE_BLOCKED;
                    a.n("BillingClientTesting", "The device doesn't have valid Play Billing Lab.");
                } else {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    if (context.bindService(intent2, this.zzd, 1)) {
                        a.m("BillingClientTesting", "Billing Override Service was bonded successfully.");
                        return;
                    } else {
                        zzjsVar = zzjs.BILLING_SERVICE_BLOCKED;
                        a.n("BillingClientTesting", "Connection to Billing Override Service is blocked.");
                    }
                }
            }
        }
        this.zzb = 0;
        a.m("BillingClientTesting", "Billing Override Service unavailable on device.");
        zzaW(zzjsVar, 26, zzdh.zza(2, "Billing Override Service unavailable on device."));
    }

    public static final boolean zzaT(int i) {
        return i > 0;
    }

    public final BillingResult zzaU(int i, int i2) {
        BillingResult billingResultZza = zzdh.zza(i2, "Billing override value was set by a license tester.");
        zzaW(zzjs.LICENSE_TESTER_BILLING_OVERRIDE, i, billingResultZza);
        return billingResultZza;
    }

    private final ofg zzaV(final int i) {
        if (zzaK()) {
            return zlj.a(new nij() {
                @Override
                public final Object zza(u uVar) {
                    return zzda.zzaM(this.zza, i, uVar);
                }
            });
        }
        a.n("BillingClientTesting", "Billing Override Service is not ready.");
        zzaW(zzjs.BILLING_OVERRIDE_SERVICE_CONNECTION_NOT_READY, 28, zzdh.zza(-1, "Billing Override Service connection is disconnected."));
        return o.a(0);
    }

    public final void zzaW(zzjs zzjsVar, int i, BillingResult billingResult) {
        int i2 = zzdc.zza;
        f5j f5jVarZzb = zzdc.zzb(zzjsVar, i, billingResult, null, zzjz.BROADCAST_ACTION_UNSPECIFIED);
        Objects.requireNonNull(f5jVarZzb, "ApiFailure should not be null");
        zzl().zza(f5jVarZzb);
    }

    public final void zzaX(int i) {
        int i2 = zzdc.zza;
        n5j n5jVarZzc = zzdc.zzc(i, zzjz.BROADCAST_ACTION_UNSPECIFIED);
        Objects.requireNonNull(n5jVarZzc, "ApiSuccess should not be null");
        zzl().zzf(n5jVarZzc);
    }

    private final void zzaY(int i, Consumer consumer, Runnable runnable) {
        o.c(o.b(zzaV(i), 28500L, TimeUnit.MILLISECONDS, zzaQ()), new zzcw(this, i, consumer, runnable), zzO());
    }

    @Override
    public final void acknowledgePurchase(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        Objects.requireNonNull(acknowledgePurchaseResponseListener);
        zzaY(3, new Consumer() {
            @Override
            public final void accept(Object obj) {
                acknowledgePurchaseResponseListener.onAcknowledgePurchaseResponse((BillingResult) obj);
            }
        }, new Runnable() {
            @Override
            public final void run() {
                super/*com.android.billingclient.api.BillingClientImpl*/.acknowledgePurchase(acknowledgePurchaseParams, acknowledgePurchaseResponseListener);
            }
        });
    }

    @Override
    public final void consumeAsync(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        zzaY(4, new Consumer() {
            @Override
            public final void accept(Object obj) {
                consumeResponseListener.onConsumeResponse((BillingResult) obj, consumeParams.getPurchaseToken());
            }
        }, new Runnable() {
            @Override
            public final void run() {
                super/*com.android.billingclient.api.BillingClientImpl*/.consumeAsync(consumeParams, consumeResponseListener);
            }
        });
    }

    @Override
    public final void endConnection() {
        zzaR();
        super.endConnection();
    }

    @Override
    public final BillingResult launchBillingFlow(final Activity activity, final BillingFlowParams billingFlowParams) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                super/*com.android.billingclient.api.BillingClientImpl*/.zzo((BillingResult) obj);
            }
        };
        Callable callable = new Callable() {
            @Override
            public final Object call() {
                return super/*com.android.billingclient.api.BillingClientImpl*/.launchBillingFlow(activity, billingFlowParams);
            }
        };
        int iZzaP = zzaP(zzaV(2));
        if (zzaT(iZzaP)) {
            BillingResult billingResultZzaU = zzaU(2, iZzaP);
            consumer.accept(billingResultZzaU);
            return billingResultZzaU;
        }
        try {
            return (BillingResult) callable.call();
        } catch (Exception e) {
            zzjs zzjsVar = zzjs.BILLING_OVERRIDE_SERVICE_FALLBACK_ERROR;
            BillingResult billingResult = zzdh.zzh;
            zzaW(zzjsVar, 2, billingResult);
            a.o("BillingClientTesting", "An internal error occurred.", e);
            return billingResult;
        }
    }

    @Override
    public final void queryProductDetailsAsync(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        zzaY(7, new Consumer() {
            @Override
            public final void accept(Object obj) {
                QueryProductDetailsResult queryProductDetailsResult = new QueryProductDetailsResult(new ArrayList(), new ArrayList());
                productDetailsResponseListener.onProductDetailsResponse((BillingResult) obj, queryProductDetailsResult);
            }
        }, new Runnable() {
            @Override
            public final void run() {
                super/*com.android.billingclient.api.BillingClientImpl*/.queryProductDetailsAsync(queryProductDetailsParams, productDetailsResponseListener);
            }
        });
    }

    @Override
    public final void startConnection(BillingClientStateListener billingClientStateListener) {
        zzaS();
        super.startConnection(billingClientStateListener);
    }

    public final synchronized boolean zzaK() {
        return (this.zzb != 2 || this.zzc == null || this.zzd == null) ? false : true;
    }

    @AnyThread
    public zzda(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, zzdu zzduVar, @Nullable zzdd zzddVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        super((String) null, pendingPurchasesParams, context, (zzdu) null, (zzdd) null, (ExecutorService) null, builder);
        this.zzb = 0;
        this.zza = context;
    }

    @AnyThread
    public zzda(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable zzdd zzddVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        super((String) null, pendingPurchasesParams, context, purchasesUpdatedListener, (zzdd) null, (ExecutorService) null, builder);
        this.zzb = 0;
        this.zza = context;
    }

    @AnyThread
    public zzda(@Nullable String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, @Nullable UserChoiceBillingListener userChoiceBillingListener, @Nullable DeveloperProvidedBillingListener developerProvidedBillingListener, @Nullable zzdd zzddVar, @Nullable ExecutorService executorService, BillingClient.Builder builder) {
        super(null, pendingPurchasesParams, context, purchasesUpdatedListener, userChoiceBillingListener, developerProvidedBillingListener, null, null, builder);
        this.zzb = 0;
        this.zza = context;
    }
}
