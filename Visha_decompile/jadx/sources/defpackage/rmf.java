package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbki;
import com.google.android.gms.internal.ads.zzdsm;

public final class rmf implements cog {
    public final Context a;
    public final zzbki b;
    public final zlf c;
    public final rmf d = this;
    public final qyi e;
    public final qyi f;
    public final qyi g;
    public final qyi h;

    public rmf(zlf zlfVar, Context context, zzbki zzbkiVar) {
        this.c = zlfVar;
        this.a = context;
        this.b = zzbkiVar;
        fyi fyiVarA = gyi.a(this);
        this.e = fyiVarA;
        fyi fyiVarA2 = gyi.a(zzbkiVar);
        this.f = fyiVarA2;
        zng zngVar = new zng(fyiVarA2);
        this.g = zngVar;
        this.h = eyi.b(new aog(fyiVarA, zngVar));
    }

    public final yng b() {
        return zng.b(this.b);
    }

    @Override
    public final ung zzb() {
        return new omf(this.c, this.d, null);
    }

    @Override
    public final zzdsm zzd() {
        return (zzdsm) this.h.zzb();
    }
}
