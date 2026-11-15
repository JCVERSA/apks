package kotlin.reflect.jvm.internal;

import defpackage.abb;
import defpackage.e74;
import defpackage.ff5;
import defpackage.ip0;
import defpackage.je5;
import defpackage.jf5;
import defpackage.jp0;
import defpackage.ke5;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;

public abstract class CachesKt {
    public static final ip0 a = jp0.a(new e74() {
        @Override
        public final KClassImpl invoke(Class<?> cls) {
            y45.j(cls, "it");
            return new KClassImpl(cls);
        }
    });
    public static final ip0 b = jp0.a(new e74() {
        @Override
        public final KPackageImpl invoke(Class<?> cls) {
            y45.j(cls, "it");
            return new KPackageImpl(cls);
        }
    });
    public static final ip0 c = jp0.a(new e74() {
        @Override
        public final ff5 invoke(Class<?> cls) {
            y45.j(cls, "it");
            return je5.b(CachesKt.c(cls), y71.k(), false, y71.k());
        }
    });
    public static final ip0 d = jp0.a(new e74() {
        @Override
        public final ff5 invoke(Class<?> cls) {
            y45.j(cls, "it");
            return je5.b(CachesKt.c(cls), y71.k(), true, y71.k());
        }
    });
    public static final ip0 e = jp0.a(new e74() {
        @Override
        public final ConcurrentHashMap<Pair<List<jf5>, Boolean>, ff5> invoke(Class<?> cls) {
            y45.j(cls, "it");
            return new ConcurrentHashMap<>();
        }
    });

    public static final ff5 a(Class cls, List list, boolean z) {
        y45.j(cls, "jClass");
        y45.j(list, "arguments");
        if (list.isEmpty()) {
            return z ? (ff5) d.a(cls) : (ff5) c.a(cls);
        }
        return b(cls, list, z);
    }

    public static final ff5 b(Class cls, List list, boolean z) {
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) e.a(cls);
        Pair pairA = abb.a(list, Boolean.valueOf(z));
        Object obj = concurrentHashMap.get(pairA);
        if (obj == null) {
            ff5 ff5VarB = je5.b(c(cls), list, z, y71.k());
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(pairA, ff5VarB);
            obj = objPutIfAbsent == null ? ff5VarB : objPutIfAbsent;
        }
        y45.i(obj, "cache.getOrPut(arguments…lable, emptyList())\n    }");
        return (ff5) obj;
    }

    public static final KClassImpl c(Class cls) {
        y45.j(cls, "jClass");
        Object objA = a.a(cls);
        y45.h(objA, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>");
        return (KClassImpl) objA;
    }

    public static final ke5 d(Class cls) {
        y45.j(cls, "jClass");
        return (ke5) b.a(cls);
    }
}
