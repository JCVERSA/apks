package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import javassist.compiler.ast.MethodDecl;
import org.apache.commons.io.IOUtils;

public final class xw0 {
    public final o54 a;
    public final o54 b;
    public final boolean c;

    public xw0(o54 o54Var, o54 o54Var2, boolean z) {
        if (o54Var == null) {
            a(1);
        }
        if (o54Var2 == null) {
            a(2);
        }
        this.a = o54Var;
        this.b = o54Var2;
        this.c = z;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    public static void a(int i) {
        String str;
        int i2;
        if (i != 5 && i != 6 && i != 7 && i != 9) {
            switch (i) {
                case 13:
                case 14:
                case 15:
                case 16:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 5 && i != 6 && i != 7 && i != 9) {
            switch (i) {
                case 13:
                case 14:
                case 15:
                case 16:
                    i2 = 2;
                    break;
                default:
                    i2 = 3;
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 3:
                objArr[0] = "packageFqName";
                break;
            case 2:
                objArr[0] = "relativeClassName";
                break;
            case 4:
                objArr[0] = "topLevelName";
                break;
            case 5:
            case 6:
            case 7:
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/name/ClassId";
                break;
            case 8:
                objArr[0] = "name";
                break;
            case 10:
                objArr[0] = "segment";
                break;
            case 11:
            case 12:
                objArr[0] = "string";
                break;
            default:
                objArr[0] = "topLevelFqName";
                break;
        }
        if (i == 5) {
            objArr[1] = "getPackageFqName";
        } else if (i == 6) {
            objArr[1] = "getRelativeClassName";
        } else if (i == 7) {
            objArr[1] = "getShortClassName";
        } else if (i != 9) {
            switch (i) {
                case 13:
                case 14:
                    objArr[1] = "asString";
                    break;
                case 15:
                case 16:
                    objArr[1] = "asFqNameString";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/name/ClassId";
                    break;
            }
        } else {
            objArr[1] = "asSingleFqName";
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                objArr[2] = MethodDecl.initName;
                break;
            case 5:
            case 6:
            case 7:
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
                break;
            case 8:
                objArr[2] = "createNestedClassId";
                break;
            case 10:
                objArr[2] = "startsWith";
                break;
            case 11:
            case 12:
                objArr[2] = "fromString";
                break;
            default:
                objArr[2] = "topLevel";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 5 && i != 6 && i != 7 && i != 9) {
            switch (i) {
                case 13:
                case 14:
                case 15:
                case 16:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    public static xw0 e(String str) {
        if (str == null) {
            a(11);
        }
        return f(str, false);
    }

    public static xw0 f(String str, boolean z) {
        String str2;
        if (str == null) {
            a(12);
        }
        int iLastIndexOf = str.lastIndexOf("/");
        if (iLastIndexOf == -1) {
            str2 = "";
        } else {
            String strReplace = str.substring(0, iLastIndexOf).replace(IOUtils.DIR_SEPARATOR_UNIX, '.');
            str = str.substring(iLastIndexOf + 1);
            str2 = strReplace;
        }
        return new xw0(new o54(str2), new o54(str), z);
    }

    public static xw0 m(o54 o54Var) {
        if (o54Var == null) {
            a(0);
        }
        return new xw0(o54Var.e(), o54Var.g());
    }

    public o54 b() {
        if (this.a.d()) {
            o54 o54Var = this.b;
            if (o54Var == null) {
                a(9);
            }
            return o54Var;
        }
        return new o54(this.a.b() + Consts.DOT + this.b.b());
    }

    public String c() {
        if (this.a.d()) {
            String strB = this.b.b();
            if (strB == null) {
                a(13);
            }
            return strB;
        }
        String str = this.a.b().replace('.', IOUtils.DIR_SEPARATOR_UNIX) + "/" + this.b.b();
        if (str == null) {
            a(14);
        }
        return str;
    }

    public xw0 d(by6 by6Var) {
        if (by6Var == null) {
            a(8);
        }
        return new xw0(h(), this.b.c(by6Var), this.c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || xw0.class != obj.getClass()) {
            return false;
        }
        xw0 xw0Var = (xw0) obj;
        return this.a.equals(xw0Var.a) && this.b.equals(xw0Var.b) && this.c == xw0Var.c;
    }

    public xw0 g() {
        o54 o54VarE = this.b.e();
        if (o54VarE.d()) {
            return null;
        }
        return new xw0(h(), o54VarE, this.c);
    }

    public o54 h() {
        o54 o54Var = this.a;
        if (o54Var == null) {
            a(5);
        }
        return o54Var;
    }

    public int hashCode() {
        return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Boolean.valueOf(this.c).hashCode();
    }

    public o54 i() {
        o54 o54Var = this.b;
        if (o54Var == null) {
            a(6);
        }
        return o54Var;
    }

    public by6 j() {
        by6 by6VarG = this.b.g();
        if (by6VarG == null) {
            a(7);
        }
        return by6VarG;
    }

    public boolean k() {
        return this.c;
    }

    public boolean l() {
        return !this.b.e().d();
    }

    public String toString() {
        if (!this.a.d()) {
            return c();
        }
        return "/" + c();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public xw0(o54 o54Var, by6 by6Var) {
        this(o54Var, o54.k(by6Var), false);
        if (o54Var == null) {
            a(3);
        }
        if (by6Var == null) {
            a(4);
        }
    }
}
