package defpackage;

import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import org.apache.commons.io.IOUtils;

public final class nl0 extends rd9 {
    public static final nl0 r = new nl0();

    /* JADX WARN: Illegal instructions before constructor call */
    public nl0() {
        d dVarD = d.d();
        on0.a(dVarD);
        y45.i(dVarD, "newInstance().apply(Buil…f::registerAllExtensions)");
        GeneratedMessageLite.e eVar = on0.a;
        y45.i(eVar, "packageFqName");
        GeneratedMessageLite.e eVar2 = on0.c;
        y45.i(eVar2, "constructorAnnotation");
        GeneratedMessageLite.e eVar3 = on0.b;
        y45.i(eVar3, "classAnnotation");
        GeneratedMessageLite.e eVar4 = on0.d;
        y45.i(eVar4, "functionAnnotation");
        GeneratedMessageLite.e eVar5 = on0.e;
        y45.i(eVar5, "propertyAnnotation");
        GeneratedMessageLite.e eVar6 = on0.f;
        y45.i(eVar6, "propertyGetterAnnotation");
        GeneratedMessageLite.e eVar7 = on0.g;
        y45.i(eVar7, "propertySetterAnnotation");
        GeneratedMessageLite.e eVar8 = on0.i;
        y45.i(eVar8, "enumEntryAnnotation");
        GeneratedMessageLite.e eVar9 = on0.h;
        y45.i(eVar9, "compileTimeValue");
        GeneratedMessageLite.e eVar10 = on0.j;
        y45.i(eVar10, "parameterAnnotation");
        GeneratedMessageLite.e eVar11 = on0.k;
        y45.i(eVar11, "typeAnnotation");
        GeneratedMessageLite.e eVar12 = on0.l;
        y45.i(eVar12, "typeParameterAnnotation");
        super(dVarD, eVar, eVar2, eVar3, eVar4, null, eVar5, eVar6, eVar7, null, null, null, eVar8, eVar9, eVar10, eVar11, eVar12);
    }

    public final String q(o54 o54Var) {
        y45.j(o54Var, "fqName");
        return s(o54Var) + ".kotlin_builtins";
    }

    public final String r(o54 o54Var) {
        y45.j(o54Var, "fqName");
        StringBuilder sb = new StringBuilder();
        String strB = o54Var.b();
        y45.i(strB, "fqName.asString()");
        sb.append(g1a.M(strB, '.', IOUtils.DIR_SEPARATOR_UNIX, false, 4, null));
        sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        sb.append(q(o54Var));
        return sb.toString();
    }

    public final String s(o54 o54Var) {
        if (o54Var.d()) {
            return "default-package";
        }
        String strB = o54Var.g().b();
        y45.i(strB, "fqName.shortName().asString()");
        return strB;
    }
}
