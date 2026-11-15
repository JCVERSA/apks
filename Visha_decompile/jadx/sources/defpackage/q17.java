package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

public abstract class q17 extends ku7 {
    @Override
    public void b(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
        y45.j(callableMemberDescriptor, "first");
        y45.j(callableMemberDescriptor2, "second");
        e(callableMemberDescriptor, callableMemberDescriptor2);
    }

    @Override
    public void c(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
        y45.j(callableMemberDescriptor, "fromSuper");
        y45.j(callableMemberDescriptor2, "fromCurrent");
        e(callableMemberDescriptor, callableMemberDescriptor2);
    }

    public abstract void e(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2);
}
