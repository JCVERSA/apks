package com.google.android.gms.internal.ads;

import defpackage.k3i;
import defpackage.m3i;
import java.io.Serializable;

public abstract class m6 {
    public static k3i a(k3i k3iVar) {
        if ((k3iVar instanceof m3i) || (k3iVar instanceof zzfup)) {
            return k3iVar;
        }
        return k3iVar instanceof Serializable ? new zzfup(k3iVar) : new m3i(k3iVar);
    }
}
