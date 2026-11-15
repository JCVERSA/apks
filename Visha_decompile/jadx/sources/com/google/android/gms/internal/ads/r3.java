package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import defpackage.eff;
import defpackage.im5;
import defpackage.k7i;

public final class r3 implements k7i {
    public final zzbku a;

    public r3(s3 s3Var, zzbku zzbkuVar) {
        this.a = zzbkuVar;
    }

    @Override
    public final im5 zza(Object obj) throws RemoteException {
        eff effVar = new eff();
        ((zzbla) obj).zze(this.a, new zzblb(this, effVar));
        return effVar;
    }
}
