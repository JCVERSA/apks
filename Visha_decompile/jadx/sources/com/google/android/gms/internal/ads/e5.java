package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.dzg;
import defpackage.hmh;
import defpackage.nxg;
import defpackage.puf;
import defpackage.pxg;
import defpackage.t9g;
import defpackage.vmh;
import defpackage.w9g;
import defpackage.yag;

public final class e5 implements pxg {
    public final Context a;
    public final yag b;

    public e5(Context context, yag yagVar) {
        this.a = context;
        this.b = yagVar;
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzfbw {
        try {
            zzbqx zzbqxVar = (zzbqx) nxgVar.b;
            zzbqxVar.zzq(hmhVar.Z);
            zzbqxVar.zzl(hmhVar.U, hmhVar.v.toString(), vmhVar.a.a.d, ObjectWrapper.wrap(this.a), new zzeej(this, nxgVar, null), (zzbpe) nxgVar.c);
        } catch (RemoteException e) {
            zze.zzb("Remote exception loading a interstitial RTB ad", e);
            throw new zzfbw(e);
        }
    }

    @Override
    public final Object b(vmh vmhVar, hmh hmhVar, nxg nxgVar) {
        dzg dzgVar = new dzg(hmhVar, (zzbqx) nxgVar.b, AdFormat.INTERSTITIAL);
        t9g t9gVarC = this.b.c(new puf(vmhVar, hmhVar, nxgVar.a), new w9g(dzgVar, null));
        dzgVar.b(t9gVarC.b());
        ((zzedw) nxgVar.c).zzc(t9gVarC.f());
        return t9gVarC.i();
    }
}
