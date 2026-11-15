package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;

public final class t92 extends ui8 implements m92 {
    public final ProtoBuf$Property D;
    public final cy6 E;
    public final xcb F;
    public final qob G;
    public final p92 H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t92(xt1 xt1Var, ti8 ti8Var, md mdVar, Modality modality, c92 c92Var, boolean z, by6 by6Var, CallableMemberDescriptor.Kind kind, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, ProtoBuf$Property protoBuf$Property, cy6 cy6Var, xcb xcbVar, qob qobVar, p92 p92Var) {
        super(xt1Var, ti8Var, mdVar, modality, c92Var, z, by6Var, kind, yt9.a, z2, z3, z6, false, z4, z5);
        y45.j(xt1Var, "containingDeclaration");
        y45.j(mdVar, "annotations");
        y45.j(modality, "modality");
        y45.j(c92Var, "visibility");
        y45.j(by6Var, "name");
        y45.j(kind, "kind");
        y45.j(protoBuf$Property, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        y45.j(qobVar, "versionRequirementTable");
        this.D = protoBuf$Property;
        this.E = cy6Var;
        this.F = xcbVar;
        this.G = qobVar;
        this.H = p92Var;
    }

    @Override
    public ui8 K0(xt1 xt1Var, Modality modality, c92 c92Var, ti8 ti8Var, CallableMemberDescriptor.Kind kind, by6 by6Var, yt9 yt9Var) {
        y45.j(xt1Var, "newOwner");
        y45.j(modality, "newModality");
        y45.j(c92Var, "newVisibility");
        y45.j(kind, "kind");
        y45.j(by6Var, "newName");
        y45.j(yt9Var, "source");
        return new t92(xt1Var, ti8Var, getAnnotations(), modality, c92Var, y(), by6Var, kind, z0(), isConst(), isExternal(), U(), m0(), G(), X(), x(), b1(), Y());
    }

    @Override
    public cy6 X() {
        return this.E;
    }

    @Override
    public p92 Y() {
        return this.H;
    }

    @Override
    public ProtoBuf$Property G() {
        return this.D;
    }

    public qob b1() {
        return this.G;
    }

    @Override
    public boolean isExternal() {
        Boolean boolD = ay3.D.d(G().getFlags());
        y45.i(boolD, "IS_EXTERNAL_PROPERTY.get(proto.flags)");
        return boolD.booleanValue();
    }

    @Override
    public xcb x() {
        return this.F;
    }
}
