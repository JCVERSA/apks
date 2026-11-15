package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.abb;
import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.ee5;
import defpackage.eh5;
import defpackage.fb3;
import defpackage.fh5;
import defpackage.gd;
import defpackage.gj5;
import defpackage.i37;
import defpackage.i85;
import defpackage.id3;
import defpackage.k65;
import defpackage.kd8;
import defpackage.l65;
import defpackage.l75;
import defpackage.ld;
import defpackage.m65;
import defpackage.n85;
import defpackage.o37;
import defpackage.o54;
import defpackage.o85;
import defpackage.p65;
import defpackage.p75;
import defpackage.pf1;
import defpackage.q85;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.s65;
import defpackage.sm9;
import defpackage.ux9;
import defpackage.v82;
import defpackage.x17;
import defpackage.xq8;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y65;
import defpackage.yc5;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;

public final class LazyJavaAnnotationDescriptor implements gd, kd8 {
    public static final af5[] i = {xq8.j(new PropertyReference1Impl(xq8.b(LazyJavaAnnotationDescriptor.class), "fqName", "getFqName()Lorg/jetbrains/kotlin/name/FqName;")), xq8.j(new PropertyReference1Impl(xq8.b(LazyJavaAnnotationDescriptor.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;")), xq8.j(new PropertyReference1Impl(xq8.b(LazyJavaAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    public final gj5 a;
    public final k65 b;
    public final o37 c;
    public final x17 d;
    public final i85 e;
    public final x17 f;
    public final boolean g;
    public final boolean h;

    public LazyJavaAnnotationDescriptor(gj5 gj5Var, k65 k65Var, boolean z) {
        y45.j(gj5Var, "c");
        y45.j(k65Var, "javaAnnotation");
        this.a = gj5Var;
        this.b = k65Var;
        this.c = gj5Var.e().b(new c74() {
            {
                super(0);
            }

            @Override
            public final o54 invoke() {
                xw0 xw0VarC = this.this$0.b.c();
                if (xw0VarC != null) {
                    return xw0VarC.b();
                }
                return null;
            }
        });
        this.d = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final sm9 invoke() {
                o54 o54VarD = this.this$0.d();
                if (o54VarD == null) {
                    return id3.d(ErrorTypeKind.NOT_FOUND_FQNAME_FOR_JAVA_ANNOTATION, this.this$0.b.toString());
                }
                qw0 qw0VarF = n85.f(n85.a, o54VarD, this.this$0.a.d().o(), null, 4, null);
                if (qw0VarF == null) {
                    s65 s65VarI = this.this$0.b.I();
                    qw0VarF = s65VarI != null ? this.this$0.a.a().n().a(s65VarI) : null;
                    if (qw0VarF == null) {
                        qw0VarF = this.this$0.h(o54VarD);
                    }
                }
                return qw0VarF.q();
            }
        });
        this.e = gj5Var.a().t().a(k65Var);
        this.f = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Map<by6, pf1> invoke() {
                Collection<l65> collectionL = this.this$0.b.l();
                LazyJavaAnnotationDescriptor lazyJavaAnnotationDescriptor = this.this$0;
                ArrayList arrayList = new ArrayList();
                for (l65 l65Var : collectionL) {
                    by6 name = l65Var.getName();
                    if (name == null) {
                        name = yc5.c;
                    }
                    pf1 pf1VarL = lazyJavaAnnotationDescriptor.l(l65Var);
                    Pair pairA = pf1VarL != null ? abb.a(name, pf1VarL) : null;
                    if (pairA != null) {
                        arrayList.add(pairA);
                    }
                }
                return kotlin.collections.a.y(arrayList);
            }
        });
        this.g = k65Var.e();
        this.h = k65Var.z() || z;
    }

    @Override
    public o54 d() {
        return (o54) ux9.b(this.c, this, i[0]);
    }

    @Override
    public boolean e() {
        return this.g;
    }

    @Override
    public Map f() {
        return (Map) ux9.a(this.f, this, i[2]);
    }

    public final qw0 h(o54 o54Var) {
        qq6 qq6VarD = this.a.d();
        xw0 xw0VarM = xw0.m(o54Var);
        y45.i(xw0VarM, "topLevel(fqName)");
        return FindClassInModuleKt.c(qq6VarD, xw0VarM, this.a.a().b().d().q());
    }

    @Override
    public i85 getSource() {
        return this.e;
    }

    @Override
    public sm9 getType() {
        return (sm9) ux9.a(this.d, this, i[1]);
    }

    public final boolean k() {
        return this.h;
    }

    public final pf1 l(l65 l65Var) {
        if (l65Var instanceof p75) {
            return ConstantValueFactory.d(ConstantValueFactory.a, ((p75) l65Var).getValue(), null, 2, null);
        }
        if (l65Var instanceof l75) {
            l75 l75Var = (l75) l65Var;
            return o(l75Var.d(), l75Var.getEntryName());
        }
        if (!(l65Var instanceof p65)) {
            if (l65Var instanceof m65) {
                return m(((m65) l65Var).a());
            }
            if (l65Var instanceof y65) {
                return p(((y65) l65Var).c());
            }
            return null;
        }
        p65 p65Var = (p65) l65Var;
        by6 name = p65Var.getName();
        if (name == null) {
            name = yc5.c;
        }
        y45.i(name, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME");
        return n(name, p65Var.b());
    }

    public final pf1 m(k65 k65Var) {
        return new ld(new LazyJavaAnnotationDescriptor(this.a, k65Var, false, 4, null));
    }

    public final pf1 n(by6 by6Var, List list) {
        eh5 eh5VarL;
        sm9 type = getType();
        y45.i(type, "type");
        if (fh5.a(type)) {
            return null;
        }
        qw0 qw0VarI = DescriptorUtilsKt.i(this);
        y45.g(qw0VarI);
        h hVarB = v82.b(by6Var, qw0VarI);
        if (hVarB == null || (eh5VarL = hVarB.getType()) == null) {
            eh5VarL = this.a.a().m().o().l(Variance.INVARIANT, id3.d(ErrorTypeKind.UNKNOWN_ARRAY_ELEMENT_TYPE_OF_ANNOTATION_ARGUMENT, new String[0]));
        }
        y45.i(eh5VarL, "DescriptorResolverUtils.…GUMENT)\n                )");
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            pf1 pf1VarL = l((l65) it.next());
            if (pf1VarL == null) {
                pf1VarL = new i37();
            }
            arrayList.add(pf1VarL);
        }
        return ConstantValueFactory.a.a(arrayList, eh5VarL);
    }

    public final pf1 o(xw0 xw0Var, by6 by6Var) {
        if (xw0Var == null || by6Var == null) {
            return null;
        }
        return new fb3(xw0Var, by6Var);
    }

    public final pf1 p(o85 o85Var) {
        return ee5.b.a(this.a.g().o(o85Var, q85.b(TypeUsage.COMMON, false, false, null, 7, null)));
    }

    public String toString() {
        return DescriptorRenderer.u(DescriptorRenderer.g, this, null, 2, null);
    }

    public LazyJavaAnnotationDescriptor(gj5 gj5Var, k65 k65Var, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(gj5Var, k65Var, (i2 & 4) != 0 ? false : z);
    }
}
