package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzedw;
import java.util.concurrent.Executor;

public final class f1h implements pxg {
    public final Context a;
    public final Executor b;
    public final bjg c;

    public f1h(Context context, Executor executor, bjg bjgVar) {
        this.a = context;
        this.b = executor;
        this.c = bjgVar;
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) {
        try {
            enh enhVar = vmhVar.a.a;
            if (enhVar.o.a == 3) {
                ((eoh) nxgVar.b).w(this.a, enhVar.d, hmhVar.v.toString(), (zzbpe) nxgVar.c);
            } else {
                ((eoh) nxgVar.b).v(this.a, enhVar.d, hmhVar.v.toString(), (zzbpe) nxgVar.c);
            }
        } catch (Exception e) {
            String str = nxgVar.a;
            int i = zze.zza;
            zzo.zzk("Fail to load ad from adapter ".concat(String.valueOf(str)), e);
        }
    }

    @Override
    public final Object b(vmh vmhVar, hmh hmhVar, nxg nxgVar) {
        xig xigVarB = this.c.b(new puf(vmhVar, hmhVar, nxgVar.a), new yig(new e1h(this, nxgVar, hmhVar)));
        xigVarB.c().C(new qpf((eoh) nxgVar.b), this.b);
        ((zzedw) nxgVar.c).zzc(xigVarB.n());
        return xigVarB.k();
    }
}
