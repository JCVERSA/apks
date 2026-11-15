package defpackage;

import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;

public final class bh5 implements yt9 {
    public final LazyJavaPackageFragment b;

    public bh5(LazyJavaPackageFragment lazyJavaPackageFragment) {
        y45.j(lazyJavaPackageFragment, "packageFragment");
        this.b = lazyJavaPackageFragment;
    }

    @Override
    public zt9 b() {
        zt9 zt9Var = zt9.a;
        y45.i(zt9Var, "NO_SOURCE_FILE");
        return zt9Var;
    }

    public String toString() {
        return this.b + ": " + this.b.I0().keySet();
    }
}
