package defpackage;

import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.descriptors.a;

public abstract class by5 extends s2 {
    public final ef5 a;
    public final ef5 b;

    public by5(ef5 ef5Var, ef5 ef5Var2, DefaultConstructorMarker defaultConstructorMarker) {
        this(ef5Var, ef5Var2);
    }

    @Override
    public abstract a getDescriptor();

    public final ef5 m() {
        return this.a;
    }

    public final ef5 n() {
        return this.b;
    }

    @Override
    public final void g(fd1 fd1Var, Map map, int i, int i2) {
        y45.j(fd1Var, "decoder");
        y45.j(map, "builder");
        if (i2 < 0) {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL");
        }
        s15 s15VarP = wn8.p(wn8.q(0, i2 * 2), 2);
        int iB = s15VarP.b();
        int iC = s15VarP.c();
        int iF = s15VarP.f();
        if ((iF <= 0 || iB > iC) && (iF >= 0 || iC > iB)) {
            return;
        }
        while (true) {
            h(fd1Var, i + iB, map, false);
            if (iB == iC) {
                return;
            } else {
                iB += iF;
            }
        }
    }

    @Override
    public final void h(fd1 fd1Var, int i, Map map, boolean z) {
        int iV;
        y45.j(fd1Var, "decoder");
        y45.j(map, "builder");
        Object objC = fd1.a.c(fd1Var, getDescriptor(), i, this.a, null, 8, null);
        if (z) {
            iV = fd1Var.v(getDescriptor());
            if (iV != i + 1) {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i + ", returned index for value: " + iV).toString());
            }
        } else {
            iV = i + 1;
        }
        int i2 = iV;
        map.put(objC, (!map.containsKey(objC) || (this.b.getDescriptor().getKind() instanceof ef8)) ? fd1.a.c(fd1Var, getDescriptor(), i2, this.b, null, 8, null) : fd1Var.A(getDescriptor(), i2, this.b, kotlin.collections.a.m(map, objC)));
    }

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        y45.j(ca3Var, "encoder");
        int iE = e(obj);
        a descriptor = getDescriptor();
        id1 id1VarY = ca3Var.y(descriptor, iE);
        Iterator itD = d(obj);
        int i = 0;
        while (itD.hasNext()) {
            Map.Entry entry = (Map.Entry) itD.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i2 = i + 1;
            id1VarY.q(getDescriptor(), i, m(), key);
            i += 2;
            id1VarY.q(getDescriptor(), i2, n(), value);
        }
        id1VarY.c(descriptor);
    }

    public by5(ef5 ef5Var, ef5 ef5Var2) {
        super(null);
        this.a = ef5Var;
        this.b = ef5Var2;
    }
}
