package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import java.util.ArrayDeque;

public final class oph {
    public final voh a;
    public final mph b;
    public final ooh c;
    public wph e;
    public int f = 1;
    public final ArrayDeque d = new ArrayDeque();

    public oph(voh vohVar, ooh oohVar, mph mphVar) {
        this.a = vohVar;
        this.c = oohVar;
        this.b = mphVar;
        oohVar.b(new jph(this));
    }

    public static void c(oph ophVar) {
        synchronized (ophVar) {
            ophVar.f = 1;
            ophVar.h();
        }
    }

    public final synchronized im5 a(nph nphVar) {
        this.f = 2;
        if (i()) {
            return null;
        }
        return this.e.c(nphVar);
    }

    public final synchronized void f(nph nphVar) {
        this.d.add(nphVar);
    }

    public final synchronized void h() {
        if (((Boolean) zzbd.zzc().b(cye.l6)).booleanValue() && !zzv.zzp().j().zzg().h()) {
            this.d.clear();
            return;
        }
        if (i()) {
            while (true) {
                ArrayDeque arrayDeque = this.d;
                if (arrayDeque.isEmpty()) {
                    break;
                }
                nph nphVar = (nph) arrayDeque.pollFirst();
                if (nphVar == null || (nphVar.zza() != null && this.a.a(nphVar.zza()))) {
                    wph wphVar = new wph(this.a, this.b, nphVar);
                    this.e = wphVar;
                    wphVar.d(new kph(this, nphVar));
                    return;
                }
            }
        }
    }

    public final synchronized boolean i() {
        return this.e == null;
    }
}
