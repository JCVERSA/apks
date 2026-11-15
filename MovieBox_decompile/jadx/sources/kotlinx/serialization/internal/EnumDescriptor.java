package kotlinx.serialization.internal;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

public final class EnumDescriptor extends PluginGeneratedSerialDescriptor {

    private final kotlinx.serialization.descriptors.h f65105m;

    private final Lazy f65106n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumDescriptor(final String name, final int i10) {
        super(name, null, i10, 2, null);
        Intrinsics.h(name, "name");
        this.f65105m = kotlinx.serialization.descriptors.h.b.f65100a;
        this.f65106n = LazyKt.b(new Function0<kotlinx.serialization.descriptors.f[]>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final kotlinx.serialization.descriptors.f[] invoke() {
                int i11 = i10;
                kotlinx.serialization.descriptors.f[] fVarArr = new kotlinx.serialization.descriptors.f[i11];
                for (int i12 = 0; i12 < i11; i12++) {
                    fVarArr[i12] = SerialDescriptorsKt.d(name + '.' + this.f(i12), kotlinx.serialization.descriptors.i.d.f65104a, new kotlinx.serialization.descriptors.f[0], null, 8, null);
                }
                return fVarArr;
            }
        });
    }

    private final kotlinx.serialization.descriptors.f[] r() {
        return (kotlinx.serialization.descriptors.f[]) this.f65106n.getValue();
    }

    @Override
    public kotlinx.serialization.descriptors.h d() {
        return this.f65105m;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof kotlinx.serialization.descriptors.f)) {
            return false;
        }
        kotlinx.serialization.descriptors.f fVar = (kotlinx.serialization.descriptors.f) obj;
        return fVar.d() == kotlinx.serialization.descriptors.h.b.f65100a && Intrinsics.c(i(), fVar.i()) && Intrinsics.c(l1.a(this), l1.a(fVar));
    }

    @Override
    public kotlinx.serialization.descriptors.f h(int i10) {
        return r()[i10];
    }

    @Override
    public int hashCode() {
        int iHashCode = i().hashCode();
        int iHashCode2 = 1;
        for (String str : kotlinx.serialization.descriptors.g.b(this)) {
            int i10 = iHashCode2 * 31;
            iHashCode2 = i10 + (str != null ? str.hashCode() : 0);
        }
        return (iHashCode * 31) + iHashCode2;
    }

    @Override
    public String toString() {
        return CollectionsKt.s0(kotlinx.serialization.descriptors.g.b(this), ", ", i() + '(', ")", 0, null, null, 56, null);
    }
}
