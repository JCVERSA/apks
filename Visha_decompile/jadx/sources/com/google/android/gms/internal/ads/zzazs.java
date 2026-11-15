package com.google.android.gms.internal.ads;

import defpackage.dve;
import defpackage.lve;
import java.util.Comparator;

public final class zzazs implements Comparator {
    public zzazs(lve lveVar) {
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        dve dveVar = (dve) obj;
        dve dveVar2 = (dve) obj2;
        if (dveVar.d() < dveVar2.d()) {
            return -1;
        }
        if (dveVar.d() <= dveVar2.d()) {
            if (dveVar.b() < dveVar2.b()) {
                return -1;
            }
            if (dveVar.b() <= dveVar2.b()) {
                float fA = (dveVar.a() - dveVar.d()) * (dveVar.c() - dveVar.b());
                float fA2 = (dveVar2.a() - dveVar2.d()) * (dveVar2.c() - dveVar2.b());
                if (fA > fA2) {
                    return -1;
                }
                if (fA >= fA2) {
                    return 0;
                }
            }
        }
        return 1;
    }
}
