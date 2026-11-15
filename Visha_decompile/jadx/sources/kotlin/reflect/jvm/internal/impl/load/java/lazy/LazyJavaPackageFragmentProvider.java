package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import defpackage.aq0;
import defpackage.c74;
import defpackage.e74;
import defpackage.e85;
import defpackage.gj5;
import defpackage.hv7;
import defpackage.jj5;
import defpackage.o54;
import defpackage.v71;
import defpackage.w65;
import defpackage.y45;
import defpackage.y71;
import defpackage.y75;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;

public final class LazyJavaPackageFragmentProvider implements hv7 {
    public final gj5 a;
    public final aq0 b;

    public LazyJavaPackageFragmentProvider(e85 e85Var) {
        y45.j(e85Var, "components");
        gj5 gj5Var = new gj5(e85Var, a.C0384a.a, jj5.c(null));
        this.a = gj5Var;
        this.b = gj5Var.e().e();
    }

    @Override
    public void a(o54 o54Var, Collection collection) {
        y45.j(o54Var, "fqName");
        y45.j(collection, "packageFragments");
        v71.a(collection, e(o54Var));
    }

    @Override
    public boolean b(o54 o54Var) {
        y45.j(o54Var, "fqName");
        return w65.a(this.a.a().d(), o54Var, false, 2, null) == null;
    }

    @Override
    public List c(o54 o54Var) {
        y45.j(o54Var, "fqName");
        return y71.o(e(o54Var));
    }

    public final LazyJavaPackageFragment e(o54 o54Var) {
        final y75 y75VarA = w65.a(this.a.a().d(), o54Var, false, 2, null);
        if (y75VarA == null) {
            return null;
        }
        return (LazyJavaPackageFragment) this.b.a(o54Var, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final LazyJavaPackageFragment invoke() {
                return new LazyJavaPackageFragment(this.this$0.a, y75VarA);
            }
        });
    }

    @Override
    public List i(o54 o54Var, e74 e74Var) {
        y45.j(o54Var, "fqName");
        y45.j(e74Var, "nameFilter");
        LazyJavaPackageFragment lazyJavaPackageFragmentE = e(o54Var);
        List listK0 = lazyJavaPackageFragmentE != null ? lazyJavaPackageFragmentE.K0() : null;
        return listK0 == null ? y71.k() : listK0;
    }

    public String toString() {
        return "LazyJavaPackageFragmentProvider of module " + this.a.a().m();
    }
}
