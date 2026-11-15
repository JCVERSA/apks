package kotlin.reflect.jvm.internal.impl.load.kotlin.header;

import defpackage.by6;
import defpackage.jd5;
import defpackage.o54;
import defpackage.xe0;
import defpackage.xw0;
import defpackage.yc5;
import defpackage.yt9;
import defpackage.zw0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.BooleanUtils;

public class a implements kotlin.reflect.jvm.internal.impl.load.kotlin.c.InterfaceC0394c {
    public static final boolean j = BooleanUtils.TRUE.equals(System.getProperty("kotlin.ignore.old.metadata"));
    public static final Map k;
    public int[] a = null;
    public String b = null;
    public int c = 0;
    public String d = null;
    public String[] e = null;
    public String[] f = null;
    public String[] g = null;
    public KotlinClassHeader.Kind h = null;
    public String[] i = null;

    public static abstract class b implements kotlin.reflect.jvm.internal.impl.load.kotlin.c.b {
        public final List a = new ArrayList();

        private static void e(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "enumEntryName";
            } else if (i == 2) {
                objArr[0] = "classLiteralValue";
            } else if (i != 3) {
                objArr[0] = "enumClassId";
            } else {
                objArr[0] = "classId";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$CollectStringArrayAnnotationVisitor";
            if (i == 2) {
                objArr[2] = "visitClassLiteral";
            } else if (i != 3) {
                objArr[2] = "visitEnum";
            } else {
                objArr[2] = "visitAnnotation";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.load.kotlin.c.a a(xw0 xw0Var) {
            if (xw0Var != null) {
                return null;
            }
            e(3);
            return null;
        }

        @Override
        public void b(Object obj) {
            if (obj instanceof String) {
                this.a.add((String) obj);
            }
        }

        @Override
        public void c(zw0 zw0Var) {
            if (zw0Var == null) {
                e(2);
            }
        }

        @Override
        public void d(xw0 xw0Var, by6 by6Var) {
            if (xw0Var == null) {
                e(0);
            }
            if (by6Var == null) {
                e(1);
            }
        }

        public abstract void f(String[] strArr);

        @Override
        public void visitEnd() {
            f((String[]) this.a.toArray(new String[0]));
        }
    }

    public class c implements kotlin.reflect.jvm.internal.impl.load.kotlin.c.a {

        public class C0396a extends b {
            public C0396a() {
            }

            public static void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1", "visitEnd"));
            }

            @Override
            public void f(String[] strArr) {
                if (strArr == null) {
                    e(0);
                }
                a.this.e = strArr;
            }
        }

        public class b extends b {
            public b() {
            }

            private static void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2", "visitEnd"));
            }

            @Override
            public void f(String[] strArr) {
                if (strArr == null) {
                    e(0);
                }
                a.this.f = strArr;
            }
        }

        public c() {
        }

