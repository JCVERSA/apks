package com.google.android.gms.internal.ads;

import defpackage.ive;
import java.util.Comparator;

final class zzazj implements Comparator {
    public zzazj(l0 l0Var) {
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        ive iveVar = (ive) obj;
        ive iveVar2 = (ive) obj2;
        int i = iveVar.c - iveVar2.c;
        return i != 0 ? i : Long.compare(iveVar.a, iveVar2.a);
    }
}
