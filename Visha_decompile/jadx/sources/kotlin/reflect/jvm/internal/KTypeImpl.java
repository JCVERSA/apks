package kotlin.reflect.jvm.internal;

import defpackage.af5;
import defpackage.c74;
import defpackage.clb;
import defpackage.ebb;
import defpackage.ed5;
import defpackage.eh5;
import defpackage.gf5;
import defpackage.hcb;
import defpackage.he5;
import defpackage.i81;
import defpackage.lf5;
import defpackage.mcb;
import defpackage.px0;
import defpackage.qw0;
import defpackage.xq8;
import defpackage.y45;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.types.n;

public final class KTypeImpl implements gf5 {
    public static final af5[] f = {xq8.j(new PropertyReference1Impl(xq8.b(KTypeImpl.class), "classifier", "getClassifier()Lkotlin/reflect/KClassifier;")), xq8.j(new PropertyReference1Impl(xq8.b(KTypeImpl.class), "arguments", "getArguments()Ljava/util/List;"))};
    public final eh5 b;
    public final e.a c;
    public final e.a d;
    public final e.a e;

    public KTypeImpl(eh5 eh5Var, c74 c74Var) {
        y45.j(eh5Var, "type");
        this.b = eh5Var;
        e.a aVarC = null;
        e.a aVar = c74Var instanceof e.a ? (e.a) c74Var : null;
        if (aVar != null) {
            aVarC = aVar;
        } else if (c74Var != null) {
            aVarC = e.c(c74Var);
        }
        this.c = aVarC;
        this.d = e.c(new c74() {
            {
                super(0);
            }

            @Override
            public final he5 invoke() {
                KTypeImpl kTypeImpl = this.this$0;
                return kTypeImpl.e(kTypeImpl.h());
            }
        });
        this.e = e.c(new KTypeImpl$arguments$2(this, c74Var));
    }

    @Override
    public Type a() {
        e.a aVar = this.c;
        if (aVar != null) {
            return (Type) aVar.invoke();
        }
        return null;
    }

    public final he5 e(eh5 eh5Var) {
        eh5 type;
        px0 px0VarC = eh5Var.I0().c();
        if (!(px0VarC instanceof qw0)) {
            if (px0VarC instanceof hcb) {
                return new KTypeParameterImpl(null, (hcb) px0VarC);
            }
            if (!(px0VarC instanceof ebb)) {
                return null;
            }
            throw new NotImplementedError("An operation is not implemented: Type alias classifiers are not yet supported");
        }
        Class clsP = clb.p((qw0) px0VarC);
        if (clsP == null) {
            return null;
        }
        if (!clsP.isArray()) {
            if (n.l(eh5Var)) {
                return new KClassImpl(clsP);
            }
            Class clsE = ReflectClassUtilKt.e(clsP);
            if (clsE != null) {
                clsP = clsE;
            }
            return new KClassImpl(clsP);
        }
        mcb mcbVar = (mcb) i81.Q0(eh5Var.G0());
        if (mcbVar == null || (type = mcbVar.getType()) == null) {
            return new KClassImpl(clsP);
        }
        he5 he5VarE = e(type);
        if (he5VarE != null) {
            return new KClassImpl(clb.f(ed5.b(lf5.a(he5VarE))));
        }
        throw new KotlinReflectionInternalError("Cannot determine classifier for array element type: " + this);
    }

    public boolean equals(Object obj) {
        if (obj instanceof KTypeImpl) {
            KTypeImpl kTypeImpl = (KTypeImpl) obj;
            if (y45.e(this.b, kTypeImpl.b) && y45.e(j(), kTypeImpl.j()) && y45.e(l(), kTypeImpl.l())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public List getAnnotations() {
        return clb.e(this.b);
    }

    public final eh5 h() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        he5 he5VarJ = j();
        return ((iHashCode + (he5VarJ != null ? he5VarJ.hashCode() : 0)) * 31) + l().hashCode();
    }

    @Override
    public he5 j() {
        return (he5) this.d.b(this, f[0]);
    }

    @Override
    public boolean k() {
        return this.b.J0();
    }

    @Override
    public List l() {
        Object objB = this.e.b(this, f[1]);
        y45.i(objB, "<get-arguments>(...)");
        return (List) objB;
    }

    public String toString() {
        return ReflectionObjectRenderer.a.h(this.b);
    }

    public KTypeImpl(eh5 eh5Var, c74 c74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(eh5Var, (i & 2) != 0 ? null : c74Var);
    }
}
