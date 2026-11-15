package kotlin.reflect.jvm.internal.impl.util;

import defpackage.ak7;
import defpackage.by6;
import defpackage.e74;
import defpackage.ebb;
import defpackage.eh5;
import defpackage.h05;
import defpackage.i81;
import defpackage.px0;
import defpackage.qw0;
import defpackage.ro8;
import defpackage.sm9;
import defpackage.to8;
import defpackage.wy4;
import defpackage.x82;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class OperatorChecks extends a {
    public static final OperatorChecks a = new OperatorChecks();
    public static final List b;

    static {
        by6 by6Var = ak7.k;
        e.b bVar = e.b.b;
        Checks checks = new Checks(by6Var, new b[]{bVar, new g.a(1)}, (e74) null, 4, (DefaultConstructorMarker) null);
        Checks checks2 = new Checks(ak7.l, new b[]{bVar, new g.a(2)}, new e74() {
            @Override
            public final String invoke(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
                y45.j(eVar, "$this$$receiver");
                List listF = eVar.f();
                y45.i(listF, "valueParameters");
                h hVar = (h) i81.C0(listF);
                boolean z = false;
                if (hVar != null && !DescriptorUtilsKt.c(hVar) && hVar.x0() == null) {
                    z = true;
                }
                OperatorChecks operatorChecks = OperatorChecks.a;
                if (z) {
                    return null;
                }
                return "last parameter should not have a default value or be a vararg";
            }
        });
        by6 by6Var2 = ak7.b;
        f fVar = f.a;
        g.a aVar = new g.a(2);
        d dVar = d.a;
        Checks checks3 = new Checks(by6Var2, new b[]{bVar, fVar, aVar, dVar}, (e74) null, 4, (DefaultConstructorMarker) null);
        Checks checks4 = new Checks(ak7.c, new b[]{bVar, fVar, new g.a(3), dVar}, (e74) null, 4, (DefaultConstructorMarker) null);
        Checks checks5 = new Checks(ak7.d, new b[]{bVar, fVar, new g.b(2), dVar}, (e74) null, 4, (DefaultConstructorMarker) null);
        Checks checks6 = new Checks(ak7.i, new b[]{bVar}, (e74) null, 4, (DefaultConstructorMarker) null);
        by6 by6Var3 = ak7.h;
        g.d dVar2 = g.d.b;
        ReturnsCheck.ReturnsBoolean returnsBoolean = ReturnsCheck.ReturnsBoolean.d;
        Checks checks7 = new Checks(by6Var3, new b[]{bVar, dVar2, fVar, returnsBoolean}, (e74) null, 4, (DefaultConstructorMarker) null);
        by6 by6Var4 = ak7.j;
        g.c cVar = g.c.b;
        b = y71.n(checks, checks2, checks3, checks4, checks5, checks6, checks7, new Checks(by6Var4, new b[]{bVar, cVar}, (e74) null, 4, (DefaultConstructorMarker) null), new Checks(ak7.m, new b[]{bVar, cVar}, (e74) null, 4, (DefaultConstructorMarker) null), new Checks(ak7.n, new b[]{bVar, cVar, returnsBoolean}, (e74) null, 4, (DefaultConstructorMarker) null), new Checks(ak7.I, new b[]{bVar, dVar2, fVar}, (e74) null, 4, (DefaultConstructorMarker) null), new Checks(ak7.J, new b[]{bVar, dVar2, fVar}, (e74) null, 4, (DefaultConstructorMarker) null), new Checks(ak7.e, new b[]{e.a.b}, new e74() {
            public static final boolean a(xt1 xt1Var) {
                return (xt1Var instanceof qw0) && kotlin.reflect.jvm.internal.impl.builtins.d.a0((qw0) xt1Var);
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0052  */
            /* JADX WARN: Code duplicated, block: B:17:0x0054  */
            @Override
            public final String invoke(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
                boolean z;
                y45.j(eVar, "$this$$receiver");
                OperatorChecks operatorChecks = OperatorChecks.a;
                xt1 xt1VarB = eVar.b();
                y45.i(xt1VarB, "containingDeclaration");
                if (a(xt1VarB)) {
                    z = true;
                } else {
                    Collection collectionE = eVar.e();
                    y45.i(collectionE, "overriddenDescriptors");
                    Collection collection = collectionE;
                    if (!collection.isEmpty()) {
                        Iterator it = collection.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                xt1 xt1VarB2 = ((kotlin.reflect.jvm.internal.impl.descriptors.e) it.next()).b();
                                y45.i(xt1VarB2, "it.containingDeclaration");
                                if (a(xt1VarB2)) {
                                }
                            } else if (x82.c(eVar)) {
                                z = false;
                            }
                            z = true;
                        }
                    } else if (x82.c(eVar)) {
                        z = false;
                    } else {
                        z = true;
                    }
                }
                if (z) {
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("must override ''equals()'' in Any");
                xt1 xt1VarB3 = eVar.b();
                y45.i(xt1VarB3, "containingDeclaration");
                if (h05.f(xt1VarB3)) {
                    DescriptorRenderer descriptorRenderer = DescriptorRenderer.i;
                    xt1 xt1VarB4 = eVar.b();
                    y45.h(xt1VarB4, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    sm9 sm9VarQ = ((qw0) xt1VarB4).q();
                    y45.i(sm9VarQ, "containingDeclaration as…ssDescriptor).defaultType");
                    sb.append(" or define ''equals(other: " + descriptorRenderer.y(TypeUtilsKt.y(sm9VarQ)) + "): Boolean''");
                }
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
        }), new Checks(ak7.g, new b[]{bVar, ReturnsCheck.ReturnsInt.d, dVar2, fVar}, (e74) null, 4, (DefaultConstructorMarker) null), new Checks(ak7.S, new b[]{bVar, dVar2, fVar}, (e74) null, 4, (DefaultConstructorMarker) null), new Checks(ak7.R, new b[]{bVar, cVar}, (e74) null, 4, (DefaultConstructorMarker) null), new Checks(y71.n(ak7.x, ak7.y), new b[]{bVar}, new e74() {
            @Override
            public final String invoke(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
                boolean zR;
                y45.j(eVar, "$this$$receiver");
                ro8 ro8VarZ = eVar.Z();
                if (ro8VarZ == null) {
                    ro8VarZ = eVar.b0();
                }
                OperatorChecks operatorChecks = OperatorChecks.a;
                boolean z = false;
                if (ro8VarZ != null) {
                    eh5 returnType = eVar.getReturnType();
                    if (returnType != null) {
                        eh5 type = ro8VarZ.getType();
                        y45.i(type, "receiver.type");
                        zR = TypeUtilsKt.r(returnType, type);
                    } else {
                        zR = false;
                    }
                    if (zR || operatorChecks.d(eVar, ro8VarZ)) {
                        z = true;
                    }
                }
                if (z) {
                    return null;
                }
                return "receiver must be a supertype of the return type";
            }
        }), new Checks(ak7.V, new b[]{bVar, ReturnsCheck.ReturnsUnit.d, dVar2, fVar}, (e74) null, 4, (DefaultConstructorMarker) null), new Checks(ak7.p, new b[]{bVar, cVar}, (e74) null, 4, (DefaultConstructorMarker) null));
    }

    @Override
    public List b() {
        return b;
    }

    public final boolean d(kotlin.reflect.jvm.internal.impl.descriptors.e eVar, ro8 ro8Var) {
        xw0 xw0VarK;
        eh5 returnType;
        to8 value = ro8Var.getValue();
        y45.i(value, "receiver.value");
        if (!(value instanceof wy4)) {
            return false;
        }
        qw0 qw0VarK = ((wy4) value).k();
        if (!qw0VarK.m0() || (xw0VarK = DescriptorUtilsKt.k(qw0VarK)) == null) {
            return false;
        }
        px0 px0VarB = FindClassInModuleKt.b(DescriptorUtilsKt.p(qw0VarK), xw0VarK);
        ebb ebbVar = px0VarB instanceof ebb ? (ebb) px0VarB : null;
        if (ebbVar == null || (returnType = eVar.getReturnType()) == null) {
            return false;
        }
        return TypeUtilsKt.r(returnType, ebbVar.W());
    }
}
