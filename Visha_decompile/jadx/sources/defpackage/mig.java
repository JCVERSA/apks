package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.overlay.zzac;
import java.util.Objects;

public final class mig {
    public final izf a;
    public final u0g b;
    public final h1g c;
    public final w1g d;
    public final r4g e;
    public final r8g f;
    public final smg g;
    public final wth h;
    public final dwg i;
    public final wpf j;

    public mig(izf izfVar, u0g u0gVar, h1g h1gVar, w1g w1gVar, r4g r4gVar, r8g r8gVar, smg smgVar, wth wthVar, dwg dwgVar, wpf wpfVar) {
        this.a = izfVar;
        this.b = u0gVar;
        this.c = h1gVar;
        this.d = w1gVar;
        this.e = r4gVar;
        this.f = r8gVar;
        this.g = smgVar;
        this.h = wthVar;
        this.i = dwgVar;
        this.j = wpfVar;
    }

    public final void a(nig nigVar, ejf ejfVar) {
        kig kigVar = nigVar.a;
        final u0g u0gVar = this.b;
        Objects.requireNonNull(u0gVar);
        kigVar.b(this.a, this.c, this.d, this.e, new zzac() {
            @Override
            public final void zzg() {
                u0gVar.zzb();
            }
        }, this.f);
        if (!((Boolean) zzbd.zzc().b(cye.ma)).booleanValue() || ejfVar == null || ejfVar.zzN() == null) {
            return;
        }
        ikf ikfVarZzN = ejfVar.zzN();
        wpf wpfVar = this.j;
        dwg dwgVar = this.i;
        ikfVarZzN.i(wpfVar, dwgVar, this.h);
        ikfVarZzN.f(wpfVar, dwgVar, this.g);
    }
}
