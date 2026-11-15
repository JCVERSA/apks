package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.load.kotlin.b;

public abstract class qe0 {
    public static final b a(qq6 qq6Var, NotFoundClasses notFoundClasses, vx9 vx9Var, vg5 vg5Var, jd5 jd5Var) {
        y45.j(qq6Var, "module");
        y45.j(notFoundClasses, "notFoundClasses");
        y45.j(vx9Var, "storageManager");
        y45.j(vg5Var, "kotlinClassFinder");
        y45.j(jd5Var, "jvmMetadataVersion");
        b bVar = new b(qq6Var, notFoundClasses, vx9Var, vg5Var);
        bVar.N(jd5Var);
        return bVar;
    }
}
