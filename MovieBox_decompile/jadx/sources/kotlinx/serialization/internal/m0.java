package kotlinx.serialization.internal;

import java.util.HashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

public final class m0 extends x {

    private final kotlinx.serialization.descriptors.f f65200b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(kotlinx.serialization.b eSerializer) {
        super(eSerializer);
        Intrinsics.h(eSerializer, "eSerializer");
        this.f65200b = new l0(eSerializer.getDescriptor());
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65200b;
    }

    @Override
    public HashSet a() {
        return new HashSet();
    }

    @Override
    public int b(HashSet hashSet) {
        Intrinsics.h(hashSet, "<this>");
        return hashSet.size();
    }

    @Override
    public void c(HashSet hashSet, int i10) {
        Intrinsics.h(hashSet, "<this>");
    }

    @Override
    public void n(HashSet hashSet, int i10, Object obj) {
        Intrinsics.h(hashSet, "<this>");
        hashSet.add(obj);
    }

    @Override
    public HashSet k(Set set) {
        Intrinsics.h(set, "<this>");
        HashSet hashSet = set instanceof HashSet ? (HashSet) set : null;
        return hashSet == null ? new HashSet(set) : hashSet;
    }

    @Override
    public Set l(HashSet hashSet) {
        Intrinsics.h(hashSet, "<this>");
        return hashSet;
    }
}
