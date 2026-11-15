package defpackage;

import kotlin.KotlinVersion;
import kotlin.Pair;
import kotlin.collections.a;
import kotlin.reflect.jvm.internal.impl.load.java.Jsr305Settings;
import kotlin.reflect.jvm.internal.impl.load.java.NullabilityAnnotationStatesImpl;
import kotlin.reflect.jvm.internal.impl.load.java.ReportLevel;

public abstract class w75 {
    public static final o54 a;
    public static final o54 b;
    public static final o54 c;
    public static final o54 d;
    public static final String e;
    public static final o54[] f;
    public static final k37 g;
    public static final x75 h;

    static {
        o54 o54Var = new o54("org.jspecify.nullness");
        a = o54Var;
        o54 o54Var2 = new o54("org.jspecify.annotations");
        b = o54Var2;
        o54 o54Var3 = new o54("io.reactivex.rxjava3.annotations");
        c = o54Var3;
        o54 o54Var4 = new o54("org.checkerframework.checker.nullness.compatqual");
        d = o54Var4;
        String strB = o54Var3.b();
        y45.i(strB, "RXJAVA3_ANNOTATIONS_PACKAGE.asString()");
        e = strB;
        f = new o54[]{new o54(strB + ".Nullable"), new o54(strB + ".NonNull")};
        o54 o54Var5 = new o54("org.jetbrains.annotations");
        x75.a aVar = x75.d;
        Pair pairA = abb.a(o54Var5, aVar.a());
        Pair pairA2 = abb.a(new o54("androidx.annotation"), aVar.a());
        Pair pairA3 = abb.a(new o54("android.support.annotation"), aVar.a());
        Pair pairA4 = abb.a(new o54("android.annotation"), aVar.a());
        Pair pairA5 = abb.a(new o54("com.android.annotations"), aVar.a());
        Pair pairA6 = abb.a(new o54("org.eclipse.jdt.annotation"), aVar.a());
        Pair pairA7 = abb.a(new o54("org.checkerframework.checker.nullness.qual"), aVar.a());
        Pair pairA8 = abb.a(o54Var4, aVar.a());
        Pair pairA9 = abb.a(new o54("javax.annotation"), aVar.a());
        Pair pairA10 = abb.a(new o54("edu.umd.cs.findbugs.annotations"), aVar.a());
        Pair pairA11 = abb.a(new o54("io.reactivex.annotations"), aVar.a());
        o54 o54Var6 = new o54("androidx.annotation.RecentlyNullable");
        ReportLevel reportLevel = ReportLevel.WARN;
        Pair pairA12 = abb.a(o54Var6, new x75(reportLevel, null, null, 4, null));
        Pair pairA13 = abb.a(new o54("androidx.annotation.RecentlyNonNull"), new x75(reportLevel, null, null, 4, null));
        Pair pairA14 = abb.a(new o54("lombok"), aVar.a());
        KotlinVersion kotlinVersion = new KotlinVersion(1, 9);
        ReportLevel reportLevel2 = ReportLevel.STRICT;
        g = new NullabilityAnnotationStatesImpl(a.p(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, pairA9, pairA10, pairA11, pairA12, pairA13, pairA14, abb.a(o54Var, new x75(reportLevel, kotlinVersion, reportLevel2)), abb.a(o54Var2, new x75(reportLevel, new KotlinVersion(1, 9), reportLevel2)), abb.a(o54Var3, new x75(reportLevel, new KotlinVersion(1, 8), reportLevel2))));
        h = new x75(reportLevel, null, null, 4, null);
    }

    public static final Jsr305Settings a(KotlinVersion kotlinVersion) {
        y45.j(kotlinVersion, "configuredKotlinVersion");
        x75 x75Var = h;
        ReportLevel reportLevelC = (x75Var.d() == null || x75Var.d().compareTo(kotlinVersion) > 0) ? x75Var.c() : x75Var.b();
        return new Jsr305Settings(reportLevelC, c(reportLevelC), null, 4, null);
    }

    public static Jsr305Settings b(KotlinVersion kotlinVersion, int i, Object obj) {
        if ((i & 1) != 0) {
            kotlinVersion = KotlinVersion.CURRENT;
        }
        return a(kotlinVersion);
    }

    public static final ReportLevel c(ReportLevel reportLevel) {
        y45.j(reportLevel, "globalReportLevel");
        if (reportLevel == ReportLevel.WARN) {
            return null;
        }
        return reportLevel;
    }

    public static final ReportLevel d(o54 o54Var) {
        y45.j(o54Var, "annotationFqName");
        return h(o54Var, k37.a.a(), null, 4, null);
    }

    public static final o54 e() {
        return b;
    }

    public static final o54[] f() {
        return f;
    }

    public static final ReportLevel g(o54 o54Var, k37 k37Var, KotlinVersion kotlinVersion) {
        y45.j(o54Var, "annotation");
        y45.j(k37Var, "configuredReportLevels");
        y45.j(kotlinVersion, "configuredKotlinVersion");
        ReportLevel reportLevel = (ReportLevel) k37Var.a(o54Var);
        if (reportLevel != null) {
            return reportLevel;
        }
        x75 x75Var = (x75) g.a(o54Var);
        if (x75Var == null) {
            return ReportLevel.IGNORE;
        }
        return (x75Var.d() == null || x75Var.d().compareTo(kotlinVersion) > 0) ? x75Var.c() : x75Var.b();
    }

    public static ReportLevel h(o54 o54Var, k37 k37Var, KotlinVersion kotlinVersion, int i, Object obj) {
        if ((i & 4) != 0) {
            kotlinVersion = new KotlinVersion(1, 7, 20);
        }
        return g(o54Var, k37Var, kotlinVersion);
    }
}
