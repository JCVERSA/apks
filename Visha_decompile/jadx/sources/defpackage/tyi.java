package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class tyi implements fyi {
    public final List a;
    public final List b;

    static {
        gyi.a(Collections.emptySet());
    }

    public tyi(List list, List list2, ryi ryiVar) {
        this.a = list;
        this.b = list2;
    }

    public static syi a(int i, int i2) {
        return new syi(i, i2, null);
    }

    @Override
    public final Set zzb() {
        List list = this.a;
        int size = list.size();
        List list2 = this.b;
        ArrayList arrayList = new ArrayList(list2.size());
        int size2 = list2.size();
        for (int i = 0; i < size2; i++) {
            Collection collection = (Collection) ((qyi) list2.get(i)).zzb();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet hashSetA = cyi.a(size);
        int size3 = list.size();
        for (int i2 = 0; i2 < size3; i2++) {
            Object objZzb = ((qyi) list.get(i2)).zzb();
            objZzb.getClass();
            hashSetA.add(objZzb);
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                obj.getClass();
                hashSetA.add(obj);
            }
        }
        return Collections.unmodifiableSet(hashSetA);
    }
}
