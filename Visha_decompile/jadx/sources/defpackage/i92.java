package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;

public final class i92 {
    public final e92 a;
    public final cy6 b;
    public final xt1 c;
    public final xcb d;
    public final qob e;
    public final se0 f;
    public final p92 g;
    public final TypeDeserializer h;
    public final MemberDeserializer i;

    public i92(e92 e92Var, cy6 cy6Var, xt1 xt1Var, xcb xcbVar, qob qobVar, se0 se0Var, p92 p92Var, TypeDeserializer typeDeserializer, List list) {
        String strA;
        y45.j(e92Var, "components");
        y45.j(cy6Var, "nameResolver");
        y45.j(xt1Var, "containingDeclaration");
        y45.j(xcbVar, "typeTable");
        y45.j(qobVar, "versionRequirementTable");
        y45.j(se0Var, "metadataVersion");
        y45.j(list, "typeParameters");
        this.a = e92Var;
        this.b = cy6Var;
        this.c = xt1Var;
        this.d = xcbVar;
        this.e = qobVar;
        this.f = se0Var;
        this.g = p92Var;
        this.h = new TypeDeserializer(this, typeDeserializer, list, "Deserializer for \"" + xt1Var.getName() + '\"', (p92Var == null || (strA = p92Var.a()) == null) ? "[container not found]" : strA);
        this.i = new MemberDeserializer(this);
    }

    public static i92 b(i92 i92Var, xt1 xt1Var, List list, cy6 cy6Var, xcb xcbVar, qob qobVar, se0 se0Var, int i, Object obj) {
        if ((i & 4) != 0) {
            cy6Var = i92Var.b;
        }
        cy6 cy6Var2 = cy6Var;
        if ((i & 8) != 0) {
            xcbVar = i92Var.d;
        }
        xcb xcbVar2 = xcbVar;
        if ((i & 16) != 0) {
            qobVar = i92Var.e;
        }
        qob qobVar2 = qobVar;
        if ((i & 32) != 0) {
            se0Var = i92Var.f;
        }
        return i92Var.a(xt1Var, list, cy6Var2, xcbVar2, qobVar2, se0Var);
    }

    public final i92 a(xt1 xt1Var, List list, cy6 cy6Var, xcb xcbVar, qob qobVar, se0 se0Var) {
        y45.j(xt1Var, "descriptor");
        y45.j(list, "typeParameterProtos");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        qob qobVar2 = qobVar;
        y45.j(qobVar2, "versionRequirementTable");
        y45.j(se0Var, "metadataVersion");
        e92 e92Var = this.a;
        if (!rob.b(se0Var)) {
            qobVar2 = this.e;
        }
        return new i92(e92Var, cy6Var, xt1Var, xcbVar, qobVar2, se0Var, this.g, this.h, list);
    }

    public final e92 c() {
        return this.a;
    }

    public final p92 d() {
        return this.g;
    }

    public final xt1 e() {
        return this.c;
    }

    public final MemberDeserializer f() {
        return this.i;
    }

    public final cy6 g() {
        return this.b;
    }

    public final vx9 h() {
        return this.a.u();
    }

    public final TypeDeserializer i() {
        return this.h;
    }

    public final xcb j() {
        return this.d;
    }

    public final qob k() {
        return this.e;
    }
}
