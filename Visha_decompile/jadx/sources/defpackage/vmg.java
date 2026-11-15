package defpackage;

import com.google.android.gms.internal.ads.zzffn;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class vmg implements mrh {
    public final lmg c;
    public final fy0 d;
    public final Map b = new HashMap();
    public final Map e = new HashMap();

    public vmg(lmg lmgVar, Set set, fy0 fy0Var) {
        this.c = lmgVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            umg umgVar = (umg) it.next();
            this.e.put(umgVar.c, umgVar);
        }
        this.d = fy0Var;
    }

    public final void a(zzffn zzffnVar, boolean z) {
        umg umgVar = (umg) this.e.get(zzffnVar);
        if (umgVar == null) {
            return;
        }
        String str = true != z ? "f." : "s.";
        Map map = this.b;
        zzffn zzffnVar2 = umgVar.b;
        if (map.containsKey(zzffnVar2)) {
            long jElapsedRealtime = this.d.elapsedRealtime() - ((Long) map.get(zzffnVar2)).longValue();
            this.c.b().put("label.".concat(umgVar.a), str + jElapsedRealtime);
        }
    }

    @Override
    public final void h(zzffn zzffnVar, String str) {
        this.b.put(zzffnVar, Long.valueOf(this.d.elapsedRealtime()));
    }

    @Override
    public final void o(zzffn zzffnVar, String str, Throwable th) {
        Map map = this.b;
        if (map.containsKey(zzffnVar)) {
            long jElapsedRealtime = this.d.elapsedRealtime() - ((Long) map.get(zzffnVar)).longValue();
            lmg lmgVar = this.c;
            String strValueOf = String.valueOf(str);
            lmgVar.b().put("task.".concat(strValueOf), "f.".concat(String.valueOf(Long.toString(jElapsedRealtime))));
        }
        if (this.e.containsKey(zzffnVar)) {
            a(zzffnVar, false);
        }
    }

    @Override
    public final void p(zzffn zzffnVar, String str) {
    }

    @Override
    public final void q(zzffn zzffnVar, String str) {
        Map map = this.b;
        if (map.containsKey(zzffnVar)) {
            long jElapsedRealtime = this.d.elapsedRealtime() - ((Long) map.get(zzffnVar)).longValue();
            lmg lmgVar = this.c;
            String strValueOf = String.valueOf(str);
            lmgVar.b().put("task.".concat(strValueOf), "s.".concat(String.valueOf(Long.toString(jElapsedRealtime))));
        }
        if (this.e.containsKey(zzffnVar)) {
            a(zzffnVar, true);
        }
    }
}
