package kotlinx.serialization.json.internal;

import defpackage.ab5;
import defpackage.c74;
import defpackage.i81;
import defpackage.u95;
import defpackage.vb5;
import defpackage.y45;
import defpackage.za5;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.SerializationException;

public abstract class JsonNamesMapKt {
    public static final a.C0420a a = new a.C0420a();
    public static final a.C0420a b = new a.C0420a();

    public static final Map b(kotlinx.serialization.descriptors.a aVar, u95 u95Var) {
        String[] strArrNames;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        k(aVar, u95Var);
        int iE = aVar.e();
        for (int i = 0; i < iE; i++) {
            List listG = aVar.g(i);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listG) {
                if (obj instanceof za5) {
                    arrayList.add(obj);
                }
            }
            za5 za5Var = (za5) i81.Q0(arrayList);
            if (za5Var != null && (strArrNames = za5Var.names()) != null) {
                for (String str : strArrNames) {
                    c(linkedHashMap, aVar, str, i);
                }
            }
        }
        return linkedHashMap.isEmpty() ? kotlin.collections.a.l() : linkedHashMap;
    }

    public static final void c(Map map, kotlinx.serialization.descriptors.a aVar, String str, int i) {
        if (!map.containsKey(str)) {
            map.put(str, Integer.valueOf(i));
            return;
        }
        throw new JsonException("The suggested name '" + str + "' for property " + aVar.f(i) + " is already one of the names for property " + aVar.f(((Number) kotlin.collections.a.m(map, str)).intValue()) + " in " + aVar);
    }

    public static final Map d(final u95 u95Var, final kotlinx.serialization.descriptors.a aVar) {
        y45.j(u95Var, "<this>");
        y45.j(aVar, "descriptor");
        return (Map) vb5.a(u95Var).b(aVar, a, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Map<String, Integer> invoke() {
                return JsonNamesMapKt.b(aVar, u95Var);
            }
        });
    }

    public static final a.C0420a e() {
        return a;
    }

    public static final String f(kotlinx.serialization.descriptors.a aVar, u95 u95Var, int i) {
        y45.j(aVar, "<this>");
        y45.j(u95Var, "json");
        k(aVar, u95Var);
        return aVar.f(i);
    }

    public static final int g(kotlinx.serialization.descriptors.a aVar, u95 u95Var, String str) {
        y45.j(aVar, "<this>");
        y45.j(u95Var, "json");
        y45.j(str, "name");
        k(aVar, u95Var);
        int iC = aVar.c(str);
        return (iC == -3 && u95Var.d().k()) ? h(u95Var, aVar, str) : iC;
    }

    public static final int h(u95 u95Var, kotlinx.serialization.descriptors.a aVar, String str) {
        Integer num = (Integer) d(u95Var, aVar).get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    public static final int i(kotlinx.serialization.descriptors.a aVar, u95 u95Var, String str, String str2) {
        y45.j(aVar, "<this>");
        y45.j(u95Var, "json");
        y45.j(str, "name");
        y45.j(str2, "suffix");
        int iG = g(aVar, u95Var, str);
        if (iG != -3) {
            return iG;
        }
        throw new SerializationException(aVar.h() + " does not contain element with name '" + str + '\'' + str2);
    }

    public static int j(kotlinx.serialization.descriptors.a aVar, u95 u95Var, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = "";
        }
        return i(aVar, u95Var, str, str2);
    }

    public static final ab5 k(kotlinx.serialization.descriptors.a aVar, u95 u95Var) {
        y45.j(aVar, "<this>");
        y45.j(u95Var, "json");
        if (!y45.e(aVar.getKind(), kotlinx.serialization.descriptors.b.a.a)) {
            return null;
        }
        u95Var.d().h();
        return null;
    }
}
