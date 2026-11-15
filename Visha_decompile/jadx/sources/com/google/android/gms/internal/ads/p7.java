package com.google.android.gms.internal.ads;

import defpackage.m2i;
import defpackage.t3i;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

public abstract class p7 {
    public static ArrayList a(int i) {
        t3i.a(i, "initialArraySize");
        return new ArrayList(i);
    }

    public static List b(List list, m2i m2iVar) {
        return list instanceof RandomAccess ? new zzfxj(list, m2iVar) : new zzfxl(list, m2iVar);
    }
}
