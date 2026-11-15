package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.client.zzu;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.nonagon.util.logging.csi.CsiUrlBuilder;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public abstract class zmg {
    public final Map a;
    public final Context b;
    public final Executor c;
    public final zzu d;
    public final boolean e;
    public final CsiUrlBuilder f;
    public final boolean g;
    public final boolean h;
    public final AtomicBoolean i;
    public final AtomicReference j;

    public zmg(Executor executor, zzu zzuVar, CsiUrlBuilder csiUrlBuilder, Context context) {
        this.a = new HashMap();
        this.i = new AtomicBoolean();
        this.j = new AtomicReference(new Bundle());
        this.c = executor;
        this.d = zzuVar;
        this.e = ((Boolean) zzbd.zzc().b(cye.j2)).booleanValue();
        this.f = csiUrlBuilder;
        this.g = ((Boolean) zzbd.zzc().b(cye.o2)).booleanValue();
        this.h = ((Boolean) zzbd.zzc().b(cye.U6)).booleanValue();
        this.b = context;
    }

    public final void a(Map map) {
        if (map == null || map.isEmpty()) {
            int i = zze.zza;
            zzo.zze("Empty or null paramMap.");
            return;
        }
        if (!this.i.getAndSet(true)) {
            final String str = (String) zzbd.zzc().b(cye.Fa);
            this.j.set(zzad.zza(this.b, str, new SharedPreferences.OnSharedPreferenceChangeListener() {
                @Override
                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str2) {
                    zmg zmgVar = this.a;
                    zmgVar.j.set(zzad.zzb(zmgVar.b, str));
                }
            }));
        }
        Bundle bundle = (Bundle) this.j.get();
        for (String str2 : bundle.keySet()) {
            map.put(str2, String.valueOf(bundle.get(str2)));
        }
    }

    public final String b(Map map) {
        return this.f.generateUrl(map);
    }

    public final ConcurrentHashMap c() {
        return new ConcurrentHashMap(this.a);
    }

    public final void e(Map map) {
        if (map.isEmpty()) {
            int i = zze.zza;
            zzo.zze("Empty paramMap.");
            return;
        }
        a(map);
        final String strGenerateUrl = this.f.generateUrl(map);
        zze.zza(strGenerateUrl);
        if (((Boolean) zzbd.zzc().b(cye.id)).booleanValue() || this.e) {
            this.c.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.d.zza(strGenerateUrl);
                }
            });
        }
    }

    public final void f(Map map) {
        h(map, true);
    }

    public final void g(Map map) {
        h(map, false);
    }

    public final void h(Map map, boolean z) {
        if (map.isEmpty()) {
            int i = zze.zza;
            zzo.zze("Empty paramMap.");
            return;
        }
        a(map);
        final String strGenerateUrl = this.f.generateUrl(map);
        zze.zza(strGenerateUrl);
        boolean z2 = Boolean.parseBoolean((String) map.get("scar"));
        if (this.e) {
            if (!z || this.g) {
                if (!z2 || this.h) {
                    this.c.execute(new Runnable() {
                        @Override
                        public final void run() {
                            this.zza.d.zza(strGenerateUrl);
                        }
                    });
                }
            }
        }
    }
}
