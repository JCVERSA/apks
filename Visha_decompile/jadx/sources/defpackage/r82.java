package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides;
import kotlin.reflect.jvm.internal.impl.types.checker.b;

public class r82 implements b.a {
    public final boolean a;
    public final a b;
    public final a c;

    public r82(boolean z, a aVar, a aVar2) {
        this.a = z;
        this.b = aVar;
        this.c = aVar2;
    }

    @Override
    public boolean a(sbb sbbVar, sbb sbbVar2) {
        return DescriptorEquivalenceForOverrides.d(this.a, this.b, this.c, sbbVar, sbbVar2);
    }
}
