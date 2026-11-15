package defpackage;

import com.google.android.gms.internal.ads.zzbvh;
import com.google.android.gms.internal.ads.zzbvw;

public final class uig implements l4f {
    public final u0g b;
    public final zzbvw c;
    public final String d;
    public final String e;

    public uig(u0g u0gVar, hmh hmhVar) {
        this.b = u0gVar;
        this.c = hmhVar.l;
        this.d = hmhVar.j;
        this.e = hmhVar.k;
    }

    @Override
    public final void p(zzbvw zzbvwVar) {
        int i;
        String str;
        zzbvw zzbvwVar2 = this.c;
        if (zzbvwVar2 != null) {
            zzbvwVar = zzbvwVar2;
        }
        if (zzbvwVar != null) {
            str = zzbvwVar.zza;
            i = zzbvwVar.zzb;
        } else {
            i = 1;
            str = "";
        }
        this.b.F(new zzbvh(str, i), this.d, this.e);
    }

    @Override
    public final void zzb() {
        this.b.zze();
    }

    @Override
    public final void zzc() {
        this.b.zzf();
    }
}
