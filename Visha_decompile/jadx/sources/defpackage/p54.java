package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import javassist.compiler.ast.MethodDecl;

public final class p54 {
    public static final by6 e = by6.j("<root>");
    public static final Pattern f = Pattern.compile("\\.");
    public static final e74 g = new a();
    public final String a;
    public transient o54 b;
    public transient p54 c;
    public transient by6 d;

    public static class a implements e74 {
        @Override
        public by6 invoke(String str) {
            return by6.f(str);
        }
    }

    public p54(String str, o54 o54Var) {
        if (str == null) {
            a(0);
        }
        if (o54Var == null) {
            a(1);
        }
        this.a = str;
        this.b = o54Var;
    }

    public static void a(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 15:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                i2 = 2;
                break;
            case 9:
            case 15:
            case 16:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        if (i != 1) {
            switch (i) {
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 17:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                    break;
                case 9:
                    objArr[0] = "name";
                    break;
                case 15:
                    objArr[0] = "segment";
                    break;
                case 16:
                    objArr[0] = "shortName";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
        } else {
            objArr[0] = "safe";
        }
        switch (i) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
            case 6:
                objArr[1] = "toSafe";
                break;
            case 7:
            case 8:
                objArr[1] = "parent";
                break;
            case 9:
            case 15:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                break;
            case 10:
            case 11:
                objArr[1] = "shortName";
                break;
            case 12:
            case 13:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 14:
                objArr[1] = "pathSegments";
                break;
            case 17:
                objArr[1] = "toString";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                break;
            case 9:
                objArr[2] = "child";
                break;
            case 15:
                objArr[2] = "startsWith";
                break;
            case 16:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                throw new IllegalStateException(str2);
            case 9:
            case 15:
            case 16:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static p54 m(by6 by6Var) {
        if (by6Var == null) {
            a(16);
        }
        return new p54(by6Var.b(), o54.c.j(), by6Var);
    }

    public String b() {
        String str = this.a;
        if (str == null) {
            a(4);
        }
        return str;
    }

    public p54 c(by6 by6Var) {
        String strB;
        if (by6Var == null) {
            a(9);
        }
        if (e()) {
            strB = by6Var.b();
        } else {
            strB = this.a + Consts.DOT + by6Var.b();
        }
        return new p54(strB, this, by6Var);
    }

    public final void d() {
        int iLastIndexOf = this.a.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            this.d = by6.f(this.a.substring(iLastIndexOf + 1));
            this.c = new p54(this.a.substring(0, iLastIndexOf));
        } else {
            this.d = by6.f(this.a);
            this.c = o54.c.j();
        }
    }

    public boolean e() {
        return this.a.isEmpty();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p54) && this.a.equals(((p54) obj).a);
    }

    public boolean f() {
        return this.b != null || b().indexOf(60) < 0;
    }

    public p54 g() {
        p54 p54Var = this.c;
        if (p54Var != null) {
            if (p54Var == null) {
                a(7);
            }
            return p54Var;
        }
        if (e()) {
            throw new IllegalStateException("root");
        }
        d();
        p54 p54Var2 = this.c;
        if (p54Var2 == null) {
            a(8);
        }
        return p54Var2;
    }

    public List h() {
        List listEmptyList = e() ? Collections.emptyList() : hi.w0(f.split(this.a), g);
        if (listEmptyList == null) {
            a(14);
        }
        return listEmptyList;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public by6 i() {
        by6 by6Var = this.d;
        if (by6Var != null) {
            if (by6Var == null) {
                a(10);
            }
            return by6Var;
        }
        if (e()) {
            throw new IllegalStateException("root");
        }
        d();
        by6 by6Var2 = this.d;
        if (by6Var2 == null) {
            a(11);
        }
        return by6Var2;
    }

    public by6 j() {
        if (e()) {
            by6 by6Var = e;
            if (by6Var == null) {
                a(12);
            }
            return by6Var;
        }
        by6 by6VarI = i();
        if (by6VarI == null) {
            a(13);
        }
        return by6VarI;
    }

    public boolean k(by6 by6Var) {
        if (by6Var == null) {
            a(15);
        }
        if (e()) {
            return false;
        }
        int iIndexOf = this.a.indexOf(46);
        String strB = by6Var.b();
        String str = this.a;
        if (iIndexOf == -1) {
            iIndexOf = Math.max(str.length(), strB.length());
        }
        return str.regionMatches(0, strB, 0, iIndexOf);
    }

    public o54 l() {
        o54 o54Var = this.b;
        if (o54Var != null) {
            if (o54Var == null) {
                a(5);
            }
            return o54Var;
        }
        o54 o54Var2 = new o54(this);
        this.b = o54Var2;
        return o54Var2;
    }

    public String toString() {
        String strB = e() ? e.b() : this.a;
        if (strB == null) {
            a(17);
        }
        return strB;
    }

    public p54(String str) {
        if (str == null) {
            a(2);
        }
        this.a = str;
    }

    public p54(String str, p54 p54Var, by6 by6Var) {
        if (str == null) {
            a(3);
        }
        this.a = str;
        this.c = p54Var;
        this.d = by6Var;
    }
}
