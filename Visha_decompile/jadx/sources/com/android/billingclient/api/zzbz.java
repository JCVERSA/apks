package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import defpackage.a9j;
import defpackage.b6j;
import defpackage.c5j;
import defpackage.d6f;
import defpackage.f5j;
import defpackage.i9j;
import defpackage.j5j;
import defpackage.l9j;
import defpackage.n5j;
import defpackage.p5j;
import defpackage.p9j;
import defpackage.v5j;
import defpackage.w8j;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

final class zzbz implements ServiceConnection {
    final BillingClientImpl zza;
    private final BillingClientStateListener zzb;
    private final d6f zzc;
    private final d6f zzd;
    private final int zze;

    public zzbz(BillingClientImpl billingClientImpl, BillingClientStateListener billingClientStateListener, int i, zzcm zzcmVar) {
        Objects.requireNonNull(billingClientImpl);
        this.zza = billingClientImpl;
        this.zzc = d6f.c(billingClientImpl.zzN);
        this.zzd = d6f.c(billingClientImpl.zzN);
        this.zzb = billingClientStateListener;
        this.zze = i;
    }

    /* JADX WARN: Code duplicated, block: B:164:0x01b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0116  */
    /* JADX WARN: Code duplicated, block: B:78:0x0171  */
    public static Object zza(zzbz zzbzVar) {
        Bundle bundle;
        com.google.android.gms.internal.play_billing.zzar zzarVar;
        zzjs zzjsVar;
        int i;
        long j;
        char c;
        long j2;
        BillingClientImpl billingClientImpl = zzbzVar.zza;
        synchronized (billingClientImpl.zza) {
            try {
                if (billingClientImpl.zzb != 3) {
                    boolean z = billingClientImpl.zzb == 1;
                    if (TextUtils.isEmpty(null)) {
                        bundle = null;
                    } else {
                        bundle = new Bundle();
                        bundle.putString("accountName", null);
                        a.c(bundle, billingClientImpl.zzc, billingClientImpl.zzd, billingClientImpl.zzM.longValue());
                    }
                    zzjs zzjsVar2 = zzjs.REASON_UNSPECIFIED;
                    synchronized (billingClientImpl.zza) {
                        zzarVar = billingClientImpl.zzi;
                    }
                    if (zzarVar != null) {
                        String packageName = zzbzVar.zza.zzg.getPackageName();
                        try {
                            char c2 = 25;
                            if (zzarVar.zzb(25, packageName, BillingClient.ProductType.INAPP) == 0) {
                                BillingClientImpl billingClientImpl2 = zzbzVar.zza;
                                long jZzb = zzet.zzb(billingClientImpl2.zzg);
                                long jZzc = zzet.zzc(billingClientImpl2.zzg);
                                double dZza = zzet.zza(billingClientImpl2.zzg);
                                long jZzd = zzet.zzd(billingClientImpl2.zzg);
                                int i2 = 0;
                                long jMin = jZzc;
                                Exception e = null;
                                while (true) {
                                    long j3 = i2;
                                    if (j3 > jZzb) {
                                        break;
                                    }
                                    try {
                                        try {
                                            Boolean boolValueOf = Boolean.valueOf(z);
                                            try {
                                                Bundle bundle2 = new Bundle();
                                                try {
                                                    bundle2.putString("callingPackage", billingClientImpl2.zzg.getPackageName());
                                                    long j4 = jMin;
                                                    int i3 = i2;
                                                    try {
                                                        try {
                                                            a.c(bundle2, billingClientImpl2.zzc, billingClientImpl2.zzd, billingClientImpl2.zzM.longValue());
                                                            if (billingClientImpl2.zzG != null) {
                                                                try {
                                                                    if (billingClientImpl2.zzG.isEnabledForOneTimeProducts()) {
                                                                        bundle2.putBoolean("enablePendingPurchases", true);
                                                                    }
                                                                } catch (SecurityException e2) {
                                                                    e = e2;
                                                                    i2 = i3;
                                                                    zzbzVar.zzl(e, z, i2);
                                                                }
                                                            }
                                                            if (billingClientImpl2.zzG != null) {
                                                                try {
                                                                    if (billingClientImpl2.zzG.isEnabledForPrepaidPlans()) {
                                                                        bundle2.putBoolean("enablePendingPurchaseForSubscriptions", true);
                                                                    }
                                                                } catch (Exception e3) {
                                                                    e = e3;
                                                                    j = j4;
                                                                    c = 25;
                                                                    i = i3;
                                                                    j2 = jZzd;
                                                                    if (j3 != jZzb) {
                                                                        StringBuilder sb = new StringBuilder();
                                                                        sb.append("Transient error during initialize(), retrying in ");
                                                                        long j5 = j;
                                                                        sb.append(j5);
                                                                        sb.append("ms");
                                                                        a.o("BillingClient", sb.toString(), e);
                                                                        try {
                                                                            Thread.sleep(j5);
                                                                            jMin = (long) Math.min(j5 * dZza, j2);
                                                                            i2 = i + 1;
                                                                            c2 = c;
                                                                            jZzd = j2;
                                                                            billingClientImpl2 = billingClientImpl2;
                                                                            jZzb = jZzb;
                                                                        } catch (InterruptedException e4) {
                                                                            Thread.currentThread().interrupt();
                                                                            zzbzVar.zzl(e4, z, i);
                                                                        }
                                                                    } else {
                                                                        i2 = i;
                                                                        zzbzVar.zzl(e, z, i2);
                                                                    }
                                                                    return null;
                                                                }
                                                            }
                                                            String packageName2 = billingClientImpl2.zzg.getPackageName();
                                                            BillingClientImpl billingClientImpl3 = billingClientImpl2;
                                                            j = j4;
                                                            i = i3;
                                                            billingClientImpl2 = billingClientImpl2;
                                                            jZzb = jZzb;
                                                            j2 = jZzd;
                                                            try {
                                                                try {
                                                                    c = 25;
                                                                    try {
                                                                        zzarVar.zzq(25, packageName2, bundle2, new zzcg(billingClientImpl3, zzbzVar, boolValueOf, i, null));
                                                                    } catch (Exception e5) {
                                                                        e = e5;
                                                                        if (j3 != jZzb) {
                                                                            StringBuilder sb2 = new StringBuilder();
                                                                            sb2.append("Transient error during initialize(), retrying in ");
                                                                            long j6 = j;
                                                                            sb2.append(j6);
                                                                            sb2.append("ms");
                                                                            a.o("BillingClient", sb2.toString(), e);
                                                                            Thread.sleep(j6);
                                                                            jMin = (long) Math.min(j6 * dZza, j2);
                                                                            i2 = i + 1;
                                                                            c2 = c;
                                                                            jZzd = j2;
                                                                            billingClientImpl2 = billingClientImpl2;
                                                                            jZzb = jZzb;
                                                                        } else {
                                                                            i2 = i;
                                                                            zzbzVar.zzl(e, z, i2);
                                                                        }
                                                                    }
                                                                } catch (Exception e6) {
                                                                    e = e6;
                                                                    c = 25;
                                                                }
                                                            } catch (SecurityException e7) {
                                                                e = e7;
                                                                i2 = i;
                                                                zzbzVar.zzl(e, z, i2);
                                                            }
                                                        } catch (Exception e8) {
                                                            e = e8;
                                                        }
                                                    } catch (SecurityException e9) {
                                                        e = e9;
                                                        i = i3;
                                                    }
                                                } catch (Exception e10) {
                                                    e = e10;
                                                    i = i2;
                                                    j = jMin;
                                                    c = 25;
                                                }
                                            } catch (SecurityException e11) {
                                                e = e11;
                                            }
                                        } catch (SecurityException e12) {
                                            e = e12;
                                        }
                                    } catch (Exception e13) {
                                        e = e13;
                                        i = i2;
                                        j = jMin;
                                        c = c2;
                                    }
                                    jMin = (long) Math.min(j6 * dZza, j2);
                                    i2 = i + 1;
                                    c2 = c;
                                    jZzd = j2;
                                    billingClientImpl2 = billingClientImpl2;
                                    jZzb = jZzb;
                                }
                                zzbzVar.zzl(e, z, i2);
                            } else {
                                int iZzb = 3;
                                int i4 = 29;
                                while (true) {
                                    if (i4 < 3) {
                                        i4 = 0;
                                        break;
                                    }
                                    try {
                                        a.m("BillingClient", zza.zza(i4, "trying subs apiVersion: "));
                                        iZzb = bundle == null ? zzarVar.zzb(i4, packageName, BillingClient.ProductType.SUBS) : zzarVar.zzc(i4, packageName, BillingClient.ProductType.SUBS, bundle);
                                        if (iZzb == 0) {
                                            a.m("BillingClient", zza.zza(i4, "highestLevelSupportedForSubs: "));
                                            break;
                                        }
                                        i4--;
                                    } catch (Exception e14) {
                                        zzbzVar.zzm(e14, z);
                                    }
                                }
                                BillingClientImpl billingClientImpl4 = zzbzVar.zza;
                                billingClientImpl4.zzl = i4 >= 5;
                                billingClientImpl4.zzk = i4 >= 3;
                                if (i4 < 3) {
                                    zzjsVar2 = zzjs.SUBSCRIPTIONS_NOT_SUPPORTED;
                                    a.m("BillingClient", "In-app billing API does not support subscription on this device.");
                                }
                                for (int i5 = 29; i5 >= 3; i5--) {
                                    a.m("BillingClient", zza.zza(i5, "trying inapp apiVersion: "));
                                    iZzb = bundle == null ? zzarVar.zzb(i5, packageName, BillingClient.ProductType.INAPP) : zzarVar.zzc(i5, packageName, BillingClient.ProductType.INAPP, bundle);
                                    if (iZzb == 0) {
                                        billingClientImpl4.zzm = i5;
                                        a.m("BillingClient", "mHighestLevelSupportedForInApp: " + billingClientImpl4.zzm);
                                        break;
                                    }
                                }
                                BillingClientImpl.zzat(billingClientImpl4, billingClientImpl4.zzm);
                                if (billingClientImpl4.zzm < 3) {
                                    zzjs zzjsVar3 = zzjs.ONE_TIME_PRODUCT_NOT_SUPPORTED;
                                    a.n("BillingClient", "In-app billing API version 3 is not supported on this device.");
                                    zzjsVar = zzjsVar3;
                                } else {
                                    zzjsVar = zzjsVar2;
                                }
                                BillingClientImpl.zzav(billingClientImpl4, iZzb);
                                if (iZzb == 0) {
                                    zzbzVar.zzj(z, 0);
                                    zzbzVar.zzk(zzdh.zzi);
                                } else {
                                    BillingResult billingResult = zzdh.zzb;
                                    zzbzVar.zzi(billingResult, zzjsVar, null, z, 0);
                                    zzbzVar.zzk(billingResult);
                                }
                            }
                        } catch (Exception e15) {
                            zzbzVar.zzm(e15, z);
                        }
                        return null;
                    }
                    BillingClientImpl billingClientImpl5 = zzbzVar.zza;
                    billingClientImpl5.zzbs(0);
                    int i6 = zzbzVar.zze;
                    zzjs zzjsVar4 = zzjs.SERVICE_RESET_TO_NULL;
                    BillingResult billingResult2 = zzdh.zzj;
                    billingClientImpl5.zzbr(zzjsVar4, billingResult2, i6);
                    zzbzVar.zzk(billingResult2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return null;
    }

    public static void zzb(zzbz zzbzVar) {
        BillingClientImpl billingClientImpl = zzbzVar.zza;
        billingClientImpl.zzbs(0);
        zzjs zzjsVar = zzjs.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbr(zzjsVar, billingResult, zzbzVar.zze);
        zzbzVar.zzk(billingResult);
    }

    @Nullable
    private final Long zzh(boolean z) {
        try {
            if (z) {
                synchronized (this.zza.zza) {
                    try {
                        d6f d6fVar = this.zzc;
                        if (!d6fVar.g()) {
                            return null;
                        }
                        d6fVar.f();
                        return Long.valueOf(d6fVar.a(TimeUnit.MILLISECONDS));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            synchronized (this.zza.zza) {
                try {
                    d6f d6fVar2 = this.zzd;
                    if (!d6fVar2.g()) {
                        return null;
                    }
                    d6fVar2.f();
                    return Long.valueOf(d6fVar2.a(TimeUnit.MILLISECONDS));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            a.o("BillingClient", "Exception getting connection establishment duration.", th3);
        }
        a.o("BillingClient", "Exception getting connection establishment duration.", th3);
        return null;
    }

    public final void zzi(BillingResult billingResult, zzjs zzjsVar, @Nullable String str, boolean z, int i) {
        try {
            p5j p5jVarZ = v5j.z();
            p5jVarZ.o(billingResult.getResponseCode());
            p5jVarZ.k(billingResult.getDebugMessage());
            p5jVarZ.n(zzjsVar);
            p5jVarZ.l(i);
            if (str != null) {
                p5jVarZ.j(str);
            }
            Long lZzh = zzh(z);
            if (!z) {
                w8j w8jVarY = a9j.y();
                w8jVarY.j(p5jVarZ);
                if (lZzh != null) {
                    w8jVarY.k(lZzh.longValue());
                }
                this.zza.zzh.zzm((a9j) w8jVarY.f());
                return;
            }
            l9j l9jVarY = p9j.y();
            int i2 = this.zze;
            l9jVarY.j(i2 > 0);
            l9jVarY.k(i2);
            l9jVarY.m(i);
            if (lZzh != null) {
                l9jVarY.l(lZzh.longValue());
            }
            BillingClientImpl billingClientImpl = this.zza;
            c5j c5jVarB = f5j.B();
            c5jVarB.k(p5jVarZ);
            c5jVarB.o(6);
            c5jVarB.n(l9jVarY);
            billingClientImpl.zzbo((f5j) c5jVarB.f());
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzj(boolean z, int i) {
        try {
            Long lZzh = zzh(z);
            if (!z) {
                w8j w8jVarY = a9j.y();
                p5j p5jVarZ = v5j.z();
                p5jVarZ.o(0);
                p5jVarZ.l(i);
                w8jVarY.j(p5jVarZ);
                if (lZzh != null) {
                    w8jVarY.k(lZzh.longValue());
                }
                this.zza.zzh.zzm((a9j) w8jVarY.f());
                return;
            }
            j5j j5jVarZ = n5j.z();
            j5jVarZ.n(6);
            l9j l9jVarY = p9j.y();
            int i2 = this.zze;
            l9jVarY.j(i2 > 0);
            l9jVarY.k(i2);
            l9jVarY.m(i);
            if (lZzh != null) {
                l9jVarY.l(lZzh.longValue());
            }
            BillingClientImpl billingClientImpl = this.zza;
            j5jVarZ.m(l9jVarY);
            billingClientImpl.zzbq((n5j) j5jVarZ.f());
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
    }

    public final void zzk(BillingResult billingResult) {
        BillingClientImpl billingClientImpl = this.zza;
        synchronized (billingClientImpl.zza) {
            try {
                if (billingClientImpl.zzb == 3) {
                    return;
                }
                try {
                    this.zzb.onBillingSetupFinished(billingResult);
                } catch (Throwable th) {
                    a.o("BillingClient", "Exception while calling onBillingSetupFinished.", th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void zzl(Exception exc, boolean z, int i) {
        zzjs zzjsVar;
        a.o("BillingClient", "Exception while invoking initialize AIDL method", exc);
        if (exc instanceof DeadObjectException) {
            zzjsVar = zzjs.INITIALIZE_DEAD_OBJECT_EXCEPTION;
        } else if (exc instanceof RemoteException) {
            zzjsVar = zzjs.INITIALIZE_REMOTE_EXCEPTION;
        } else {
            zzjsVar = exc instanceof SecurityException ? zzjs.INITIALIZE_SECURITY_EXCEPTION : zzjs.INITIALIZE_SERVICE_CALL_EXCEPTION;
        }
        zzjs zzjsVar2 = zzjsVar;
        String strZza = zzdc.zza(exc);
        this.zza.zzbs(0);
        zzi(BillingClientImpl.zzn(exc), zzjsVar2, strZza, z, i);
        zzk(BillingClientImpl.zzn(exc));
    }

    private final void zzm(Exception exc, boolean z) {
        zzjs zzjsVar;
        a.o("BillingClient", "Exception while checking if billing is supported; try to reconnect", exc);
        if (exc instanceof DeadObjectException) {
            zzjsVar = zzjs.IS_BILLING_SUPPORTED_DEAD_OBJECT_EXCEPTION;
        } else if (exc instanceof RemoteException) {
            zzjsVar = zzjs.IS_BILLING_SUPPORTED_REMOTE_EXCEPTION;
        } else {
            zzjsVar = exc instanceof SecurityException ? zzjs.IS_BILLING_SUPPORTED_SECURITY_EXCEPTION : zzjs.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION;
        }
        zzjs zzjsVar2 = zzjsVar;
        String strZza = zzjsVar2.equals(zzjs.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION) ? zzdc.zza(exc) : null;
        this.zza.zzbs(0);
        zzi(BillingClientImpl.zzn(exc), zzjsVar2, strZza, z, 0);
        zzk(BillingClientImpl.zzn(exc));
    }

    @Override
    public final void onBindingDied(ComponentName componentName) {
        a.n("BillingClient", "Billing service died.");
        try {
            BillingClientImpl billingClientImpl = this.zza;
            if (BillingClientImpl.zzaz(billingClientImpl)) {
                zzdd zzddVar = billingClientImpl.zzh;
                c5j c5jVarB = f5j.B();
                c5jVarB.o(6);
                p5j p5jVarZ = v5j.z();
                p5jVarZ.n(zzjs.BINDING_DIED);
                c5jVarB.k(p5jVarZ);
                l9j l9jVarY = p9j.y();
                int i = this.zze;
                l9jVarY.j(i > 0);
                l9jVarY.k(i);
                c5jVarB.n(l9jVarY);
                zzddVar.zza((f5j) c5jVarB.f());
            } else {
                billingClientImpl.zzh.zzi(b6j.z());
            }
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
        BillingClientImpl billingClientImpl2 = this.zza;
        synchronized (billingClientImpl2.zza) {
            if (billingClientImpl2.zzb != 3 && billingClientImpl2.zzb != 0) {
                billingClientImpl2.zzbs(0);
                billingClientImpl2.zzbv();
                try {
                    this.zzb.onBillingServiceDisconnected();
                } catch (Throwable th2) {
                    a.o("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            }
        }
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        a.m("BillingClient", "Billing service connected.");
        BillingClientImpl billingClientImpl = this.zza;
        synchronized (billingClientImpl.zza) {
            try {
                if (billingClientImpl.zzb == 3) {
                    return;
                }
                billingClientImpl.zzi = com.google.android.gms.internal.play_billing.zzaq.zzu(iBinder);
                if (BillingClientImpl.zzP(new Callable() {
                    @Override
                    public final Object call() {
                        zzbz.zza(this.zza);
                        return null;
                    }
                }, 30000L, new Runnable() {
                    @Override
                    public final void run() {
                        zzbz.zzb(this.zza);
                    }
                }, billingClientImpl.zzaE(), billingClientImpl.zzO()) == null) {
                    int i = this.zze;
                    BillingResult billingResultZzaH = billingClientImpl.zzaH();
                    billingClientImpl.zzbr(zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, billingResultZzaH, i);
                    zzk(billingResultZzaH);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        a.n("BillingClient", "Billing service disconnected.");
        try {
            BillingClientImpl billingClientImpl = this.zza;
            if (BillingClientImpl.zzaz(billingClientImpl)) {
                zzdd zzddVar = billingClientImpl.zzh;
                c5j c5jVarB = f5j.B();
                c5jVarB.o(6);
                p5j p5jVarZ = v5j.z();
                p5jVarZ.n(zzjs.SERVICE_DISCONNECTED);
                c5jVarB.k(p5jVarZ);
                l9j l9jVarY = p9j.y();
                int i = this.zze;
                l9jVarY.j(i > 0);
                l9jVarY.k(i);
                c5jVarB.n(l9jVarY);
                zzddVar.zza((f5j) c5jVarB.f());
            } else {
                billingClientImpl.zzh.zzn(i9j.z());
            }
        } catch (Throwable th) {
            a.o("BillingClient", "Unable to log.", th);
        }
        BillingClientImpl billingClientImpl2 = this.zza;
        synchronized (billingClientImpl2.zza) {
            try {
                if (zzdq.zzi()) {
                    if (billingClientImpl2.zzb != 3 && billingClientImpl2.zzb != 0) {
                        d6f d6fVar = this.zzd;
                        d6fVar.d();
                        d6fVar.e();
                    }
                    return;
                }
                d6f d6fVar2 = this.zzd;
                d6fVar2.d();
                d6fVar2.e();
                if (billingClientImpl2.zzb == 3) {
                    return;
                }
                billingClientImpl2.zzbs(0);
                try {
                    this.zzb.onBillingServiceDisconnected();
                } catch (Throwable th2) {
                    a.o("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void zzf() {
        synchronized (this.zza.zza) {
            d6f d6fVar = this.zzc;
            d6fVar.d();
            d6fVar.e();
        }
    }

    public final boolean zzg() {
        return this.zze > 0;
    }
}
