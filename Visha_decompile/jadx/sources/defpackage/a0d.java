package defpackage;

import freemarker.core.BugException;
import freemarker.ext.beans.b;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public abstract class a0d {

    public interface a {
        b a(xd0 xd0Var);
    }

    public static String a(rd0 rd0Var) {
        return rd0Var.b();
    }

    public static b b(xd0 xd0Var, Map map, ReferenceQueue referenceQueue, a aVar) {
        Map map2;
        Reference reference;
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        synchronized (map) {
            try {
                map2 = (Map) map.get(contextClassLoader);
                if (map2 == null) {
                    map2 = new HashMap();
                    map.put(contextClassLoader, map2);
                    reference = null;
                } else {
                    reference = (Reference) map2.get(xd0Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        b bVar = reference != null ? (b) reference.get() : null;
        if (bVar != null) {
            return bVar;
        }
        xd0 xd0Var2 = (xd0) xd0Var.a(true);
        b bVarA = aVar.a(xd0Var2);
        if (!bVarA.D()) {
            throw new BugException();
        }
        synchronized (map) {
            try {
                Reference reference2 = (Reference) map2.get(xd0Var2);
                b bVar2 = reference2 != null ? (b) reference2.get() : null;
                if (bVar2 == null) {
                    map2.put(xd0Var2, new WeakReference(bVarA, referenceQueue));
                } else {
                    bVarA = bVar2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        c(map, referenceQueue);
        return bVarA;
    }

    public static void c(Map map, ReferenceQueue referenceQueue) {
        while (true) {
            Reference referencePoll = referenceQueue.poll();
            if (referencePoll == null) {
                return;
            }
            synchronized (map) {
                try {
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        Iterator it2 = ((Map) it.next()).values().iterator();
                        while (it2.hasNext()) {
                            if (it2.next() == referencePoll) {
                                it2.remove();
                                break;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
