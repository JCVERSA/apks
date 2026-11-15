package com.google.android.play.core.review.internal;

import android.os.IBinder;
import defpackage.hij;
import defpackage.ykj;
import java.util.Iterator;

final class zzp extends zzj {
    final IBinder zza;
    final hij zzb;

    public zzp(hij hijVar, IBinder iBinder) {
        this.zza = iBinder;
    }

    @Override
    public final void zza() {
        zzf zzfVarZzb = zze.zzb(this.zza);
        this.zzb.getClass();
        ykj.j(null, zzfVarZzb);
        this.zzb.getClass();
        ykj.n(null);
        this.zzb.getClass();
        ykj.i(null, false);
        this.zzb.getClass();
        Iterator it = ykj.f(null).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.zzb.getClass();
        ykj.f(null).clear();
    }
}
