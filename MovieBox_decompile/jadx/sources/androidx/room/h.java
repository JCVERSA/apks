package androidx.room;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

public abstract class h extends l0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(RoomDatabase database) {
        super(database);
        Intrinsics.h(database, "database");
    }

    protected abstract void j(z3.h hVar, Object obj);

    public final void k(Iterable entities) {
        Intrinsics.h(entities, "entities");
        z3.h hVarB = b();
        try {
            Iterator it = entities.iterator();
            while (it.hasNext()) {
                j(hVarB, it.next());
                hVarB.R();
            }
            h(hVarB);
        } catch (Throwable th2) {
            h(hVarB);
            throw th2;
        }
    }

    public final void l(Object obj) {
        z3.h hVarB = b();
        try {
            j(hVarB, obj);
            hVarB.R();
        } finally {
            h(hVarB);
        }
    }

    public final long m(Object obj) {
        z3.h hVarB = b();
        try {
            j(hVarB, obj);
            return hVarB.R();
        } finally {
            h(hVarB);
        }
    }
}
