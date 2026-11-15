package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.nn0;
import defpackage.o54;
import defpackage.p54;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.sw0;
import defpackage.tw0;
import defpackage.ux9;
import defpackage.vx9;
import defpackage.x17;
import defpackage.x71;
import defpackage.xe9;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.ye9;
import defpackage.yt9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;

public final class JvmBuiltInClassDescriptorFactory implements sw0 {
    public static final by6 g;
    public static final xw0 h;
    public final qq6 a;
    public final e74 b;
    public final x17 c;
    public static final af5[] e = {xq8.j(new PropertyReference1Impl(xq8.b(JvmBuiltInClassDescriptorFactory.class), "cloneable", "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"))};
    public static final a d = new a(null);
    public static final o54 f = e.v;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final xw0 a() {
            return JvmBuiltInClassDescriptorFactory.h;
        }

        public a() {
        }
    }

    static {
        p54 p54Var = e.a.d;
        by6 by6VarI = p54Var.i();
        y45.i(by6VarI, "cloneable.shortName()");
        g = by6VarI;
        xw0 xw0VarM = xw0.m(p54Var.l());
        y45.i(xw0VarM, "topLevel(StandardNames.FqNames.cloneable.toSafe())");
        h = xw0VarM;
    }

    public JvmBuiltInClassDescriptorFactory(final vx9 vx9Var, qq6 qq6Var, e74 e74Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(qq6Var, "moduleDescriptor");
        y45.j(e74Var, "computeContainingDeclaration");
        this.a = qq6Var;
        this.b = e74Var;
        this.c = vx9Var.c(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final tw0 invoke() {
                tw0 tw0Var = new tw0((xt1) this.this$0.b.invoke(this.this$0.a), JvmBuiltInClassDescriptorFactory.g, Modality.ABSTRACT, ClassKind.INTERFACE, x71.e(this.this$0.a.o().i()), yt9.a, false, vx9Var);
                tw0Var.F0(new a(vx9Var, tw0Var), ye9.f(), null);
                return tw0Var;
            }
        });
    }

    @Override
    public boolean a(o54 o54Var, by6 by6Var) {
        y45.j(o54Var, "packageFqName");
        y45.j(by6Var, "name");
        return y45.e(by6Var, g) && y45.e(o54Var, f);
    }

    @Override
    public qw0 b(xw0 xw0Var) {
        y45.j(xw0Var, "classId");
        if (y45.e(xw0Var, h)) {
            return i();
        }
        return null;
    }

    @Override
    public Collection c(o54 o54Var) {
        y45.j(o54Var, "packageFqName");
        return y45.e(o54Var, f) ? xe9.d(i()) : ye9.f();
    }

    public final tw0 i() {
        return (tw0) ux9.a(this.c, this, e[0]);
    }

    public JvmBuiltInClassDescriptorFactory(vx9 vx9Var, qq6 qq6Var, e74 e74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(vx9Var, qq6Var, (i & 4) != 0 ? new e74() {
            @Override
            public final nn0 invoke(qq6 qq6Var2) {
                y45.j(qq6Var2, "module");
                List listH = qq6Var2.C(JvmBuiltInClassDescriptorFactory.f).H();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listH) {
                    if (obj instanceof nn0) {
                        arrayList.add(obj);
                    }
                }
                return (nn0) i81.o0(arrayList);
            }
        } : e74Var);
    }
}
