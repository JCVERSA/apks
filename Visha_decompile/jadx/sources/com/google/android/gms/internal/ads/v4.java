package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zzbd;
import defpackage.cye;
import defpackage.fkg;
import defpackage.gkg;
import defpackage.vog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

public final class v4 {
    public final t4 a;
    public final gkg b;
    public final Object c = new Object();
    public final List d = new ArrayList();
    public boolean e;

    public v4(t4 t4Var, gkg gkgVar) {
        this.a = t4Var;
        this.b = gkgVar;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002f A[Catch: all -> 0x001c, LOOP:0: B:15:0x0029->B:17:0x002f, LOOP_END, TryCatch #0 {all -> 0x001c, blocks: (B:4:0x0008, B:6:0x000c, B:8:0x0014, B:11:0x001e, B:12:0x0021, B:14:0x0023, B:15:0x0029, B:17:0x002f, B:18:0x003d), top: B:22:0x0008 }] */
    public final JSONArray a() {
        Iterator it;
        JSONArray jSONArray = new JSONArray();
        synchronized (this.c) {
            try {
                if (this.e) {
                    it = this.d.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(((vog) it.next()).a());
                    }
                } else {
                    t4 t4Var = this.a;
                    if (t4Var.t()) {
                        d(t4Var.g());
                        it = this.d.iterator();
                        while (it.hasNext()) {
                            jSONArray.put(((vog) it.next()).a());
                        }
                    } else {
                        c();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONArray;
    }

    public final void c() {
        this.a.s(new zzdtw(this));
    }

    public final void d(List list) {
        fkg fkgVarA;
        fkg fkgVarA2;
        zzbrm zzbrmVar;
        synchronized (this.c) {
            try {
                if (this.e) {
                    return;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    zzblh zzblhVar = (zzblh) it.next();
                    String string = (!((Boolean) zzbd.zzc().b(cye.v9)).booleanValue() || (fkgVarA2 = this.b.a(zzblhVar.zza)) == null || (zzbrmVar = fkgVarA2.c) == null) ? "" : zzbrmVar.toString();
                    String str = string;
                    boolean z = ((Boolean) zzbd.zzc().b(cye.w9)).booleanValue() && (fkgVarA = this.b.a(zzblhVar.zza)) != null && fkgVarA.d;
                    List list2 = this.d;
                    String str2 = zzblhVar.zza;
                    list2.add(new vog(str2, str, this.b.b(str2), zzblhVar.zzb ? 1 : 0, zzblhVar.zzd, zzblhVar.zzc, z));
                }
                this.e = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
