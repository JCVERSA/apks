package com.google.android.gms.ads.nonagon.signalgeneration;

import defpackage.fqh;
import defpackage.fyi;
import defpackage.g8i;
import defpackage.i8g;
import defpackage.qyi;

public final class zzbf implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;

    public zzbf(qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar4;
    }

    @Override
    public final Object zzb() {
        Object obj = (zzw) this.a.zzb();
        zzbm zzbmVar = (zzbm) this.b.zzb();
        g8i g8iVarB = fqh.b();
        if (((Integer) this.c.zzb()).intValue() == 2) {
            obj = zzbmVar;
        }
        return new i8g(obj, g8iVarB);
    }
}
