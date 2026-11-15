package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zziz;
import com.google.android.gms.internal.play_billing.zzl;
import java.util.concurrent.Callable;

final class f0 implements ServiceConnection {

    private final Object f18434a = new Object();

    private boolean f18435b = false;

    private j f18436c;

    final i f18437d;

    f0(i iVar, j jVar, e0 e0Var) {
        this.f18437d = iVar;
        this.f18436c = jVar;
    }

    private final void c(n nVar) {
        synchronized (this.f18434a) {
            try {
                j jVar = this.f18436c;
                if (jVar != null) {
                    jVar.a(nVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    final Object a() {
        Bundle bundle;
        int i10;
        int iZzv;
        synchronized (this.f18434a) {
            try {
                if (!this.f18435b) {
                    if (TextUtils.isEmpty(null)) {
                        bundle = null;
                    } else {
                        bundle = new Bundle();
                        bundle.putString("accountName", null);
                    }
                    int i11 = 3;
                    try {
                        String packageName = this.f18437d.f18448e.getPackageName();
                        iZzv = 3;
                        int i12 = 21;
                        while (true) {
                            if (i12 < 3) {
                                i12 = 0;
                                break;
                            }
                            if (bundle == null) {
                                try {
                                    iZzv = this.f18437d.f18450g.zzv(i12, packageName, "subs");
                                } catch (Exception e10) {
                                    e = e10;
                                    i11 = iZzv;
                                    zzb.zzl("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                                    this.f18437d.f18444a = 0;
                                    this.f18437d.f18450g = null;
                                    i10 = 42;
                                    iZzv = i11;
                                }
                            } else {
                                iZzv = this.f18437d.f18450g.zzc(i12, packageName, "subs", bundle);
                            }
                            if (iZzv == 0) {
                                zzb.zzj("BillingClient", "highestLevelSupportedForSubs: " + i12);
                                break;
                            }
                            i12--;
                        }
                        boolean z10 = true;
                        this.f18437d.f18453j = i12 >= 5;
                        this.f18437d.f18452i = i12 >= 3;
                        if (i12 < 3) {
                            zzb.zzj("BillingClient", "In-app billing API does not support subscription on this device.");
                            i10 = 9;
                        } else {
                            i10 = 1;
                        }
                        for (int i13 = 21; i13 >= 3; i13--) {
                            iZzv = bundle == null ? this.f18437d.f18450g.zzv(i13, packageName, "inapp") : this.f18437d.f18450g.zzc(i13, packageName, "inapp", bundle);
                            if (iZzv == 0) {
                                this.f18437d.f18454k = i13;
                                zzb.zzj("BillingClient", "mHighestLevelSupportedForInApp: " + this.f18437d.f18454k);
                                break;
                            }
                        }
                        i iVar = this.f18437d;
                        iVar.f18467x = iVar.f18454k >= 21;
                        i iVar2 = this.f18437d;
                        iVar2.f18466w = iVar2.f18454k >= 20;
                        i iVar3 = this.f18437d;
                        iVar3.f18465v = iVar3.f18454k >= 19;
                        i iVar4 = this.f18437d;
                        iVar4.f18464u = iVar4.f18454k >= 18;
                        i iVar5 = this.f18437d;
                        iVar5.f18463t = iVar5.f18454k >= 17;
                        i iVar6 = this.f18437d;
                        iVar6.f18462s = iVar6.f18454k >= 16;
                        i iVar7 = this.f18437d;
                        iVar7.f18461r = iVar7.f18454k >= 15;
                        i iVar8 = this.f18437d;
                        iVar8.f18460q = iVar8.f18454k >= 14;
                        i iVar9 = this.f18437d;
                        iVar9.f18459p = iVar9.f18454k >= 12;
                        i iVar10 = this.f18437d;
                        iVar10.f18458o = iVar10.f18454k >= 10;
                        i iVar11 = this.f18437d;
                        iVar11.f18457n = iVar11.f18454k >= 9;
                        i iVar12 = this.f18437d;
                        iVar12.f18456m = iVar12.f18454k >= 8;
                        i iVar13 = this.f18437d;
                        if (iVar13.f18454k < 6) {
                            z10 = false;
                        }
                        iVar13.f18455l = z10;
                        if (this.f18437d.f18454k < 3) {
                            zzb.zzk("BillingClient", "In-app billing API version 3 is not supported on this device.");
                            i10 = 36;
                        }
                        if (iZzv == 0) {
                            this.f18437d.f18444a = 2;
                            if (this.f18437d.f18447d != null) {
                                q1 q1Var = this.f18437d.f18447d;
                                this.f18437d.f18448e.getPackageName();
                                q1Var.e(false);
                            }
                        } else {
                            this.f18437d.f18444a = 0;
                            this.f18437d.f18450g = null;
                        }
                    } catch (Exception e11) {
                        e = e11;
                    }
                    if (iZzv == 0) {
                        this.f18437d.f18449f.c(m0.b(6));
                        c(p0.f18511l);
                    } else {
                        n0 n0Var = this.f18437d.f18449f;
                        n nVar = p0.f18500a;
                        n0Var.a(m0.a(i10, 6, nVar));
                        c(nVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return null;
    }

    final void b() {
        this.f18437d.f18444a = 0;
        this.f18437d.f18450g = null;
        n0 n0Var = this.f18437d.f18449f;
        n nVar = p0.f18513n;
        n0Var.a(m0.a(24, 6, nVar));
        c(nVar);
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzb.zzj("BillingClient", "Billing service connected.");
        this.f18437d.f18450g = zzl.zzr(iBinder);
        Callable callable = new Callable() {
            @Override
            public final Object call() {
                this.f18430a.a();
                return null;
            }
        };
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.zza.b();
            }
        };
        i iVar = this.f18437d;
        if (iVar.K(callable, 30000L, runnable, iVar.F()) == null) {
            i iVar2 = this.f18437d;
            n nVarI = iVar2.I();
            iVar2.f18449f.a(m0.a(25, 6, nVarI));
            c(nVarI);
        }
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        zzb.zzk("BillingClient", "Billing service disconnected.");
        this.f18437d.f18449f.b(zziz.zzw());
        this.f18437d.f18450g = null;
        this.f18437d.f18444a = 0;
        synchronized (this.f18434a) {
            try {
                j jVar = this.f18436c;
                if (jVar != null) {
                    jVar.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
