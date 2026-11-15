package kotlinx.serialization.internal;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

final class v implements j1 {

    private final Function2 f65236a;

    private final a f65237b;

    public static final class a extends ClassValue {
        a() {
        }

        @Override
        public i1 computeValue(Class type) {
            Intrinsics.h(type, "type");
            return new i1();
        }
    }

    public v(Function2 compute) {
        Intrinsics.h(compute, "compute");
        this.f65236a = compute;
        this.f65237b = b();
    }

    private final a b() {
        return new a();
    }

    @Override
    public Object a(KClass key, List types) {
        Object objM453constructorimpl;
        Intrinsics.h(key, "key");
        Intrinsics.h(types, "types");
        ConcurrentHashMap concurrentHashMap = ((i1) this.f65237b.get(JvmClassMappingKt.a(key))).f65185a;
        Object obj = concurrentHashMap.get(types);
        if (obj == null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl((kotlinx.serialization.b) this.f65236a.invoke(key, types));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result resultM452boximpl = Result.m452boximpl(objM453constructorimpl);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(types, resultM452boximpl);
            obj = objPutIfAbsent == null ? resultM452boximpl : objPutIfAbsent;
        }
        Intrinsics.g(obj, "serializers.getOrPut(typ… { producer() }\n        }");
        return ((Result) obj).getValue();
    }
}
