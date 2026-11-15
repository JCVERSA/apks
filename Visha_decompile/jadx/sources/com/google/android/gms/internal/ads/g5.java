package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.bjg;
import defpackage.dzg;
import defpackage.enh;
import defpackage.hmh;
import defpackage.nxg;
import defpackage.puf;
import defpackage.pxg;
import defpackage.vmh;
import defpackage.xig;
import defpackage.yig;

public final class g5 implements pxg {
    public final Context a;
    public final bjg b;

    public g5(Context context, bjg bjgVar) {
        this.a = context;
        this.b = bjgVar;
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) {
        try {
            zzbqx zzbqxVar = (zzbqx) nxgVar.b;
            zzbqxVar.zzq(hmhVar.Z);
            enh enhVar = vmhVar.a.a;
            if (enhVar.o.a == 3) {
                zzbqxVar.zzo(hmhVar.U, hmhVar.v.toString(), enhVar.d, ObjectWrapper.wrap(this.a), new zzegj(this, nxgVar, null), (zzbpe) nxgVar.c);
            } else {
                zzbqxVar.zzp(hmhVar.U, hmhVar.v.toString(), enhVar.d, ObjectWrapper.wrap(this.a), new zzegj(this, nxgVar, null), (zzbpe) nxgVar.c);
            }
        } catch (RemoteException e) {
            zze.zzb("Remote exception loading a rewarded RTB ad", e);
        }
    }

    @Override
    public final Object b(vmh vmhVar, hmh hmhVar, nxg nxgVar) {
        dzg dzgVar = new dzg(hmhVar, (zzbqx) nxgVar.b, AdFormat.REWARDED);
        xig xigVarB = this.b.b(new puf(vmhVar, hmhVar, nxgVar.a), new yig(dzgVar));
        dzgVar.b(xigVarB.b());
        ((zzedw) nxgVar.c).zzc(xigVarB.o());
        return xigVarB.k();
    }
}
