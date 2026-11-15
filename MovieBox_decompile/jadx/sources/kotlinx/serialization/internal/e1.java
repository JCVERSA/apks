package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public abstract class e1 extends TaggedDecoder {
    protected String b0(String parentName, String childName) {
        Intrinsics.h(parentName, "parentName");
        Intrinsics.h(childName, "childName");
        if (parentName.length() == 0) {
            return childName;
        }
        return parentName + '.' + childName;
    }

    protected String c0(kotlinx.serialization.descriptors.f desc, int i10) {
        Intrinsics.h(desc, "desc");
        return desc.f(i10);
    }

    @Override
    public final String X(kotlinx.serialization.descriptors.f fVar, int i10) {
        Intrinsics.h(fVar, "<this>");
        return e0(c0(fVar, i10));
    }

    protected final String e0(String nestedName) {
        Intrinsics.h(nestedName, "nestedName");
        String str = (String) W();
        if (str == null) {
            str = "";
        }
        return b0(str, nestedName);
    }
}
