package kotlin.reflect.jvm.internal.impl.types;

import defpackage.ah;
import defpackage.e74;
import defpackage.fl;
import defpackage.i81;
import defpackage.ibb;
import defpackage.qe5;
import defpackage.v71;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.util.TypeRegistry;

public final class j extends fl implements Iterable, qe5 {
    public static final a c = new a(null);
    public static final j d = new j(y71.k());

    public static final class a extends TypeRegistry {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override
        public int b(ConcurrentHashMap concurrentHashMap, String str, e74 e74Var) {
            int iIntValue;
            y45.j(concurrentHashMap, "<this>");
            y45.j(str, "key");
            y45.j(e74Var, "compute");
            Integer num = (Integer) concurrentHashMap.get(str);
            if (num != null) {
                return num.intValue();
            }
            synchronized (concurrentHashMap) {
                try {
                    Integer num2 = (Integer) concurrentHashMap.get(str);
                    if (num2 == null) {
                        Object objInvoke = e74Var.invoke(str);
                        concurrentHashMap.putIfAbsent(str, Integer.valueOf(((Number) objInvoke).intValue()));
                        num2 = (Integer) objInvoke;
                    }
                    y45.i(num2, "this[key] ?: compute(key…is.putIfAbsent(key, it) }");
                    iIntValue = num2.intValue();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return iIntValue;
        }

        public final j g(List list) {
            y45.j(list, "attributes");
            return list.isEmpty() ? h() : new j(list, null);
        }

        public final j h() {
            return j.d;
        }

        public a() {
        }
    }

    public j(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }

    @Override
    public TypeRegistry c() {
        return c;
    }

    public final j l(j jVar) {
        ibb ibbVarA;
        y45.j(jVar, "other");
        if (isEmpty() && jVar.isEmpty()) {
            return this;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = c.e().iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            ibb ibbVar = (ibb) b().get(iIntValue);
            ibb ibbVar2 = (ibb) jVar.b().get(iIntValue);
            if (ibbVar == null) {
                ibbVarA = ibbVar2 != null ? ibbVar2.a(ibbVar) : null;
            } else {
                ibbVarA = ibbVar.a(ibbVar2);
            }
            v71.a(arrayList, ibbVarA);
        }
        return c.g(arrayList);
    }

    public final boolean m(ibb ibbVar) {
        y45.j(ibbVar, "attribute");
        return b().get(c.d(ibbVar.b())) != null;
    }

    public final j n(j jVar) {
        ibb ibbVarC;
        y45.j(jVar, "other");
        if (isEmpty() && jVar.isEmpty()) {
            return this;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = c.e().iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            ibb ibbVar = (ibb) b().get(iIntValue);
            ibb ibbVar2 = (ibb) jVar.b().get(iIntValue);
            if (ibbVar == null) {
                ibbVarC = ibbVar2 != null ? ibbVar2.c(ibbVar) : null;
            } else {
                ibbVarC = ibbVar.c(ibbVar2);
            }
            v71.a(arrayList, ibbVarC);
        }
        return c.g(arrayList);
    }

    public final j o(ibb ibbVar) {
        y45.j(ibbVar, "attribute");
        if (m(ibbVar)) {
            return this;
        }
        if (isEmpty()) {
            return new j(ibbVar);
        }
        return c.g(i81.K0(i81.b1(this), ibbVar));
    }

    public final j p(ibb ibbVar) {
        y45.j(ibbVar, "attribute");
        if (isEmpty()) {
            return this;
        }
        ah ahVarB = b();
        ArrayList arrayList = new ArrayList();
        for (Object obj : ahVarB) {
            if (!y45.e((ibb) obj, ibbVar)) {
                arrayList.add(obj);
            }
        }
        return arrayList.size() == b().b() ? this : c.g(arrayList);
    }

    public j(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ibb ibbVar = (ibb) it.next();
            f(ibbVar.b(), ibbVar);
        }
    }

    public j(ibb ibbVar) {
        this(x71.e(ibbVar));
    }
}
