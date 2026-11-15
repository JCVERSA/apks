package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.dzg;
import defpackage.frf;
import defpackage.grf;
import defpackage.hmh;
import defpackage.irf;
import defpackage.nxg;
import defpackage.puf;
import defpackage.pxg;
import defpackage.vmh;
import defpackage.w9g;

public final class c5 implements pxg {
    public final Context a;
    public final irf b;

    public c5(Context context, irf irfVar) {
        this.a = context;
        this.b = irfVar;
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzfbw {
        try {
            zzbqx zzbqxVar = (zzbqx) nxgVar.b;
            zzbqxVar.zzq(hmhVar.Z);
            zzbqxVar.zzi(hmhVar.U, hmhVar.v.toString(), vmhVar.a.a.d, ObjectWrapper.wrap(this.a), new zzecw(nxgVar, null), (zzbpe) nxgVar.c);
        } catch (RemoteException e) {
            zze.zzb("Remote exception loading an app open RTB ad", e);
            throw new zzfbw(e);
        }
    }

    @Override
    public final Object b(vmh vmhVar, hmh hmhVar, nxg nxgVar) {
        dzg dzgVar = new dzg(hmhVar, (zzbqx) nxgVar.b, AdFormat.APP_OPEN_AD);
        frf frfVarA = this.b.a(new puf(vmhVar, hmhVar, nxgVar.a), new w9g(dzgVar, null), new grf(hmhVar.a0));
        dzgVar.b(frfVarA.b());
        ((zzedw) nxgVar.c).zzc(frfVarA.f());
        return frfVarA.h();
    }
}
