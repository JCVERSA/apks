package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.google.android.gms.ads.internal.client.zzbd;
import com.mgmi.ssp.AdError;
import com.transsion.livecaption.constant.ICode;
import defpackage.are;
import defpackage.ase;
import defpackage.ayh;
import defpackage.cxh;
import defpackage.cye;
import defpackage.esi;
import defpackage.eyh;
import defpackage.fyh;
import defpackage.gyh;
import defpackage.hse;
import defpackage.jxh;
import defpackage.mre;
import defpackage.ose;
import defpackage.owh;
import defpackage.qxh;
import defpackage.rwh;
import defpackage.swh;
import defpackage.twh;
import defpackage.uwh;
import defpackage.yqe;
import defpackage.zqe;
import defpackage.zre;
import defpackage.zxh;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class c0 implements are {
    public static c0 s;
    public final Context b;
    public final ayh c;
    public final fyh d;
    public final gyh e;
    public final ase f;
    public final rwh g;
    public final Executor h;
    public final eyh i;
    public final ose k;
    public final hse l;
    public final zre m;
    public volatile boolean p;
    public volatile boolean q;
    public final int r;
    public volatile long n = 0;
    public final Object o = new Object();
    public final CountDownLatch j = new CountDownLatch(1);

    public c0(Context context, rwh rwhVar, ayh ayhVar, fyh fyhVar, gyh gyhVar, ase aseVar, Executor executor, owh owhVar, int i, ose oseVar, hse hseVar, zre zreVar) {
        this.q = false;
        this.b = context;
        this.g = rwhVar;
        this.c = ayhVar;
        this.d = fyhVar;
        this.e = gyhVar;
        this.f = aseVar;
        this.h = executor;
        this.r = i;
        this.k = oseVar;
        this.l = hseVar;
        this.m = zreVar;
        this.q = false;
        this.i = new zqe(this, owhVar);
    }

    public static synchronized c0 a(Context context, e eVar, boolean z) {
        swh swhVarC;
        swhVarC = twh.c();
        swhVarC.a(eVar.f0());
        swhVarC.g(eVar.i0());
        return j(context, Executors.newCachedThreadPool(), swhVarC.h(), z);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d6 A[Catch: all -> 0x009e, zzgyk -> 0x00a1, TryCatch #0 {zzgyk -> 0x00a1, blocks: (B:6:0x0021, B:8:0x0033, B:12:0x0039, B:13:0x0045, B:15:0x0053, B:17:0x0061, B:20:0x006e, B:32:0x00a4, B:36:0x00bd, B:42:0x00d6, B:43:0x00e3, B:45:0x00e9, B:47:0x00f1, B:48:0x00f3, B:39:0x00c7, B:40:0x00ce, B:23:0x0075, B:25:0x008b, B:49:0x00fd, B:50:0x010a, B:51:0x0117), top: B:58:0x0021, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00fd A[Catch: all -> 0x009e, zzgyk -> 0x00a1, TryCatch #0 {zzgyk -> 0x00a1, blocks: (B:6:0x0021, B:8:0x0033, B:12:0x0039, B:13:0x0045, B:15:0x0053, B:17:0x0061, B:20:0x006e, B:32:0x00a4, B:36:0x00bd, B:42:0x00d6, B:43:0x00e3, B:45:0x00e9, B:47:0x00f1, B:48:0x00f3, B:39:0x00c7, B:40:0x00ce, B:23:0x0075, B:25:0x008b, B:49:0x00fd, B:50:0x010a, B:51:0x0117), top: B:58:0x0021, outer: #2 }] */
    public static void e(c0 c0Var) {
        String str;
        String strJ0;
        int length;
        boolean zA;
        long jCurrentTimeMillis = System.currentTimeMillis();
        zxh zxhVarL = c0Var.l(1);
        if (zxhVarL != null) {
            String strK0 = zxhVarL.a().k0();
            strJ0 = zxhVarL.a().j0();
            str = strK0;
        } else {
            str = null;
            strJ0 = null;
        }
        try {
            try {
                Context context = c0Var.b;
                int i = c0Var.r;
                rwh rwhVar = c0Var.g;
                zzfoi zzfoiVarA = cxh.a(context, 1, i, str, strJ0, "1", rwhVar);
                byte[] bArr = zzfoiVarA.zzb;
                if (bArr == null || (length = bArr.length) == 0) {
                    rwhVar.d(5009, System.currentTimeMillis() - jCurrentTimeMillis);
                } else {
                    try {
                        h0 h0VarC0 = h0.c0(zzgwn.zzv(bArr, 0, length), esi.a());
                        if (h0VarC0.d0().k0().isEmpty() || h0VarC0.d0().j0().isEmpty() || h0VarC0.e0().zzA().length == 0) {
                            c0Var.g.d(ICode.BUSINESSES.ACTION_INIT_SUBTITLE, System.currentTimeMillis() - jCurrentTimeMillis);
                        } else {
                            zxh zxhVarL2 = c0Var.l(1);
                            if (zxhVarL2 != null) {
                                i0 i0VarA = zxhVarL2.a();
                                if (h0VarC0.d0().k0().equals(i0VarA.k0()) && h0VarC0.d0().j0().equals(i0VarA.j0())) {
                                    c0Var.g.d(ICode.BUSINESSES.ACTION_INIT_SUBTITLE, System.currentTimeMillis() - jCurrentTimeMillis);
                                }
                            }
                            eyh eyhVar = c0Var.i;
                            int i2 = zzfoiVarA.zzc;
                            if (!((Boolean) zzbd.zzc().b(cye.A2)).booleanValue()) {
                                zA = c0Var.c.a(h0VarC0, eyhVar);
                            } else if (i2 == 3) {
                                zA = c0Var.d.a(h0VarC0);
                            } else if (i2 == 4) {
                                zA = c0Var.d.b(h0VarC0, eyhVar);
                            } else {
                                c0Var.g.d(TaErrorCode.CODE_AD_SHOW_NOT_IN_INTERVAL, System.currentTimeMillis() - jCurrentTimeMillis);
                            }
                            if (zA) {
                                zxh zxhVarL3 = c0Var.l(1);
                                if (zxhVarL3 != null) {
                                    if (c0Var.e.c(zxhVarL3)) {
                                        c0Var.q = true;
                                    }
                                    c0Var.n = System.currentTimeMillis() / 1000;
                                }
                            } else {
                                c0Var.g.d(TaErrorCode.CODE_AD_SHOW_NOT_IN_INTERVAL, System.currentTimeMillis() - jCurrentTimeMillis);
                            }
                        }
                    } catch (NullPointerException unused) {
                        c0Var.g.d(2030, System.currentTimeMillis() - jCurrentTimeMillis);
                    }
                }
            } catch (zzgyk e) {
                c0Var.g.c(4002, System.currentTimeMillis() - jCurrentTimeMillis, e);
            }
        } finally {
            c0Var.j.countDown();
        }
    }

    public static synchronized c0 j(Context context, Executor executor, twh twhVar, boolean z) {
        try {
            if (s == null) {
                rwh rwhVarA = rwh.a(context, executor, z);
                mre mreVarC = ((Boolean) zzbd.zzc().b(cye.D3)).booleanValue() ? mre.c(context) : null;
                ose oseVarD = ((Boolean) zzbd.zzc().b(cye.E3)).booleanValue() ? ose.d(context, executor) : null;
                hse hseVar = ((Boolean) zzbd.zzc().b(cye.S2)).booleanValue() ? new hse() : null;
                zre zreVar = ((Boolean) zzbd.zzc().b(cye.a3)).booleanValue() ? new zre() : null;
                jxh jxhVarC = jxh.c(context, executor, rwhVarA, twhVar);
                zzavu zzavuVar = new zzavu(context);
                ase aseVar = new ase(twhVar, jxhVarC, new f0(context, zzavuVar), zzavuVar, mreVarC, oseVarD, hseVar, zreVar);
                int iB = qxh.b(context, rwhVarA);
                owh owhVar = new owh();
                c0 c0Var = new c0(context, rwhVarA, new ayh(context, iB), new fyh(context, iB, new yqe(rwhVarA), ((Boolean) zzbd.zzc().b(cye.C2)).booleanValue()), new gyh(context, aseVar, rwhVarA, owhVar), aseVar, executor, owhVar, iB, oseVarD, hseVar, zreVar);
                s = c0Var;
                c0Var.f();
                s.g();
            }
        } catch (Throwable th) {
            throw th;
        }
        return s;
    }

    public final synchronized void f() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        zxh zxhVarL = l(1);
        if (zxhVarL == null) {
            this.g.d(AdError.ERROR_REASON_ANDROID_SDK_NOT_SUPPORT, System.currentTimeMillis() - jCurrentTimeMillis);
        } else if (this.e.c(zxhVarL)) {
            this.q = true;
            this.j.countDown();
        }
    }

    public final void g() {
        if (this.p) {
            return;
        }
        synchronized (this.o) {
            try {
                if (!this.p) {
                    if ((System.currentTimeMillis() / 1000) - this.n < 3600) {
                        return;
                    }
                    zxh zxhVarB = this.e.b();
                    if ((zxhVarB == null || zxhVarB.d(3600L)) && qxh.a(this.r)) {
                        this.h.execute(new zzaup(this));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized boolean i() {
        return this.q;
    }

    public final void k() {
        ose oseVar = this.k;
        if (oseVar != null) {
            oseVar.h();
        }
    }

    public final zxh l(int i) {
        if (qxh.a(this.r)) {
            return ((Boolean) zzbd.zzc().b(cye.A2)).booleanValue() ? this.d.c(1) : this.c.c(1);
        }
        return null;
    }

    @Override
    public final String zzd(Context context, String str, View view) {
        return zze(context, str, view, null);
    }

    @Override
    public final String zze(Context context, String str, View view, Activity activity) {
        k();
        if (((Boolean) zzbd.zzc().b(cye.S2)).booleanValue()) {
            this.l.i();
        }
        g();
        uwh uwhVarA = this.e.a();
        if (uwhVarA == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strD = uwhVarA.d(context, null, str, view, activity);
        this.g.f(5000, System.currentTimeMillis() - jCurrentTimeMillis, strD, null);
        return strD;
    }

    @Override
    public final String zzf(Context context) {
        k();
        if (((Boolean) zzbd.zzc().b(cye.S2)).booleanValue()) {
            this.l.j();
        }
        g();
        uwh uwhVarA = this.e.a();
        if (uwhVarA == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strA = uwhVarA.a(context, null);
        this.g.f(5001, System.currentTimeMillis() - jCurrentTimeMillis, strA, null);
        return strA;
    }

    @Override
    public final String zzg(Context context) {
        return "19";
    }

    @Override
    public final String zzh(Context context, View view, Activity activity) {
        k();
        if (((Boolean) zzbd.zzc().b(cye.S2)).booleanValue()) {
            this.l.k(context, view);
        }
        g();
        uwh uwhVarA = this.e.a();
        if (uwhVarA == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strC = uwhVarA.c(context, null, view, activity);
        this.g.f(5002, System.currentTimeMillis() - jCurrentTimeMillis, strC, null);
        return strC;
    }

    @Override
    public final void zzk(MotionEvent motionEvent) {
        uwh uwhVarA = this.e.a();
        if (uwhVarA != null) {
            try {
                uwhVarA.b(null, motionEvent);
            } catch (zzfom e) {
                this.g.c(e.zza(), -1L, e);
            }
        }
    }

    @Override
    public final void zzl(int i, int i2, int i3) {
        DisplayMetrics displayMetrics;
        if (!((Boolean) zzbd.zzc().b(cye.cc)).booleanValue() || (displayMetrics = this.b.getResources().getDisplayMetrics()) == null) {
            return;
        }
        float f = i;
        float f2 = displayMetrics.density;
        float f3 = i2;
        MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 0, f * f2, f3 * f2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain);
        motionEventObtain.recycle();
        float f4 = displayMetrics.density;
        MotionEvent motionEventObtain2 = MotionEvent.obtain(0L, 0L, 2, f * f4, f3 * f4, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain2);
        motionEventObtain2.recycle();
        float f5 = displayMetrics.density;
        MotionEvent motionEventObtain3 = MotionEvent.obtain(0L, i3, 1, f * f5, f3 * f5, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzk(motionEventObtain3);
        motionEventObtain3.recycle();
    }

    @Override
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zre zreVar = this.m;
        if (zreVar != null) {
            zreVar.b(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override
    public final void zzo(View view) {
        this.f.a(view);
    }
}
