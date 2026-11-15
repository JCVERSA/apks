package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzedw;
import com.google.android.gms.internal.ads.zzfbw;
import java.util.concurrent.Executor;

public final class fzg implements pxg {
    public final Context a;
    public final yag b;
    public final VersionInfoParcel c;
    public final Executor d;

    public fzg(Context context, VersionInfoParcel versionInfoParcel, yag yagVar, Executor executor) {
        this.a = context;
        this.c = versionInfoParcel;
        this.b = yagVar;
        this.d = executor;
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzfbw {
        eoh eohVar = (eoh) nxgVar.b;
        enh enhVar = vmhVar.a.a;
        String string = hmhVar.v.toString();
        String strZzm = zzbs.zzm(hmhVar.s);
        eohVar.t(this.a, enhVar.d, string, strZzm, (zzbpe) nxgVar.c);
    }

    @Override
    public final Object b(vmh vmhVar, hmh hmhVar, nxg nxgVar) {
        t9g t9gVarC = this.b.c(new puf(vmhVar, hmhVar, nxgVar.a), new w9g(new ezg(this, nxgVar, hmhVar), null));
        t9gVarC.c().C(new qpf((eoh) nxgVar.b), this.d);
        ((zzedw) nxgVar.c).zzc(t9gVarC.g());
        return t9gVarC.i();
    }
}
