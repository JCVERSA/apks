package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzeiq;
import com.google.android.gms.internal.ads.zzfwz;
import defpackage.kdh;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

public final class kdh implements eeh {
    public static final ldh k = new ldh(new JSONArray().toString(), new Bundle());
    public final g8i a;
    public final ScheduledExecutorService b;
    public final h3h c;
    public final Context d;
    public final enh e;
    public final f3h f;
    public final jkg g;
    public final log h;
    public final int i;
    public final String j;

    public kdh(g8i g8iVar, ScheduledExecutorService scheduledExecutorService, String str, h3h h3hVar, Context context, enh enhVar, f3h f3hVar, jkg jkgVar, log logVar, int i) {
        this.a = g8iVar;
        this.b = scheduledExecutorService;
        this.j = str;
        this.c = h3hVar;
        this.d = context;
        this.e = enhVar;
        this.f = f3hVar;
        this.g = jkgVar;
        this.h = logVar;
        this.i = i;
    }

    public static im5 a(kdh kdhVar) {
        String lowerCase = ((Boolean) zzbd.zzc().b(cye.Za)).booleanValue() ? kdhVar.e.f.toLowerCase(Locale.ROOT) : kdhVar.e.f;
        final Bundle bundleA = ((Boolean) zzbd.zzc().b(cye.P1)).booleanValue() ? kdhVar.h.a() : new Bundle();
        final ArrayList arrayList = new ArrayList();
        if (((Boolean) zzbd.zzc().b(cye.Y1)).booleanValue()) {
            kdhVar.g(arrayList, kdhVar.c.a(kdhVar.j, lowerCase));
        } else {
            h3h h3hVar = kdhVar.c;
            for (Map.Entry entry : ((zzfwz) h3hVar.b(kdhVar.j, lowerCase)).entrySet()) {
                String str = (String) entry.getKey();
                arrayList.add(kdhVar.e(str, (List) entry.getValue(), kdhVar.d(str), true, true));
            }
            kdhVar.g(arrayList, h3hVar.c());
        }
        return j8.b(arrayList).a(new Callable() {
            @Override
            public final Object call() {
                ldh ldhVar = kdh.k;
                JSONArray jSONArray = new JSONArray();
                for (im5 im5Var : arrayList) {
                    if (((JSONObject) im5Var.get()) != null) {
                        jSONArray.put(im5Var.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new ldh(jSONArray.toString(), bundleA);
            }
        }, kdhVar.a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0024 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static im5 b(final kdh kdhVar, String str, final List list, final Bundle bundle, boolean z, boolean z2) throws RemoteException {
        zzbqx zzbqxVarB;
        final eff effVar = new eff();
        if (z2) {
            if (((Boolean) zzbd.zzc().b(cye.Q1)).booleanValue()) {
                try {
                    zzbqxVarB = kdhVar.g.b(str);
                } catch (RemoteException e) {
                    zze.zzb("Couldn't create RTB adapter : ", e);
                    zzbqxVarB = null;
                }
            } else {
                f3h f3hVar = kdhVar.f;
                f3hVar.b(str);
                zzbqxVarB = f3hVar.a(str);
            }
        } else {
            zzbqxVarB = kdhVar.g.b(str);
        }
        if (zzbqxVarB == null) {
            if (!((Boolean) zzbd.zzc().b(cye.G1)).booleanValue()) {
                throw null;
            }
            zzeiq.zzb(str, effVar);
        } else {
            final zzeiq zzeiqVar = new zzeiq(str, zzbqxVarB, effVar, zzv.zzC().elapsedRealtime());
            if (((Boolean) zzbd.zzc().b(cye.L1)).booleanValue()) {
                kdhVar.b.schedule(new Runnable() {
                    @Override
                    public final void run() {
                        zzeiqVar.zzc();
                    }
                }, ((Long) zzbd.zzc().b(cye.E1)).longValue(), TimeUnit.MILLISECONDS);
            }
            if (z) {
                if (((Boolean) zzbd.zzc().b(cye.S1)).booleanValue()) {
                    final zzbqx zzbqxVar = zzbqxVarB;
                    kdhVar.a.i(new Runnable() {
                        @Override
                        public final void run() {
                            kdh.c(this.zza, zzbqxVar, bundle, list, zzeiqVar, effVar);
                        }
                    });
                } else {
                    kdhVar.f(zzbqxVarB, bundle, list, zzeiqVar);
                }
            } else {
                zzeiqVar.zzd();
            }
        }
        return effVar;
    }

    public static void c(kdh kdhVar, zzbqx zzbqxVar, Bundle bundle, List list, zzeiq zzeiqVar, eff effVar) {
        try {
            kdhVar.f(zzbqxVar, bundle, list, zzeiqVar);
        } catch (RemoteException e) {
            effVar.d(e);
        }
    }

    public final Bundle d(String str) {
        Bundle bundle = this.e.d.zzm;
        if (bundle != null) {
            return bundle.getBundle(str);
        }
        return null;
    }

    public final q7i e(final String str, final List list, final Bundle bundle, final boolean z, final boolean z2) {
        j7i j7iVar = new j7i() {
            @Override
            public final im5 zza() {
                return kdh.b(this.a, str, list, bundle, z, z2);
            }
        };
        g8i g8iVar = this.a;
        q7i q7iVarZzE = q7i.zzE(j8.k(j7iVar, g8iVar));
        if (!((Boolean) zzbd.zzc().b(cye.L1)).booleanValue()) {
            q7iVarZzE = (q7i) j8.o(q7iVarZzE, ((Long) zzbd.zzc().b(cye.E1)).longValue(), TimeUnit.MILLISECONDS, this.b);
        }
        return (q7i) j8.e(q7iVarZzE, Throwable.class, new m2i() {
            @Override
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                ldh ldhVar = kdh.k;
                int i = zze.zza;
                String str2 = str;
                zzo.zzg("Error calling adapter: ".concat(String.valueOf(str2)));
                if (((Boolean) zzbd.zzc().b(cye.cd)).booleanValue()) {
                    zzv.zzp().w(th, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                    return null;
                }
                zzv.zzp().x(th, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                return null;
            }
        }, g8iVar);
    }

    public final void f(zzbqx zzbqxVar, Bundle bundle, List list, zzeiq zzeiqVar) throws RemoteException {
        zzbqxVar.zzh(ObjectWrapper.wrap(this.d), this.j, bundle, (Bundle) list.get(0), this.e.e, zzeiqVar);
    }

    public final void g(List list, Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            k3h k3hVar = (k3h) ((Map.Entry) it.next()).getValue();
            String str = k3hVar.a;
            list.add(e(str, Collections.singletonList(k3hVar.e), d(str), k3hVar.b, k3hVar.c));
        }
    }

    @Override
    public final int zza() {
        return 32;
    }

    @Override
    public final im5 zzb() {
        if (this.i == 2) {
            return j8.h(k);
        }
        enh enhVar = this.e;
        if (enhVar.r) {
            if (!Arrays.asList(((String) zzbd.zzc().b(cye.R1)).split(StringUtils.COMMA)).contains(zzaa.zzb(zzaa.zzc(enhVar.d)))) {
                return j8.h(k);
            }
        }
        return j8.k(new j7i() {
            @Override
            public final im5 zza() {
                return kdh.a(this.a);
            }
        }, this.a);
    }
}
