package defpackage;

import kotlin.KotlinVersion;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.ReportLevel;

public final class x75 {
    public static final a d = new a(null);
    public static final x75 e = new x75(ReportLevel.STRICT, null, null, 6, null);
    public final ReportLevel a;
    public final KotlinVersion b;
    public final ReportLevel c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final x75 a() {
            return x75.e;
        }

        public a() {
        }
    }

    public x75(ReportLevel reportLevel, KotlinVersion kotlinVersion, ReportLevel reportLevel2) {
        y45.j(reportLevel, "reportLevelBefore");
        y45.j(reportLevel2, "reportLevelAfter");
        this.a = reportLevel;
        this.b = kotlinVersion;
        this.c = reportLevel2;
    }

    public final ReportLevel b() {
        return this.c;
    }

    public final ReportLevel c() {
        return this.a;
    }

    public final KotlinVersion d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x75)) {
            return false;
        }
        x75 x75Var = (x75) obj;
        return this.a == x75Var.a && y45.e(this.b, x75Var.b) && this.c == x75Var.c;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        KotlinVersion kotlinVersion = this.b;
        return ((iHashCode + (kotlinVersion == null ? 0 : kotlinVersion.getVersion())) * 31) + this.c.hashCode();
    }

    public String toString() {
        return "JavaNullabilityAnnotationsStatus(reportLevelBefore=" + this.a + ", sinceVersion=" + this.b + ", reportLevelAfter=" + this.c + ')';
    }

    public x75(ReportLevel reportLevel, KotlinVersion kotlinVersion, ReportLevel reportLevel2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(reportLevel, (i & 2) != 0 ? new KotlinVersion(1, 0) : kotlinVersion, (i & 4) != 0 ? reportLevel : reportLevel2);
    }
}
