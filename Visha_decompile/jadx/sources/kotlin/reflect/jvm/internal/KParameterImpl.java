package kotlin.reflect.jvm.internal;

import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.clb;
import defpackage.eh5;
import defpackage.ff5;
import defpackage.hw7;
import defpackage.qw0;
import defpackage.ro8;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.y45;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.KParameter;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public final class KParameterImpl implements KParameter {
    public static final af5[] g = {xq8.j(new PropertyReference1Impl(xq8.b(KParameterImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;")), xq8.j(new PropertyReference1Impl(xq8.b(KParameterImpl.class), "annotations", "getAnnotations()Ljava/util/List;"))};
    public final KCallableImpl b;
    public final int c;
    public final KParameter.Kind d;
    public final e.a e;
    public final e.a f;

    public KParameterImpl(KCallableImpl kCallableImpl, int i, KParameter.Kind kind, c74 c74Var) {
        y45.j(kCallableImpl, "callable");
        y45.j(kind, "kind");
        y45.j(c74Var, "computeDescriptor");
        this.b = kCallableImpl;
        this.c = i;
        this.d = kind;
        this.e = e.c(c74Var);
        this.f = e.c(new c74() {
            {
                super(0);
            }

            @Override
            public final List<Annotation> invoke() {
                return clb.e(this.this$0.h());
            }
        });
    }

    @Override
    public boolean b() {
        hw7 hw7VarH = h();
        return (hw7VarH instanceof h) && ((h) hw7VarH).x0() != null;
    }

    public final KCallableImpl e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof KParameterImpl) {
            KParameterImpl kParameterImpl = (KParameterImpl) obj;
            if (y45.e(this.b, kParameterImpl.b) && getIndex() == kParameterImpl.getIndex()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean f() {
        hw7 hw7VarH = h();
        h hVar = hw7VarH instanceof h ? (h) hw7VarH : null;
        if (hVar != null) {
            return DescriptorUtilsKt.c(hVar);
        }
        return false;
    }

    @Override
    public List getAnnotations() {
        Object objB = this.f.b(this, g[1]);
        y45.i(objB, "<get-annotations>(...)");
        return (List) objB;
    }

    @Override
    public int getIndex() {
        return this.c;
    }

    @Override
    public KParameter.Kind getKind() {
        return this.d;
    }

    @Override
    public String getName() {
        hw7 hw7VarH = h();
        h hVar = hw7VarH instanceof h ? (h) hw7VarH : null;
        if (hVar == null || hVar.b().k0()) {
            return null;
        }
        by6 name = hVar.getName();
        y45.i(name, "valueParameter.name");
        if (name.h()) {
            return null;
        }
        return name.b();
    }

    @Override
    public ff5 getType() {
        eh5 type = h().getType();
        y45.i(type, "descriptor.type");
        return new KTypeImpl(type, new c74() {
            {
                super(0);
            }

            @Override
            public final Type invoke() {
                hw7 hw7VarH = this.this$0.h();
                if (!(hw7VarH instanceof ro8) || !y45.e(clb.i(this.this$0.e().D()), hw7VarH) || this.this$0.e().D().getKind() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                    return (Type) this.this$0.e().x().a().get(this.this$0.getIndex());
                }
                xt1 xt1VarB = this.this$0.e().D().b();
                y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                Class clsP = clb.p((qw0) xt1VarB);
                if (clsP != null) {
                    return clsP;
                }
                throw new KotlinReflectionInternalError("Cannot determine receiver Java type of inherited declaration: " + hw7VarH);
            }
        });
    }

    public final hw7 h() {
        Object objB = this.e.b(this, g[0]);
        y45.i(objB, "<get-descriptor>(...)");
        return (hw7) objB;
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + Integer.hashCode(getIndex());
    }

    public String toString() {
        return ReflectionObjectRenderer.a.f(this);
    }
}
