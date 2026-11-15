package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.AbstractSignatureParts;
import kotlin.reflect.jvm.internal.impl.types.n;

public final class zi9 extends AbstractSignatureParts {
    public final dd a;
    public final boolean b;
    public final gj5 c;
    public final AnnotationQualifierApplicabilityType d;
    public final boolean e;

    public zi9(dd ddVar, boolean z, gj5 gj5Var, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ddVar, z, gj5Var, annotationQualifierApplicabilityType, (i & 16) != 0 ? false : z2);
    }

    @Override
    public boolean A(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        return ((eh5) gh5Var).L0() instanceof a27;
    }

    @Override
    public boolean h(gd gdVar, gh5 gh5Var) {
        y45.j(gdVar, "<this>");
        return ((gdVar instanceof kd8) && ((kd8) gdVar).e()) || ((gdVar instanceof LazyJavaAnnotationDescriptor) && !p() && (((LazyJavaAnnotationDescriptor) gdVar).k() || m() == AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS)) || (gh5Var != null && d.q0((eh5) gh5Var) && i().m(gdVar) && !this.c.a().q().d());
    }

    @Override
    public kd i() {
        return this.c.a().a();
    }

    @Override
    public eh5 q(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        return ddb.a((eh5) gh5Var);
    }

    @Override
    public vcb v() {
        return yl9.a;
    }

    @Override
    public Iterable j(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        return ((eh5) gh5Var).getAnnotations();
    }

    @Override
    public Iterable l() {
        md annotations;
        dd ddVar = this.a;
        return (ddVar == null || (annotations = ddVar.getAnnotations()) == null) ? y71.k() : annotations;
    }

    @Override
    public AnnotationQualifierApplicabilityType m() {
        return this.d;
    }

    @Override
    public u85 n() {
        return this.c.b();
    }

    @Override
    public boolean o() {
        dd ddVar = this.a;
        return (ddVar instanceof h) && ((h) ddVar).x0() != null;
    }

    @Override
    public boolean p() {
        return this.c.a().q().c();
    }

    @Override
    public p54 s(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        qw0 qw0VarF = n.f((eh5) gh5Var);
        if (qw0VarF != null) {
            return y82.m(qw0VarF);
        }
        return null;
    }

    @Override
    public boolean u() {
        return this.e;
    }

    @Override
    public boolean w(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        return d.e0((eh5) gh5Var);
    }

    @Override
    public boolean x() {
        return this.b;
    }

    @Override
    public boolean y(gh5 gh5Var, gh5 gh5Var2) {
        y45.j(gh5Var, "<this>");
        y45.j(gh5Var2, "other");
        return this.c.a().k().b((eh5) gh5Var, (eh5) gh5Var2);
    }

    @Override
    public boolean z(kcb kcbVar) {
        y45.j(kcbVar, "<this>");
        return kcbVar instanceof ij5;
    }

    public zi9(dd ddVar, boolean z, gj5 gj5Var, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, boolean z2) {
        y45.j(gj5Var, "containerContext");
        y45.j(annotationQualifierApplicabilityType, "containerApplicabilityType");
        this.a = ddVar;
        this.b = z;
        this.c = gj5Var;
        this.d = annotationQualifierApplicabilityType;
        this.e = z2;
    }
}
