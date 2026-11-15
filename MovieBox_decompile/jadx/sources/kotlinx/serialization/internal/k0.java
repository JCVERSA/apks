package kotlinx.serialization.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class k0 extends d1 {

    private final kotlinx.serialization.descriptors.f f65192c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k0(kotlinx.serialization.b kSerializer, kotlinx.serialization.b vSerializer) {
        super(kSerializer, vSerializer, null);
        Intrinsics.h(kSerializer, "kSerializer");
        Intrinsics.h(vSerializer, "vSerializer");
        this.f65192c = new j0(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65192c;
    }

    @Override
    public HashMap a() {
        return new HashMap();
    }

    @Override
    public int b(HashMap map) {
        Intrinsics.h(map, "<this>");
        return map.size() * 2;
    }

    @Override
    public void c(HashMap map, int i10) {
        Intrinsics.h(map, "<this>");
    }

    @Override
    public Iterator d(Map map) {
        Intrinsics.h(map, "<this>");
        return map.entrySet().iterator();
    }

    @Override
    public int e(Map map) {
        Intrinsics.h(map, "<this>");
        return map.size();
    }

    @Override
    public HashMap k(Map map) {
        Intrinsics.h(map, "<this>");
        HashMap map2 = map instanceof HashMap ? (HashMap) map : null;
        return map2 == null ? new HashMap(map) : map2;
    }

    @Override
    public Map l(HashMap map) {
        Intrinsics.h(map, "<this>");
        return map;
    }
}
