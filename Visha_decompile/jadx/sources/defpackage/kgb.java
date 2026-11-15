package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.a;
import kotlin.reflect.jvm.internal.impl.builtins.UnsignedArrayType;
import kotlin.reflect.jvm.internal.impl.builtins.UnsignedType;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.types.n;

public final class kgb {
    public static final kgb a = new kgb();
    public static final Set b;
    public static final Set c;
    public static final HashMap d;
    public static final HashMap e;
    public static final HashMap f;
    public static final Set g;

    static {
        UnsignedType[] unsignedTypeArrValues = UnsignedType.values();
        ArrayList arrayList = new ArrayList(unsignedTypeArrValues.length);
        for (UnsignedType unsignedType : unsignedTypeArrValues) {
            arrayList.add(unsignedType.getTypeName());
        }
        b = i81.g1(arrayList);
        UnsignedArrayType[] unsignedArrayTypeArrValues = UnsignedArrayType.values();
        ArrayList arrayList2 = new ArrayList(unsignedArrayTypeArrValues.length);
        for (UnsignedArrayType unsignedArrayType : unsignedArrayTypeArrValues) {
            arrayList2.add(unsignedArrayType.getTypeName());
        }
        c = i81.g1(arrayList2);
        d = new HashMap();
        e = new HashMap();
        f = a.n(abb.a(UnsignedArrayType.UBYTEARRAY, by6.g("ubyteArrayOf")), abb.a(UnsignedArrayType.USHORTARRAY, by6.g("ushortArrayOf")), abb.a(UnsignedArrayType.UINTARRAY, by6.g("uintArrayOf")), abb.a(UnsignedArrayType.ULONGARRAY, by6.g("ulongArrayOf")));
        UnsignedType[] unsignedTypeArrValues2 = UnsignedType.values();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (UnsignedType unsignedType2 : unsignedTypeArrValues2) {
            linkedHashSet.add(unsignedType2.getArrayClassId().j());
        }
        g = linkedHashSet;
        for (UnsignedType unsignedType3 : UnsignedType.values()) {
            d.put(unsignedType3.getArrayClassId(), unsignedType3.getClassId());
            e.put(unsignedType3.getClassId(), unsignedType3.getArrayClassId());
        }
    }

    public static final boolean d(eh5 eh5Var) {
        px0 px0VarC;
        y45.j(eh5Var, "type");
        if (n.w(eh5Var) || (px0VarC = eh5Var.I0().c()) == null) {
            return false;
        }
        return a.c(px0VarC);
    }

    public final xw0 a(xw0 xw0Var) {
        y45.j(xw0Var, "arrayClassId");
        return (xw0) d.get(xw0Var);
    }

    public final boolean b(by6 by6Var) {
        y45.j(by6Var, "name");
        return g.contains(by6Var);
    }

    public final boolean c(xt1 xt1Var) {
        y45.j(xt1Var, "descriptor");
        xt1 xt1VarB = xt1Var.b();
        return (xt1VarB instanceof dv7) && y45.e(((dv7) xt1VarB).d(), e.v) && b.contains(xt1Var.getName());
    }
}
