package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbki;

public final class qmf implements bog {
    public final zlf a;
    public Context b;
    public zzbki c;

    public qmf(zlf zlfVar, dnf dnfVar) {
        this.a = zlfVar;
    }

    @Override
    public final bog a(Context context) {
        context.getClass();
        this.b = context;
        return this;
    }

    @Override
    public final bog b(zzbki zzbkiVar) {
        zzbkiVar.getClass();
        this.c = zzbkiVar;
        return this;
    }

    @Override
    public final cog zzc() {
        pyi.c(this.b, Context.class);
        pyi.c(this.c, zzbki.class);
        return new rmf(this.a, this.b, this.c);
    }
}
