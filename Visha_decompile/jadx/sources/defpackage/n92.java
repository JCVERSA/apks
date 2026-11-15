package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;

public final class n92 extends nw0 implements m92 {
    public final ProtoBuf$Constructor G;
    public final cy6 H;
    public final xcb I;
    public final qob J;
    public final p92 K;

    public n92(qw0 qw0Var, c cVar, md mdVar, boolean z, CallableMemberDescriptor.Kind kind, ProtoBuf$Constructor protoBuf$Constructor, cy6 cy6Var, xcb xcbVar, qob qobVar, p92 p92Var, yt9 yt9Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(qw0Var, cVar, mdVar, z, kind, protoBuf$Constructor, cy6Var, xcbVar, qobVar, p92Var, (i & 1024) != 0 ? null : yt9Var);
    }

    @Override
    public cy6 X() {
        return this.H;
    }

    @Override
    public p92 Y() {
        return this.K;
    }

    @Override
    public boolean isExternal() {
        return false;
    }

    @Override
    public boolean isInline() {
        return false;
    }

    @Override
    public boolean isSuspend() {
        return false;
    }

    @Override
    public n92 G0(xt1 xt1Var, e eVar, CallableMemberDescriptor.Kind kind, by6 by6Var, md mdVar, yt9 yt9Var) {
        y45.j(xt1Var, "newOwner");
        y45.j(kind, "kind");
        y45.j(mdVar, "annotations");
        y45.j(yt9Var, "source");
        n92 n92Var = new n92((qw0) xt1Var, (c) eVar, mdVar, this.F, kind, G(), X(), x(), p1(), Y(), yt9Var);
        n92Var.T0(L0());
        return n92Var;
    }

    @Override
    public ProtoBuf$Constructor G() {
        return this.G;
    }

    public qob p1() {
        return this.J;
    }

    @Override
    public boolean v() {
        return false;
    }

    @Override
    public xcb x() {
        return this.I;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n92(qw0 qw0Var, c cVar, md mdVar, boolean z, CallableMemberDescriptor.Kind kind, ProtoBuf$Constructor protoBuf$Constructor, cy6 cy6Var, xcb xcbVar, qob qobVar, p92 p92Var, yt9 yt9Var) {
        super(qw0Var, cVar, mdVar, z, kind, yt9Var == null ? yt9.a : yt9Var);
        y45.j(qw0Var, "containingDeclaration");
        y45.j(mdVar, "annotations");
        y45.j(kind, "kind");
        y45.j(protoBuf$Constructor, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        y45.j(qobVar, "versionRequirementTable");
        this.G = protoBuf$Constructor;
        this.H = cy6Var;
        this.I = xcbVar;
        this.J = qobVar;
        this.K = p92Var;
    }
}
