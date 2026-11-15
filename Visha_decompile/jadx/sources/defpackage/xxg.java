package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzedw;
import com.google.android.gms.internal.ads.zzfbw;
import java.util.concurrent.Executor;

public final class xxg implements pxg {
    public final Context a;
    public final irf b;
    public final Executor c;

    public xxg(Context context, irf irfVar, Executor executor) {
        this.a = context;
        this.b = irfVar;
        this.c = executor;
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzfbw {
        eoh eohVar = (eoh) nxgVar.b;
        enh enhVar = vmhVar.a.a;
        String string = hmhVar.v.toString();
        eohVar.q(this.a, enhVar.d, string, (zzbpe) nxgVar.c);
    }

    @Override
    public final Object b(vmh vmhVar, hmh hmhVar, nxg nxgVar) {
        frf frfVarA = this.b.a(new puf(vmhVar, hmhVar, nxgVar.a), new w9g(new wxg(this, nxgVar, hmhVar), null), new grf(hmhVar.a0));
        frfVarA.c().C(new qpf((eoh) nxgVar.b), this.c);
        ((zzedw) nxgVar.c).zzc(frfVarA.g());
        return frfVarA.h();
    }
}
