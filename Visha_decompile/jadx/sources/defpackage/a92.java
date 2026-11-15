package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public class a92 implements jq1.c {
    public final boolean a;

    public a92(boolean z) {
        this.a = z;
    }

    @Override
    public Iterable a(Object obj) {
        return DescriptorUtilsKt.g(this.a, (CallableMemberDescriptor) obj);
    }
}
