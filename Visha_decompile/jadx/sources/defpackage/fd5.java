package defpackage;

import javassist.compiler.ast.MethodDecl;
import org.apache.commons.io.IOUtils;

public class fd5 {
    public final String a;
    public o54 b;

    public fd5(String str) {
        if (str == null) {
            a(5);
        }
        this.a = str;
    }

    public static void a(int i) {
        String str = (i == 3 || i == 6 || i == 7 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 6 || i == 7 || i == 8) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "classId";
                break;
            case 2:
            case 4:
                objArr[0] = "fqName";
                break;
            case 3:
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName";
                break;
            case 5:
            default:
                objArr[0] = "internalName";
                break;
        }
        if (i == 3) {
            objArr[1] = "byFqNameWithoutInnerClasses";
        } else if (i == 6) {
            objArr[1] = "getFqNameForClassNameWithoutDollars";
        } else if (i == 7) {
            objArr[1] = "getPackageFqName";
        } else if (i != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName";
        } else {
            objArr[1] = "getInternalName";
        }
        switch (i) {
            case 1:
                objArr[2] = "byClassId";
                break;
            case 2:
            case 4:
                objArr[2] = "byFqNameWithoutInnerClasses";
                break;
            case 3:
            case 6:
            case 7:
            case 8:
                break;
            case 5:
                objArr[2] = MethodDecl.initName;
                break;
            default:
                objArr[2] = "byInternalName";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 3 && i != 6 && i != 7 && i != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static fd5 b(xw0 xw0Var) {
        if (xw0Var == null) {
            a(1);
        }
        o54 o54VarH = xw0Var.h();
        String strReplace = xw0Var.i().b().replace('.', '$');
        if (o54VarH.d()) {
            return new fd5(strReplace);
        }
        return new fd5(o54VarH.b().replace('.', IOUtils.DIR_SEPARATOR_UNIX) + "/" + strReplace);
    }

    public static fd5 c(o54 o54Var) {
        if (o54Var == null) {
            a(2);
        }
        fd5 fd5Var = new fd5(o54Var.b().replace('.', IOUtils.DIR_SEPARATOR_UNIX));
        fd5Var.b = o54Var;
        return fd5Var;
    }

    public static fd5 d(String str) {
        if (str == null) {
            a(0);
        }
        return new fd5(str);
    }

    public o54 e() {
        return new o54(this.a.replace(IOUtils.DIR_SEPARATOR_UNIX, '.'));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((fd5) obj).a);
    }

    public String f() {
        String str = this.a;
        if (str == null) {
            a(8);
        }
        return str;
    }

    public o54 g() {
        int iLastIndexOf = this.a.lastIndexOf("/");
        if (iLastIndexOf != -1) {
            return new o54(this.a.substring(0, iLastIndexOf).replace(IOUtils.DIR_SEPARATOR_UNIX, '.'));
        }
        o54 o54Var = o54.c;
        if (o54Var == null) {
            a(7);
        }
        return o54Var;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a;
    }
}
