package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

public final class u1 extends w {

    private final KClass f65234b;

    private final kotlinx.serialization.descriptors.f f65235c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u1(KClass kClass, kotlinx.serialization.b eSerializer) {
        super(eSerializer, null);
        Intrinsics.h(kClass, "kClass");
        Intrinsics.h(eSerializer, "eSerializer");
        this.f65234b = kClass;
        this.f65235c = new d(eSerializer.getDescriptor());
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65235c;
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
    public Iterator d(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return ArrayIteratorKt.a(objArr);
    }

    @Override
    public int e(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return objArr.length;
    }

    @Override
    public void n(ArrayList arrayList, int i10, Object obj) {
        Intrinsics.h(arrayList, "<this>");
        arrayList.add(i10, obj);
    }

    @Override
    public ArrayList k(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return new ArrayList(ArraysKt.g(objArr));
    }

    @Override
    public Object[] l(ArrayList arrayList) {
        Intrinsics.h(arrayList, "<this>");
        return k1.n(arrayList, this.f65234b);
    }
}
