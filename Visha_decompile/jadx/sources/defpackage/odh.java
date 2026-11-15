package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import java.util.concurrent.Callable;

public final class odh implements eeh {
    public final rdf a;
    public final g8i b;
    public final Context c;

    public odh(rdf rdfVar, g8i g8iVar, Context context) {
        this.a = rdfVar;
        this.b = g8iVar;
        this.c = context;
    }

    public static pdh a(odh odhVar) {
        rdf rdfVar = odhVar.a;
        Context context = odhVar.c;
        if (!rdfVar.p(context)) {
            return new pdh(null, null, null, null, null);
        }
        String strE = rdfVar.e(context);
        String str = strE == null ? "" : strE;
        String strC = rdfVar.c(context);
        String str2 = strC == null ? "" : strC;
        String strB = rdfVar.b(context);
        String str3 = strB == null ? "" : strB;
        boolean zP = rdfVar.p(context);
        Long l = null;
        String str4 = true != zP ? null : "fa";
        if ("TIME_OUT".equals(str2)) {
            l = (Long) zzbd.zzc().b(cye.x0);
        }
        return new pdh(str, str2, str3, str4 == null ? "" : str4, l);
    }

    @Override
    public final int zza() {
        return 34;
    }

    @Override
    public final im5 zzb() {
        return this.b.m(new Callable() {
            @Override
            public final Object call() {
                return odh.a(this.b);
            }
        });
    }
}
