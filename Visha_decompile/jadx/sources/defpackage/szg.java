package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbpj;
import com.google.android.gms.internal.ads.zzbpk;
import com.google.android.gms.internal.ads.zzbpn;
import com.google.android.gms.internal.ads.zzedw;
import com.google.android.gms.internal.ads.zzefy;
import com.google.android.gms.internal.ads.zzfbw;
import java.util.concurrent.Executor;

public final class szg implements pxg {
    public final Context a;
    public final ubg b;
    public final Executor c;

    public szg(Context context, ubg ubgVar, Executor executor) {
        this.a = context;
        this.b = ubgVar;
        this.c = executor;
    }

    public static final boolean c(vmh vmhVar, int i) {
        return vmhVar.a.a.g.contains(Integer.toString(i));
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzfbw {
        eoh eohVar = (eoh) nxgVar.b;
        enh enhVar = vmhVar.a.a;
        String string = hmhVar.v.toString();
        String strZzm = zzbs.zzm(hmhVar.s);
        eohVar.u(this.a, enhVar.d, string, strZzm, (zzbpe) nxgVar.c, enhVar.i, enhVar.g);
    }

    @Override
    public final Object b(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzefy, zzfbw {
        ddg ddgVarI;
        eoh eohVar = (eoh) nxgVar.b;
        zzbpj zzbpjVarD = eohVar.d();
        zzbpk zzbpkVarE = eohVar.e();
        zzbpn zzbpnVarI = eohVar.i();
        if (zzbpnVarI != null && c(vmhVar, 6)) {
            ddgVarI = ddg.g0(zzbpnVarI);
        } else if (zzbpjVarD != null && c(vmhVar, 6)) {
            ddgVarI = ddg.J(zzbpjVarD);
        } else if (zzbpjVarD != null && c(vmhVar, 2)) {
            ddgVarI = ddg.H(zzbpjVarD);
        } else if (zzbpkVarE != null && c(vmhVar, 6)) {
            ddgVarI = ddg.K(zzbpkVarE);
        } else {
            if (zzbpkVarE == null || !c(vmhVar, 1)) {
                throw new zzefy(1, "No native ad mappers");
            }
            ddgVarI = ddg.I(zzbpkVarE);
        }
        if (ddgVarI != null) {
            enh enhVar = vmhVar.a.a;
            if (enhVar.g.contains(Integer.toString(ddgVarI.P()))) {
                fdg fdgVarD = this.b.d(new puf(vmhVar, hmhVar, nxgVar.a), new tdg(ddgVarI), new jfg(zzbpkVarE, zzbpjVarD, zzbpnVarI));
                ((zzedw) nxgVar.c).zzc(fdgVarD.g());
                fdgVarD.c().C(new qpf(eohVar), this.c);
                return fdgVarD.h();
            }
        }
        throw new zzefy(1, "No corresponding native ad listener");
    }
}
