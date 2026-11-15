package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.collection.ArrayMap;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzdc;
import com.google.android.gms.ads.internal.client.zzdg;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbgi;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbgn;
import com.google.android.gms.internal.ads.zzbgr;
import com.google.android.gms.internal.ads.zzbgu;
import com.google.android.gms.internal.ads.zzbha;
import com.google.android.gms.internal.ads.zzbhh;
import com.google.android.gms.internal.ads.zzbhk;
import com.google.android.gms.internal.ads.zzbhn;
import com.google.android.gms.internal.ads.zzblw;
import com.google.android.gms.internal.ads.zzbmc;
import com.google.android.gms.internal.ads.zzdik;
import com.google.android.gms.internal.ads.zzebw;
import com.google.android.gms.internal.ads.zzebx;
import com.google.android.gms.internal.ads.zzfww;
import defpackage.zcg;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

public final class zcg extends buf {
    public static final int G = 0;
    public final VersionInfoParcel A;
    public final Context B;
    public final bdg C;
    public final n4h D;
    public final Map E;
    public final List F;
    public final Executor j;
    public final ddg k;
    public final ldg l;
    public final ceg m;
    public final idg n;
    public final sdg o;
    public final zxi p;
    public final zxi q;
    public final zxi r;
    public final zxi s;
    public final zxi t;
    public dfg u;
    public boolean v;
    public boolean w;
    public boolean x;
    public final ndf y;
    public final fre z;

    static {
        zzfww.zzs("3010", "3008", "1005", "1009", "2011", "2007");
    }

    public zcg(auf aufVar, Executor executor, ddg ddgVar, ldg ldgVar, ceg cegVar, idg idgVar, sdg sdgVar, zxi zxiVar, zxi zxiVar2, zxi zxiVar3, zxi zxiVar4, zxi zxiVar5, ndf ndfVar, fre freVar, VersionInfoParcel versionInfoParcel, Context context, bdg bdgVar, n4h n4hVar, kue kueVar) {
        super(aufVar);
        this.j = executor;
        this.k = ddgVar;
        this.l = ldgVar;
        this.m = cegVar;
        this.n = idgVar;
        this.o = sdgVar;
        this.p = zxiVar;
        this.q = zxiVar2;
        this.r = zxiVar3;
        this.s = zxiVar4;
        this.t = zxiVar5;
        this.y = ndfVar;
        this.z = freVar;
        this.A = versionInfoParcel;
        this.B = context;
        this.C = bdgVar;
        this.D = n4hVar;
        this.E = new HashMap();
        this.F = new ArrayList();
    }

