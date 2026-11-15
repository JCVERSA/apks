package defpackage;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.descriptors.a;

public abstract class n71 extends s2 {
    public final ef5 a;

    public n71(ef5 ef5Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(ef5Var);
    }

    @Override
    public final void g(fd1 fd1Var, Object obj, int i, int i2) {
        y45.j(fd1Var, "decoder");
        if (i2 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            h(fd1Var, i + i3, obj, false);
        }
    }

    @Override
    public abstract a getDescriptor();

    @Override
    public void h(fd1 fd1Var, int i, Object obj, boolean z) {
        y45.j(fd1Var, "decoder");
        n(obj, i, fd1.a.c(fd1Var, getDescriptor(), i, this.a, null, 8, null));
    }

    public abstract void n(Object obj, int i, Object obj2);

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        y45.j(ca3Var, "encoder");
        int iE = e(obj);
        a descriptor = getDescriptor();
        id1 id1VarY = ca3Var.y(descriptor, iE);
        Iterator itD = d(obj);
        for (int i = 0; i < iE; i++) {
            id1VarY.q(getDescriptor(), i, this.a, itD.next());
        }
        id1VarY.c(descriptor);
    }

    public n71(ef5 ef5Var) {
        super(null);
        this.a = ef5Var;
    }
}
