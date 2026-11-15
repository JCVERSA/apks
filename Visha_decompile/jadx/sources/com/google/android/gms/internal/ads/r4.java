package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.fkh;
import defpackage.lkf;
import defpackage.tng;
import defpackage.yng;

public final class r4 implements tng {
    public final long a;
    public final zzejz b;

    public r4(long j, Context context, yng yngVar, lkf lkfVar, String str) {
        this.a = j;
        fkh fkhVarY = lkfVar.y();
        fkhVarY.b(context);
        fkhVarY.a(new com.google.android.gms.ads.internal.client.zzr());
        fkhVarY.zzb(str);
        zzejz zzejzVarZza = fkhVarY.zzd().zza();
        this.b = zzejzVarZza;
        zzejzVarZza.zzD(new zzdsq(this, yngVar));
    }

    @Override
    public final void a(zzm zzmVar) {
        this.b.zzab(zzmVar);
    }

    @Override
    public final void zza() {
        this.b.zzx();
    }

    @Override
    public final void zzc() {
        this.b.zzW(ObjectWrapper.wrap(null));
    }
}