        public static void f(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "enumClassId";
            } else if (i == 2) {
                objArr[0] = "enumEntryName";
            } else if (i != 3) {
                objArr[0] = "classLiteralValue";
            } else {
                objArr[0] = "classId";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor";
            if (i == 1 || i == 2) {
                objArr[2] = "visitEnum";
            } else if (i != 3) {
                objArr[2] = "visitClassLiteral";
            } else {
                objArr[2] = "visitAnnotation";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public void a(by6 by6Var, xw0 xw0Var, by6 by6Var2) {
            if (xw0Var == null) {
                f(1);
            }
            if (by6Var2 == null) {
                f(2);
            }
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.load.kotlin.c.a b(by6 by6Var, xw0 xw0Var) {
            if (xw0Var != null) {
                return null;
            }
            f(3);
            return null;
        }

        @Override
        public void c(by6 by6Var, Object obj) {
            if (by6Var == null) {
                return;
            }
            String strB = by6Var.b();
            if ("k".equals(strB)) {
                if (obj instanceof Integer) {
                    a.this.h = KotlinClassHeader.Kind.getById(((Integer) obj).intValue());
                    return;
                }
                return;
            }
            if ("mv".equals(strB)) {
                if (obj instanceof int[]) {
                    a.this.a = (int[]) obj;
                    return;
                }
                return;
            }
            if ("xs".equals(strB)) {
                if (obj instanceof String) {
                    String str = (String) obj;
                    if (str.isEmpty()) {
                        return;
                    }
                    a.this.b = str;
                    return;
                }
                return;
            }
            if ("xi".equals(strB)) {
                if (obj instanceof Integer) {
                    a.this.c = ((Integer) obj).intValue();
                    return;
                }
                return;
            }
            if ("pn".equals(strB) && (obj instanceof String)) {
                String str2 = (String) obj;
                if (str2.isEmpty()) {
                    return;
                }
                a.this.d = str2;
            }
        }

        @Override
        public void d(by6 by6Var, zw0 zw0Var) {
            if (zw0Var == null) {
                f(0);
            }
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.load.kotlin.c.b e(by6 by6Var) {
            String strB = by6Var != null ? by6Var.b() : null;
            if ("d1".equals(strB)) {
                return g();
            }
            if ("d2".equals(strB)) {
                return h();
            }
            return null;
        }

        public final kotlin.reflect.jvm.internal.impl.load.kotlin.c.b g() {
            return new C0396a();
        }

        public final kotlin.reflect.jvm.internal.impl.load.kotlin.c.b h() {
            return new b();
        }

        @Override
        public void visitEnd() {
        }
    }

    public class d implements kotlin.reflect.jvm.internal.impl.load.kotlin.c.a {

        public class C0397a extends b {
            public C0397a() {
            }

            private static void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor$1", "visitEnd"));
            }

            @Override
            public void f(String[] strArr) {
                if (strArr == null) {
                    e(0);
                }
                a.this.i = strArr;
            }
        }

        public d() {
        }

        private static void f(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "enumClassId";
            } else if (i == 2) {
                objArr[0] = "enumEntryName";
            } else if (i != 3) {
                objArr[0] = "classLiteralValue";
            } else {
                objArr[0] = "classId";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor";
            if (i == 1 || i == 2) {
                objArr[2] = "visitEnum";
            } else if (i != 3) {
                objArr[2] = "visitClassLiteral";
            } else {
                objArr[2] = "visitAnnotation";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public void a(by6 by6Var, xw0 xw0Var, by6 by6Var2) {
            if (xw0Var == null) {
                f(1);
            }
            if (by6Var2 == null) {
                f(2);
            }
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.load.kotlin.c.a b(by6 by6Var, xw0 xw0Var) {
            if (xw0Var != null) {
                return null;
            }
            f(3);
            return null;
        }

        @Override
        public void c(by6 by6Var, Object obj) {
        }

        @Override
        public void d(by6 by6Var, zw0 zw0Var) {
            if (zw0Var == null) {
                f(0);
            }
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.load.kotlin.c.b e(by6 by6Var) {
            if ("b".equals(by6Var != null ? by6Var.b() : null)) {
                return g();
            }
            return null;
        }

        public final kotlin.reflect.jvm.internal.impl.load.kotlin.c.b g() {
            return new C0397a();
        }

        @Override
        public void visitEnd() {
        }
    }

    public class e implements kotlin.reflect.jvm.internal.impl.load.kotlin.c.a {

        public class C0398a extends b {
            public C0398a() {
            }

            private static void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1", "visitEnd"));
            }

            @Override
            public void f(String[] strArr) {
                if (strArr == null) {
                    e(0);
                }
                a.this.e = strArr;
            }
        }

        public class b extends b {
            public b() {
            }

            private static void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2", "visitEnd"));
            }

            @Override
            public void f(String[] strArr) {
                if (strArr == null) {
                    e(0);
                }
                a.this.f = strArr;
            }
        }

        public e() {
        }

        private static void f(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "enumClassId";
            } else if (i == 2) {
                objArr[0] = "enumEntryName";
            } else if (i != 3) {
                objArr[0] = "classLiteralValue";
            } else {
                objArr[0] = "classId";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor";
            if (i == 1 || i == 2) {
                objArr[2] = "visitEnum";
            } else if (i != 3) {
                objArr[2] = "visitClassLiteral";
            } else {
                objArr[2] = "visitAnnotation";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private kotlin.reflect.jvm.internal.impl.load.kotlin.c.b g() {
            return new C0398a();
        }

        private kotlin.reflect.jvm.internal.impl.load.kotlin.c.b h() {
            return new b();
        }

        @Override
        public void a(by6 by6Var, xw0 xw0Var, by6 by6Var2) {
            if (xw0Var == null) {
                f(1);
            }
            if (by6Var2 == null) {
                f(2);
            }
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.load.kotlin.c.a b(by6 by6Var, xw0 xw0Var) {
            if (xw0Var != null) {
                return null;
            }
            f(3);
            return null;
        }

        @Override
        public void c(by6 by6Var, Object obj) {
            if (by6Var == null) {
                return;
            }
            String strB = by6Var.b();
            if ("version".equals(strB)) {
                if (obj instanceof int[]) {
                    a.this.a = (int[]) obj;
                }
            } else if ("multifileClassName".equals(strB)) {
                a.this.b = obj instanceof String ? (String) obj : null;
            }
        }

        @Override
        public void d(by6 by6Var, zw0 zw0Var) {
            if (zw0Var == null) {
                f(0);
            }
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.load.kotlin.c.b e(by6 by6Var) {
            String strB = by6Var != null ? by6Var.b() : null;
            if ("data".equals(strB) || "filePartClassNames".equals(strB)) {
                return g();
            }
            if ("strings".equals(strB)) {
                return h();
            }
            return null;
        }

        @Override
        public void visitEnd() {
        }
    }

    static {
        HashMap map = new HashMap();
        k = map;
        map.put(xw0.m(new o54("kotlin.jvm.internal.KotlinClass")), KotlinClassHeader.Kind.CLASS);
        map.put(xw0.m(new o54("kotlin.jvm.internal.KotlinFileFacade")), KotlinClassHeader.Kind.FILE_FACADE);
        map.put(xw0.m(new o54("kotlin.jvm.internal.KotlinMultifileClass")), KotlinClassHeader.Kind.MULTIFILE_CLASS);
        map.put(xw0.m(new o54("kotlin.jvm.internal.KotlinMultifileClassPart")), KotlinClassHeader.Kind.MULTIFILE_CLASS_PART);
        map.put(xw0.m(new o54("kotlin.jvm.internal.KotlinSyntheticClass")), KotlinClassHeader.Kind.SYNTHETIC_CLASS);
    }

    public static void c(int i) {
        Object[] objArr = new Object[3];
        if (i != 1) {
            objArr[0] = "classId";
        } else {
            objArr[0] = "source";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor";
        objArr[2] = "visitAnnotation";
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.load.kotlin.c.a a(xw0 xw0Var, yt9 yt9Var) {
        KotlinClassHeader.Kind kind;
        if (xw0Var == null) {
            c(0);
        }
        if (yt9Var == null) {
            c(1);
        }
        o54 o54VarB = xw0Var.b();
        if (o54VarB.equals(yc5.a)) {
            return new c();
        }
        if (o54VarB.equals(yc5.s)) {
            return new d();
        }
        if (j || this.h != null || (kind = (KotlinClassHeader.Kind) k.get(xw0Var)) == null) {
            return null;
        }
        this.h = kind;
        return new e();
    }

    public KotlinClassHeader l(jd5 jd5Var) {
        if (this.h == null || this.a == null) {
            return null;
        }
        jd5 jd5Var2 = new jd5(this.a, (this.c & 8) != 0);
        if (!jd5Var2.h(jd5Var)) {
            this.g = this.e;
            this.e = null;
        } else if (n() && this.e == null) {
            return null;
        }
        String[] strArr = this.i;
        return new KotlinClassHeader(this.h, jd5Var2, this.e, this.g, this.f, this.b, this.c, this.d, strArr != null ? xe0.e(strArr) : null);
    }

    public KotlinClassHeader m() {
        return l(jd5.i);
    }

    public final boolean n() {
        KotlinClassHeader.Kind kind = this.h;
        return kind == KotlinClassHeader.Kind.CLASS || kind == KotlinClassHeader.Kind.FILE_FACADE || kind == KotlinClassHeader.Kind.MULTIFILE_CLASS_PART;
    }

    @Override
    public void visitEnd() {
    }
}
