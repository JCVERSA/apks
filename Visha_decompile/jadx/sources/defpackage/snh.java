package defpackage;

import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzfgn;
import java.util.Iterator;
import java.util.List;

public final class snh {
    public final hmh a;
    public final kmh b;
    public final wth c;
    public final oth d;
    public final zzfgn e;
    public final wpf f;

    public snh(wth wthVar, oth othVar, hmh hmhVar, kmh kmhVar, wpf wpfVar, zzfgn zzfgnVar) {
        this.a = hmhVar;
        this.b = kmhVar;
        this.c = wthVar;
        this.d = othVar;
        this.f = wpfVar;
        this.e = zzfgnVar;
    }

    public final void a(List list, a2g a2gVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b((String) it.next(), 2, a2gVar);
        }
    }

    public final void b(String str, int i, a2g a2gVar) {
        hmh hmhVar = this.a;
        if (hmhVar.i0) {
            this.d.a(str, this.b.b, i);
            return;
        }
        this.c.d(str, hmhVar.x0, this.e, a2gVar);
    }

    public final void c(List list, int i) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            j8.r((((Boolean) zzbd.zzc().b(cye.ga)).booleanValue() && wpf.j(str)) ? this.f.e(str, zzbb.zze()) : j8.h(str), new rnh(this, i), zef.a);
        }
    }
}
