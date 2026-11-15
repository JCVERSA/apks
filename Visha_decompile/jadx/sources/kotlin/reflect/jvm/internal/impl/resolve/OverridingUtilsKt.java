package kotlin.reflect.jvm.internal.impl.resolve;

import defpackage.cq9;
import defpackage.e74;
import defpackage.i81;
import defpackage.y45;
import defpackage.zfb;
import java.util.Collection;
import java.util.LinkedList;
import kotlin.reflect.jvm.internal.impl.descriptors.a;

public abstract class OverridingUtilsKt {
    public static final Collection a(Collection collection, e74 e74Var) {
        y45.j(collection, "<this>");
        y45.j(e74Var, "descriptorByHandle");
        if (collection.size() <= 1) {
            return collection;
        }
        LinkedList linkedList = new LinkedList(collection);
        cq9 cq9VarA = cq9.d.a();
        while (!linkedList.isEmpty()) {
            Object objO0 = i81.o0(linkedList);
            final cq9 cq9VarA2 = cq9.d.a();
            Collection collectionP = OverridingUtil.p(objO0, linkedList, e74Var, new e74() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    m290invoke(obj);
                    return zfb.a;
                }

                public final void m290invoke(Object obj) {
                    cq9 cq9Var = cq9VarA2;
                    y45.i(obj, "it");
                    cq9Var.add(obj);
                }
            });
            y45.i(collectionP, "conflictedHandles = Smar…nflictedHandles.add(it) }");
            if (collectionP.size() == 1 && cq9VarA2.isEmpty()) {
                Object objN0 = i81.N0(collectionP);
                y45.i(objN0, "overridableGroup.single()");
                cq9VarA.add(objN0);
            } else {
                Object objL = OverridingUtil.L(collectionP, e74Var);
                y45.i(objL, "selectMostSpecificMember…roup, descriptorByHandle)");
                a aVar = (a) e74Var.invoke(objL);
                for (Object obj : collectionP) {
                    y45.i(obj, "it");
                    if (!OverridingUtil.B(aVar, (a) e74Var.invoke(obj))) {
                        cq9VarA2.add(obj);
                    }
                }
                if (!cq9VarA2.isEmpty()) {
                    cq9VarA.addAll(cq9VarA2);
                }
                cq9VarA.add(objL);
            }
        }
        return cq9VarA;
    }
}
