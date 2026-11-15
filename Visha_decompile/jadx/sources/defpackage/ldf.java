package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;

public final class ldf extends sdf {
    public final fy0 b;
    public final qyi c;
    public final qyi d;
    public final qyi e;
    public final qyi f;
    public final qyi g;
    public final qyi h;
    public final qyi i;
    public final qyi j;

    public ldf(Context context, fy0 fy0Var, zzg zzgVar, rdf rdfVar) {
        this.b = fy0Var;
        fyi fyiVarA = gyi.a(context);
        this.c = fyiVarA;
        fyi fyiVarA2 = gyi.a(zzgVar);
        this.d = fyiVarA2;
        this.e = eyi.b(new fdf(fyiVarA, fyiVarA2));
        fyi fyiVarA3 = gyi.a(fy0Var);
        this.f = fyiVarA3;
        fyi fyiVarA4 = gyi.a(rdfVar);
        this.g = fyiVarA4;
        qyi qyiVarB = eyi.b(new hdf(fyiVarA3, fyiVarA2, fyiVarA4));
        this.h = qyiVarB;
        jdf jdfVar = new jdf(fyiVarA3, qyiVarB);
        this.i = jdfVar;
        this.j = eyi.b(new cef(fyiVarA, jdfVar));
    }

    @Override
    public final idf a() {
        return new idf(this.b, (gdf) this.h.zzb());
    }
}
