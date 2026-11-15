package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;

public final class kdf {
    public Context a;
    public fy0 b;
    public zzg c;
    public rdf d;

    public kdf(mdf mdfVar) {
    }

    public final kdf a(zzg zzgVar) {
        this.c = zzgVar;
        return this;
    }

    public final kdf b(Context context) {
        context.getClass();
        this.a = context;
        return this;
    }

    public final kdf c(fy0 fy0Var) {
        fy0Var.getClass();
        this.b = fy0Var;
        return this;
    }

    public final kdf d(rdf rdfVar) {
        this.d = rdfVar;
        return this;
    }

    public final sdf e() {
        pyi.c(this.a, Context.class);
        pyi.c(this.b, fy0.class);
        pyi.c(this.c, zzg.class);
        pyi.c(this.d, rdf.class);
        return new ldf(this.a, this.b, this.c, this.d);
    }
}
