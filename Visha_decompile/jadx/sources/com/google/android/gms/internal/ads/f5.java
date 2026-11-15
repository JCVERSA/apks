package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.cye;
import defpackage.ddg;
import defpackage.enh;
import defpackage.fdg;
import defpackage.hmh;
import defpackage.jfg;
import defpackage.nxg;
import defpackage.puf;
import defpackage.pxg;
import defpackage.tdg;
import defpackage.ubg;
import defpackage.uzg;
import defpackage.vmh;
import java.util.ArrayList;

public final class f5 implements pxg {
    public final Context a;
    public final ubg b;
    public zzbpn c;
    public final VersionInfoParcel d;

    public f5(Context context, ubg ubgVar, VersionInfoParcel versionInfoParcel) {
        this.a = context;
        this.b = ubgVar;
        this.d = versionInfoParcel;
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzfbw {
        try {
            zzbqx zzbqxVar = (zzbqx) nxgVar.b;
            zzbqxVar.zzq(hmhVar.Z);
            uzg uzgVar = null;
            if (this.d.clientJarVersion < ((Integer) zzbd.zzc().b(cye.T1)).intValue()) {
                zzbqxVar.zzm(hmhVar.U, hmhVar.v.toString(), vmhVar.a.a.d, ObjectWrapper.wrap(this.a), new zzeey(this, nxgVar, uzgVar), (zzbpe) nxgVar.c);
                return;
            }
            String str = hmhVar.U;
            String string = hmhVar.v.toString();
            enh enhVar = vmhVar.a.a;
            zzbqxVar.zzn(str, string, enhVar.d, ObjectWrapper.wrap(this.a), new zzeey(this, nxgVar, uzgVar), (zzbpe) nxgVar.c, enhVar.i);
        } catch (RemoteException e) {
            throw new zzfbw(e);
        }
    }

    @Override
    public final Object b(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzefy {
        ArrayList arrayList = vmhVar.a.a.g;
        if (!arrayList.contains(Integer.toString(6))) {
            throw new zzefy(2, "Unified must be used for RTB.");
        }
        ddg ddgVarG0 = ddg.g0(this.c);
        if (!arrayList.contains(Integer.toString(ddgVarG0.P()))) {
            throw new zzefy(1, "No corresponding native ad listener");
        }
        fdg fdgVarD = this.b.d(new puf(vmhVar, hmhVar, nxgVar.a), new tdg(ddgVarG0), new jfg(null, null, this.c));
        ((zzedw) nxgVar.c).zzc(fdgVarD.f());
        return fdgVarD.h();
    }
}
