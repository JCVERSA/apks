package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzbk;
import com.google.android.gms.internal.ads.zzbuy;

public final class dqg implements p2g, f9g, b1g {
    public final Context b;
    public final smg c;

    public dqg(Context context, smg smgVar) {
        this.b = context;
        this.c = smgVar;
    }

    public final void b(final Context context) {
        if (((Boolean) zzbd.zzc().b(cye.N4)).booleanValue()) {
            zef.a.execute(new Runnable() {
                @Override
                public final void run() {
                    zzv.zzf().d(context, this.zza.c);
                }
            });
        }
    }

    @Override
    public final void g(zzbuy zzbuyVar) {
        if (((Boolean) zzbd.zzc().b(cye.P4)).booleanValue()) {
            b(this.b);
        }
    }

    @Override
    public final void w(vmh vmhVar) {
    }

    @Override
    public final void zze(zzbk zzbkVar) {
        if (((Boolean) zzbd.zzc().b(cye.Q4)).booleanValue()) {
            b(this.b);
        }
    }

    @Override
    public final void zzf(String str) {
    }

    @Override
    public final void zzt() {
        if (((Boolean) zzbd.zzc().b(cye.R4)).booleanValue()) {
            b(this.b);
        }
    }
}
