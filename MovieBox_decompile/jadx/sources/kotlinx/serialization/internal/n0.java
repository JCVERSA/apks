package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

public final class n0 extends PluginGeneratedSerialDescriptor {

    private final boolean f65203m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(String name, i0 generatedSerializer) {
        super(name, generatedSerializer, 1);
        Intrinsics.h(name, "name");
        Intrinsics.h(generatedSerializer, "generatedSerializer");
        this.f65203m = true;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n0) {
            kotlinx.serialization.descriptors.f fVar = (kotlinx.serialization.descriptors.f) obj;
            if (Intrinsics.c(i(), fVar.i())) {
                n0 n0Var = (n0) obj;
                if (n0Var.isInline() && Arrays.equals(p(), n0Var.p()) && e() == fVar.e()) {
                    int iE = e();
                    for (int i10 = 0; i10 < iE; i10++) {
                        if (Intrinsics.c(h(i10).i(), fVar.h(i10).i()) && Intrinsics.c(h(i10).d(), fVar.h(i10).d())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return super.hashCode() * 31;
    }

    @Override
    public boolean isInline() {
        return this.f65203m;
    }
}
