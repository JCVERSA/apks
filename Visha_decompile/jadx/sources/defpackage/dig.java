package defpackage;

import com.google.android.gms.ads.internal.overlay.zzac;
import java.util.Objects;

public final class dig {
    public final izf a;
    public final u0g b;
    public final h1g c;
    public final w1g d;
    public final r4g e;
    public final hmh f;
    public final kmh g;
    public final wpf h;

    public dig(izf izfVar, u0g u0gVar, h1g h1gVar, w1g w1gVar, r4g r4gVar, hmh hmhVar, kmh kmhVar, wpf wpfVar) {
        this.a = izfVar;
        this.b = u0gVar;
        this.c = h1gVar;
        this.d = w1gVar;
        this.e = r4gVar;
        this.f = hmhVar;
        this.g = kmhVar;
        this.h = wpfVar;
    }

    public final void a(hig higVar) {
        final u0g u0gVar = this.b;
        uhg uhgVar = higVar.a;
        Objects.requireNonNull(u0gVar);
        uhgVar.a(this.a, this.c, this.d, this.e, new zzac() {
            @Override
            public final void zzg() {
                u0gVar.zzb();
            }
        });
        higVar.h(this.f, this.g, this.h);
    }
}
