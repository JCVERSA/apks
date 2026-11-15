package defpackage;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

public abstract class ko6 {
    public static final void a(StringBuilder sb, eh5 eh5Var) {
        sb.append(g(eh5Var));
    }

    public static final String b(e eVar, boolean z, boolean z2) {
        String strB;
        y45.j(eVar, "<this>");
        StringBuilder sb = new StringBuilder();
        if (z2) {
            if (eVar instanceof c) {
                strB = MethodDecl.initName;
            } else {
                strB = eVar.getName().b();
                y45.i(strB, "name.asString()");
            }
            sb.append(strB);
        }
        sb.append("(");
        ro8 ro8VarB0 = eVar.b0();
        if (ro8VarB0 != null) {
            eh5 type = ro8VarB0.getType();
            y45.i(type, "it.type");
            a(sb, type);
        }
        Iterator it = eVar.f().iterator();
        while (it.hasNext()) {
            eh5 type2 = ((h) it.next()).getType();
            y45.i(type2, "parameter.type");
            a(sb, type2);
        }
        sb.append(")");
        if (z) {
            if (q82.c(eVar)) {
                sb.append(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
            } else {
                eh5 returnType = eVar.getReturnType();
                y45.g(returnType);
                a(sb, returnType);
            }
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static String c(e eVar, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        return b(eVar, z, z2);
    }

    public static final String d(a aVar) {
        y45.j(aVar, "<this>");
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
        if (y82.E(aVar)) {
            return null;
        }
        xt1 xt1VarB = aVar.b();
        qw0 qw0Var = xt1VarB instanceof qw0 ? (qw0) xt1VarB : null;
        if (qw0Var == null || qw0Var.getName().h()) {
            return null;
        }
        a aVarA = aVar.a();
        g gVar = aVarA instanceof g ? (g) aVarA : null;
        if (gVar == null) {
            return null;
        }
        return jo6.a(signatureBuildingComponents, qw0Var, c(gVar, false, false, 3, null));
    }

    public static final boolean e(a aVar) {
        e eVarK;
        y45.j(aVar, "f");
        if (!(aVar instanceof e)) {
            return false;
        }
        e eVar = (e) aVar;
        if (!y45.e(eVar.getName().b(), "remove") || eVar.f().size() != 1 || SpecialBuiltinMembers.h((CallableMemberDescriptor) aVar)) {
            return false;
        }
        List listF = eVar.a().f();
        y45.i(listF, "f.original.valueParameters");
        eh5 type = ((h) i81.O0(listF)).getType();
        y45.i(type, "f.original.valueParameters.single().type");
        qd5 qd5VarG = g(type);
        qd5.d dVar = qd5VarG instanceof qd5.d ? (qd5.d) qd5VarG : null;
        if ((dVar != null ? dVar.i() : null) != JvmPrimitiveType.INT || (eVarK = BuiltinMethodsWithSpecialGenericSignature.k(eVar)) == null) {
            return false;
        }
        List listF2 = eVarK.a().f();
        y45.i(listF2, "overridden.original.valueParameters");
        eh5 type2 = ((h) i81.O0(listF2)).getType();
        y45.i(type2, "overridden.original.valueParameters.single().type");
        qd5 qd5VarG2 = g(type2);
        xt1 xt1VarB = eVarK.b();
        y45.i(xt1VarB, "overridden.containingDeclaration");
        return y45.e(DescriptorUtilsKt.m(xt1VarB), kotlin.reflect.jvm.internal.impl.builtins.e.a.d0.j()) && (qd5VarG2 instanceof qd5.c) && y45.e(((qd5.c) qd5VarG2).i(), "java/lang/Object");
    }

    public static final String f(qw0 qw0Var) {
        y45.j(qw0Var, "<this>");
        m85 m85Var = m85.a;
        p54 p54VarJ = DescriptorUtilsKt.l(qw0Var).j();
        y45.i(p54VarJ, "fqNameSafe.toUnsafe()");
        xw0 xw0VarN = m85Var.n(p54VarJ);
        if (xw0VarN == null) {
            return q82.b(qw0Var, null, 2, null);
        }
        String strF = fd5.b(xw0VarN).f();
        y45.i(strF, "byClassId(it).internalName");
        return strF;
    }

    public static final qd5 g(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return (qd5) q82.e(eh5Var, sd5.a, fcb.o, ecb.a, null, null, 32, null);
    }
}
