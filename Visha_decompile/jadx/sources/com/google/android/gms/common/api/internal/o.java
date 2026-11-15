package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import defpackage.zda;

public final class o extends f {
    public final g.a e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(g.a aVar, d dVar, Feature[] featureArr, boolean z, int i) {
        super(dVar, featureArr, z, i);
        this.e = aVar;
    }

    @Override
    public final void d(com.google.android.gms.common.api.a.b bVar, zda zdaVar) {
        this.e.a.accept(bVar, zdaVar);
    }
}
