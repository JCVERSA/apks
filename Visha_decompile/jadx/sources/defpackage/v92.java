package defpackage;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public final class v92 extends AbstractTypeAliasDescriptor implements q92 {
    public final vx9 i;
    public final ProtoBuf$TypeAlias j;
    public final cy6 k;
    public final xcb l;
    public final qob m;
    public final p92 n;
    public Collection o;
    public sm9 p;
    public sm9 q;
    public List r;
    public sm9 s;

    /* JADX WARN: Illegal instructions before constructor call */
    public v92(vx9 vx9Var, xt1 xt1Var, md mdVar, by6 by6Var, c92 c92Var, ProtoBuf$TypeAlias protoBuf$TypeAlias, cy6 cy6Var, xcb xcbVar, qob qobVar, p92 p92Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(xt1Var, "containingDeclaration");
        y45.j(mdVar, "annotations");
        y45.j(by6Var, "name");
        y45.j(c92Var, "visibility");
        y45.j(protoBuf$TypeAlias, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        y45.j(qobVar, "versionRequirementTable");
        yt9 yt9Var = yt9.a;
        y45.i(yt9Var, "NO_SOURCE");
        super(xt1Var, mdVar, by6Var, yt9Var, c92Var);
        this.i = vx9Var;
        this.j = protoBuf$TypeAlias;
        this.k = cy6Var;
        this.l = xcbVar;
        this.m = qobVar;
        this.n = p92Var;
    }

    @Override
    public List H0() {
        List list = this.r;
        if (list != null) {
            return list;
        }
        y45.B("typeConstructorParameters");
        return null;
    }

    public ProtoBuf$TypeAlias J0() {
        return this.j;
    }

    public qob K0() {
        return this.m;
    }

    public final void L0(List list, sm9 sm9Var, sm9 sm9Var2) {
        y45.j(list, "declaredTypeParameters");
        y45.j(sm9Var, "underlyingType");
        y45.j(sm9Var2, "expandedType");
        I0(list);
        this.p = sm9Var;
        this.q = sm9Var2;
        this.r = TypeParameterUtilsKt.d(this);
        this.s = C0();
        this.o = G0();
    }

    @Override
    public ebb c(TypeSubstitutor typeSubstitutor) {
        y45.j(typeSubstitutor, "substitutor");
        if (typeSubstitutor.k()) {
            return this;
        }
        vx9 vx9VarA0 = a0();
        xt1 xt1VarB = b();
        y45.i(xt1VarB, "containingDeclaration");
        md annotations = getAnnotations();
        y45.i(annotations, "annotations");
        by6 name = getName();
        y45.i(name, "name");
        v92 v92Var = new v92(vx9VarA0, xt1VarB, annotations, name, getVisibility(), J0(), X(), x(), K0(), Y());
        List listR = r();
        sm9 sm9VarW0 = w0();
        Variance variance = Variance.INVARIANT;
        eh5 eh5VarN = typeSubstitutor.n(sm9VarW0, variance);
        y45.i(eh5VarN, "substitutor.safeSubstitu…Type, Variance.INVARIANT)");
        sm9 sm9VarA = scb.a(eh5VarN);
        eh5 eh5VarN2 = typeSubstitutor.n(W(), variance);
        y45.i(eh5VarN2, "substitutor.safeSubstitu…Type, Variance.INVARIANT)");
        v92Var.L0(listR, sm9VarA, scb.a(eh5VarN2));
        return v92Var;
    }

    @Override
    public sm9 W() {
        sm9 sm9Var = this.q;
        if (sm9Var != null) {
            return sm9Var;
        }
        y45.B("expandedType");
        return null;
    }

    @Override
    public cy6 X() {
        return this.k;
    }

    @Override
    public p92 Y() {
        return this.n;
    }

    @Override
    public vx9 a0() {
        return this.i;
    }

    @Override
    public qw0 k() {
        if (fh5.a(W())) {
            return null;
        }
        px0 px0VarC = W().I0().c();
        if (px0VarC instanceof qw0) {
            return (qw0) px0VarC;
        }
        return null;
    }

    @Override
    public sm9 q() {
        sm9 sm9Var = this.s;
        if (sm9Var != null) {
            return sm9Var;
        }
        y45.B("defaultTypeImpl");
        return null;
    }

    @Override
    public sm9 w0() {
        sm9 sm9Var = this.p;
        if (sm9Var != null) {
            return sm9Var;
        }
        y45.B("underlyingType");
        return null;
    }

    @Override
    public xcb x() {
        return this.l;
    }
}
