package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;

public abstract class JsonNamesMapKt {

    private static final u.a f65308a = new u.a();

    public static final Map a(kotlinx.serialization.descriptors.f fVar) {
        String[] strArrNames;
        Intrinsics.h(fVar, "<this>");
        int iE = fVar.e();
        Map mapA = null;
        for (int i10 = 0; i10 < iE; i10++) {
            List listG = fVar.g(i10);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listG) {
                if (obj instanceof kotlinx.serialization.json.q) {
                    arrayList.add(obj);
                }
            }
            kotlinx.serialization.json.q qVar = (kotlinx.serialization.json.q) CollectionsKt.G0(arrayList);
            if (qVar != null && (strArrNames = qVar.names()) != null) {
                for (String str : strArrNames) {
                    if (mapA == null) {
                        mapA = t.a(fVar.e());
                    }
                    Intrinsics.e(mapA);
                    b(mapA, fVar, str, i10);
                }
            }
        }
        return mapA == null ? MapsKt.h() : mapA;
    }

    private static final void b(Map map, kotlinx.serialization.descriptors.f fVar, String str, int i10) {
        if (!map.containsKey(str)) {
            map.put(str, Integer.valueOf(i10));
            return;
        }
        throw new JsonException("The suggested name '" + str + "' for property " + fVar.f(i10) + " is already one of the names for property " + fVar.f(((Number) MapsKt.i(map, str)).intValue()) + " in " + fVar);
    }

    public static final u.a c() {
        return f65308a;
    }

    public static final int d(kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.json.a json, String name) {
        Intrinsics.h(fVar, "<this>");
        Intrinsics.h(json, "json");
        Intrinsics.h(name, "name");
        int iC = fVar.c(name);
        if (iC != -3 || !json.e().j()) {
            return iC;
        }
        Integer num = (Integer) ((Map) kotlinx.serialization.json.w.a(json).b(fVar, f65308a, new JsonNamesMapKt$getJsonNameIndex$alternativeNamesMap$1(fVar))).get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    public static final int e(kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.json.a json, String name, String suffix) {
        Intrinsics.h(fVar, "<this>");
        Intrinsics.h(json, "json");
        Intrinsics.h(name, "name");
        Intrinsics.h(suffix, "suffix");
        int iD = d(fVar, json, name);
        if (iD != -3) {
            return iD;
        }
        throw new SerializationException(fVar.i() + " does not contain element with name '" + name + '\'' + suffix);
    }

    public static int f(kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.json.a aVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = "";
        }
        return e(fVar, aVar, str, str2);
    }
}
