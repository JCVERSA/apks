package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.a;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;

public final class u92 extends bm9 implements m92 {
    public final ProtoBuf$Function F;
    public final cy6 G;
    public final xcb H;
    public final qob I;
    public final p92 J;

    public u92(xt1 xt1Var, g gVar, md mdVar, by6 by6Var, CallableMemberDescriptor.Kind kind, ProtoBuf$Function protoBuf$Function, cy6 cy6Var, xcb xcbVar, qob qobVar, p92 p92Var, yt9 yt9Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(xt1Var, gVar, mdVar, by6Var, kind, protoBuf$Function, cy6Var, xcbVar, qobVar, p92Var, (i & 1024) != 0 ? null : yt9Var);
    }

    @Override
    public a G0(xt1 xt1Var, e eVar, CallableMemberDescriptor.Kind kind, by6 by6Var, md mdVar, yt9 yt9Var) {
        by6 by6Var2;
        y45.j(xt1Var, "newOwner");
        y45.j(kind, "kind");
        y45.j(mdVar, "annotations");
        y45.j(yt9Var, "source");
        g gVar = (g) eVar;
        if (by6Var == null) {
            by6 name = getName();
            y45.i(name, "name");
            by6Var2 = name;
        } else {
            by6Var2 = by6Var;
        }
        u92 u92Var = new u92(xt1Var, gVar, mdVar, by6Var2, kind, G(), X(), x(), l1(), Y(), yt9Var);
        u92Var.T0(L0());
        return u92Var;
    }

    @Override
    public cy6 X() {
        return this.G;
    }

    @Override
    public p92 Y() {
        return this.J;
    }

    @Override
    public ProtoBuf$Function G() {
        return this.F;
    }

    public qob l1() {
        return this.I;
    }

    @Override
    public xcb x() {
        return this.H;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u92(xt1 xt1Var, g gVar, md mdVar, by6 by6Var, CallableMemberDescriptor.Kind kind, ProtoBuf$Function protoBuf$Function, cy6 cy6Var, xcb xcbVar, qob qobVar, p92 p92Var, yt9 yt9Var) {
        super(xt1Var, gVar, mdVar, by6Var, kind, yt9Var == null ? yt9.a : yt9Var);
        y45.j(xt1Var, "containingDeclaration");
        y45.j(mdVar, "annotations");
        y45.j(by6Var, "name");
        y45.j(kind, "kind");
        y45.j(protoBuf$Function, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        y45.j(qobVar, "versionRequirementTable");
        this.F = protoBuf$Function;
        this.G = cy6Var;
        this.H = xcbVar;
        this.I = qobVar;
        this.J = p92Var;
    }
}
