package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.e74;
import defpackage.ke5;
import defpackage.o54;
import defpackage.w75;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.FunctionReference;

public class JavaTypeEnhancementState$Companion$DEFAULT$1 extends FunctionReference implements e74 {
    public static final JavaTypeEnhancementState$Companion$DEFAULT$1 INSTANCE = new JavaTypeEnhancementState$Companion$DEFAULT$1();

    public JavaTypeEnhancementState$Companion$DEFAULT$1() {
        super(1);
    }

    @Override
    public final String getName() {
        return "getDefaultReportLevelForAnnotation";
    }

    @Override
    public final ke5 getOwner() {
        return xq8.d(w75.class, "compiler.common.jvm");
    }

    @Override
    public final String getSignature() {
        return "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;";
    }

    @Override
    public final ReportLevel invoke(o54 o54Var) {
        y45.j(o54Var, "p0");
        return w75.d(o54Var);
    }
}
