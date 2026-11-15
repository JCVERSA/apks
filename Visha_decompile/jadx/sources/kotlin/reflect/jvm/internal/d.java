package kotlin.reflect.jvm.internal;

import defpackage.b92;
import defpackage.c05;
import defpackage.clb;
import defpackage.h05;
import defpackage.od5;
import defpackage.t92;
import defpackage.ti8;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y82;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class d {
    /* JADX WARN: Code duplicated, block: B:13:0x003d  */
    public static final kotlin.reflect.jvm.internal.calls.a b(KPropertyImpl.a aVar, boolean z) {
        JvmFunctionSignature.c cVarC;
        Method methodC;
        kotlin.reflect.jvm.internal.calls.a aVar2;
        JvmProtoBuf.JvmMethodSignature setter;
        kotlin.reflect.jvm.internal.calls.a cVar;
        Method methodF;
        if (KDeclarationContainerImpl.b.a().matches(aVar.h().J())) {
            return kotlin.reflect.jvm.internal.calls.e.a;
        }
        c cVarF = f.a.f(aVar.h().D());
        if (cVarF instanceof c.C0370c) {
            c.C0370c c0370c = (c.C0370c) cVarF;
            JvmProtoBuf.JvmPropertySignature jvmPropertySignatureF = c0370c.f();
            if (z) {
                if (jvmPropertySignatureF.hasGetter()) {
                    setter = jvmPropertySignatureF.getGetter();
                } else {
                    setter = null;
                }
            } else if (jvmPropertySignatureF.hasSetter()) {
                setter = jvmPropertySignatureF.getSetter();
            } else {
                setter = null;
            }
            Method methodW = setter != null ? aVar.h().y().w(c0370c.d().getString(setter.getName()), c0370c.d().getString(setter.getDesc())) : null;
            if (methodW != null) {
                if (!Modifier.isStatic(methodW.getModifiers())) {
                    cVar = aVar.C() ? new kotlin.reflect.jvm.internal.calls.b.h.a(methodW, f(aVar)) : new kotlin.reflect.jvm.internal.calls.b.h.d(methodW);
                } else if (d(aVar)) {
                    cVar = aVar.C() ? new kotlin.reflect.jvm.internal.calls.b.h.C0375b(methodW) : new kotlin.reflect.jvm.internal.calls.b.h.e(methodW);
                } else {
                    cVar = aVar.C() ? new kotlin.reflect.jvm.internal.calls.b.h.c(methodW, f(aVar)) : new kotlin.reflect.jvm.internal.calls.b.h.f(methodW);
                }
                aVar2 = cVar;
            } else if (h05.e(aVar.h().D()) && y45.e(aVar.h().D().getVisibility(), b92.d)) {
                Class clsH = c05.h(aVar.h().D().b());
                if (clsH == null || (methodF = c05.f(clsH, aVar.h().D())) == null) {
                    throw new KotlinReflectionInternalError("Underlying property of inline class " + aVar.h() + " should have a field");
                }
                aVar2 = aVar.C() ? new kotlin.reflect.jvm.internal.calls.d.a(methodF, f(aVar)) : new kotlin.reflect.jvm.internal.calls.d.b(methodF);
            } else {
                Field fieldI = aVar.h().I();
                if (fieldI == null) {
                    throw new KotlinReflectionInternalError("No accessors or field is found for property " + aVar.h());
                }
                aVar2 = c(aVar, z, fieldI);
            }
        } else if (cVarF instanceof c.a) {
            aVar2 = c(aVar, z, ((c.a) cVarF).b());
        } else {
            if (!(cVarF instanceof c.b)) {
                if (!(cVarF instanceof c.d)) {
                    throw new NoWhenBranchMatchedException();
                }
                if (z) {
                    cVarC = ((c.d) cVarF).b();
                } else {
                    cVarC = ((c.d) cVarF).c();
                    if (cVarC == null) {
                        throw new KotlinReflectionInternalError("No setter found for property " + aVar.h());
                    }
                }
                Method methodW2 = aVar.h().y().w(cVarC.c(), cVarC.b());
                if (methodW2 != null) {
                    Modifier.isStatic(methodW2.getModifiers());
                    return aVar.C() ? new kotlin.reflect.jvm.internal.calls.b.h.a(methodW2, f(aVar)) : new kotlin.reflect.jvm.internal.calls.b.h.d(methodW2);
                }
                throw new KotlinReflectionInternalError("No accessor found for property " + aVar.h());
            }
            if (z) {
                methodC = ((c.b) cVarF).b();
            } else {
                c.b bVar = (c.b) cVarF;
                methodC = bVar.c();
                if (methodC == null) {
                    throw new KotlinReflectionInternalError("No source found for setter of Java method property: " + bVar.b());
                }
            }
            aVar2 = aVar.C() ? new kotlin.reflect.jvm.internal.calls.b.h.a(methodC, f(aVar)) : new kotlin.reflect.jvm.internal.calls.b.h.d(methodC);
        }
        return c05.c(aVar2, aVar.D(), false, 2, null);
    }

    public static final kotlin.reflect.jvm.internal.calls.b c(KPropertyImpl.a aVar, boolean z, Field field) {
        kotlin.reflect.jvm.internal.calls.b aVar2;
        if (g(aVar.h().D()) || !Modifier.isStatic(field.getModifiers())) {
            if (!z) {
                aVar2 = aVar.C() ? new kotlin.reflect.jvm.internal.calls.b.g.a(field, e(aVar), f(aVar)) : new kotlin.reflect.jvm.internal.calls.b.g.c(field, e(aVar));
            } else {
                if (!aVar.C()) {
                    return new kotlin.reflect.jvm.internal.calls.b.f.c(field);
                }
                aVar2 = new kotlin.reflect.jvm.internal.calls.b.f.a(field, f(aVar));
            }
        } else if (d(aVar)) {
            if (z) {
                return aVar.C() ? new kotlin.reflect.jvm.internal.calls.b.f.C0373b(field) : new kotlin.reflect.jvm.internal.calls.b.f.d(field);
            }
            aVar2 = aVar.C() ? new kotlin.reflect.jvm.internal.calls.b.g.C0374b(field, e(aVar)) : new kotlin.reflect.jvm.internal.calls.b.g.d(field, e(aVar));
        } else {
            if (z) {
                return new kotlin.reflect.jvm.internal.calls.b.f.e(field);
            }
            aVar2 = new kotlin.reflect.jvm.internal.calls.b.g.e(field, e(aVar));
        }
        return aVar2;
    }

    public static final boolean d(KPropertyImpl.a aVar) {
        return aVar.h().D().getAnnotations().h(clb.j());
    }

    public static final boolean e(KPropertyImpl.a aVar) {
        return !n.l(aVar.h().D().getType());
    }

    public static final Object f(KPropertyImpl.a aVar) {
        y45.j(aVar, "<this>");
        return aVar.h().E();
    }

    public static final boolean g(ti8 ti8Var) {
        xt1 xt1VarB = ti8Var.b();
        y45.i(xt1VarB, "containingDeclaration");
        if (!y82.x(xt1VarB)) {
            return false;
        }
        xt1 xt1VarB2 = xt1VarB.b();
        return !(y82.C(xt1VarB2) || y82.t(xt1VarB2)) || ((ti8Var instanceof t92) && od5.f(((t92) ti8Var).G()));
    }
}
