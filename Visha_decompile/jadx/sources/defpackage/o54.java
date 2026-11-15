package defpackage;

import java.util.List;
import javassist.compiler.ast.MethodDecl;

public final class o54 {
    public static final o54 c = new o54("");
    public final p54 a;
    public transient o54 b;

    public o54(String str) {
        if (str == null) {
            a(1);
        }
        this.a = new p54(str, this);
    }

    public static void a(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 8:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                i2 = 2;
                break;
            case 8:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "fqName";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqName";
                break;
            case 8:
                objArr[0] = "name";
                break;
            case 12:
                objArr[0] = "segment";
                break;
            case 13:
                objArr[0] = "shortName";
                break;
            default:
                objArr[0] = "names";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
                objArr[1] = "toUnsafe";
                break;
            case 6:
            case 7:
                objArr[1] = "parent";
                break;
            case 8:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqName";
                break;
            case 9:
                objArr[1] = "shortName";
                break;
            case 10:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 11:
                objArr[1] = "pathSegments";
                break;
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[2] = MethodDecl.initName;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                break;
            case 8:
                objArr[2] = "child";
                break;
            case 12:
                objArr[2] = "startsWith";
                break;
            case 13:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "fromSegments";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                throw new IllegalStateException(str2);
            case 8:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static o54 k(by6 by6Var) {
        if (by6Var == null) {
            a(13);
        }
        return new o54(p54.m(by6Var));
    }

    public String b() {
        String strB = this.a.b();
        if (strB == null) {
            a(4);
        }
        return strB;
    }

    public o54 c(by6 by6Var) {
        if (by6Var == null) {
            a(8);
        }
        return new o54(this.a.c(by6Var), this);
    }

    public boolean d() {
        return this.a.e();
    }

    public o54 e() {
        o54 o54Var = this.b;
        if (o54Var != null) {
            if (o54Var == null) {
                a(6);
            }
            return o54Var;
        }
        if (d()) {
            throw new IllegalStateException("root");
        }
        o54 o54Var2 = new o54(this.a.g());
        this.b = o54Var2;
        return o54Var2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o54) && this.a.equals(((o54) obj).a);
    }

    public List f() {
        List listH = this.a.h();
        if (listH == null) {
            a(11);
        }
        return listH;
    }

    public by6 g() {
        by6 by6VarI = this.a.i();
        if (by6VarI == null) {
            a(9);
        }
        return by6VarI;
    }

    public by6 h() {
        by6 by6VarJ = this.a.j();
        if (by6VarJ == null) {
            a(10);
        }
        return by6VarJ;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean i(by6 by6Var) {
        if (by6Var == null) {
            a(12);
        }
        return this.a.k(by6Var);
    }

    public p54 j() {
        p54 p54Var = this.a;
        if (p54Var == null) {
            a(5);
        }
        return p54Var;
    }

    public String toString() {
        return this.a.toString();
    }

    public o54(p54 p54Var) {
        if (p54Var == null) {
            a(2);
        }
        this.a = p54Var;
    }

    public o54(p54 p54Var, o54 o54Var) {
        if (p54Var == null) {
            a(3);
        }
        this.a = p54Var;
        this.b = o54Var;
    }
}
