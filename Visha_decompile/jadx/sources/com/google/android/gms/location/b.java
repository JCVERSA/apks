package com.google.android.gms.location;

import com.google.android.gms.common.api.internal.d;
import defpackage.bme;
import defpackage.zda;
import defpackage.zue;

public final class b extends bme {
    public final d b;
    public final a c;

    public b(a aVar, d dVar) {
        this.c = aVar;
        this.b = dVar;
    }

    @Override
    public final void accept(Object obj, Object obj2) {
        zue zueVar = (zue) obj;
        zda zdaVar = (zda) obj2;
        if (a()) {
            zzal zzalVar = new zzal(this.c, zdaVar);
            try {
                d.a aVarB = this.b.b();
                if (aVarB != null) {
                    zueVar.N(aVarB, zzalVar);
                }
            } catch (RuntimeException e) {
                zdaVar.d(e);
            }
        }
    }
}
