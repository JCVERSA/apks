package kotlin.reflect.jvm.internal.impl.builtins.functions;

import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.by6;
import defpackage.g1a;
import defpackage.o54;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.e;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'KFunction' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class FunctionClassKind {
    private static final FunctionClassKind[] $VALUES;
    public static final a Companion;
    public static final FunctionClassKind KFunction;
    public static final FunctionClassKind KSuspendFunction;
    private final String classNamePrefix;
    private final boolean isReflectType;
    private final boolean isSuspendType;
    private final o54 packageFqName;
    public static final FunctionClassKind Function = new FunctionClassKind("Function", 0, e.v, "Function", false, false);
    public static final FunctionClassKind SuspendFunction = new FunctionClassKind("SuspendFunction", 1, e.n, "SuspendFunction", true, false);

    public static final class a {

        public static final class C0377a {
            public final FunctionClassKind a;
            public final int b;

            public C0377a(FunctionClassKind functionClassKind, int i) {
                y45.j(functionClassKind, "kind");
                this.a = functionClassKind;
                this.b = i;
            }

            public final FunctionClassKind a() {
                return this.a;
            }

            public final int b() {
                return this.b;
            }

            public final FunctionClassKind c() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0377a)) {
                    return false;
                }
                C0377a c0377a = (C0377a) obj;
                return this.a == c0377a.a && this.b == c0377a.b;
            }

            public int hashCode() {
                return (this.a.hashCode() * 31) + Integer.hashCode(this.b);
            }

            public String toString() {
                return "KindWithArity(kind=" + this.a + ", arity=" + this.b + ')';
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FunctionClassKind a(o54 o54Var, String str) {
            y45.j(o54Var, "packageFqName");
            y45.j(str, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
            for (FunctionClassKind functionClassKind : FunctionClassKind.values()) {
                if (y45.e(functionClassKind.getPackageFqName(), o54Var) && g1a.R(str, functionClassKind.getClassNamePrefix(), false, 2, null)) {
                    return functionClassKind;
                }
            }
            return null;
        }

        public final FunctionClassKind b(String str, o54 o54Var) {
            y45.j(str, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
            y45.j(o54Var, "packageFqName");
            C0377a c0377aC = c(str, o54Var);
            if (c0377aC != null) {
                return c0377aC.c();
            }
            return null;
        }

        public final C0377a c(String str, o54 o54Var) {
            y45.j(str, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
            y45.j(o54Var, "packageFqName");
            FunctionClassKind functionClassKindA = a(o54Var, str);
            if (functionClassKindA == null) {
                return null;
            }
            String strSubstring = str.substring(functionClassKindA.getClassNamePrefix().length());
            y45.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            Integer numD = d(strSubstring);
            if (numD != null) {
                return new C0377a(functionClassKindA, numD.intValue());
            }
            return null;
        }

        public final Integer d(String str) {
            if (str.length() == 0) {
                return null;
            }
            int length = str.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                int iCharAt = str.charAt(i2) - '0';
                if (iCharAt < 0 || iCharAt >= 10) {
                    return null;
                }
                i = (i * 10) + iCharAt;
            }
            return Integer.valueOf(i);
        }

        public a() {
        }
    }

    private static final FunctionClassKind[] $values() {
        return new FunctionClassKind[]{Function, SuspendFunction, KFunction, KSuspendFunction};
    }

    static {
        o54 o54Var = e.s;
        KFunction = new FunctionClassKind("KFunction", 2, o54Var, "KFunction", false, true);
        KSuspendFunction = new FunctionClassKind("KSuspendFunction", 3, o54Var, "KSuspendFunction", true, true);
        $VALUES = $values();
        Companion = new a(null);
    }

    private FunctionClassKind(String str, int i, o54 o54Var, String str2, boolean z, boolean z2) {
        super(str, i);
        this.packageFqName = o54Var;
        this.classNamePrefix = str2;
        this.isSuspendType = z;
        this.isReflectType = z2;
    }

    public static FunctionClassKind valueOf(String str) {
        return (FunctionClassKind) Enum.valueOf(FunctionClassKind.class, str);
    }

    public static FunctionClassKind[] values() {
        return (FunctionClassKind[]) $VALUES.clone();
    }

    public final String getClassNamePrefix() {
        return this.classNamePrefix;
    }

    public final o54 getPackageFqName() {
        return this.packageFqName;
    }

    public final by6 numberedClassName(int i) {
        by6 by6VarG = by6.g(this.classNamePrefix + i);
        y45.i(by6VarG, "identifier(\"$classNamePrefix$arity\")");
        return by6VarG;
    }
}
