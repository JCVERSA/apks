package com.google.android.gms.internal.measurement;

import defpackage.k2j;
import defpackage.p2j;
import java.io.Serializable;

public abstract class c {
    public static k2j a(k2j k2jVar) {
        if ((k2jVar instanceof p2j) || (k2jVar instanceof zzii)) {
            return k2jVar;
        }
        return k2jVar instanceof Serializable ? new zzii(k2jVar) : new p2j(k2jVar);
    }

    public static k2j b(Object obj) {
        return new zzik(obj);
    }
}
