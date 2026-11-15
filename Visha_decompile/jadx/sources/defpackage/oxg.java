package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzv;
import com.google.android.gms.internal.ads.zzcuv;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class oxg {
    public final String c;
    public kmh d = null;
    public hmh e = null;
    public zzv f = null;
    public final Map b = Collections.synchronizedMap(new HashMap());
    public final List a = Collections.synchronizedList(new ArrayList());

    public oxg(String str) {
        this.c = str;
    }

    public static String j(hmh hmhVar) {
        return ((Boolean) zzbd.zzc().b(cye.O3)).booleanValue() ? hmhVar.p0 : hmhVar.w;
    }

    public final zzv a() {
        return this.f;
    }

    public final zzcuv b() {
        return new zzcuv(this.e, "", this, this.d, this.c);
    }

    public final List c() {
        return this.a;
    }

    public final void d(hmh hmhVar) {
        k(hmhVar, this.a.size());
    }

    public final void e(hmh hmhVar) {
        Map map = this.b;
        Object obj = map.get(j(hmhVar));
        List list = this.a;
        int iIndexOf = list.indexOf(obj);
        if (iIndexOf < 0 || iIndexOf >= map.size()) {
            iIndexOf = list.indexOf(this.f);
        }
        if (iIndexOf < 0 || iIndexOf >= map.size()) {
            return;
        }
        this.f = (zzv) list.get(iIndexOf);
        while (true) {
            iIndexOf++;
            if (iIndexOf >= list.size()) {
                return;
            }
            zzv zzvVar = (zzv) list.get(iIndexOf);
            zzvVar.zzb = 0L;
            zzvVar.zzc = null;
        }
    }

    public final void f(hmh hmhVar, long j, zze zzeVar) {
        l(hmhVar, j, zzeVar, false);
    }

    public final void g(hmh hmhVar, long j, zze zzeVar) {
        l(hmhVar, j, null, true);
    }

    public final synchronized void h(String str, List list) {
        Map map = this.b;
        if (map.containsKey(str)) {
            zzv zzvVar = (zzv) map.get(str);
            List list2 = this.a;
            int iIndexOf = list2.indexOf(zzvVar);
            try {
                list2.remove(iIndexOf);
            } catch (IndexOutOfBoundsException e) {
                com.google.android.gms.ads.internal.zzv.zzp().x(e, "AdapterResponseInfoCollector.replaceAdapterResponseInfoEntry");
            }
            this.b.remove(str);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                k((hmh) it.next(), iIndexOf);
                iIndexOf++;
            }
        }
    }

    public final void i(kmh kmhVar) {
        this.d = kmhVar;
    }

    public final synchronized void k(hmh hmhVar, int i) {
        Map map = this.b;
        String strJ = j(hmhVar);
        if (map.containsKey(strJ)) {
            return;
        }
        Bundle bundle = new Bundle();
        JSONObject jSONObject = hmhVar.v;
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                bundle.putString(next, jSONObject.getString(next));
            } catch (JSONException unused) {
            }
        }
        zzv zzvVar = new zzv(hmhVar.E, 0L, null, bundle, hmhVar.F, hmhVar.G, hmhVar.H, hmhVar.I);
        try {
            this.a.add(i, zzvVar);
        } catch (IndexOutOfBoundsException e) {
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "AdapterResponseInfoCollector.addAdapterResponseInfoEntryAtLocation");
        }
        this.b.put(strJ, zzvVar);
    }

    public final void l(hmh hmhVar, long j, zze zzeVar, boolean z) {
        Map map = this.b;
        String strJ = j(hmhVar);
        if (map.containsKey(strJ)) {
            if (this.e == null) {
                this.e = hmhVar;
            }
            zzv zzvVar = (zzv) map.get(strJ);
            zzvVar.zzb = j;
            zzvVar.zzc = zzeVar;
            if (((Boolean) zzbd.zzc().b(cye.K6)).booleanValue() && z) {
                this.f = zzvVar;
            }
        }
    }
}
