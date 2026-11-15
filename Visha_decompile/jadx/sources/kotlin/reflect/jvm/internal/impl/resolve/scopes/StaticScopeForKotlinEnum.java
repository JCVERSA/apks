package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.af5;
import defpackage.bq9;
import defpackage.by6;
import defpackage.c74;
import defpackage.dn6;
import defpackage.e74;
import defpackage.i81;
import defpackage.or5;
import defpackage.px0;
import defpackage.qw0;
import defpackage.s82;
import defpackage.ti8;
import defpackage.u82;
import defpackage.ux9;
import defpackage.vx9;
import defpackage.x17;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import org.apache.commons.text.lookup.StringLookupFactory;

public final class StaticScopeForKotlinEnum extends dn6 {
    public static final af5[] e = {xq8.j(new PropertyReference1Impl(xq8.b(StaticScopeForKotlinEnum.class), "functions", "getFunctions()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(StaticScopeForKotlinEnum.class), StringLookupFactory.KEY_PROPERTIES, "getProperties()Ljava/util/List;"))};
    public final qw0 b;
    public final x17 c;
    public final x17 d;

    public StaticScopeForKotlinEnum(vx9 vx9Var, qw0 qw0Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(qw0Var, "containingClass");
        this.b = qw0Var;
        qw0Var.getKind();
        ClassKind classKind = ClassKind.CLASS;
        this.c = vx9Var.c(new c74() {
            {
                super(0);
            }

            @Override
            public final List<g> invoke() {
                return y71.n(s82.g(this.this$0.b), s82.h(this.this$0.b));
            }
        });
        this.d = vx9Var.c(new c74() {
            {
                super(0);
            }

            @Override
            public final List<ti8> invoke() {
                return y71.o(s82.f(this.this$0.b));
            }
        });
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        List listM = m();
        bq9 bq9Var = new bq9();
        for (Object obj : listM) {
            if (y45.e(((ti8) obj).getName(), by6Var)) {
                bq9Var.add(obj);
            }
        }
        return bq9Var;
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        return (px0) i(by6Var, or5Var);
    }

    public Void i(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return null;
    }

    @Override
    public List g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        return i81.J0(l(), m());
    }

    @Override
    public bq9 c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        List listL = l();
        bq9 bq9Var = new bq9();
        for (Object obj : listL) {
            if (y45.e(((g) obj).getName(), by6Var)) {
                bq9Var.add(obj);
            }
        }
        return bq9Var;
    }

    public final List l() {
        return (List) ux9.a(this.c, this, e[0]);
    }

    public final List m() {
        return (List) ux9.a(this.d, this, e[1]);
    }
}
