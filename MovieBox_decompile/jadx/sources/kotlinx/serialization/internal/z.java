package kotlinx.serialization.internal;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

final class z implements j1 {

    private final Function2 f65250a;

    private final ConcurrentHashMap f65251b;

    public z(Function2 compute) {
        Intrinsics.h(compute, "compute");
        this.f65250a = compute;
        this.f65251b = new ConcurrentHashMap();
    }

    @Override
    public Object a(KClass key, List types) {
        Object objM453constructorimpl;
        Object objPutIfAbsent;
        Intrinsics.h(key, "key");
        Intrinsics.h(types, "types");
        ConcurrentHashMap concurrentHashMap = this.f65251b;
        Class clsA = JvmClassMappingKt.a(key);
        Object i1Var = concurrentHashMap.get(clsA);
        if (i1Var == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(clsA, (i1Var = new i1()))) != null) {
            i1Var = objPutIfAbsent;
        }
        ConcurrentHashMap concurrentHashMap2 = ((i1) i1Var).f65185a;
        Object obj = concurrentHashMap2.get(types);
        if (obj == null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl((kotlinx.serialization.b) this.f65250a.invoke(key, types));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result resultM452boximpl = Result.m452boximpl(objM453constructorimpl);
            Object objPutIfAbsent2 = concurrentHashMap2.putIfAbsent(types, resultM452boximpl);
            obj = objPutIfAbsent2 == null ? resultM452boximpl : objPutIfAbsent2;
        }
        Intrinsics.g(obj, "serializers.getOrPut(typ… { producer() }\n        }");
        return ((Result) obj).getValue();
    }
}
