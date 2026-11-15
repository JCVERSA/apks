package kotlin.reflect.jvm.internal.impl.builtins;

import defpackage.i81;
import defpackage.o54;
import defpackage.xw0;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class a {
    public static final a a = new a();
    public static final Set b;

    static {
        Set<PrimitiveType> set = PrimitiveType.NUMBER_TYPES;
        ArrayList arrayList = new ArrayList(z71.v(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(e.c((PrimitiveType) it.next()));
        }
        o54 o54VarL = e.a.h.l();
        y45.i(o54VarL, "string.toSafe()");
        List listK0 = i81.K0(arrayList, o54VarL);
        o54 o54VarL2 = e.a.j.l();
        y45.i(o54VarL2, "_boolean.toSafe()");
        List listK1 = i81.K0(listK0, o54VarL2);
        o54 o54VarL3 = e.a.s.l();
        y45.i(o54VarL3, "_enum.toSafe()");
        List listK2 = i81.K0(listK1, o54VarL3);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it2 = listK2.iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(xw0.m((o54) it2.next()));
        }
        b = linkedHashSet;
    }

    public final Set a() {
        return b;
    }

    public final Set b() {
        return b;
    }
}
