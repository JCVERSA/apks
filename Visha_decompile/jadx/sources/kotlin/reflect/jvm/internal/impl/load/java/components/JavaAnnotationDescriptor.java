package kotlin.reflect.jvm.internal.impl.load.java.components;

import defpackage.af5;
import defpackage.c74;
import defpackage.gd;
import defpackage.gj5;
import defpackage.i81;
import defpackage.k65;
import defpackage.kd8;
import defpackage.l65;
import defpackage.o54;
import defpackage.sm9;
import defpackage.ux9;
import defpackage.x17;
import defpackage.xq8;
import defpackage.y45;
import defpackage.yt9;
import java.util.Collection;
import java.util.Map;
import kotlin.collections.a;
import kotlin.jvm.internal.PropertyReference1Impl;

public class JavaAnnotationDescriptor implements gd, kd8 {
    public static final af5[] f = {xq8.j(new PropertyReference1Impl(xq8.b(JavaAnnotationDescriptor.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;"))};
    public final o54 a;
    public final yt9 b;
    public final x17 c;
    public final l65 d;
    public final boolean e;

    public JavaAnnotationDescriptor(final gj5 gj5Var, k65 k65Var, o54 o54Var) {
        yt9 yt9VarA;
        Collection collectionL;
        y45.j(gj5Var, "c");
        y45.j(o54Var, "fqName");
        this.a = o54Var;
        if (k65Var == null || (yt9VarA = gj5Var.a().t().a(k65Var)) == null) {
            yt9VarA = yt9.a;
            y45.i(yt9VarA, "NO_SOURCE");
        }
        this.b = yt9VarA;
        this.c = gj5Var.e().c(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final sm9 invoke() {
                sm9 sm9VarQ = gj5Var.d().o().o(this.d()).q();
                y45.i(sm9VarQ, "c.module.builtIns.getBui…qName(fqName).defaultType");
                return sm9VarQ;
            }
        });
        this.d = (k65Var == null || (collectionL = k65Var.l()) == null) ? null : (l65) i81.p0(collectionL);
        boolean z = false;
        if (k65Var != null && k65Var.e()) {
            z = true;
        }
        this.e = z;
    }

    public final l65 a() {
        return this.d;
    }

    @Override
    public sm9 getType() {
        return (sm9) ux9.a(this.c, this, f[0]);
    }

    @Override
    public o54 d() {
        return this.a;
    }

    @Override
    public boolean e() {
        return this.e;
    }

    @Override
    public Map f() {
        return a.l();
    }

    @Override
    public yt9 getSource() {
        return this.b;
    }
}
