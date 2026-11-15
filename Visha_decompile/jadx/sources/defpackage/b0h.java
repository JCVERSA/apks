package defpackage;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.n8;
import com.google.android.gms.internal.ads.zzefy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class b0h {
    public final n8 c;
    public r0h f;
    public final String h;
    public final int i;
    public final q0h j;
    public hmh k;
    public final Map a = new HashMap();
    public final List b = new ArrayList();
    public final List d = new ArrayList();
    public final Set e = new HashSet();
    public int g = Integer.MAX_VALUE;
    public boolean l = false;

    public b0h(vmh vmhVar, q0h q0hVar, n8 n8Var) {
        this.i = vmhVar.b.b.r;
        this.j = q0hVar;
        this.c = n8Var;
        this.h = z0h.b(vmhVar);
        List list = vmhVar.b.a;
        for (int i = 0; i < list.size(); i++) {
            this.a.put((hmh) list.get(i), Integer.valueOf(i));
        }
        this.b.addAll(list);
    }

    public final synchronized hmh a() {
        try {
            if (i()) {
                int i = 0;
                while (true) {
                    List list = this.b;
                    if (i >= list.size()) {
                        break;
                    }
                    hmh hmhVar = (hmh) list.get(i);
                    String str = hmhVar.t0;
                    Set set = this.e;
                    if (!set.contains(str)) {
                        if (hmhVar.v0) {
                            this.l = true;
                        }
                        if (!TextUtils.isEmpty(str)) {
                            set.add(str);
                        }
                        this.d.add(hmhVar);
                        return (hmh) list.remove(i);
                    }
                    i++;
                }
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(Throwable th, hmh hmhVar) {
        this.l = false;
        this.d.remove(hmhVar);
        this.e.remove(hmhVar.t0);
        if (d() || h()) {
            return;
        }
        e();
    }

    public final synchronized void c(r0h r0hVar, hmh hmhVar) {
        this.l = false;
        this.d.remove(hmhVar);
        if (d()) {
            r0hVar.zzq();
            return;
        }
        Integer num = (Integer) this.a.get(hmhVar);
        int iIntValue = num != null ? num.intValue() : Integer.MAX_VALUE;
        if (iIntValue > this.g) {
            this.j.m(hmhVar);
            return;
        }
        if (this.f != null) {
            this.j.m(this.k);
        }
        this.g = iIntValue;
        this.f = r0hVar;
        this.k = hmhVar;
        if (h()) {
            return;
        }
        e();
    }

    public final synchronized boolean d() {
        return this.c.isDone();
    }

    public final synchronized void e() {
        this.j.i(this.k);
        r0h r0hVar = this.f;
        if (r0hVar != null) {
            this.c.zzc(r0hVar);
        } else {
            this.c.zzd(new zzefy(3, this.h));
        }
    }

    public final synchronized boolean f(boolean z) {
        try {
            for (hmh hmhVar : this.b) {
                Integer num = (Integer) this.a.get(hmhVar);
                int iIntValue = num != null ? num.intValue() : Integer.MAX_VALUE;
                if (z || !this.e.contains(hmhVar.t0)) {
                    int i = this.g;
                    if (iIntValue < i) {
                        return true;
                    }
                    if (iIntValue > i) {
                        break;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean g() {
        try {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) this.a.get((hmh) it.next());
                if ((num != null ? num.intValue() : Integer.MAX_VALUE) < this.g) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean h() {
        return f(true) || g();
    }

    public final synchronized boolean i() {
        if (this.l) {
            return false;
        }
        List list = this.b;
        if (!list.isEmpty() && ((hmh) list.get(0)).v0 && !this.d.isEmpty()) {
            return false;
        }
        if (!d()) {
            List list2 = this.d;
            if (list2.size() < this.i && f(false)) {
                return true;
            }
        }
        return false;
    }
}
