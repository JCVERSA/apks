package kotlinx.serialization.internal;

import defpackage.c74;
import defpackage.de5;
import defpackage.ed5;
import defpackage.ef5;
import defpackage.ff5;
import defpackage.kf5;
import defpackage.kw7;
import defpackage.lw6;
import defpackage.lw7;
import defpackage.lx0;
import defpackage.s74;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.c;

public final class ClassValueParametrizedCache implements lw7 {
    public final s74 a;
    public final lx0 b;

    public ClassValueParametrizedCache(s74 s74Var) {
        y45.j(s74Var, "compute");
        this.a = s74Var;
        this.b = new lx0();
    }

    @Override
    public Object a(de5 de5Var, List list) {
        Object objM279constructorimpl;
        y45.j(de5Var, "key");
        y45.j(list, "types");
        Object obj = this.b.get(ed5.b(de5Var));
        y45.i(obj, "get(key)");
        lw6 lw6Var = (lw6) obj;
        Object objA = lw6Var.a.get();
        if (objA == null) {
            objA = lw6Var.a(new c74() {
                @Override
                public final Object invoke() {
                    return new kw7();
                }
            });
        }
        kw7 kw7Var = (kw7) objA;
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(new kf5((ff5) it.next()));
        }
        ConcurrentHashMap concurrentHashMap = kw7Var.a;
        Object obj2 = concurrentHashMap.get(arrayList);
        if (obj2 == null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl((ef5) this.a.invoke(de5Var, list));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(c.a(th));
            }
            Result resultM278boximpl = Result.m278boximpl(objM279constructorimpl);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(arrayList, resultM278boximpl);
            obj2 = objPutIfAbsent == null ? resultM278boximpl : objPutIfAbsent;
        }
        y45.i(obj2, "serializers.getOrPut(wra… { producer() }\n        }");
        return ((Result) obj2).getValue();
    }
}
