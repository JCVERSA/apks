package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.cye;
import defpackage.lmg;
import defpackage.xmg;
import defpackage.zef;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.lang3.BooleanUtils;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzv {
    public final xmg h;
    public Map i;
    public final ArrayDeque f = new ArrayDeque();
    public final ArrayDeque g = new ArrayDeque();
    public final int a = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.R6)).intValue();
    public final long b = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.S6)).longValue();
    public final boolean c = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.W6)).booleanValue();
    public final boolean d = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.V6)).booleanValue();
    public final Map e = Collections.synchronizedMap(new zzt(this));

    public zzv(xmg xmgVar) {
        this.h = xmgVar;
    }

    public static final void f(Map map, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }

    public static void zzd(zzv zzvVar, lmg lmgVar, ArrayDeque arrayDeque, ArrayDeque arrayDeque2) {
        zzvVar.d(lmgVar, arrayDeque, TypedValues.TransitionType.S_TO);
        zzvVar.d(lmgVar, arrayDeque2, "of");
    }

    public final synchronized void c(final lmg lmgVar) {
        if (this.c) {
            ArrayDeque arrayDeque = this.g;
            final ArrayDeque arrayDequeClone = arrayDeque.clone();
            arrayDeque.clear();
            ArrayDeque arrayDeque2 = this.f;
            final ArrayDeque arrayDequeClone2 = arrayDeque2.clone();
            arrayDeque2.clear();
            zef.a.execute(new Runnable() {
                @Override
                public final void run() {
                    zzv.zzd(this.zza, lmgVar, arrayDequeClone, arrayDequeClone2);
                }
            });
        }
    }

    public final void d(lmg lmgVar, ArrayDeque arrayDeque, String str) {
        Pair pair;
        while (!arrayDeque.isEmpty()) {
            Pair pair2 = (Pair) arrayDeque.poll();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(lmgVar.b());
            this.i = concurrentHashMap;
            concurrentHashMap.put("action", "ev");
            this.i.put("e_r", str);
            this.i.put("e_id", (String) pair2.first);
            if (this.d) {
                try {
                    JSONObject jSONObject = new JSONObject((String) pair2.second);
                    pair = new Pair(zzaa.zzb(jSONObject.getJSONObject("extras").getString("query_info_type")), jSONObject.getString("request_agent"));
                } catch (JSONException unused) {
                    pair = new Pair("", "");
                }
                f(this.i, "e_type", (String) pair.first);
                f(this.i, "e_agent", (String) pair.second);
            }
            this.h.g(this.i);
        }
    }

    public final synchronized void e() {
        try {
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
            try {
                Iterator it = this.e.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (jCurrentTimeMillis - ((zzu) entry.getValue()).zza.longValue() <= this.b) {
                        break;
                    }
                    this.g.add(new Pair((String) entry.getKey(), ((zzu) entry.getValue()).zzb));
                    it.remove();
                    throw th;
                }
            } catch (ConcurrentModificationException e) {
                com.google.android.gms.ads.internal.zzv.zzp().x(e, "QueryJsonMap.removeExpiredEntries");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Nullable
    public final synchronized String zzb(String str, lmg lmgVar) {
        zzu zzuVar = (zzu) this.e.get(str);
        lmgVar.b().put("request_id", str);
        if (zzuVar == null) {
            lmgVar.b().put("mhit", BooleanUtils.FALSE);
            return null;
        }
        lmgVar.b().put("mhit", BooleanUtils.TRUE);
        return zzuVar.zzb;
    }

    public final synchronized void zze(String str, String str2, lmg lmgVar) {
        this.e.put(str, new zzu(Long.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis()), str2, new HashSet()));
        e();
        c(lmgVar);
    }

    public final synchronized void zzf(String str) {
        this.e.remove(str);
    }

    public final synchronized boolean zzg(String str, String str2, int i) {
        zzu zzuVar = (zzu) this.e.get(str);
        if (zzuVar == null) {
            return false;
        }
        Set set = zzuVar.zzc;
        set.add(str2);
        return set.size() < i;
    }

    public final synchronized boolean zzh(String str, String str2) {
        zzu zzuVar = (zzu) this.e.get(str);
        return zzuVar != null && zzuVar.zzc.contains(str2);
    }
}
