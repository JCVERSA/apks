package kotlinx.serialization.internal;

import defpackage.c74;
import defpackage.ca3;
import defpackage.dx0;
import defpackage.e74;
import defpackage.ef5;
import defpackage.fd1;
import defpackage.hu1;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zfb;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.a;
import org.mozilla.javascript.ES6Iterator;

public final class ObjectSerializer implements ef5 {
    public final Object a;
    public List b;
    public final yi5 c;

    public ObjectSerializer(final String str, Object obj) {
        y45.j(str, "serialName");
        y45.j(obj, "objectInstance");
        this.a = obj;
        this.b = y71.k();
        this.c = b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final a invoke() {
                final ObjectSerializer objectSerializer = this;
                return SerialDescriptorsKt.c(str, kotlinx.serialization.descriptors.b.d.a, new a[0], new e74() {
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj2) {
                        invoke((dx0) obj2);
                        return zfb.a;
                    }

                    public final void invoke(dx0 dx0Var) {
                        y45.j(dx0Var, "$this$buildSerialDescriptor");
                        dx0Var.h(objectSerializer.b);
                    }
                });
            }
        });
    }

    @Override
    public Object deserialize(hu1 hu1Var) {
        int iV;
        y45.j(hu1Var, "decoder");
        a descriptor = getDescriptor();
        fd1 fd1VarB = hu1Var.b(descriptor);
        if (fd1VarB.j() || (iV = fd1VarB.v(getDescriptor())) == -1) {
            zfb zfbVar = zfb.a;
            fd1VarB.c(descriptor);
            return this.a;
        }
        throw new SerializationException("Unexpected index " + iV);
    }

    @Override
    public a getDescriptor() {
        return (a) this.c.getValue();
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        y45.j(ca3Var, "encoder");
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        ca3Var.b(getDescriptor()).c(getDescriptor());
    }
}
