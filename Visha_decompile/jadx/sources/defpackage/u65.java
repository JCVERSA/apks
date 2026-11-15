package defpackage;

import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;

public final class u65 implements pw0 {
    public final vg5 a;
    public final DeserializedDescriptorResolver b;

    public u65(vg5 vg5Var, DeserializedDescriptorResolver deserializedDescriptorResolver) {
        y45.j(vg5Var, "kotlinClassFinder");
        y45.j(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        this.a = vg5Var;
        this.b = deserializedDescriptorResolver;
    }

    @Override
    public ow0 a(xw0 xw0Var) {
        y45.j(xw0Var, "classId");
        c cVarA = wg5.a(this.a, xw0Var, j92.a(this.b.d().g()));
        if (cVarA == null) {
            return null;
        }
        y45.e(cVarA.c(), xw0Var);
        return this.b.j(cVarA);
    }
}
