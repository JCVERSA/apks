package kotlin.reflect.jvm.internal.impl.types;

import defpackage.af5;
import defpackage.eo8;
import defpackage.md;
import defpackage.n37;
import defpackage.pd;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.PropertyReference1Impl;

public abstract class b {
    public static final af5[] a = {xq8.j(new PropertyReference1Impl(xq8.d(b.class, "descriptors"), "annotationsAttribute", "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"))};
    public static final eo8 b;

    static {
        n37 n37VarC = j.c.c(xq8.b(pd.class));
        y45.h(n37VarC, "null cannot be cast to non-null type kotlin.properties.ReadOnlyProperty<org.jetbrains.kotlin.types.TypeAttributes, T of org.jetbrains.kotlin.types.TypeAttributes.Companion.attributeAccessor?>");
        b = n37VarC;
    }

    public static final md a(j jVar) {
        md mdVarE;
        y45.j(jVar, "<this>");
        pd pdVarB = b(jVar);
        return (pdVarB == null || (mdVarE = pdVarB.e()) == null) ? md.u1.b() : mdVarE;
    }

    public static final pd b(j jVar) {
        y45.j(jVar, "<this>");
        return (pd) b.getValue(jVar, a[0]);
    }
}
