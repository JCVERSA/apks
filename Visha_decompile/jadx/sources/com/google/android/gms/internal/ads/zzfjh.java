package com.google.android.gms.internal.ads;

import defpackage.iuh;
import java.util.Comparator;

final class zzfjh implements Comparator {
    final z5 zza;

    public zzfjh(z5 z5Var) {
        this.zza = z5Var;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        iuh iuhVar = (iuh) obj;
        iuh iuhVar2 = (iuh) obj2;
        Object objC = iuhVar2.c();
        z5 z5Var = this.zza;
        int iCompare = Double.compare(z5.k(z5Var, z5Var.i(objC)), z5.k(z5Var, z5Var.i(iuhVar.c())));
        return iCompare == 0 ? Long.compare(iuhVar.b(), iuhVar2.b()) : iCompare;
    }
}
