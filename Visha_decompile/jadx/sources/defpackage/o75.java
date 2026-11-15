package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.g;

public final class o75 extends a85 {
    public final g G;
    public final g H;
    public final ti8 I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o75(qw0 qw0Var, g gVar, g gVar2, ti8 ti8Var) {
        super(qw0Var, md.u1.b(), gVar.j(), gVar.getVisibility(), gVar2 != null, ti8Var.getName(), gVar.getSource(), null, CallableMemberDescriptor.Kind.DECLARATION, false, null);
        y45.j(qw0Var, "ownerDescriptor");
        y45.j(gVar, "getterMethod");
        y45.j(ti8Var, "overriddenProperty");
        this.G = gVar;
        this.H = gVar2;
        this.I = ti8Var;
    }
}
