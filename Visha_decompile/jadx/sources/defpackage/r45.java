package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector;
import kotlin.reflect.jvm.internal.impl.types.e;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;

public abstract class r45 {
    public static final mgb a(List list) {
        sm9 sm9VarQ0;
        y45.j(list, "types");
        int size = list.size();
        if (size == 0) {
            throw new IllegalStateException("Expected some types");
        }
        if (size == 1) {
            return (mgb) i81.O0(list);
        }
        List<mgb> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        boolean z = false;
        boolean z2 = false;
        for (mgb mgbVar : list2) {
            z = z || fh5.a(mgbVar);
            if (mgbVar instanceof sm9) {
                sm9VarQ0 = (sm9) mgbVar;
            } else {
                if (!(mgbVar instanceof fy3)) {
                    throw new NoWhenBranchMatchedException();
                }
                if (e.a(mgbVar)) {
                    return mgbVar;
                }
                sm9VarQ0 = ((fy3) mgbVar).Q0();
                z2 = true;
            }
            arrayList.add(sm9VarQ0);
        }
        if (z) {
            return id3.d(ErrorTypeKind.INTERSECTION_OF_ERROR_TYPES, list.toString());
        }
        if (!z2) {
            return TypeIntersector.a.c(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList2.add(ky3.d((mgb) it.next()));
        }
        TypeIntersector typeIntersector = TypeIntersector.a;
        return KotlinTypeFactory.d(typeIntersector.c(arrayList), typeIntersector.c(arrayList2));
    }
}
