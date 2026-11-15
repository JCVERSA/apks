package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public abstract class f1 extends c2 {
    protected String d0(String parentName, String childName) {
        Intrinsics.h(parentName, "parentName");
        Intrinsics.h(childName, "childName");
        if (parentName.length() == 0) {
            return childName;
        }
        return parentName + '.' + childName;
    }

    protected String e0(kotlinx.serialization.descriptors.f descriptor, int i10) {
        Intrinsics.h(descriptor, "descriptor");
        return descriptor.f(i10);
    }

    @Override
    public final String a0(kotlinx.serialization.descriptors.f fVar, int i10) {
        Intrinsics.h(fVar, "<this>");
        return g0(e0(fVar, i10));
    }

    protected final String g0(String nestedName) {
        Intrinsics.h(nestedName, "nestedName");
        String str = (String) Z();
        if (str == null) {
            str = "";
        }
        return d0(str, nestedName);
    }
}
