package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzdyu;
import defpackage.a7f;
import defpackage.aug;
import defpackage.bug;
import defpackage.ccf;
import defpackage.csh;
import defpackage.cug;
import defpackage.cye;
import defpackage.g0f;
import defpackage.g8i;
import defpackage.geh;
import defpackage.gsh;
import defpackage.hfh;
import defpackage.im5;
import defpackage.j7f;
import defpackage.k7i;
import defpackage.l0f;
import defpackage.lof;
import defpackage.lrh;
import defpackage.ltg;
import defpackage.mtg;
import defpackage.n0f;
import defpackage.ntg;
import defpackage.otg;
import defpackage.pqh;
import defpackage.pv4;
import defpackage.qtg;
import defpackage.rqh;
import defpackage.t6f;
import defpackage.u6f;
import defpackage.utg;
import defpackage.v6f;
import defpackage.vrh;
import defpackage.vtg;
import defpackage.wbf;
import defpackage.wrh;
import defpackage.zef;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzdyu extends zzbul {
    private final Context zza;
    private final g8i zzb;
    private final cug zzc;
    private final lof zzd;
    private final ArrayDeque zze;
    private final zzfgq zzf;
    private final ccf zzg;

    public zzdyu(Context context, g8i g8iVar, ccf ccfVar, lof lofVar, cug cugVar, ArrayDeque arrayDeque, vtg vtgVar, zzfgq zzfgqVar) {
        cye.a(context);
        this.zza = context;
        this.zzb = g8iVar;
        this.zzg = ccfVar;
        this.zzc = cugVar;
        this.zzd = lofVar;
        this.zze = arrayDeque;
        this.zzf = zzfgqVar;
    }

    public static InputStream zzk(zzdyu zzdyuVar, im5 im5Var, im5 im5Var2, zzbuy zzbuyVar, wrh wrhVar) {
        String strE = ((wbf) im5Var.get()).e();
        zzdyuVar.zzo(new otg((wbf) im5Var.get(), (JSONObject) im5Var2.get(), zzbuyVar.zzh, strE, wrhVar));
        return new ByteArrayInputStream(strE.getBytes(StandardCharsets.UTF_8));
    }

    @Nullable
    private final synchronized otg zzl(String str) {
        Iterator it = this.zze.iterator();
        while (it.hasNext()) {
            otg otgVar = (otg) it.next();
            if (otgVar.c.equals(str)) {
                it.remove();
                return otgVar;
            }
        }
        return null;
    }

    private static im5 zzm(im5 im5Var, lrh lrhVar, j7f j7fVar, zzfgn zzfgnVar, wrh wrhVar) {
        t6f t6fVarA = j7fVar.a("AFMA_getAdDictionary", a7f.b, new v6f() {
            @Override
            public final Object a(JSONObject jSONObject) {
                return new wbf(jSONObject);
            }
        });
        gsh.d(im5Var, wrhVar);
        rqh rqhVarA = lrhVar.b(zzffn.BUILD_URL, im5Var).f(t6fVarA).a();
        gsh.c(rqhVarA, zzfgnVar, wrhVar);
        return rqhVarA;
    }

    private static im5 zzn(final zzbuy zzbuyVar, lrh lrhVar, final hfh hfhVar) {
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return hfhVar.b().a(zzbb.zzb().zzj((Bundle) obj), zzbuyVar.zzm, false);
            }
        };
        return lrhVar.b(zzffn.GMS_SIGNALS, j8.h(zzbuyVar.zza)).f(k7iVar).e(new pqh() {
            @Override
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                zze.zza("Ad request signals:");
                zze.zza(jSONObject.toString(2));
                return jSONObject;
            }
        }).a();
    }

    private final synchronized void zzo(otg otgVar) {
        zzp();
        this.zze.addLast(otgVar);
    }

    private final synchronized void zzp() {
        int iIntValue = ((Long) g0f.b.e()).intValue();
        while (true) {
            ArrayDeque arrayDeque = this.zze;
            if (arrayDeque.size() >= iIntValue) {
                arrayDeque.removeFirst();
            }
        }
    }

    private final void zzq(im5 im5Var, zzbuq zzbuqVar, zzbuy zzbuyVar) {
        j8.r(j8.n(im5Var, new k7i(this) {
            @Override
            public final im5 zza(Object obj) throws IOException {
                final InputStream inputStream = (InputStream) obj;
                ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
                final ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptorArrCreatePipe[1];
                zef.a.execute(new Runnable() {
                    @Override
                    public final void run() {
                        InputStream inputStream2 = inputStream;
                        try {
                            try {
                                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor2);
                                try {
                                    pv4.b(inputStream2, autoCloseOutputStream);
                                    autoCloseOutputStream.close();
                                    if (inputStream2 != null) {
                                        inputStream2.close();
                                    }
                                } catch (Throwable th) {
                                    try {
                                        autoCloseOutputStream.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                if (inputStream2 != null) {
                                    try {
                                        inputStream2.close();
                                    } catch (Throwable th4) {
                                        th3.addSuppressed(th4);
                                    }
                                }
                                throw th3;
                            }
                        } catch (IOException unused) {
                        }
                    }
                });
                return j8.h(parcelFileDescriptor);
            }
        }, zef.a), new ntg(this, zzbuyVar, zzbuqVar), zef.g);
    }

    public final im5 zzb(final zzbuy zzbuyVar, int i) {
        if (!((Boolean) g0f.a.e()).booleanValue()) {
            return j8.g(new Exception("Split request is disabled."));
        }
        zzfdj zzfdjVar = zzbuyVar.zzi;
        if (zzfdjVar == null) {
            return j8.g(new Exception("Pool configuration missing from request."));
        }
        if (zzfdjVar.zzc == 0 || zzfdjVar.zzd == 0) {
            return j8.g(new Exception("Caching is disabled."));
        }
        Context context = this.zza;
        j7f j7fVarB = zzv.zzg().b(context, VersionInfoParcel.forPackage(), this.zzf);
        hfh hfhVarA = this.zzd.a(zzbuyVar, i);
        lrh lrhVarC = hfhVarA.c();
        final im5 im5VarZzn = zzn(zzbuyVar, lrhVarC, hfhVarA);
        zzfgn zzfgnVarD = hfhVarA.d();
        final wrh wrhVarA = vrh.a(context, 9);
        final im5 im5VarZzm = zzm(im5VarZzn, lrhVarC, j7fVarB, zzfgnVarD, wrhVarA);
        return lrhVarC.a(zzffn.GET_URL_AND_CACHE_KEY, im5VarZzn, im5VarZzm).a(new Callable() {
            @Override
            public final Object call() {
                return zzdyu.zzk(this.b, im5VarZzm, im5VarZzn, zzbuyVar, wrhVarA);
            }
        }).a();
    }

    public final im5 zzc(final zzbuy zzbuyVar, int i) {
        otg otgVarZzl;
        rqh rqhVarA;
        u6f u6fVarZzg = zzv.zzg();
        Context context = this.zza;
        j7f j7fVarB = u6fVarZzg.b(context, VersionInfoParcel.forPackage(), this.zzf);
        hfh hfhVarA = this.zzd.a(zzbuyVar, i);
        t6f t6fVarA = j7fVarB.a("google.afma.response.normalize", qtg.d, a7f.c);
        if (((Boolean) g0f.a.e()).booleanValue()) {
            otgVarZzl = zzl(zzbuyVar.zzh);
            if (otgVarZzl == null) {
                zze.zza("Request contained a PoolKey but no matching parameters were found.");
            }
        } else {
            String str = zzbuyVar.zzj;
            otgVarZzl = null;
            if (str != null && !str.isEmpty()) {
                zze.zza("Request contained a PoolKey but split request is disabled.");
            }
        }
        wrh wrhVarA = otgVarZzl == null ? vrh.a(context, 9) : otgVarZzl.d;
        zzfgn zzfgnVarD = hfhVarA.d();
        zzfgnVarD.zzd(zzbuyVar.zza.getStringArrayList("ad_types"));
        bug bugVar = new bug(zzbuyVar.zzg, zzfgnVarD, wrhVarA);
        utg utgVar = new utg(context, zzbuyVar.zzb.afmaVersion, this.zzg, i);
        lrh lrhVarC = hfhVarA.c();
        wrh wrhVarA2 = vrh.a(context, 11);
        if (otgVarZzl == null) {
            final im5 im5VarZzn = zzn(zzbuyVar, lrhVarC, hfhVarA);
            final im5 im5VarZzm = zzm(im5VarZzn, lrhVarC, j7fVarB, zzfgnVarD, wrhVarA);
            wrh wrhVarA3 = vrh.a(context, 10);
            final rqh rqhVarA2 = lrhVarC.a(zzffn.HTTP, im5VarZzm, im5VarZzn).a(new Callable() {
                @Override
                public final Object call() {
                    Bundle bundle;
                    wbf wbfVar = (wbf) im5VarZzm.get();
                    if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue() && (bundle = zzbuyVar.zzm) != null) {
                        bundle.putLong(zzdqm.GET_AD_DICTIONARY_SDKCORE_START.zza(), wbfVar.c());
                        bundle.putLong(zzdqm.GET_AD_DICTIONARY_SDKCORE_END.zza(), wbfVar.b());
                    }
                    return new aug((JSONObject) im5VarZzn.get(), wbfVar);
                }
            }).e(bugVar).e(new csh(wrhVarA3)).e(utgVar).a();
            gsh.a(rqhVarA2, zzfgnVarD, wrhVarA3);
            gsh.d(rqhVarA2, wrhVarA2);
            rqhVarA = lrhVarC.a(zzffn.PRE_PROCESS, im5VarZzn, im5VarZzm, rqhVarA2).a(new Callable() {
                @Override
                public final Object call() {
                    Bundle bundle;
                    if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue() && (bundle = zzbuyVar.zzm) != null) {
                        bundle.putLong(zzdqm.HTTP_RESPONSE_READY.zza(), zzv.zzC().currentTimeMillis());
                    }
                    return new qtg((ttg) rqhVarA2.get(), (JSONObject) im5VarZzn.get(), (wbf) im5VarZzm.get());
                }
            }).f(t6fVarA).a();
        } else {
            aug augVar = new aug(otgVarZzl.b, otgVarZzl.a);
            wrh wrhVarA4 = vrh.a(context, 10);
            final rqh rqhVarA3 = lrhVarC.b(zzffn.HTTP, j8.h(augVar)).e(bugVar).e(new csh(wrhVarA4)).e(utgVar).a();
            gsh.a(rqhVarA3, zzfgnVarD, wrhVarA4);
            final im5 im5VarH = j8.h(otgVarZzl);
            gsh.d(rqhVarA3, wrhVarA2);
            rqhVarA = lrhVarC.a(zzffn.PRE_PROCESS, rqhVarA3, im5VarH).a(new Callable() {
                @Override
                public final Object call() {
                    ttg ttgVar = (ttg) rqhVarA3.get();
                    im5 im5Var = im5VarH;
                    return new qtg(ttgVar, ((otg) im5Var.get()).b, ((otg) im5Var.get()).a);
                }
            }).f(t6fVarA).a();
        }
        gsh.a(rqhVarA, zzfgnVarD, wrhVarA2);
        return rqhVarA;
    }

    public final im5 zzd(final zzbuy zzbuyVar, int i) {
        u6f u6fVarZzg = zzv.zzg();
        Context context = this.zza;
        j7f j7fVarB = u6fVarZzg.b(context, VersionInfoParcel.forPackage(), this.zzf);
        if (!((Boolean) l0f.a.e()).booleanValue()) {
            return j8.g(new Exception("Signal collection disabled."));
        }
        hfh hfhVarA = this.zzd.a(zzbuyVar, i);
        final geh gehVarA = hfhVarA.a();
        t6f t6fVarA = j7fVarB.a("google.afma.request.getSignals", a7f.b, a7f.c);
        wrh wrhVarA = vrh.a(context, 22);
        lrh lrhVarC = hfhVarA.c();
        zzffn zzffnVar = zzffn.GET_SIGNALS;
        Bundle bundle = zzbuyVar.zza;
        rqh rqhVarA = lrhVarC.b(zzffnVar, j8.h(bundle)).e(new csh(wrhVarA)).f(new k7i() {
            @Override
            public final im5 zza(Object obj) throws JSONException {
                return gehVarA.a(zzbb.zzb().zzj((Bundle) obj), zzbuyVar.zzm, false);
            }
        }).b(zzffn.JS_SIGNALS).f(t6fVarA).a();
        zzfgn zzfgnVarD = hfhVarA.d();
        zzfgnVarD.zzd(bundle.getStringArrayList("ad_types"));
        zzfgnVarD.zzf(bundle.getBundle("extras"));
        gsh.b(rqhVarA, zzfgnVarD, wrhVarA);
        if (((Boolean) defpackage.zze.f.e()).booleanValue()) {
            cug cugVar = this.zzc;
            Objects.requireNonNull(cugVar);
            rqhVarA.addListener(new zzdyk(cugVar), this.zzb);
        }
        return rqhVarA;
    }

    @Override
    public final void zze(zzbuy zzbuyVar, zzbuq zzbuqVar) {
        zzq(zzb(zzbuyVar, Binder.getCallingUid()), zzbuqVar, zzbuyVar);
    }

    @Override
    public final void zzf(zzbuy zzbuyVar, zzbuq zzbuqVar) {
        Bundle bundle;
        if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue() && (bundle = zzbuyVar.zzm) != null) {
            bundle.putLong(zzdqm.SERVICE_CONNECTED.zza(), zzv.zzC().currentTimeMillis());
        }
        zzq(zzd(zzbuyVar, Binder.getCallingUid()), zzbuqVar, zzbuyVar);
    }

    @Override
    public final void zzg(zzbuy zzbuyVar, zzbuq zzbuqVar) {
        Bundle bundle;
        if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue() && (bundle = zzbuyVar.zzm) != null) {
            bundle.putLong(zzdqm.SERVICE_CONNECTED.zza(), zzv.zzC().currentTimeMillis());
        }
        im5 im5VarZzc = zzc(zzbuyVar, Binder.getCallingUid());
        zzq(im5VarZzc, zzbuqVar, zzbuyVar);
        if (((Boolean) defpackage.zze.e.e()).booleanValue()) {
            cug cugVar = this.zzc;
            Objects.requireNonNull(cugVar);
            im5VarZzc.addListener(new zzdyk(cugVar), this.zzb);
        }
    }

    @Override
    public final void zzh(String str, zzbuq zzbuqVar) {
        zzq(zzj(str), zzbuqVar, null);
    }

    @Override
    public final void zzi(zzbui zzbuiVar, zzbur zzburVar) {
        if (((Boolean) n0f.a.e()).booleanValue()) {
            this.zzd.zzD();
            String str = zzbuiVar.zza;
            j8.r(j8.h(null), new ltg(this, zzburVar, zzbuiVar), zef.g);
        } else {
            try {
                zzburVar.zzf("", zzbuiVar);
            } catch (RemoteException e) {
                zze.zzb("Service can't call client", e);
            }
        }
    }

    public final im5 zzj(String str) {
        if (((Boolean) g0f.a.e()).booleanValue()) {
            return zzl(str) == null ? j8.g(new Exception("URL to be removed not found for cache key: ".concat(String.valueOf(str)))) : j8.h(new mtg(this));
        }
        return j8.g(new Exception("Split request is disabled."));
    }
}
