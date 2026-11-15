package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class v0 extends d1 {

    private final kotlinx.serialization.descriptors.f f65238c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v0(kotlinx.serialization.b kSerializer, kotlinx.serialization.b vSerializer) {
        super(kSerializer, vSerializer, null);
        Intrinsics.h(kSerializer, "kSerializer");
        Intrinsics.h(vSerializer, "vSerializer");
        this.f65238c = new u0(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65238c;
    }

    @Override
    public LinkedHashMap a() {
        return new LinkedHashMap();
    }

    @Override
    public int b(LinkedHashMap linkedHashMap) {
        Intrinsics.h(linkedHashMap, "<this>");
        return linkedHashMap.size() * 2;
    }

    @Override
    public void c(LinkedHashMap linkedHashMap, int i10) {
        Intrinsics.h(linkedHashMap, "<this>");
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
    public LinkedHashMap k(Map map) {
        Intrinsics.h(map, "<this>");
        LinkedHashMap linkedHashMap = map instanceof LinkedHashMap ? (LinkedHashMap) map : null;
        return linkedHashMap == null ? new LinkedHashMap(map) : linkedHashMap;
    }

    @Override
    public Map l(LinkedHashMap linkedHashMap) {
        Intrinsics.h(linkedHashMap, "<this>");
        return linkedHashMap;
    }
}
