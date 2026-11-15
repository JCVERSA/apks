package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class w extends a {

    private final kotlinx.serialization.b f65242a;

    public w(kotlinx.serialization.b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar);
    }

    @Override
    protected final void g(sy.c decoder, Object obj, int i10, int i11) {
        Intrinsics.h(decoder, "decoder");
        if (i11 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
        }
        for (int i12 = 0; i12 < i11; i12++) {
            h(decoder, i10 + i12, obj, false);
        }
    }

    @Override
    public abstract kotlinx.serialization.descriptors.f getDescriptor();

    @Override
    protected void h(sy.c decoder, int i10, Object obj, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        n(obj, i10, sy.c.a.c(decoder, getDescriptor(), i10, this.f65242a, null, 8, null));
    }

    protected abstract void n(Object obj, int i10, Object obj2);

    @Override
    public void serialize(sy.f encoder, Object obj) {
        Intrinsics.h(encoder, "encoder");
        int iE = e(obj);
        kotlinx.serialization.descriptors.f descriptor = getDescriptor();
        sy.d dVarJ = encoder.j(descriptor, iE);
        Iterator itD = d(obj);
        for (int i10 = 0; i10 < iE; i10++) {
            dVarJ.C(getDescriptor(), i10, this.f65242a, itD.next());
        }
        dVarJ.c(descriptor);
    }

    private w(kotlinx.serialization.b bVar) {
        super(null);
        this.f65242a = bVar;
    }
}
