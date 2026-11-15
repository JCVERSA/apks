package kotlinx.serialization.internal;

import defpackage.abb;
import defpackage.dx0;
import defpackage.e74;
import defpackage.ef5;
import defpackage.y45;
import defpackage.zf5;
import defpackage.zfb;
import kotlin.Pair;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.a;

public final class PairSerializer extends zf5 {
    public final a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PairSerializer(final ef5 ef5Var, final ef5 ef5Var2) {
        super(ef5Var, ef5Var2, null);
        y45.j(ef5Var, "keySerializer");
        y45.j(ef5Var2, "valueSerializer");
        this.c = SerialDescriptorsKt.b("kotlin.Pair", new a[0], new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((dx0) obj);
                return zfb.a;
            }

            public final void invoke(dx0 dx0Var) {
                y45.j(dx0Var, "$this$buildClassSerialDescriptor");
                dx0.b(dx0Var, "first", ef5Var.getDescriptor(), null, false, 12, null);
                dx0.b(dx0Var, "second", ef5Var2.getDescriptor(), null, false, 12, null);
            }
        });
    }

    @Override
    public Object a(Pair pair) {
        y45.j(pair, "<this>");
        return pair.getFirst();
    }

    @Override
    public Object c(Pair pair) {
        y45.j(pair, "<this>");
        return pair.getSecond();
    }

    @Override
    public a getDescriptor() {
        return this.c;
    }

    @Override
    public Pair e(Object obj, Object obj2) {
        return abb.a(obj, obj2);
    }
}
