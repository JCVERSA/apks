package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

public abstract class d1 extends a {

    private final kotlinx.serialization.b f65154a;

    private final kotlinx.serialization.b f65155b;

    public d1(kotlinx.serialization.b bVar, kotlinx.serialization.b bVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, bVar2);
    }

    @Override
    public abstract kotlinx.serialization.descriptors.f getDescriptor();

    public final kotlinx.serialization.b m() {
        return this.f65154a;
    }

    public final kotlinx.serialization.b n() {
        return this.f65155b;
    }

    @Override
    public final void g(sy.c decoder, Map builder, int i10, int i11) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        if (i11 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
        }
        IntProgression intProgressionR = RangesKt.r(RangesKt.s(0, i11 * 2), 2);
        int first = intProgressionR.getFirst();
        int last = intProgressionR.getLast();
        int step = intProgressionR.getStep();
        if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
            return;
        }
        while (true) {
            h(decoder, i10 + first, builder, false);
            if (first == last) {
                return;
            } else {
                first += step;
            }
        }
    }

    @Override
    public final void h(sy.c decoder, int i10, Map builder, boolean z10) {
        int iO;
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        Object objC = sy.c.a.c(decoder, getDescriptor(), i10, this.f65154a, null, 8, null);
        if (z10) {
            iO = decoder.o(getDescriptor());
            if (iO != i10 + 1) {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i10 + ", returned index for value: " + iO).toString());
            }
        } else {
            iO = i10 + 1;
        }
        int i11 = iO;
        builder.put(objC, (!builder.containsKey(objC) || (this.f65155b.getDescriptor().d() instanceof kotlinx.serialization.descriptors.e)) ? sy.c.a.c(decoder, getDescriptor(), i11, this.f65155b, null, 8, null) : decoder.y(getDescriptor(), i11, this.f65155b, MapsKt.i(builder, objC)));
    }

    @Override
    public void serialize(sy.f encoder, Object obj) {
        Intrinsics.h(encoder, "encoder");
        int iE = e(obj);
        kotlinx.serialization.descriptors.f descriptor = getDescriptor();
        sy.d dVarJ = encoder.j(descriptor, iE);
        Iterator itD = d(obj);
        int i10 = 0;
        while (itD.hasNext()) {
            Map.Entry entry = (Map.Entry) itD.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i11 = i10 + 1;
            dVarJ.C(getDescriptor(), i10, m(), key);
            i10 += 2;
            dVarJ.C(getDescriptor(), i11, n(), value);
        }
        dVarJ.c(descriptor);
    }

    private d1(kotlinx.serialization.b bVar, kotlinx.serialization.b bVar2) {
        super(null);
        this.f65154a = bVar;
        this.f65155b = bVar2;
    }
}
