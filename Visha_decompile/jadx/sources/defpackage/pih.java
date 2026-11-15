package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbh;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.i4;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbdd;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;
import defpackage.goh;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

public final class pih implements c5h {
    public final Context a;
    public final Executor b;
    public final lkf c;
    public final k4h d;
    public final o4h e;
    public final ViewGroup f;
    public zzbdd g;
    public final i4 h;
    public final zzfgq i;
    public final j5g j;
    public final cnh k;
    public im5 l;
    public boolean m;
    public zze n;
    public b5h o;

    public pih(Context context, Executor executor, zzr zzrVar, lkf lkfVar, k4h k4hVar, o4h o4hVar, cnh cnhVar, j5g j5gVar) {
        this.a = context;
        this.b = executor;
        this.c = lkfVar;
        this.d = k4hVar;
        this.e = o4hVar;
        this.k = cnhVar;
        this.h = lkfVar.j();
        this.i = lkfVar.C();
        this.f = new FrameLayout(context);
        this.j = j5gVar;
        cnhVar.O(zzrVar);
        this.m = true;
        this.n = null;
        this.o = null;
    }

    @Override
    public final boolean a(zzm zzmVar, String str, a5h a5hVar, b5h b5hVar) {
        atf atfVarZzk;
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            zzo.zzg("Ad unit ID should not be null for banner ad.");
            this.b.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.d.A(goh.d(6, null, null));
                }
            });
            return false;
        }
        if (!zza()) {
            if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue() && zzmVar.zzf) {
                this.c.p().p(true);
            }
            Bundle bundleA = bmg.a(new Pair(zzdqm.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzdqm.DYNAMITE_ENTER.zza(), Long.valueOf(zzv.zzC().currentTimeMillis())));
            cnh cnhVar = this.k;
            cnhVar.P(str);
            cnhVar.h(zzmVar);
            cnhVar.a(bundleA);
            Context context = this.a;
            enh enhVarJ = cnhVar.j();
            wrh wrhVarB = vrh.b(context, gsh.f(enhVarJ), 3, zzmVar);
            zzfgn zzfgnVarE = null;
            if (!((Boolean) f0f.d.e()).booleanValue() || !cnhVar.D().zzk) {
                if (((Boolean) zzbd.zzc().b(cye.l8)).booleanValue()) {
                    zsf zsfVarI = this.c.i();
                    pyf pyfVar = new pyf();
                    pyfVar.f(context);
                    pyfVar.k(enhVarJ);
                    zsfVarI.k(pyfVar.l());
                    b6g b6gVar = new b6g();
                    k4h k4hVar = this.d;
                    Executor executor = this.b;
                    b6gVar.m(k4hVar, executor);
                    b6gVar.n(k4hVar, executor);
                    zsfVarI.f(b6gVar.q());
                    zsfVarI.j(new w2h(this.g));
                    zsfVarI.d(new lbg(sdg.h, null));
                    zsfVarI.p(new qtf(this.h, this.j));
                    zsfVarI.c(new prf(this.f));
                    atfVarZzk = zsfVarI.zzh();
                } else {
                    zsf zsfVarI2 = this.c.i();
                    pyf pyfVar2 = new pyf();
                    pyfVar2.f(context);
                    pyfVar2.k(enhVarJ);
                    zsfVarI2.k(pyfVar2.l());
                    b6g b6gVar2 = new b6g();
                    k4h k4hVar2 = this.d;
                    Executor executor2 = this.b;
                    b6gVar2.m(k4hVar2, executor2);
                    b6gVar2.d(k4hVar2, executor2);
                    b6gVar2.d(this.e, executor2);
                    b6gVar2.o(k4hVar2, executor2);
                    b6gVar2.g(k4hVar2, executor2);
                    b6gVar2.h(k4hVar2, executor2);
                    b6gVar2.i(k4hVar2, executor2);
                    b6gVar2.e(k4hVar2, executor2);
                    b6gVar2.n(k4hVar2, executor2);
                    b6gVar2.l(k4hVar2, executor2);
                    zsfVarI2.f(b6gVar2.q());
                    zsfVarI2.j(new w2h(this.g));
                    zsfVarI2.d(new lbg(sdg.h, null));
                    zsfVarI2.p(new qtf(this.h, this.j));
                    zsfVarI2.c(new prf(this.f));
                    atfVarZzk = zsfVarI2.zzh();
                }
                if (((Boolean) sze.c.e()).booleanValue()) {
                    zzfgnVarE = atfVarZzk.e();
                    zzfgnVarE.zzi(3);
                    zzfgnVarE.zzb(zzmVar.zzp);
                    zzfgnVarE.zzf(zzmVar.zzm);
                }
                this.o = b5hVar;
                gvf gvfVarC = atfVarZzk.c();
                im5 im5VarH = gvfVarC.h(gvfVarC.i());
                this.l = im5VarH;
                j8.r(im5VarH, new oih(this, zzfgnVarE, wrhVarB, atfVarZzk), this.b);
                return true;
            }
            k4h k4hVar3 = this.d;
            if (k4hVar3 != null) {
                k4hVar3.A(goh.d(7, null, null));
            }
        } else if (!this.k.s()) {
            this.m = true;
        }
        return false;
    }

    public final ViewGroup b() {
        return this.f;
    }

    public final cnh e() {
        return this.k;
    }

    public final void k() {
        this.h.F(this.j.a());
    }

    public final void l() {
        this.h.G(this.j.b());
    }

    public final void m(zzbh zzbhVar) {
        this.e.a(zzbhVar);
    }

    public final void n(d2g d2gVar) {
        this.h.C(d2gVar, this.b);
    }

    public final void o(zzbdd zzbddVar) {
        this.g = zzbddVar;
    }

    public final void p() {
        synchronized (this) {
            try {
                im5 im5Var = this.l;
                if (im5Var != null && im5Var.isDone()) {
                    try {
                        srf srfVar = (srf) this.l.get();
                        this.l = null;
                        ViewGroup viewGroup = this.f;
                        viewGroup.removeAllViews();
                        srfVar.k();
                        ViewParent parent = srfVar.k().getParent();
                        if (parent instanceof ViewGroup) {
                            String str = "Banner view provided from " + (srfVar.c() != null ? srfVar.c().zzg() : "") + " already has a parent view. Removing its old parent.";
                            int i = com.google.android.gms.ads.internal.util.zze.zza;
                            zzo.zzj(str);
                            ((ViewGroup) parent).removeView(srfVar.k());
                        }
                        qxe qxeVar = cye.l8;
                        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
                            b4g b4gVarE = srfVar.e();
                            b4gVarE.a(this.d);
                            b4gVarE.c(this.e);
                        }
                        viewGroup.addView(srfVar.k());
                        b5h b5hVar = this.o;
                        if (b5hVar != null) {
                            b5hVar.zzb(srfVar);
                        }
                        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
                            Executor executor = this.b;
                            final k4h k4hVar = this.d;
                            Objects.requireNonNull(k4hVar);
                            executor.execute(new Runnable() {
                                @Override
                                public final void run() {
                                    k4hVar.zzt();
                                }
                            });
                        }
                        if (srfVar.i() >= 0) {
                            this.m = false;
                            i4 i4Var = this.h;
                            i4Var.F(srfVar.i());
                            i4Var.G(srfVar.j());
                        } else {
                            this.m = true;
                            this.h.F(srfVar.j());
                        }
                    } catch (InterruptedException | ExecutionException e) {
                        s();
                        com.google.android.gms.ads.internal.util.zze.zzb("Error occurred while refreshing the ad. Making a new ad request.", e);
                        this.m = true;
                        this.h.zza();
                    }
                } else if (this.l != null) {
                    com.google.android.gms.ads.internal.util.zze.zza("Show timer went off but there is an ongoing ad request.");
                    this.m = true;
                } else {
                    com.google.android.gms.ads.internal.util.zze.zza("No ad request was in progress or an ad was cached when show timer went off. Hence requesting a new ad.");
                    this.m = true;
                    this.h.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean r() {
        Object parent = this.f.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        zzv.zzq();
        return zzs.zzX(view, view.getContext());
    }

    public final void s() {
        this.l = null;
        final zze zzeVar = this.n;
        this.n = null;
        if (((Boolean) zzbd.zzc().b(cye.l8)).booleanValue() && zzeVar != null) {
            this.b.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.d.A(zzeVar);
                }
            });
        }
        b5h b5hVar = this.o;
        if (b5hVar != null) {
            b5hVar.zza();
        }
    }

    @Override
    public final boolean zza() {
        im5 im5Var = this.l;
        return (im5Var == null || im5Var.isDone()) ? false : true;
    }
}
