package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import defpackage.bjg;
import defpackage.enh;
import defpackage.eoh;
import defpackage.hmh;
import defpackage.izf;
import defpackage.nxg;
import defpackage.puf;
import defpackage.pxg;
import defpackage.qpf;
import defpackage.u0g;
import defpackage.vmh;
import defpackage.x0g;
import defpackage.x1h;
import defpackage.xig;
import defpackage.y1h;
import defpackage.yig;
import java.util.concurrent.Executor;

public final class h5 implements pxg {
    public final Context a;
    public final Executor b;
    public final bjg c;

    public h5(Context context, Executor executor, bjg bjgVar) {
        this.a = context;
        this.b = executor;
        this.c = bjgVar;
    }

    public static final void e(vmh vmhVar, hmh hmhVar, nxg nxgVar) {
        try {
            ((eoh) nxgVar.b).p(vmhVar.a.a.d, hmhVar.v.toString());
        } catch (Exception e) {
            String str = nxgVar.a;
            int i = zze.zza;
            zzo.zzk("Fail to load ad from adapter ".concat(String.valueOf(str)), e);
        }
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzfbw {
        eoh eohVar = (eoh) nxgVar.b;
        if (eohVar.c()) {
            e(vmhVar, hmhVar, nxgVar);
            return;
        }
        x1h x1hVar = new x1h(this, vmhVar, hmhVar, nxgVar);
        x0g x0gVar = nxgVar.c;
        ((zzedx) x0gVar).zzd(x1hVar);
        Context context = this.a;
        enh enhVar = vmhVar.a.a;
        String string = hmhVar.v.toString();
        eohVar.m(context, enhVar.d, null, (zzbvv) x0gVar, string);
    }

    @Override
    public final Object b(vmh vmhVar, hmh hmhVar, nxg nxgVar) {
        xig xigVarB = this.c.b(new puf(vmhVar, hmhVar, nxgVar.a), new yig(new y1h(this, nxgVar, hmhVar)));
        xigVarB.c().C(new qpf((eoh) nxgVar.b), this.b);
        u0g u0gVarD = xigVarB.d();
        izf izfVarA = xigVarB.a();
        ((zzedx) nxgVar.c).zzc(new zzehc(this, xigVarB.h(), izfVarA, u0gVarD, xigVarB.i()));
        return xigVarB.k();
    }
}
