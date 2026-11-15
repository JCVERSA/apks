package defpackage;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

public abstract class a6g {
    public final Map b = new HashMap();

    public a6g(Set set) {
        D(set);
    }

    public final synchronized void B(i8g i8gVar) {
        C(i8gVar.a, i8gVar.b);
    }

    public final synchronized void C(Object obj, Executor executor) {
        this.b.put(obj, executor);
    }

    public final synchronized void D(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            B((i8g) it.next());
        }
    }

    public final synchronized void E(final z5g z5gVar) {
        for (Map.Entry entry : this.b.entrySet()) {
            final Object key = entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() {
                @Override
                public final void run() {
                    try {
                        z5gVar.zza(key);
                    } catch (Throwable th) {
                        zzv.zzp().w(th, "EventEmitter.notify");
                        zze.zzb("Event emitter exception.", th);
                    }
                }
            });
        }
    }
}
