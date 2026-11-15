package kotlin.reflect.jvm.internal.impl.builtins;

import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.eh5;
import defpackage.hcb;
import defpackage.i81;
import defpackage.kr0;
import defpackage.px0;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.x71;
import defpackage.xq8;
import defpackage.xw0;
import defpackage.y45;
import defpackage.yi5;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.j;

public final class ReflectionTypes {
    public final NotFoundClasses a;
    public final yi5 b;
    public final a c;
    public final a d;
    public final a e;
    public final a f;
    public final a g;
    public final a h;
    public final a i;
    public final a j;
    public static final af5[] l = {xq8.j(new PropertyReference1Impl(xq8.b(ReflectionTypes.class), "kClass", "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), xq8.j(new PropertyReference1Impl(xq8.b(ReflectionTypes.class), "kProperty", "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), xq8.j(new PropertyReference1Impl(xq8.b(ReflectionTypes.class), "kProperty0", "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), xq8.j(new PropertyReference1Impl(xq8.b(ReflectionTypes.class), "kProperty1", "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), xq8.j(new PropertyReference1Impl(xq8.b(ReflectionTypes.class), "kProperty2", "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), xq8.j(new PropertyReference1Impl(xq8.b(ReflectionTypes.class), "kMutableProperty0", "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), xq8.j(new PropertyReference1Impl(xq8.b(ReflectionTypes.class), "kMutableProperty1", "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), xq8.j(new PropertyReference1Impl(xq8.b(ReflectionTypes.class), "kMutableProperty2", "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"))};
    public static final b k = new b(null);

    public static final class a {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        public final qw0 a(ReflectionTypes reflectionTypes, af5 af5Var) {
            y45.j(reflectionTypes, "types");
            y45.j(af5Var, "property");
            return reflectionTypes.b(kr0.a(af5Var.getName()), this.a);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final eh5 a(qq6 qq6Var) {
            y45.j(qq6Var, "module");
            qw0 qw0VarA = FindClassInModuleKt.a(qq6Var, e.a.t0);
            if (qw0VarA == null) {
                return null;
            }
            j jVarH = j.c.h();
            List parameters = qw0VarA.m().getParameters();
            y45.i(parameters, "kPropertyClass.typeConstructor.parameters");
            Object objO0 = i81.O0(parameters);
            y45.i(objO0, "kPropertyClass.typeConstructor.parameters.single()");
            return KotlinTypeFactory.g(jVarH, qw0VarA, x71.e(new StarProjectionImpl((hcb) objO0)));
        }

        public b() {
        }
    }

    public ReflectionTypes(final qq6 qq6Var, NotFoundClasses notFoundClasses) {
        y45.j(qq6Var, "module");
        y45.j(notFoundClasses, "notFoundClasses");
        this.a = notFoundClasses;
        this.b = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final MemberScope invoke() {
                return qq6Var.C(e.s).p();
            }
        });
        this.c = new a(1);
        this.d = new a(1);
        this.e = new a(1);
        this.f = new a(2);
        this.g = new a(3);
        this.h = new a(1);
        this.i = new a(2);
        this.j = new a(3);
    }

    public final qw0 b(String str, int i) {
        by6 by6VarG = by6.g(str);
        y45.i(by6VarG, "identifier(className)");
        px0 px0VarF = d().f(by6VarG, NoLookupLocation.FROM_REFLECTION);
        qw0 qw0Var = px0VarF instanceof qw0 ? (qw0) px0VarF : null;
        return qw0Var == null ? this.a.d(new xw0(e.s, by6VarG), x71.e(Integer.valueOf(i))) : qw0Var;
    }

    public final qw0 c() {
        return this.c.a(this, l[0]);
    }

    public final MemberScope d() {
        return (MemberScope) this.b.getValue();
    }
}
