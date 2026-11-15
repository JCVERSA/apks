package defpackage;

import kotlin.reflect.jvm.internal.impl.types.b;
import kotlin.reflect.jvm.internal.impl.types.c;
import kotlin.reflect.jvm.internal.impl.types.j;

public abstract class lbb {
    public static final j a(j jVar, md mdVar) {
        j jVarP;
        y45.j(jVar, "<this>");
        y45.j(mdVar, "newAnnotations");
        if (b.a(jVar) == mdVar) {
            return jVar;
        }
        pd pdVarB = b.b(jVar);
        if (pdVarB != null && (jVarP = jVar.p(pdVarB)) != null) {
            jVar = jVarP;
        }
        return (mdVar.iterator().hasNext() || !mdVar.isEmpty()) ? jVar.o(new pd(mdVar)) : jVar;
    }

    public static final j b(md mdVar) {
        y45.j(mdVar, "<this>");
        return jbb.a.a(c.a, mdVar, null, null, 6, null);
    }
}
