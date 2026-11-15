package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class xue {
    public int b;
    public final Object a = new Object();
    public final List c = new LinkedList();

    public final void a(wue wueVar) {
        synchronized (this.a) {
            try {
                List list = this.c;
                if (list.size() >= 10) {
                    String str = "Queue is full, current size = " + list.size();
                    int i = zze.zza;
                    zzo.zze(str);
                    list.remove(0);
                }
                int i2 = this.b;
                this.b = i2 + 1;
                wueVar.g(i2);
                wueVar.k();
                list.add(wueVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b(wue wueVar) {
        synchronized (this.a) {
            try {
                Iterator it = this.c.iterator();
                while (it.hasNext()) {
                    wue wueVar2 = (wue) it.next();
                    if (zzv.zzp().j().zzK()) {
                        if (!zzv.zzp().j().zzL() && !wueVar.equals(wueVar2) && wueVar2.d().equals(wueVar.d())) {
                            it.remove();
                            return true;
                        }
                    } else if (!wueVar.equals(wueVar2) && wueVar2.c().equals(wueVar.c())) {
                        it.remove();
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c(wue wueVar) {
        synchronized (this.a) {
            try {
                return this.c.contains(wueVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
