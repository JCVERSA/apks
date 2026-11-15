package androidx.appcompat.app;

import java.util.LinkedHashSet;
import java.util.Locale;

abstract class z {
    private static androidx.core.os.i a(androidx.core.os.i iVar, androidx.core.os.i iVar2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i10 = 0;
        while (i10 < iVar.g() + iVar2.g()) {
            Locale localeD = i10 < iVar.g() ? iVar.d(i10) : iVar2.d(i10 - iVar.g());
            if (localeD != null) {
                linkedHashSet.add(localeD);
            }
            i10++;
        }
        return androidx.core.os.i.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
    }

    static androidx.core.os.i b(androidx.core.os.i iVar, androidx.core.os.i iVar2) {
        return (iVar == null || iVar.f()) ? androidx.core.os.i.e() : a(iVar, iVar2);
    }
}
