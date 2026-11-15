package defpackage;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzdfl;

public final class dzg implements ebg {
    public final hmh a;
    public final zzbqx b;
    public final AdFormat c;
    public b0g d = null;

    public dzg(hmh hmhVar, zzbqx zzbqxVar, AdFormat adFormat) {
        this.a = hmhVar;
        this.b = zzbqxVar;
        this.c = adFormat;
    }

    @Override
    public final void a(boolean z, Context context, wzf wzfVar) throws zzdfl {
        boolean zZzs;
        try {
            AdFormat adFormat = AdFormat.BANNER;
            int iOrdinal = this.c.ordinal();
            if (iOrdinal == 1) {
                zZzs = this.b.zzs(ObjectWrapper.wrap(context));
            } else {
                if (iOrdinal != 2) {
                    if (iOrdinal == 5) {
                        zZzs = this.b.zzr(ObjectWrapper.wrap(context));
                    }
                    throw new zzdfl("Adapter failed to show.");
                }
                zZzs = this.b.zzt(ObjectWrapper.wrap(context));
            }
            if (zZzs) {
                b0g b0gVar = this.d;
                if (b0gVar == null) {
                    return;
                }
                if (((Boolean) zzbd.zzc().b(cye.I1)).booleanValue() || this.a.Y != 2) {
                    return;
                }
                b0gVar.zza();
                return;
            }
            throw new zzdfl("Adapter failed to show.");
        } catch (Throwable th) {
            throw new zzdfl(th);
        }
    }

    public final void b(b0g b0gVar) {
        this.d = b0gVar;
    }

    @Override
    public final hmh zza() {
        return this.a;
    }
}
