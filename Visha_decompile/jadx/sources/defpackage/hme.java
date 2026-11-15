package defpackage;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.ads.b;
import com.google.android.gms.internal.ads.c;
import com.google.android.gms.internal.ads.zzaov;
import com.google.android.gms.internal.ads.zzapd;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class hme {
    public final AtomicInteger a;
    public final Set b;
    public final PriorityBlockingQueue c;
    public final PriorityBlockingQueue d;
    public final yle e;
    public final eme f;
    public final zzapd[] g;
    public zzaov h;
    public final List i;
    public final List j;
    public final b k;

    public hme(yle yleVar, eme emeVar, int i) {
        b bVar = new b(new Handler(Looper.getMainLooper()));
        this.a = new AtomicInteger();
        this.b = new HashSet();
        this.c = new PriorityBlockingQueue();
        this.d = new PriorityBlockingQueue();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.e = yleVar;
        this.f = emeVar;
        this.g = new zzapd[4];
        this.k = bVar;
    }

    public final c a(c cVar) {
        cVar.zzf(this);
        Set set = this.b;
        synchronized (set) {
            set.add(cVar);
        }
        cVar.zzg(this.a.incrementAndGet());
        cVar.zzm("add-to-queue");
        c(cVar, 0);
        this.c.add(cVar);
        return cVar;
    }

    public final void b(c cVar) {
        Set set = this.b;
        synchronized (set) {
            set.remove(cVar);
        }
        List list = this.i;
        synchronized (list) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                ubc.a(it.next());
                throw null;
            }
        }
        c(cVar, 5);
    }

    public final void c(c cVar, int i) {
        List list = this.j;
        synchronized (list) {
            try {
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        zzaov zzaovVar = this.h;
        if (zzaovVar != null) {
            zzaovVar.zzb();
        }
        zzapd[] zzapdVarArr = this.g;
        for (int i = 0; i < 4; i++) {
            zzapd zzapdVar = zzapdVarArr[i];
            if (zzapdVar != null) {
                zzapdVar.zza();
            }
        }
        PriorityBlockingQueue priorityBlockingQueue = this.c;
        PriorityBlockingQueue priorityBlockingQueue2 = this.d;
        yle yleVar = this.e;
        b bVar = this.k;
        zzaov zzaovVar2 = new zzaov(priorityBlockingQueue, priorityBlockingQueue2, yleVar, bVar);
        this.h = zzaovVar2;
        zzaovVar2.start();
        for (int i2 = 0; i2 < 4; i2++) {
            zzapd zzapdVar2 = new zzapd(priorityBlockingQueue2, this.f, yleVar, bVar);
            zzapdVarArr[i2] = zzapdVar2;
            zzapdVar2.start();
        }
    }
}
