package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;

public abstract class od {
    public static final md a(md mdVar, md mdVar2) {
        y45.j(mdVar, "first");
        y45.j(mdVar2, "second");
        if (mdVar.isEmpty()) {
            return mdVar2;
        }
        return mdVar2.isEmpty() ? mdVar : new CompositeAnnotations(mdVar, mdVar2);
    }
}
