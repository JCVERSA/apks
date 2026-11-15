package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbk;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbmc;

public final class z4h {
    public final sdg a;
    public final k4h b;
    public final nzf c;

    public z4h(sdg sdgVar, smg smgVar) {
        this.a = sdgVar;
        final k4h k4hVar = new k4h(smgVar);
        this.b = k4hVar;
        final zzbmc zzbmcVarG = sdgVar.g();
        this.c = new nzf() {
            @Override
            public final void A(zze zzeVar) {
                k4hVar.A(zzeVar);
                zzbmc zzbmcVar = zzbmcVarG;
                if (zzbmcVar != null) {
                    try {
                        zzbmcVar.zzf(zzeVar);
                    } catch (RemoteException e) {
                        zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
                if (zzbmcVar != null) {
                    try {
                        zzbmcVar.zze(zzeVar.zza);
                    } catch (RemoteException e2) {
                        zzo.zzl("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }

    public final nzf a() {
        return this.c;
    }

    public final b1g b() {
        return this.b;
    }

    public final lbg c() {
        return new lbg(this.a, this.b.k());
    }

    public final k4h d() {
        return this.b;
    }

    public final void e(zzbk zzbkVar) {
        this.b.o(zzbkVar);
    }
}
