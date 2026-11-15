package defpackage;

import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

public abstract class lq6 {
    public static final ConcurrentMap a = new ConcurrentHashMap();

    public static final tw8 a(Class cls) {
        y45.j(cls, "<this>");
        ClassLoader classLoaderF = ReflectClassUtilKt.f(cls);
        zgc zgcVar = new zgc(classLoaderF);
        ConcurrentMap concurrentMap = a;
        WeakReference weakReference = (WeakReference) concurrentMap.get(zgcVar);
        if (weakReference != null) {
            tw8 tw8Var = (tw8) weakReference.get();
            if (tw8Var != null) {
                return tw8Var;
            }
            concurrentMap.remove(zgcVar, weakReference);
        }
        tw8 tw8VarA = tw8.c.a(classLoaderF);
        while (true) {
            try {
                ConcurrentMap concurrentMap2 = a;
                WeakReference weakReference2 = (WeakReference) concurrentMap2.putIfAbsent(zgcVar, new WeakReference(tw8VarA));
                if (weakReference2 == null) {
                    zgcVar.a(null);
                    return tw8VarA;
                }
                tw8 tw8Var2 = (tw8) weakReference2.get();
                if (tw8Var2 != null) {
                    zgcVar.a(null);
                    return tw8Var2;
                }
                concurrentMap2.remove(zgcVar, weakReference2);
            } catch (Throwable th) {
                zgcVar.a(null);
                throw th;
            }
        }
    }
}
