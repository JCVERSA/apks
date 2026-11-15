package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.webkit.CookieManager;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import defpackage.cye;
import defpackage.e0f;
import defpackage.xmg;
import defpackage.zef;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.BooleanUtils;

public final class zzo {
    public final Map a = new HashMap();
    public final Map b = new HashMap();
    public final Context c;
    public final xmg d;
    public final ExecutorService e;

    public zzo(Context context, xmg xmgVar, ExecutorService executorService) {
        this.c = context;
        this.d = xmgVar;
        this.e = executorService;
    }

    public static Object zza(zzo zzoVar, AdRequest adRequest, zzp zzpVar) {
        QueryInfo.generate(zzoVar.c, AdFormat.BANNER, adRequest, zzpVar);
        return Boolean.TRUE;
    }

    public static void zzb(zzo zzoVar, Object obj, Pair pair) {
        boolean zAcceptThirdPartyCookies = false;
        if (obj instanceof WebView) {
            CookieManager cookieManagerZza = com.google.android.gms.ads.internal.zzv.zzr().zza(zzoVar.c);
            if (cookieManagerZza != null) {
                zAcceptThirdPartyCookies = cookieManagerZza.acceptThirdPartyCookies((WebView) obj);
            }
        }
        Map map = zzoVar.a;
        Boolean boolValueOf = Boolean.valueOf(zAcceptThirdPartyCookies);
        zzq zzqVar = (zzq) map.get(boolValueOf);
        if (zzqVar != null && !zzqVar.zze()) {
            zzoVar.c(zzqVar, pair, true);
            return;
        }
        Map map2 = zzoVar.b;
        List arrayList = (List) map2.get(boolValueOf);
        if (arrayList == null) {
            arrayList = new ArrayList();
            map2.put(boolValueOf, arrayList);
        }
        arrayList.add(pair);
    }

    public final synchronized void a(final boolean z, zzq zzqVar) {
        try {
            Map map = this.a;
            Boolean boolValueOf = Boolean.valueOf(z);
            zzq zzqVar2 = (zzq) map.get(boolValueOf);
            if (zzqVar2 == null || zzqVar2.zze() || zzqVar2.zzb() == null || zzqVar.zzb() != null) {
                map.put(boolValueOf, zzqVar);
            }
            long jLongValue = (zzqVar.zzb() != null ? (Long) e0f.f.e() : (Long) e0f.g.e()).longValue();
            final boolean z2 = zzqVar.zzb() == null;
            zef.d.schedule(new Runnable() {
                @Override
                public final void run() {
                    this.zza.d(z, z2);
                }
            }, jLongValue, TimeUnit.SECONDS);
            Map map2 = this.b;
            List list = (List) map2.get(boolValueOf);
            map2.put(boolValueOf, new ArrayList());
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    c(zzqVar, (Pair) it.next(), false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b(final boolean z) {
        Map map = this.b;
        Boolean boolValueOf = Boolean.valueOf(z);
        if (map.containsKey(boolValueOf)) {
            return;
        }
        map.put(boolValueOf, new ArrayList());
        this.e.submit(new Runnable() {
            @Override
            public final void run() {
                this.zza.d(z, false);
            }
        });
    }

    public final void c(zzq zzqVar, Pair pair, boolean z) {
        zzqVar.zzd();
        QueryInfo queryInfoZzb = zzqVar.zzb();
        if (queryInfoZzb != null) {
            ((QueryInfoGenerationCallback) pair.first).onSuccess(queryInfoZzb);
        } else {
            ((QueryInfoGenerationCallback) pair.first).onFailure(zzqVar.zzc());
        }
        zzaa.zzd(this.d, null, "sgpcr", new Pair("se", "query_g"), new Pair("ad_format", AdFormat.BANNER.name()), new Pair("rtype", Integer.toString(6)), new Pair("scar", BooleanUtils.TRUE), new Pair("lat_ms", Long.toString(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - ((Long) pair.second).longValue())), new Pair("sgpc_h", Boolean.toString(z)), new Pair("sgpc_rs", Boolean.toString(zzqVar.zzb() != null)));
    }

    public final synchronized void d(boolean z, boolean z2) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("query_info_type", "requester_type_6");
            bundle.putBoolean("accept_3p_cookie", z);
            Map map = this.a;
            Boolean boolValueOf = Boolean.valueOf(z);
            zzq zzqVar = (zzq) map.get(boolValueOf);
            int iZza = 0;
            if (z2 && zzqVar != null) {
                iZza = zzqVar.zza() + 1;
            }
            zzq zzqVar2 = (zzq) map.get(boolValueOf);
            final zzp zzpVar = new zzp(this, z, iZza, zzqVar2 == null ? null : Boolean.valueOf(zzqVar2.zzf()), this.d);
            final AdRequest adRequestBuild = new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.ib)).booleanValue()) {
                this.e.submit(new Callable() {
                    @Override
                    public final Object call() {
                        return zzo.zza(this.zza, adRequestBuild, zzpVar);
                    }
                });
            } else {
                QueryInfo.generate(this.c, AdFormat.BANNER, adRequestBuild, zzpVar);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zze() {
        b(true);
        b(false);
    }

    public final synchronized void zzg(final Object obj, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        final Pair pair = new Pair(queryInfoGenerationCallback, Long.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis()));
        zef.f.execute(new Runnable() {
            @Override
            public final void run() {
                zzo.zzb(this.zza, obj, pair);
            }
        });
    }
}
