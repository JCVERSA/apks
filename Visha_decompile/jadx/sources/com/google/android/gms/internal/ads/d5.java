package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzcps;
import com.google.android.gms.internal.ads.zzfbw;
import defpackage.asf;
import defpackage.atf;
import defpackage.cye;
import defpackage.enh;
import defpackage.hmh;
import defpackage.imh;
import defpackage.k7i;
import defpackage.nxg;
import defpackage.puf;
import defpackage.pxg;
import defpackage.pyg;
import defpackage.vmh;
import defpackage.vrf;
import defpackage.zef;
import defpackage.ztf;
import java.util.concurrent.ExecutionException;

public final class d5 implements pxg {
    public final Context a;
    public final atf b;
    public View c;
    public zzbph d;

    public d5(Context context, atf atfVar) {
        this.a = context;
        this.b = atfVar;
    }

    @Override
    public final void a(vmh vmhVar, hmh hmhVar, nxg nxgVar) throws zzfbw {
        try {
            zzbqx zzbqxVar = (zzbqx) nxgVar.b;
            zzbqxVar.zzq(hmhVar.Z);
            pyg pygVar = null;
            if (((Boolean) zzbd.zzc().b(cye.U7)).booleanValue() && hmhVar.g0) {
                String str = hmhVar.U;
                String string = hmhVar.v.toString();
                enh enhVar = vmhVar.a.a;
                zzbqxVar.zzk(str, string, enhVar.d, ObjectWrapper.wrap(this.a), new zzedo(this, nxgVar, pygVar), (zzbpe) nxgVar.c, enhVar.e);
                return;
            }
            String str2 = hmhVar.U;
            String string2 = hmhVar.v.toString();
            enh enhVar2 = vmhVar.a.a;
            zzbqxVar.zzj(str2, string2, enhVar2.d, ObjectWrapper.wrap(this.a), new zzedo(this, nxgVar, pygVar), (zzbpe) nxgVar.c, enhVar2.e);
        } catch (RemoteException e) {
            throw new zzfbw(e);
        }
    }

    @Override
    public final Object b(vmh vmhVar, final hmh hmhVar, final nxg nxgVar) throws zzfbw {
        final View view;
        if (((Boolean) zzbd.zzc().b(cye.U7)).booleanValue() && hmhVar.g0) {
            try {
                view = (View) ObjectWrapper.unwrap(this.d.zze());
                boolean zZzf = this.d.zzf();
                if (view == null) {
                    throw new zzfbw(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
                if (zZzf) {
                    try {
                        view = (View) j8.n(j8.h(null), new k7i() {
                            @Override
                            public final im5 zza(Object obj) {
                                return j8.h(zzcps.zza(this.a.a, view, hmhVar));
                            }
                        }, zef.f).get();
                    } catch (InterruptedException | ExecutionException e) {
                        throw new zzfbw(e);
                    }
                }
            } catch (RemoteException e2) {
                throw new zzfbw(e2);
            }
        } else {
            view = this.c;
        }
        vrf vrfVarA = this.b.a(new puf(vmhVar, hmhVar, nxgVar.a), new asf(view, null, new ztf() {
            @Override
            public final zzea zza() throws zzfbw {
                try {
                    return ((zzbqx) nxgVar.b).zze();
                } catch (RemoteException e3) {
                    throw new zzfbw(e3);
                }
            }
        }, (imh) hmhVar.u.get(0)));
        vrfVarA.i().F(view);
        ((zzedw) nxgVar.c).zzc(vrfVarA.f());
        return vrfVarA.h();
    }
}
