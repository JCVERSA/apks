package com.google.android.gms.internal.ads;

import defpackage.rri;
import defpackage.sri;
import java.util.NoSuchElementException;

public final class ma extends rri {
    public final oa b;
    public sri c = a();
    public final zzgzy d;

    public ma(zzgzy zzgzyVar) {
        this.d = zzgzyVar;
        this.b = new oa(zzgzyVar, null);
    }

    public final sri a() {
        oa oaVar = this.b;
        if (oaVar.hasNext()) {
            return oaVar.next().iterator();
        }
        return null;
    }

    @Override
    public final boolean hasNext() {
        return this.c != null;
    }

    @Override
    public final byte zza() {
        sri sriVar = this.c;
        if (sriVar == null) {
            throw new NoSuchElementException();
        }
        byte bZza = sriVar.zza();
        if (!this.c.hasNext()) {
            this.c = a();
        }
        return bZza;
    }
}
