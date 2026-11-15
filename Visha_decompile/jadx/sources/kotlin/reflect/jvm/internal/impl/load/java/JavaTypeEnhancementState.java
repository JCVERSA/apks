package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.e74;
import defpackage.w75;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class JavaTypeEnhancementState {
    public static final a d = new a(null);
    public static final JavaTypeEnhancementState e = new JavaTypeEnhancementState(w75.b(null, 1, null), JavaTypeEnhancementState$Companion$DEFAULT$1.INSTANCE);
    public final Jsr305Settings a;
    public final e74 b;
    public final boolean c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final JavaTypeEnhancementState a() {
            return JavaTypeEnhancementState.e;
        }

        public a() {
        }
    }

    public JavaTypeEnhancementState(Jsr305Settings jsr305Settings, e74 e74Var) {
        y45.j(jsr305Settings, "jsr305");
        y45.j(e74Var, "getReportLevelForAnnotation");
        this.a = jsr305Settings;
        this.b = e74Var;
        this.c = jsr305Settings.d() || e74Var.invoke(w75.e()) == ReportLevel.IGNORE;
    }

    public final boolean b() {
        return this.c;
    }

    public final e74 c() {
        return this.b;
    }

    public final Jsr305Settings d() {
        return this.a;
    }

    public String toString() {
        return "JavaTypeEnhancementState(jsr305=" + this.a + ", getReportLevelForAnnotation=" + this.b + ')';
    }
}
