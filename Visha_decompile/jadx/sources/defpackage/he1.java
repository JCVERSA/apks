package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.c;

public final class he1 implements lw7 {
    public final s74 a;
    public final ConcurrentHashMap b;

    public he1(s74 s74Var) {
        y45.j(s74Var, "compute");
        this.a = s74Var;
        this.b = new ConcurrentHashMap();
    }

    @Override
    public Object a(de5 de5Var, List list) {
        Object objM279constructorimpl;
        Object objPutIfAbsent;
        y45.j(de5Var, "key");
        y45.j(list, "types");
        ConcurrentHashMap concurrentHashMap = this.b;
        Class clsB = ed5.b(de5Var);
        Object kw7Var = concurrentHashMap.get(clsB);
        if (kw7Var == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(clsB, (kw7Var = new kw7()))) != null) {
            kw7Var = objPutIfAbsent;
        }
        kw7 kw7Var2 = (kw7) kw7Var;
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(new kf5((ff5) it.next()));
        }
        ConcurrentHashMap concurrentHashMap2 = kw7Var2.a;
        Object obj = concurrentHashMap2.get(arrayList);
        if (obj == null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl((ef5) this.a.invoke(de5Var, list));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(c.a(th));
            }
            Result resultM278boximpl = Result.m278boximpl(objM279constructorimpl);
            Object objPutIfAbsent2 = concurrentHashMap2.putIfAbsent(arrayList, resultM278boximpl);
            obj = objPutIfAbsent2 == null ? resultM278boximpl : objPutIfAbsent2;
        }
        y45.i(obj, "serializers.getOrPut(wra… { producer() }\n        }");
        return ((Result) obj).getValue();
    }
}
