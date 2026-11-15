package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.k;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class gw9 {

    public static final class a extends k {
        public final List d;

        public a(List list) {
            this.d = list;
        }

        @Override
        public mcb k(sbb sbbVar) {
            y45.j(sbbVar, "key");
            if (!this.d.contains(sbbVar)) {
                return null;
            }
            px0 px0VarC = sbbVar.c();
            y45.h(px0VarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
            return n.s((hcb) px0VarC);
        }
    }

    public static final eh5 a(List list, List list2, d dVar) {
        eh5 eh5VarP = TypeSubstitutor.g(new a(list)).p((eh5) i81.o0(list2), Variance.OUT_VARIANCE);
        if (eh5VarP == null) {
            eh5VarP = dVar.y();
        }
        y45.i(eh5VarP, "typeParameters: List<Typ… ?: builtIns.defaultBound");
        return eh5VarP;
    }

    public static final eh5 b(hcb hcbVar) {
        y45.j(hcbVar, "<this>");
        xt1 xt1VarB = hcbVar.b();
        y45.i(xt1VarB, "this.containingDeclaration");
        if (xt1VarB instanceof qx0) {
            List parameters = ((qx0) xt1VarB).m().getParameters();
            y45.i(parameters, "descriptor.typeConstructor.parameters");
            List list = parameters;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                sbb sbbVarM = ((hcb) it.next()).m();
                y45.i(sbbVarM, "it.typeConstructor");
                arrayList.add(sbbVarM);
            }
            List upperBounds = hcbVar.getUpperBounds();
            y45.i(upperBounds, "upperBounds");
            return a(arrayList, upperBounds, DescriptorUtilsKt.j(hcbVar));
        }
        if (!(xt1VarB instanceof e)) {
            throw new IllegalArgumentException("Unsupported descriptor type to build star projection type based on type parameters of it");
        }
        List typeParameters = ((e) xt1VarB).getTypeParameters();
        y45.i(typeParameters, "descriptor.typeParameters");
        List list2 = typeParameters;
        ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            sbb sbbVarM2 = ((hcb) it2.next()).m();
            y45.i(sbbVarM2, "it.typeConstructor");
            arrayList2.add(sbbVarM2);
        }
        List upperBounds2 = hcbVar.getUpperBounds();
        y45.i(upperBounds2, "upperBounds");
        return a(arrayList2, upperBounds2, DescriptorUtilsKt.j(hcbVar));
    }
}
