package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.c;
import com.google.android.gms.internal.ads.s3;
import com.google.android.gms.internal.ads.zzaps;
import defpackage.cye;
import defpackage.ene;
import defpackage.fme;
import defpackage.hme;
import defpackage.pme;
import defpackage.qme;
import defpackage.qyh;
import defpackage.ryh;
import defpackage.zme;
import java.io.File;
import java.util.regex.Pattern;

public final class zzaz extends qme {
    public final Context c;

    public zzaz(Context context, pme pmeVar) {
        super(pmeVar);
        this.c = context;
    }

    public static hme zzb(Context context) {
        hme hmeVar = new hme(new zme(new File(ryh.a(qyh.a(), context.getCacheDir(), "admob_volley")), 20971520), new zzaz(context, new ene(null, null)), 4);
        hmeVar.d();
        return hmeVar;
    }

    @Override
    public final fme zza(c cVar) throws zzaps {
        if (cVar.zza() == 0) {
            if (Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.E4), cVar.zzk())) {
                Context context = this.c;
                com.google.android.gms.ads.internal.client.zzbb.zzb();
                if (com.google.android.gms.ads.internal.util.client.zzf.zzt(context, 13400000)) {
                    fme fmeVarZza = new s3(context).zza(cVar);
                    if (fmeVarZza != null) {
                        zze.zza("Got gmscore asset response: ".concat(String.valueOf(cVar.zzk())));
                        return fmeVarZza;
                    }
                    zze.zza("Failed to get gmscore asset response: ".concat(String.valueOf(cVar.zzk())));
                }
            }
        }
        return super.zza(cVar);
    }
}