    public static boolean G(View view) {
        if (!((Boolean) zzbd.zzc().b(cye.Ja)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), new Point());
        }
        zzv.zzq();
        long jZzx = zzs.zzx(view);
        if (view.isShown() && view.getGlobalVisibleRect(new Rect(), new Point())) {
            if (jZzx >= ((Integer) zzbd.zzc().b(cye.Ka)).intValue()) {
                return true;
            }
        }
        return false;
    }

    public static void X(zcg zcgVar, boolean z) {
        dfg dfgVar = zcgVar.u;
        if (dfgVar != null) {
            zcgVar.l.c(null, dfgVar.zzf(), zcgVar.u.zzl(), zcgVar.u.zzm(), z, zcgVar.J(), 0);
        } else {
            int i = zze.zza;
            zzo.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        }
    }

    public static void Y(zcg zcgVar) {
        try {
            ddg ddgVar = zcgVar.k;
            int iP = ddgVar.P();
            if (iP == 1) {
                zzbgu zzbguVarB = zcgVar.o.b();
                if (zzbguVarB != null) {
                    zcgVar.K("Google", true);
                    zzbguVarB.zze((zzbgk) zcgVar.p.zzb());
                    return;
                }
                return;
            }
            if (iP == 2) {
                zzbgr zzbgrVarA = zcgVar.o.a();
                if (zzbgrVarA != null) {
                    zcgVar.K("Google", true);
                    zzbgrVarA.zze((zzbgi) zcgVar.q.zzb());
                    return;
                }
                return;
            }
            if (iP == 3) {
                zzbha zzbhaVarD = zcgVar.o.d(ddgVar.a());
                if (zzbhaVarD != null) {
                    if (ddgVar.f0() != null) {
                        zcgVar.S("Google", true);
                    }
                    zzbhaVarD.zze((zzbgn) zcgVar.t.zzb());
                    return;
                }
                return;
            }
            if (iP == 6) {
                zzbhh zzbhhVarF = zcgVar.o.f();
                if (zzbhhVarF != null) {
                    zcgVar.K("Google", true);
                    zzbhhVarF.zze((zzbhn) zcgVar.r.zzb());
                    return;
                }
                return;
            }
            if (iP != 7) {
                int i = zze.zza;
                zzo.zzg("Wrong native template id!");
            } else {
                zzbmc zzbmcVarG = zcgVar.o.g();
                if (zzbmcVarG != null) {
                    zzbmcVarG.zzg((zzblw) zcgVar.s.zzb());
                }
            }
        } catch (RemoteException e) {
            int i2 = zze.zza;
            zzo.zzh("RemoteException when notifyAdLoad is called", e);
        }
    }

    public static void Z(zcg zcgVar, View view, boolean z, int i) {
        dfg dfgVar = zcgVar.u;
        if (dfgVar != null) {
            zcgVar.l.c(view, dfgVar.zzf(), zcgVar.u.zzl(), zcgVar.u.zzm(), z, zcgVar.J(), i);
        } else {
            int i2 = zze.zza;
            zzo.zze("Ad should be associated with an ad view before calling performClickForCustomGesture()");
        }
    }

    public static void a0(zcg zcgVar) {
        zcgVar.l.zzk();
        zcgVar.k.i();
    }

    public final synchronized void A(final dfg dfgVar) {
        if (((Boolean) zzbd.zzc().b(cye.U1)).booleanValue()) {
            zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    this.zza.N(dfgVar);
                }
            });
        } else {
            N(dfgVar);
        }
    }

    public final synchronized void B(final dfg dfgVar) {
        if (((Boolean) zzbd.zzc().b(cye.U1)).booleanValue()) {
            zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    this.zza.O(dfgVar);
                }
            });
        } else {
            O(dfgVar);
        }
    }

    public final boolean C() {
        return this.n.e();
    }

    public final synchronized boolean D() {
        return this.l.b();
    }

    public final synchronized boolean E() {
        return this.l.zzD();
    }

    public final boolean F() {
        return this.n.d();
    }

    public final synchronized boolean H(Bundle bundle) {
        if (this.w) {
            return true;
        }
        boolean zF = this.l.f(bundle);
        this.w = zF;
        return zF;
    }

    public final synchronized int I() {
        return this.l.zza();
    }

    public final synchronized ImageView.ScaleType J() {
        dfg dfgVar = this.u;
        if (dfgVar == null) {
            int i = zze.zza;
            zzo.zze("Ad should be associated with an ad view before calling getMediaviewScaleType()");
            return null;
        }
        IObjectWrapper iObjectWrapperZzj = dfgVar.zzj();
        if (iObjectWrapperZzj != null) {
            return (ImageView.ScaleType) ObjectWrapper.unwrap(iObjectWrapperZzj);
        }
        return ceg.k;
    }

    public final void K(String str, boolean z) {
        if (!((Boolean) zzbd.zzc().b(cye.t5)).booleanValue()) {
            S("Google", true);
            return;
        }
        im5 im5VarJ0 = this.k.j0();
        if (im5VarJ0 == null) {
            return;
        }
        j8.r(im5VarJ0, new xcg(this, "Google", true), this.j);
    }

    public final synchronized void L(View view, Map map, Map map2) {
        this.m.d(this.u);
        this.l.l(view, map, map2, J());
        this.w = true;
    }

    public final void M(View view, fxg fxgVar) {
        ejf ejfVarE0 = this.k.e0();
        if (!this.n.d() || fxgVar == null || ejfVarE0 == null || view == null) {
            return;
        }
        zzv.zzB().c(fxgVar.a(), view);
    }

    public final synchronized void N(dfg dfgVar) {
        Iterator<String> itKeys;
        View view;
        are areVarC;
        try {
            if (!this.v) {
                this.u = dfgVar;
                this.m.e(dfgVar);
                this.l.e(dfgVar.zzf(), dfgVar.zzm(), dfgVar.zzn(), dfgVar, dfgVar);
                if (((Boolean) zzbd.zzc().b(cye.Q2)).booleanValue() && (areVarC = this.z.c()) != null) {
                    areVarC.zzo(dfgVar.zzf());
                }
                if (((Boolean) zzbd.zzc().b(cye.W1)).booleanValue()) {
                    hmh hmhVar = this.b;
                    if (hmhVar.k0 && (itKeys = hmhVar.j0.keys()) != null) {
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            dfg dfgVar2 = this.u;
                            WeakReference weakReference = dfgVar2 == null ? null : (WeakReference) dfgVar2.zzl().get(next);
                            this.E.put(next, Boolean.FALSE);
                            if (weakReference != null && (view = (View) weakReference.get()) != null) {
                                jue jueVar = new jue(this.B, view);
                                this.F.add(jueVar);
                                jueVar.d(new wcg(this, next));
                            }
                        }
                    }
                }
                if (dfgVar.zzi() != null) {
                    dfgVar.zzi().d(this.y);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void O(dfg dfgVar) {
        this.l.j(dfgVar.zzf(), dfgVar.zzl());
        if (dfgVar.zzh() != null) {
            dfgVar.zzh().setClickable(false);
            dfgVar.zzh().removeAllViews();
        }
        if (dfgVar.zzi() != null) {
            dfgVar.zzi().e(this.y);
        }
        this.u = null;
    }

    public final bdg P() {
        return this.C;
    }

    public final fxg S(String str, boolean z) {
        boolean z2;
        String str2;
        zzebw zzebwVar;
        zzebx zzebxVar;
        String str3;
        idg idgVar = this.n;
        if (idgVar.d() && !TextUtils.isEmpty(str)) {
            ddg ddgVar = this.k;
            ejf ejfVarE0 = ddgVar.e0();
            ejf ejfVarF0 = ddgVar.f0();
            if (ejfVarE0 == null && ejfVarF0 == null) {
                int i = zze.zza;
                zzo.zzj("Omid display and video webview are null. Skipping initialization.");
                return null;
            }
            idgVar.a();
            int iC = idgVar.a().c();
            int i2 = iC - 1;
            boolean z3 = false;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (iC != 1) {
                        str3 = iC != 2 ? "UNKNOWN" : "DISPLAY";
                    } else {
                        str3 = "VIDEO";
                    }
                    int i3 = zze.zza;
                    zzo.zzj("Unknown omid media type: " + str3 + ". Not initializing Omid.");
                    return null;
                }
                if (ejfVarE0 == null) {
                    int i4 = zze.zza;
                    zzo.zzj("Omid media type was display but there was no display webview.");
                    return null;
                }
                z2 = false;
                z3 = true;
            } else if (ejfVarF0 != null) {
                z2 = true;
            } else {
                int i5 = zze.zza;
                zzo.zzj("Omid media type was video but there was no video webview.");
            }
            if (z3) {
                str2 = null;
            } else {
                str2 = "javascript";
                ejfVarE0 = ejfVarF0;
            }
            if (ejfVarE0 == null) {
                int i6 = zze.zza;
                zzo.zzj("Webview is null in InternalNativeAd");
                return null;
            }
            if (!zzv.zzB().a(this.B)) {
                int i7 = zze.zza;
                zzo.zzj("Failed to initialize omid in InternalNativeAd");
                return null;
            }
            VersionInfoParcel versionInfoParcel = this.A;
            String str4 = versionInfoParcel.buddyApkVersion + Consts.DOT + versionInfoParcel.clientJarVersion;
            if (z2) {
                zzebwVar = zzebw.VIDEO;
                zzebxVar = zzebx.DEFINED_BY_JAVASCRIPT;
            } else {
                zzebwVar = zzebw.NATIVE_DISPLAY;
                zzebxVar = ddgVar.P() == 3 ? zzebx.UNSPECIFIED : zzebx.ONE_PIXEL;
            }
            fxg fxgVarF = zzv.zzB().f(str4, ejfVarE0.zzG(), "", "javascript", str2, str, zzebxVar, zzebwVar, this.b.l0);
            if (fxgVarF == null) {
                int i8 = zze.zza;
                zzo.zzj("Failed to create omid session in InternalNativeAd");
                return null;
            }
            ddgVar.w(fxgVarF);
            ejfVarE0.zzat(fxgVarF);
            if (z2) {
                puh puhVarA = fxgVarF.a();
                if (ejfVarF0 != null) {
                    zzv.zzB().c(puhVarA, ejfVarF0.zzF());
                }
                this.x = true;
            }
            if (z) {
                zzv.zzB().h(fxgVarF.a());
                ejfVarE0.zzd("onSdkLoaded", new ArrayMap());
            }
            return fxgVarF;
        }
        return null;
    }

    public final String T() {
        return this.n.b();
    }

    public final synchronized JSONObject V(View view, Map map, Map map2) {
        return this.l.i(view, map, map2, J());
    }

    public final synchronized JSONObject W(View view, Map map, Map map2) {
        return this.l.h(view, map, map2, J());
    }

    @Override
    public final synchronized void a() {
        this.v = true;
        this.j.execute(new Runnable() {
            @Override
            public final void run() {
                zcg.a0(this.zza);
            }
        });
        super.a();
    }

    @Override
    public final void b() {
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                zcg.Y(this.zza);
            }
        };
        Executor executor = this.j;
        executor.execute(runnable);
        if (this.k.P() != 7) {
            final ldg ldgVar = this.l;
            Objects.requireNonNull(ldgVar);
            executor.execute(new Runnable() {
                @Override
                public final void run() {
                    ldgVar.zzr();
                }
            });
        }
        super.b();
    }

    public final void e0(View view) {
        fxg fxgVarH0 = this.k.h0();
        if (!this.n.d() || fxgVarH0 == null || view == null) {
            return;
        }
        zzv.zzB().e(fxgVarH0.a(), view);
    }

    public final synchronized void i() {
        this.l.zzj();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0046 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x0019, B:10:0x001f, B:11:0x0029, B:13:0x002f, B:19:0x0046, B:22:0x005a, B:23:0x0062, B:25:0x0068, B:27:0x007c, B:29:0x0082, B:34:0x0089), top: B:39:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0068 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x0019, B:10:0x001f, B:11:0x0029, B:13:0x002f, B:19:0x0046, B:22:0x005a, B:23:0x0062, B:25:0x0068, B:27:0x007c, B:29:0x0082, B:34:0x0089), top: B:39:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0089 A[Catch: all -> 0x0042, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x0019, B:10:0x001f, B:11:0x0029, B:13:0x002f, B:19:0x0046, B:22:0x005a, B:23:0x0062, B:25:0x0068, B:27:0x007c, B:29:0x0082, B:34:0x0089), top: B:39:0x0001 }] */
    public final synchronized void j(View view, Map map, Map map2, boolean z) {
        Iterator it;
        View view2;
        try {
            if (!this.w) {
                if (((Boolean) zzbd.zzc().b(cye.W1)).booleanValue() && this.b.k0) {
                    Map map3 = this.E;
                    Iterator it2 = map3.keySet().iterator();
                    while (it2.hasNext()) {
                        if (!((Boolean) map3.get((String) it2.next())).booleanValue()) {
                        }
                    }
                    if (!z) {
                        L(view, map, map2);
                        return;
                    }
                    if (((Boolean) zzbd.zzc().b(cye.e4)).booleanValue()) {
                        it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            view2 = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                            if (view2 == null) {
                            }
                        }
                    }
                } else {
                    if (!z) {
                        L(view, map, map2);
                        return;
                    }
                    if (((Boolean) zzbd.zzc().b(cye.e4)).booleanValue() && map != null) {
                        it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            view2 = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                            if (view2 == null && G(view2)) {
                                L(view, map, map2);
                                return;
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void k(zzdg zzdgVar) {
        this.l.o(zzdgVar);
    }

    public final synchronized void l(View view, View view2, Map map, Map map2, boolean z) {
        ejf ejfVarF0;
        this.m.c(this.u);
        this.l.g(view, view2, map, map2, z, J());
        if (this.x) {
            ddg ddgVar = this.k;
            if (ddgVar.f0() != null && (ejfVarF0 = ddgVar.f0()) != null) {
                ejfVarF0.zzd("onSdkAdUserInteractionClick", new ArrayMap());
            }
        }
    }

    public final synchronized void m(final View view, final int i) {
        if (((Boolean) zzbd.zzc().b(cye.Fb)).booleanValue()) {
            dfg dfgVar = this.u;
            if (dfgVar == null) {
                int i2 = zze.zza;
                zzo.zze("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            } else {
                final boolean z = dfgVar instanceof zzdik;
                this.j.execute(new Runnable() {
                    @Override
                    public final void run() {
                        zcg.Z(this.zza, view, z, i);
                    }
                });
            }
        }
    }

    public final synchronized void n(String str) {
        this.l.zzn(str);
    }

    public final synchronized void o(Bundle bundle) {
        this.l.zzo(bundle);
    }

    public final synchronized void p() {
        dfg dfgVar = this.u;
        if (dfgVar == null) {
            int i = zze.zza;
            zzo.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            final boolean z = dfgVar instanceof zzdik;
            this.j.execute(new Runnable() {
                @Override
                public final void run() {
                    zcg.X(this.zza, z);
                }
            });
        }
    }

    public final void q(Bundle bundle) {
        final ejf ejfVarF0 = this.k.f0();
        if (ejfVarF0 == null) {
            int i = zze.zza;
            zzo.zzg("Video webview is null");
            return;
        }
        try {
            final JSONObject jSONObject = new JSONObject();
            for (String str : bundle.keySet()) {
                jSONObject.put(str, bundle.get(str));
            }
            this.j.execute(new Runnable() {
                @Override
                public final void run() {
                    int i2 = zcg.G;
                    ejfVarF0.zze("onVideoEvent", jSONObject);
                }
            });
        } catch (JSONException e) {
            int i2 = zze.zza;
            zzo.zzh("Error reading event signals", e);
        }
    }

    public final synchronized void r() {
        if (this.w) {
            return;
        }
        this.l.zzt();
    }

    public final void s(View view) {
        if (((Boolean) zzbd.zzc().b(cye.t5)).booleanValue()) {
            ddg ddgVar = this.k;
            if (ddgVar.P() != 3) {
                eff effVarC0 = ddgVar.c0();
                if (effVarC0 == null) {
                    return;
                }
                j8.r(effVarC0, new ycg(this, view), this.j);
                return;
            }
        }
        M(view, this.k.h0());
    }

    public final synchronized void t(View view, MotionEvent motionEvent, View view2) {
        this.l.k(view, motionEvent, view2);
    }

    public final synchronized void u(Bundle bundle) {
        this.l.a(bundle);
    }

    public final synchronized void v(View view) {
        this.l.m(view);
    }

    public final synchronized void w() {
        this.l.zzx();
    }

    public final synchronized void x(zzdc zzdcVar) {
        this.l.d(zzdcVar);
    }

    public final synchronized void y(zzdq zzdqVar) {
        this.D.a(zzdqVar);
    }

    public final synchronized void z(zzbhk zzbhkVar) {
        this.l.n(zzbhkVar);
    }
}
