package kotlinx.serialization.internal;

import defpackage.ca3;
import defpackage.dx0;
import defpackage.e74;
import defpackage.ef5;
import defpackage.fd1;
import defpackage.hu1;
import defpackage.id1;
import defpackage.y45;
import defpackage.zab;
import defpackage.zfb;
import kotlin.Triple;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.a;
import org.mozilla.javascript.ES6Iterator;

public final class TripleSerializer implements ef5 {
    public final ef5 a;
    public final ef5 b;
    public final ef5 c;
    public final a d;

    public TripleSerializer(ef5 ef5Var, ef5 ef5Var2, ef5 ef5Var3) {
        y45.j(ef5Var, "aSerializer");
        y45.j(ef5Var2, "bSerializer");
        y45.j(ef5Var3, "cSerializer");
        this.a = ef5Var;
        this.b = ef5Var2;
        this.c = ef5Var3;
        this.d = SerialDescriptorsKt.b("kotlin.Triple", new a[0], new e74() {
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
                dx0.b(dx0Var, "first", this.this$0.a.getDescriptor(), null, false, 12, null);
                dx0.b(dx0Var, "second", this.this$0.b.getDescriptor(), null, false, 12, null);
                dx0.b(dx0Var, "third", this.this$0.c.getDescriptor(), null, false, 12, null);
            }
        });
    }

    public final Triple d(fd1 fd1Var) {
        Object objC = fd1.a.c(fd1Var, getDescriptor(), 0, this.a, null, 8, null);
        Object objC2 = fd1.a.c(fd1Var, getDescriptor(), 1, this.b, null, 8, null);
        Object objC3 = fd1.a.c(fd1Var, getDescriptor(), 2, this.c, null, 8, null);
        fd1Var.c(getDescriptor());
        return new Triple(objC, objC2, objC3);
    }

    public final Triple e(fd1 fd1Var) {
        Object objC = zab.a;
        Object objC2 = zab.a;
        Object objC3 = zab.a;
        while (true) {
            int iV = fd1Var.v(getDescriptor());
            if (iV == -1) {
                fd1Var.c(getDescriptor());
                if (objC == zab.a) {
                    throw new SerializationException("Element 'first' is missing");
                }
                if (objC2 == zab.a) {
                    throw new SerializationException("Element 'second' is missing");
                }
                if (objC3 != zab.a) {
                    return new Triple(objC, objC2, objC3);
                }
                throw new SerializationException("Element 'third' is missing");
            }
            if (iV == 0) {
                objC = fd1.a.c(fd1Var, getDescriptor(), 0, this.a, null, 8, null);
            } else if (iV == 1) {
                objC2 = fd1.a.c(fd1Var, getDescriptor(), 1, this.b, null, 8, null);
            } else {
                if (iV != 2) {
                    throw new SerializationException("Unexpected index " + iV);
                }
                objC3 = fd1.a.c(fd1Var, getDescriptor(), 2, this.c, null, 8, null);
            }
        }
    }

    @Override
    public Triple deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        fd1 fd1VarB = hu1Var.b(getDescriptor());
        return fd1VarB.j() ? d(fd1VarB) : e(fd1VarB);
    }

    @Override
    public void serialize(ca3 ca3Var, Triple triple) {
        y45.j(ca3Var, "encoder");
        y45.j(triple, ES6Iterator.VALUE_PROPERTY);
        id1 id1VarB = ca3Var.b(getDescriptor());
        id1VarB.q(getDescriptor(), 0, this.a, triple.getFirst());
        id1VarB.q(getDescriptor(), 1, this.b, triple.getSecond());
        id1VarB.q(getDescriptor(), 2, this.c, triple.getThird());
        id1VarB.c(getDescriptor());
    }

    @Override
    public a getDescriptor() {
        return this.d;
    }
}
