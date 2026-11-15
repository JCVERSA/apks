package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import defpackage.cye;
import defpackage.ogf;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public final class zzcb {
    public final Map a = new HashMap();
    public final List b = new ArrayList();
    public final Context c;

    public zzcb(Context context) {
        this.c = context;
    }

    public final synchronized void b(String str) {
        try {
            Map map = this.a;
            if (map.containsKey(str)) {
                return;
            }
            SharedPreferences defaultSharedPreferences = Objects.equals(str, "__default__") ? PreferenceManager.getDefaultSharedPreferences(this.c) : this.c.getSharedPreferences(str, 0);
            ogf ogfVar = new ogf(this, str);
            map.put(str, ogfVar);
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(ogfVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(zzbz zzbzVar) {
        this.b.add(zzbzVar);
    }

    public final void zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.za)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzq();
            Map mapZzw = zzs.zzw((String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Ea));
            Iterator it = mapZzw.keySet().iterator();
            while (it.hasNext()) {
                b((String) it.next());
            }
            c(new zzbz(mapZzw));
        }
    }
}
