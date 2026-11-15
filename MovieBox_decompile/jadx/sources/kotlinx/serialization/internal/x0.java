package kotlinx.serialization.internal;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

public final class x0 extends x {

    private final kotlinx.serialization.descriptors.f f65243b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(kotlinx.serialization.b eSerializer) {
        super(eSerializer);
        Intrinsics.h(eSerializer, "eSerializer");
        this.f65243b = new w0(eSerializer.getDescriptor());
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65243b;
    }

    @Override
    public LinkedHashSet a() {
        return new LinkedHashSet();
    }

    @Override
    public int b(LinkedHashSet linkedHashSet) {
        Intrinsics.h(linkedHashSet, "<this>");
        return linkedHashSet.size();
    }

    @Override
    public void c(LinkedHashSet linkedHashSet, int i10) {
        Intrinsics.h(linkedHashSet, "<this>");
    }

    @Override
    public void n(LinkedHashSet linkedHashSet, int i10, Object obj) {
        Intrinsics.h(linkedHashSet, "<this>");
        linkedHashSet.add(obj);
    }

    @Override
    public LinkedHashSet k(Set set) {
        Intrinsics.h(set, "<this>");
        LinkedHashSet linkedHashSet = set instanceof LinkedHashSet ? (LinkedHashSet) set : null;
        return linkedHashSet == null ? new LinkedHashSet(set) : linkedHashSet;
    }

    @Override
    public Set l(LinkedHashSet linkedHashSet) {
        Intrinsics.h(linkedHashSet, "<this>");
        return linkedHashSet;
    }
}
