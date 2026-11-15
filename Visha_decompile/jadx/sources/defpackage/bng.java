package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class bng {
    public final String e;
    public final xmg f;
    public final List b = new ArrayList();
    public boolean c = false;
    public boolean d = false;
    public final zzg a = zzv.zzp().j();

    public bng(String str, xmg xmgVar) {
        this.e = str;
        this.f = xmgVar;
    }

    public final synchronized void a(String str) {
        if (((Boolean) zzbd.zzc().b(cye.l2)).booleanValue()) {
            Map mapG = g();
            mapG.put("action", "aaia");
            mapG.put("aair", "MalformedJson");
            this.b.add(mapG);
        }
    }

    public final synchronized void b(String str, String str2) {
        if (((Boolean) zzbd.zzc().b(cye.l2)).booleanValue()) {
            Map mapG = g();
            mapG.put("action", "adapter_init_finished");
            mapG.put("ancn", str);
            mapG.put("rqe", str2);
            this.b.add(mapG);
        }
    }

    public final synchronized void c(String str) {
        if (((Boolean) zzbd.zzc().b(cye.l2)).booleanValue()) {
            Map mapG = g();
            mapG.put("action", "adapter_init_started");
            mapG.put("ancn", str);
            this.b.add(mapG);
        }
    }

    public final synchronized void d(String str) {
        if (((Boolean) zzbd.zzc().b(cye.l2)).booleanValue()) {
            Map mapG = g();
            mapG.put("action", "adapter_init_finished");
            mapG.put("ancn", str);
            this.b.add(mapG);
        }
    }

    public final synchronized void e() {
        try {
            if (((Boolean) zzbd.zzc().b(cye.l2)).booleanValue() && !this.d) {
                Map mapG = g();
                mapG.put("action", "init_finished");
                List list = this.b;
                list.add(mapG);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.f.g((Map) it.next());
                }
                this.d = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void f() {
        if (((Boolean) zzbd.zzc().b(cye.l2)).booleanValue() && !this.c) {
            Map mapG = g();
            mapG.put("action", "init_started");
            this.b.add(mapG);
            this.c = true;
        }
    }

    public final Map g() {
        Map mapI = this.f.i();
        mapI.put("tms", Long.toString(zzv.zzC().elapsedRealtime(), 10));
        mapI.put("tid", this.a.zzN() ? "" : this.e);
        return mapI;
    }
}
