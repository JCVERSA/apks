package defpackage;

import com.google.android.gms.internal.ads.b;
import com.google.android.gms.internal.ads.c;
import com.google.android.gms.internal.ads.zzaov;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

public final class ome implements gme {
    public final Map a = new HashMap();
    public final zzaov b;
    public final BlockingQueue c;
    public final b d;

    public ome(zzaov zzaovVar, BlockingQueue blockingQueue, b bVar) {
        this.d = bVar;
        this.b = zzaovVar;
        this.c = blockingQueue;
    }

    @Override
    public final void a(c cVar, kme kmeVar) {
        List list;
        xle xleVar = kmeVar.b;
        if (xleVar == null || xleVar.a(System.currentTimeMillis())) {
            zza(cVar);
            return;
        }
        String strZzj = cVar.zzj();
        synchronized (this) {
            list = (List) this.a.remove(strZzj);
        }
        if (list != null) {
            if (nme.b) {
                nme.d("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), strZzj);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.d.b((c) it.next(), kmeVar, null);
            }
        }
    }

    public final synchronized boolean b(c cVar) {
        try {
            Map map = this.a;
            String strZzj = cVar.zzj();
            if (!map.containsKey(strZzj)) {
                map.put(strZzj, null);
                cVar.i(this);
                if (nme.b) {
                    nme.a("new request, sending to network %s", strZzj);
                }
                return false;
            }
            List arrayList = (List) map.get(strZzj);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            cVar.zzm("waiting-for-response");
            arrayList.add(cVar);
            map.put(strZzj, arrayList);
            if (nme.b) {
                nme.a("Request for cacheKey=%s is in flight, putting on hold.", strZzj);
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void zza(c cVar) {
        try {
            Map map = this.a;
            String strZzj = cVar.zzj();
            List list = (List) map.remove(strZzj);
            if (list == null || list.isEmpty()) {
                return;
            }
            if (nme.b) {
                nme.d("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), strZzj);
            }
            c cVar2 = (c) list.remove(0);
            map.put(strZzj, list);
            cVar2.i(this);
            try {
                this.c.put(cVar2);
            } catch (InterruptedException e) {
                nme.b("Couldn't add request to queue. %s", e.toString());
                Thread.currentThread().interrupt();
                this.b.zzb();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
