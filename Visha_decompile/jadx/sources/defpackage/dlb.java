package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public abstract class dlb {
    public static final List a(Collection collection, Collection collection2, a aVar) {
        y45.j(collection, "newValueParameterTypes");
        y45.j(collection2, "oldValueParameters");
        y45.j(aVar, "newOwner");
        collection.size();
        collection2.size();
        List listL1 = i81.l1(collection, collection2);
        ArrayList arrayList = new ArrayList(z71.v(listL1, 10));
        for (Iterator it = listL1.iterator(); it.hasNext(); it = it) {
            Pair pair = (Pair) it.next();
            eh5 eh5Var = (eh5) pair.component1();
            h hVar = (h) pair.component2();
            int index = hVar.getIndex();
            md annotations = hVar.getAnnotations();
            by6 name = hVar.getName();
            y45.i(name, "oldParameter.name");
            boolean zN = hVar.N();
            boolean zU0 = hVar.u0();
            boolean zR0 = hVar.r0();
            eh5 eh5VarK = hVar.x0() != null ? DescriptorUtilsKt.p(aVar).o().k(eh5Var) : null;
            yt9 source = hVar.getSource();
            y45.i(source, "oldParameter.source");
            arrayList.add(new ValueParameterDescriptorImpl(aVar, null, index, annotations, name, eh5Var, zN, zU0, zR0, eh5VarK, source));
        }
        return arrayList;
    }

    public static final LazyJavaStaticClassScope b(qw0 qw0Var) {
        y45.j(qw0Var, "<this>");
        qw0 qw0VarT = DescriptorUtilsKt.t(qw0Var);
        if (qw0VarT == null) {
            return null;
        }
        MemberScope memberScopeN0 = qw0VarT.n0();
        LazyJavaStaticClassScope lazyJavaStaticClassScope = memberScopeN0 instanceof LazyJavaStaticClassScope ? (LazyJavaStaticClassScope) memberScopeN0 : null;
        return lazyJavaStaticClassScope == null ? b(qw0VarT) : lazyJavaStaticClassScope;
    }
}
