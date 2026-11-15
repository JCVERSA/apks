package defpackage;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KVariance;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public final class qcb implements ff5 {
    public static final a f = new a(null);
    public final he5 b;
    public final List c;
    public final ff5 d;
    public final int e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[KVariance.values().length];
            try {
                iArr[KVariance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KVariance.IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KVariance.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public qcb(he5 he5Var, List list, ff5 ff5Var, int i) {
        y45.j(he5Var, "classifier");
        y45.j(list, "arguments");
        this.b = he5Var;
        this.c = list;
        this.d = ff5Var;
        this.e = i;
    }

    public static final CharSequence p(qcb qcbVar, jf5 jf5Var) {
        y45.j(jf5Var, "it");
        return qcbVar.e(jf5Var);
    }

    public final String e(jf5 jf5Var) {
        String strValueOf;
        if (jf5Var.d() == null) {
            return "*";
        }
        ff5 ff5VarC = jf5Var.c();
        qcb qcbVar = ff5VarC instanceof qcb ? (qcb) ff5VarC : null;
        if (qcbVar == null || (strValueOf = qcbVar.h(true)) == null) {
            strValueOf = String.valueOf(jf5Var.c());
        }
        KVariance kVarianceD = jf5Var.d();
        int i = kVarianceD == null ? -1 : b.a[kVarianceD.ordinal()];
        if (i == 1) {
            return strValueOf;
        }
        if (i == 2) {
            return "in " + strValueOf;
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return "out " + strValueOf;
    }

    public boolean equals(Object obj) {
        if (obj instanceof qcb) {
            qcb qcbVar = (qcb) obj;
            if (y45.e(j(), qcbVar.j()) && y45.e(l(), qcbVar.l()) && y45.e(this.d, qcbVar.d) && this.e == qcbVar.e) {
                return true;
            }
        }
        return false;
    }

    @Override
    public List getAnnotations() {
        return y71.k();
    }

    public final String h(boolean z) {
        String name;
        he5 he5VarJ = j();
        de5 de5Var = he5VarJ instanceof de5 ? (de5) he5VarJ : null;
        Class clsB = de5Var != null ? ed5.b(de5Var) : null;
        if (clsB == null) {
            name = j().toString();
        } else if ((this.e & 4) != 0) {
            name = "kotlin.Nothing";
        } else if (clsB.isArray()) {
            name = q(clsB);
        } else if (z && clsB.isPrimitive()) {
            he5 he5VarJ2 = j();
            y45.h(he5VarJ2, "null cannot be cast to non-null type kotlin.reflect.KClass<*>");
            name = ed5.c((de5) he5VarJ2).getName();
        } else {
            name = clsB.getName();
        }
        String str = name + (l().isEmpty() ? "" : i81.y0(l(), ", ", "<", ">", 0, null, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return qcb.p(this.b, (jf5) obj);
            }
        }, 24, null)) + (k() ? "?" : "");
        ff5 ff5Var = this.d;
        if (!(ff5Var instanceof qcb)) {
            return str;
        }
        String strH = ((qcb) ff5Var).h(true);
        if (y45.e(strH, str)) {
            return str;
        }
        if (y45.e(strH, str + '?')) {
            return str + '!';
        }
        return '(' + str + FileTree.PARENT_DIR + strH + ')';
    }

    public int hashCode() {
        return (((j().hashCode() * 31) + l().hashCode()) * 31) + Integer.hashCode(this.e);
    }

    @Override
    public he5 j() {
        return this.b;
    }

    @Override
    public boolean k() {
        return (this.e & 1) != 0;
    }

    @Override
    public List l() {
        return this.c;
    }

    public final String q(Class cls) {
        if (y45.e(cls, boolean[].class)) {
            return "kotlin.BooleanArray";
        }
        if (y45.e(cls, char[].class)) {
            return "kotlin.CharArray";
        }
        if (y45.e(cls, byte[].class)) {
            return "kotlin.ByteArray";
        }
        if (y45.e(cls, short[].class)) {
            return "kotlin.ShortArray";
        }
        if (y45.e(cls, int[].class)) {
            return "kotlin.IntArray";
        }
        if (y45.e(cls, float[].class)) {
            return "kotlin.FloatArray";
        }
        if (y45.e(cls, long[].class)) {
            return "kotlin.LongArray";
        }
        return y45.e(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    public String toString() {
        return h(false) + " (Kotlin reflection is not available)";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public qcb(he5 he5Var, List list, boolean z) {
        this(he5Var, list, null, z ? 1 : 0);
        y45.j(he5Var, "classifier");
        y45.j(list, "arguments");
    }
}
