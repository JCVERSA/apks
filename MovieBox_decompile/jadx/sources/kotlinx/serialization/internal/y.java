package kotlinx.serialization.internal;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

final class y implements x1 {

    private final Function1 f65244a;

    private final ConcurrentHashMap f65245b;

    public y(Function1 compute) {
        Intrinsics.h(compute, "compute");
        this.f65244a = compute;
        this.f65245b = new ConcurrentHashMap();
    }

    @Override
    public kotlinx.serialization.b a(KClass key) {
        Object objPutIfAbsent;
        Intrinsics.h(key, "key");
        ConcurrentHashMap concurrentHashMap = this.f65245b;
        Class clsA = JvmClassMappingKt.a(key);
        Object mVar = concurrentHashMap.get(clsA);
        if (mVar == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(clsA, (mVar = new m((kotlinx.serialization.b) this.f65244a.invoke(key))))) != null) {
            mVar = objPutIfAbsent;
        }
        return ((m) mVar).f65199a;
    }
}
