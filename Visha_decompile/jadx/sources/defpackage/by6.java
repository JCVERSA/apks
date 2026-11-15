package defpackage;

import javassist.compiler.ast.MethodDecl;

public final class by6 implements Comparable {
    public final String b;
    public final boolean c;

    public by6(String str, boolean z) {
        if (str == null) {
            a(0);
        }
        this.b = str;
        this.c = z;
    }

    public static void a(int i) {
        String str = (i == 1 || i == 2 || i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4) ? 2 : 3];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/name/Name";
        } else {
            objArr[0] = "name";
        }
        if (i == 1) {
            objArr[1] = "asString";
        } else if (i == 2) {
            objArr[1] = "getIdentifier";
        } else if (i == 3 || i == 4) {
            objArr[1] = "asStringStripSpecialMarkers";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/Name";
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                break;
            case 5:
                objArr[2] = "identifier";
                break;
            case 6:
                objArr[2] = "isValidIdentifier";
                break;
            case 7:
                objArr[2] = "special";
                break;
            case 8:
                objArr[2] = "guessByFirstCharacter";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2 && i != 3 && i != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static by6 f(String str) {
        if (str == null) {
            a(8);
        }
        return str.startsWith("<") ? j(str) : g(str);
    }

    public static by6 g(String str) {
        if (str == null) {
            a(5);
        }
        return new by6(str, false);
    }

    public static boolean i(String str) {
        if (str == null) {
            a(6);
        }
        if (str.isEmpty() || str.startsWith("<")) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '.' || cCharAt == '/' || cCharAt == '\\') {
                return false;
            }
        }
        return true;
    }

    public static by6 j(String str) {
        if (str == null) {
            a(7);
        }
        if (str.startsWith("<")) {
            return new by6(str, true);
        }
        throw new IllegalArgumentException("special name must start with '<': " + str);
    }

    public String b() {
        String str = this.b;
        if (str == null) {
            a(1);
        }
        return str;
    }

    @Override
    public int compareTo(by6 by6Var) {
        return this.b.compareTo(by6Var.b);
    }

    public String e() {
        if (this.c) {
            throw new IllegalStateException("not identifier: " + this);
        }
        String strB = b();
        if (strB == null) {
            a(2);
        }
        return strB;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof by6)) {
            return false;
        }
        by6 by6Var = (by6) obj;
        return this.c == by6Var.c && this.b.equals(by6Var.b);
    }

    public boolean h() {
        return this.c;
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + (this.c ? 1 : 0);
    }

    public String toString() {
        return this.b;
    }
}
