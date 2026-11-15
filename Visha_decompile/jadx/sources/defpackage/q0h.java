package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class q0h {
    public final fy0 a;
    public final s0h b;
    public final wth c;
    public final LinkedHashMap d = new LinkedHashMap();
    public final boolean e = ((Boolean) zzbd.zzc().b(cye.N6)).booleanValue();
    public final oxg f;
    public boolean g;
    public long h;
    public long i;

    public q0h(fy0 fy0Var, s0h s0hVar, oxg oxgVar, wth wthVar) {
        this.a = fy0Var;
        this.b = s0hVar;
        this.f = oxgVar;
        this.c = wthVar;
    }

    public final synchronized long a() {
        return this.h;
    }

    public final synchronized im5 f(vmh vmhVar, hmh hmhVar, im5 im5Var, sth sthVar) {
        kmh kmhVar = vmhVar.b.b;
        long jElapsedRealtime = this.a.elapsedRealtime();
        String str = hmhVar.w;
        if (str != null) {
            this.d.put(hmhVar, new p0h(str, hmhVar.f0, 9, 0L, null));
            j8.r(im5Var, new o0h(this, jElapsedRealtime, kmhVar, hmhVar, str, sthVar, vmhVar), zef.g);
        }
        return im5Var;
    }

    public final synchronized String g() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Iterator it = this.d.entrySet().iterator();
            while (it.hasNext()) {
                p0h p0hVar = (p0h) ((Map.Entry) it.next()).getValue();
                if (p0hVar.c != Integer.MAX_VALUE) {
                    arrayList.add(p0hVar.toString());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return TextUtils.join("_", arrayList);
    }

    public final synchronized void i(hmh hmhVar) {
        try {
            this.h = this.a.elapsedRealtime() - this.i;
            if (hmhVar != null) {
                this.f.e(hmhVar);
            }
            this.g = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void j() {
        this.h = this.a.elapsedRealtime() - this.i;
    }

    public final synchronized void k(List list) {
        this.i = this.a.elapsedRealtime();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            hmh hmhVar = (hmh) it.next();
            String str = hmhVar.w;
            if (!TextUtils.isEmpty(str)) {
                this.d.put(hmhVar, new p0h(str, hmhVar.f0, Integer.MAX_VALUE, 0L, null));
            }
        }
    }

    public final synchronized void l() {
        this.i = this.a.elapsedRealtime();
    }

    public final synchronized void m(hmh hmhVar) {
        p0h p0hVar = (p0h) this.d.get(hmhVar);
        if (p0hVar == null || this.g) {
            return;
        }
        p0hVar.c = 8;
    }

    public final synchronized boolean q(hmh hmhVar) {
        p0h p0hVar = (p0h) this.d.get(hmhVar);
        if (p0hVar == null) {
            return false;
        }
        return p0hVar.c == 8;
    }
}
