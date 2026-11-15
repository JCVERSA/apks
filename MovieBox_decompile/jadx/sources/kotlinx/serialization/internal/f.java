package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class f extends x {

    private final kotlinx.serialization.descriptors.f f65165b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(kotlinx.serialization.b element) {
        super(element);
        Intrinsics.h(element, "element");
        this.f65165b = new e(element.getDescriptor());
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65165b;
    }

    @Override
    public ArrayList a() {
        return new ArrayList();
    }

    @Override
    public int b(ArrayList arrayList) {
        Intrinsics.h(arrayList, "<this>");
        return arrayList.size();
    }

    @Override
    public void c(ArrayList arrayList, int i10) {
        Intrinsics.h(arrayList, "<this>");
        arrayList.ensureCapacity(i10);
    }

    @Override
    public void n(ArrayList arrayList, int i10, Object obj) {
        Intrinsics.h(arrayList, "<this>");
        arrayList.add(i10, obj);
    }

    @Override
    public ArrayList k(List list) {
        Intrinsics.h(list, "<this>");
        ArrayList arrayList = list instanceof ArrayList ? (ArrayList) list : null;
        return arrayList == null ? new ArrayList(list) : arrayList;
    }

    @Override
    public List l(ArrayList arrayList) {
        Intrinsics.h(arrayList, "<this>");
        return arrayList;
    }
}
