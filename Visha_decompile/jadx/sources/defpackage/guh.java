package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzce;
import com.google.android.gms.ads.internal.client.zzfp;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.z5;
import com.google.android.gms.internal.ads.zzbaa;
import com.google.android.gms.internal.ads.zzboy;
import com.google.android.gms.internal.ads.zzbwd;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class guh {
    public final ConcurrentMap a = new ConcurrentHashMap();
    public final ConcurrentMap b = new ConcurrentHashMap();
    public final kuh c;
    public final buh d;
    public final Context e;
    public volatile ConnectivityManager f;
    public final fy0 g;
    public AtomicInteger h;

    public guh(kuh kuhVar, buh buhVar, Context context, fy0 fy0Var) {
        this.c = kuhVar;
        this.d = buhVar;
        this.e = context;
        this.g = fy0Var;
    }

    public static String d(String str, AdFormat adFormat) {
        return str + "#" + (adFormat == null ? "NULL" : adFormat.name());
    }

    public final synchronized zzbaa a(String str) {
        return (zzbaa) n(zzbaa.class, str, AdFormat.APP_OPEN_AD);
    }

    public final synchronized zzbx b(String str) {
        return (zzbx) n(zzbx.class, str, AdFormat.INTERSTITIAL);
    }

    public final synchronized zzbwd c(String str) {
        return (zzbwd) n(zzbwd.class, str, AdFormat.REWARDED);
    }

    public final void g() {
        if (this.f == null) {
            synchronized (this) {
                if (this.f == null) {
                    try {
                        this.f = (ConnectivityManager) this.e.getSystemService("connectivity");
                    } catch (ClassCastException e) {
                        int i = zze.zza;
                        zzo.zzk("Failed to get connectivity manager", e);
                    }
                }
            }
        }
        if (!d28.g() || this.f == null) {
            this.h = new AtomicInteger(((Integer) zzbd.zzc().b(cye.B)).intValue());
            return;
        }
        try {
            this.f.registerDefaultNetworkCallback(new fuh(this));
        } catch (RuntimeException e2) {
            int i2 = zze.zza;
            zzo.zzk("Failed to register network callback", e2);
            this.h = new AtomicInteger(((Integer) zzbd.zzc().b(cye.B)).intValue());
        }
    }

    public final void h(zzboy zzboyVar) {
        this.c.b(zzboyVar);
    }

    public final synchronized void i(List list, zzce zzceVar) {
        try {
            List<zzfp> listO = o(list);
            EnumMap enumMap = new EnumMap(AdFormat.class);
            for (zzfp zzfpVar : listO) {
                String str = zzfpVar.zza;
                AdFormat adFormat = AdFormat.getAdFormat(zzfpVar.zzb);
                z5 z5VarA = this.c.a(zzfpVar, zzceVar);
                if (adFormat != null && z5VarA != null) {
                    AtomicInteger atomicInteger = this.h;
                    if (atomicInteger != null) {
                        z5VarA.A(atomicInteger.get());
                    }
                    buh buhVar = this.d;
                    z5VarA.C(buhVar);
                    p(d(str, adFormat), z5VarA);
                    enumMap.put(adFormat, Integer.valueOf(((Integer) zzf.zze(enumMap, adFormat, 0)).intValue() + 1));
                    buhVar.i(adFormat, zzfpVar.zzd, this.g.currentTimeMillis());
                }
            }
            this.d.h(enumMap, this.g.currentTimeMillis());
            zzv.zzb().c(new euh(this));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean j(String str) {
        return s(str, AdFormat.APP_OPEN_AD);
    }

    public final synchronized boolean k(String str) {
        return s(str, AdFormat.INTERSTITIAL);
    }

    public final synchronized boolean l(String str) {
        return s(str, AdFormat.REWARDED);
    }

    public final synchronized z5 m(String str, AdFormat adFormat) {
        return (z5) this.a.get(d(str, adFormat));
    }

    public final synchronized Object n(Class cls, String str, AdFormat adFormat) {
        buh buhVar = this.d;
        fy0 fy0Var = this.g;
        buhVar.e(adFormat, fy0Var.currentTimeMillis());
        z5 z5VarM = m(str, adFormat);
        if (z5VarM == null) {
            return null;
        }
        try {
            String strS = z5VarM.s();
            Object objQ = z5VarM.q();
            Object objCast = objQ == null ? null : cls.cast(objQ);
            if (objCast != null) {
                buhVar.f(adFormat, fy0Var.currentTimeMillis(), z5VarM.e.zzd, z5VarM.l(), strS);
            }
            return objCast;
        } catch (ClassCastException e) {
            zzv.zzp().x(e, "PreloadAdManager.pollAd");
            zze.zzb("Unable to cast ad to the requested type:".concat(cls.getName()), e);
            return null;
        }
    }

    public final synchronized List o(List list) {
        ArrayList arrayList;
        try {
            HashSet hashSet = new HashSet();
            arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzfp zzfpVar = (zzfp) it.next();
                String strD = d(zzfpVar.zza, AdFormat.getAdFormat(zzfpVar.zzb));
                hashSet.add(strD);
                ConcurrentMap concurrentMap = this.a;
                z5 z5Var = (z5) concurrentMap.get(strD);
                if (z5Var == null) {
                    ConcurrentMap concurrentMap2 = this.b;
                    if (concurrentMap2.containsKey(strD)) {
                        z5 z5Var2 = (z5) concurrentMap2.get(strD);
                        if (z5Var2.e.equals(zzfpVar)) {
                            z5Var2.E(zzfpVar.zzd);
                            z5Var2.B();
                            concurrentMap.put(strD, z5Var2);
                            concurrentMap2.remove(strD);
                        }
                    } else {
                        arrayList.add(zzfpVar);
                    }
                } else if (z5Var.e.equals(zzfpVar)) {
                    z5Var.E(zzfpVar.zzd);
                } else {
                    this.b.put(strD, z5Var);
                    concurrentMap.remove(strD);
                }
            }
            Iterator it2 = this.a.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet.contains((String) entry.getKey())) {
                    this.b.put((String) entry.getKey(), (z5) entry.getValue());
                    it2.remove();
                }
            }
            Iterator it3 = this.b.entrySet().iterator();
            while (it3.hasNext()) {
                z5 z5Var3 = (z5) ((Map.Entry) it3.next()).getValue();
                z5Var3.D();
                if (((Boolean) zzbd.zzc().b(cye.x)).booleanValue()) {
                    z5Var3.y();
                }
                if (!z5Var3.F()) {
                    it3.remove();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized void p(String str, z5 z5Var) {
        z5Var.n();
        this.a.put(str, z5Var);
    }

    public final synchronized void q(boolean z) {
        try {
            if (z) {
                Iterator it = this.a.values().iterator();
                while (it.hasNext()) {
                    ((z5) it.next()).B();
                }
            } else {
                Iterator it2 = this.a.values().iterator();
                while (it2.hasNext()) {
                    ((z5) it2.next()).f.set(false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void r(boolean z) {
        if (((Boolean) zzbd.zzc().b(cye.v)).booleanValue()) {
            q(z);
        }
    }

    public final synchronized boolean s(String str, AdFormat adFormat) {
        boolean z;
        try {
            fy0 fy0Var = this.g;
            long jCurrentTimeMillis = fy0Var.currentTimeMillis();
            z5 z5VarM = m(str, adFormat);
            z = z5VarM != null && z5VarM.F();
            this.d.b(adFormat, z5VarM == null ? 0 : z5VarM.e.zzd, z5VarM != null ? z5VarM.l() : 0, jCurrentTimeMillis, z ? Long.valueOf(fy0Var.currentTimeMillis()) : null, z5VarM == null ? null : z5VarM.s());
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }
}
