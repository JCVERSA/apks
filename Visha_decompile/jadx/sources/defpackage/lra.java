package defpackage;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public abstract class lra {
    public static cx9 a(List list) {
        HashMap map = new HashMap();
        ArrayDeque arrayDeque = new ArrayDeque();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            pw9 pw9Var = (pw9) it.next();
            map2.put(pw9Var.getClass(), pw9Var);
            int iE = pw9Var.e();
            map.put(pw9Var.getClass(), Integer.valueOf(iE));
            if (iE == 0) {
                arrayDeque.offer(pw9Var.getClass());
            } else {
                for (Class cls : pw9Var.dependencies()) {
                    List arrayList = (List) map3.get(cls);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        map3.put(cls, arrayList);
                    }
                    arrayList.add(pw9Var.getClass());
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        while (!arrayDeque.isEmpty()) {
            Class cls2 = (Class) arrayDeque.poll();
            pw9 pw9Var2 = (pw9) map2.get(cls2);
            if (pw9Var2.b()) {
                arrayList3.add(pw9Var2);
            } else {
                arrayList4.add(pw9Var2);
            }
            if (map3.containsKey(cls2)) {
                for (Class cls3 : (List) map3.get(cls2)) {
                    Integer num = (Integer) map.get(cls3);
                    map.put(cls3, Integer.valueOf(num.intValue() - 1));
                    if (num.intValue() - 1 == 0) {
                        arrayDeque.offer(cls3);
                    }
                }
            }
        }
        arrayList2.addAll(arrayList4);
        arrayList2.addAll(arrayList3);
        return new cx9(arrayList2, map2, map3);
    }
}
