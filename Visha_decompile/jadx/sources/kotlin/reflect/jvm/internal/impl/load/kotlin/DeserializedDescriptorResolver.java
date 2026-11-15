package kotlin.reflect.jvm.internal.impl.load.kotlin;

import defpackage.by6;
import defpackage.c74;
import defpackage.ch5;
import defpackage.cz4;
import defpackage.dv7;
import defpackage.e92;
import defpackage.f92;
import defpackage.j92;
import defpackage.jd5;
import defpackage.kd5;
import defpackage.nd5;
import defpackage.od5;
import defpackage.ow0;
import defpackage.qw0;
import defpackage.s92;
import defpackage.xe9;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import java.util.Collection;
import java.util.Set;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;

public final class DeserializedDescriptorResolver {
    public static final a b = new a(null);
    public static final Set c = xe9.d(KotlinClassHeader.Kind.CLASS);
    public static final Set d = ye9.j(KotlinClassHeader.Kind.FILE_FACADE, KotlinClassHeader.Kind.MULTIFILE_CLASS_PART);
    public static final jd5 e = new jd5(1, 1, 2);
    public static final jd5 f = new jd5(1, 1, 11);
    public static final jd5 g = new jd5(1, 1, 13);
    public e92 a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final jd5 a() {
            return DeserializedDescriptorResolver.g;
        }

        public a() {
        }
    }

    public final MemberScope b(dv7 dv7Var, c cVar) {
        String[] strArrG;
        Pair pairM;
        y45.j(dv7Var, "descriptor");
        y45.j(cVar, "kotlinClass");
        String[] strArrK = k(cVar, d);
        if (strArrK == null || (strArrG = cVar.b().g()) == null) {
            return null;
        }
        try {
            try {
                pairM = od5.m(strArrK, strArrG);
            } catch (InvalidProtocolBufferException e2) {
                throw new IllegalStateException("Could not read data from " + cVar.getLocation(), e2);
            }
        } catch (Throwable th) {
            if (g() || cVar.b().d().h(f())) {
                throw th;
            }
            pairM = null;
        }
        if (pairM == null) {
            return null;
        }
        kd5 kd5Var = (kd5) pairM.component1();
        ProtoBuf$Package protoBuf$Package = (ProtoBuf$Package) pairM.component2();
        nd5 nd5Var = new nd5(cVar, protoBuf$Package, kd5Var, e(cVar), i(cVar), c(cVar));
        return new s92(dv7Var, protoBuf$Package, kd5Var, cVar.b().d(), nd5Var, d(), "scope for " + nd5Var + " in " + dv7Var, new c74() {
            @Override
            public final Collection<by6> invoke() {
                return y71.k();
            }
        });
    }

    public final DeserializedContainerAbiStability c(c cVar) {
        if (d().g().b()) {
            return DeserializedContainerAbiStability.STABLE;
        }
        if (cVar.b().j()) {
            return DeserializedContainerAbiStability.FIR_UNSTABLE;
        }
        return cVar.b().k() ? DeserializedContainerAbiStability.IR_UNSTABLE : DeserializedContainerAbiStability.STABLE;
    }

    public final e92 d() {
        e92 e92Var = this.a;
        if (e92Var != null) {
            return e92Var;
        }
        y45.B("components");
        return null;
    }

    public final cz4 e(c cVar) {
        if (g() || cVar.b().d().h(f())) {
            return null;
        }
        return new cz4(cVar.b().d(), jd5.i, f(), f().k(cVar.b().d().j()), cVar.getLocation(), cVar.c());
    }

    public final jd5 f() {
        return j92.a(d().g());
    }

    public final boolean g() {
        return d().g().g();
    }

    public final boolean h(c cVar) {
        return !d().g().e() && cVar.b().i() && y45.e(cVar.b().d(), f);
    }

    public final boolean i(c cVar) {
        return (d().g().c() && (cVar.b().i() || y45.e(cVar.b().d(), e))) || h(cVar);
    }

    public final ow0 j(c cVar) {
        String[] strArrG;
        Pair pairI;
        y45.j(cVar, "kotlinClass");
        String[] strArrK = k(cVar, c);
        if (strArrK == null || (strArrG = cVar.b().g()) == null) {
            return null;
        }
        try {
            try {
                pairI = od5.i(strArrK, strArrG);
            } catch (InvalidProtocolBufferException e2) {
                throw new IllegalStateException("Could not read data from " + cVar.getLocation(), e2);
            }
        } catch (Throwable th) {
            if (g() || cVar.b().d().h(f())) {
                throw th;
            }
            pairI = null;
        }
        if (pairI == null) {
            return null;
        }
        return new ow0((kd5) pairI.component1(), (ProtoBuf$Class) pairI.component2(), cVar.b().d(), new ch5(cVar, e(cVar), i(cVar), c(cVar)));
    }

    public final String[] k(c cVar, Set set) {
        KotlinClassHeader kotlinClassHeaderB = cVar.b();
        String[] strArrA = kotlinClassHeaderB.a();
        if (strArrA == null) {
            strArrA = kotlinClassHeaderB.b();
        }
        if (strArrA == null || !set.contains(kotlinClassHeaderB.c())) {
            return null;
        }
        return strArrA;
    }

    public final qw0 l(c cVar) {
        y45.j(cVar, "kotlinClass");
        ow0 ow0VarJ = j(cVar);
        if (ow0VarJ == null) {
            return null;
        }
        return d().f().d(cVar.c(), ow0VarJ);
    }

    public final void m(e92 e92Var) {
        y45.j(e92Var, "<set-?>");
        this.a = e92Var;
    }

    public final void n(f92 f92Var) {
        y45.j(f92Var, "components");
        m(f92Var.a());
    }
}
