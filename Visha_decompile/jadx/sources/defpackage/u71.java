package defpackage;

import java.util.ArrayList;
import java.util.Collection;

public abstract class u71 {
    public static boolean a(Collection collection) {
        return collection == null || collection.size() == 0;
    }

    public static boolean b(Collection collection) {
        return !a(collection);
    }

    public static ArrayList c(Object... objArr) {
        ArrayList arrayList = new ArrayList();
        if (objArr != null && objArr.length != 0) {
            for (Object obj : objArr) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
