package defpackage;

import java.util.Collection;

public final class ecb implements dcb {
    public static final ecb a = new ecb();

    @Override
    public void a(eh5 eh5Var, qw0 qw0Var) {
        y45.j(eh5Var, "kotlinType");
        y45.j(qw0Var, "descriptor");
    }

    @Override
    public String c(qw0 qw0Var) {
        y45.j(qw0Var, "classDescriptor");
        return null;
    }

    @Override
    public eh5 d(eh5 eh5Var) {
        y45.j(eh5Var, "kotlinType");
        return null;
    }

    @Override
    public String e(qw0 qw0Var) {
        y45.j(qw0Var, "classDescriptor");
        return null;
    }

    @Override
    public eh5 f(Collection collection) {
        y45.j(collection, "types");
        throw new AssertionError("There should be no intersection type in existing descriptors, but found: " + i81.y0(collection, null, null, null, 0, null, null, 63, null));
    }

    @Override
    public qd5 b(qw0 qw0Var) {
        y45.j(qw0Var, "classDescriptor");
        return null;
    }
}
