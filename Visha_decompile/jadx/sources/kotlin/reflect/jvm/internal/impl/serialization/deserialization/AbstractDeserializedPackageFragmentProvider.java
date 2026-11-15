package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.dh5;
import defpackage.dv7;
import defpackage.e74;
import defpackage.e92;
import defpackage.gn6;
import defpackage.hv7;
import defpackage.o54;
import defpackage.qq6;
import defpackage.r92;
import defpackage.v71;
import defpackage.vx9;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import java.util.Collection;
import java.util.List;

public abstract class AbstractDeserializedPackageFragmentProvider implements hv7 {
    public final vx9 a;
    public final dh5 b;
    public final qq6 c;
    public e92 d;
    public final gn6 e;

    public AbstractDeserializedPackageFragmentProvider(vx9 vx9Var, dh5 dh5Var, qq6 qq6Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(dh5Var, "finder");
        y45.j(qq6Var, "moduleDescriptor");
        this.a = vx9Var;
        this.b = dh5Var;
        this.c = qq6Var;
        this.e = vx9Var.a(new e74() {
            {
                super(1);
            }

            @Override
            public final dv7 invoke(o54 o54Var) {
                y45.j(o54Var, "fqName");
                r92 r92VarD = this.this$0.d(o54Var);
                if (r92VarD == null) {
                    return null;
                }
                r92VarD.G0(this.this$0.e());
                return r92VarD;
            }
        });
    }

    @Override
    public void a(o54 o54Var, Collection collection) {
        y45.j(o54Var, "fqName");
        y45.j(collection, "packageFragments");
        v71.a(collection, this.e.invoke(o54Var));
    }

    @Override
    public boolean b(o54 o54Var) {
        y45.j(o54Var, "fqName");
        return (this.e.e(o54Var) ? (dv7) this.e.invoke(o54Var) : d(o54Var)) == null;
    }

    @Override
    public List c(o54 o54Var) {
        y45.j(o54Var, "fqName");
        return y71.o(this.e.invoke(o54Var));
    }

    public abstract r92 d(o54 o54Var);

    public final e92 e() {
        e92 e92Var = this.d;
        if (e92Var != null) {
            return e92Var;
        }
        y45.B("components");
        return null;
    }

    public final dh5 f() {
        return this.b;
    }

    public final qq6 g() {
        return this.c;
    }

    public final vx9 h() {
        return this.a;
    }

    @Override
    public Collection i(o54 o54Var, e74 e74Var) {
        y45.j(o54Var, "fqName");
        y45.j(e74Var, "nameFilter");
        return ye9.f();
    }

    public final void j(e92 e92Var) {
        y45.j(e92Var, "<set-?>");
        this.d = e92Var;
    }
}
