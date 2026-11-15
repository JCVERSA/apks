package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractAnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public final class kd extends AbstractAnnotationTypeQualifierResolver {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kd(JavaTypeEnhancementState javaTypeEnhancementState) {
        super(javaTypeEnhancementState);
        y45.j(javaTypeEnhancementState, "javaTypeEnhancementState");
    }

    @Override
    public Iterable b(gd gdVar, boolean z) {
        y45.j(gdVar, "<this>");
        Map mapF = gdVar.f();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : mapF.entrySet()) {
            d81.C(arrayList, (!z || y45.e((by6) entry.getKey(), yc5.c)) ? y((pf1) entry.getValue()) : y71.k());
        }
        return arrayList;
    }

    @Override
    public o54 i(gd gdVar) {
        y45.j(gdVar, "<this>");
        return gdVar.d();
    }

    @Override
    public Object j(gd gdVar) {
        y45.j(gdVar, "<this>");
        qw0 qw0VarI = DescriptorUtilsKt.i(gdVar);
        y45.g(qw0VarI);
        return qw0VarI;
    }

    @Override
    public Iterable k(gd gdVar) {
        md annotations;
        y45.j(gdVar, "<this>");
        qw0 qw0VarI = DescriptorUtilsKt.i(gdVar);
        return (qw0VarI == null || (annotations = qw0VarI.getAnnotations()) == null) ? y71.k() : annotations;
    }

    public final List y(pf1 pf1Var) {
        if (!(pf1Var instanceof vh)) {
            return pf1Var instanceof fb3 ? x71.e(((fb3) pf1Var).c().e()) : y71.k();
        }
        Iterable iterable = (Iterable) ((vh) pf1Var).b();
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            d81.C(arrayList, y((pf1) it.next()));
        }
        return arrayList;
    }
}
