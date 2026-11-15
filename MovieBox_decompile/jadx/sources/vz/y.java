package vz;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public final class y {

    public static final y f74062e = new y(0, "VZCBSIFJD", 0, 1);

    public static final y f74063f = new y(1, "VZCBSIFJD", 1, 2);

    public static final y f74064g = new y(2, "VZCBSIFJD", 2, 3);

    public static final y f74065h = new y(3, "VZCBSIFJD", 3, 4);

    public static final y f74066i = new y(4, "VZCBSIFJD", 4, 5);

    public static final y f74067j = new y(5, "VZCBSIFJD", 5, 6);

    public static final y f74068k = new y(6, "VZCBSIFJD", 6, 7);

    public static final y f74069l = new y(7, "VZCBSIFJD", 7, 8);

    public static final y f74070m = new y(8, "VZCBSIFJD", 8, 9);

    private final int f74071a;

    private final String f74072b;

    private final int f74073c;

    private final int f74074d;

    private y(int i10, String str, int i11, int i12) {
        this.f74071a = i10;
        this.f74072b = str;
        this.f74073c = i11;
        this.f74074d = i12;
    }

    private static void a(Class cls, StringBuilder sb2) {
        char c10;
        while (cls.isArray()) {
            sb2.append('[');
            cls = cls.getComponentType();
        }
        if (!cls.isPrimitive()) {
            sb2.append('L');
            String name = cls.getName();
            int length = name.length();
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = name.charAt(i10);
                if (cCharAt == '.') {
                    cCharAt = '/';
                }
                sb2.append(cCharAt);
            }
            sb2.append(';');
            return;
        }
        if (cls == Integer.TYPE) {
            c10 = 'I';
        } else if (cls == Void.TYPE) {
            c10 = 'V';
        } else if (cls == Boolean.TYPE) {
            c10 = 'Z';
        } else if (cls == Byte.TYPE) {
            c10 = 'B';
        } else if (cls == Character.TYPE) {
            c10 = 'C';
        } else if (cls == Short.TYPE) {
            c10 = 'S';
        } else if (cls == Double.TYPE) {
            c10 = 'D';
        } else if (cls == Float.TYPE) {
            c10 = 'F';
        } else {
            if (cls != Long.TYPE) {
                throw new AssertionError();
            }
            c10 = 'J';
        }
        sb2.append(c10);
    }

    public static y[] b(String str) {
        int i10 = 0;
        int i11 = 0;
        int iIndexOf = 1;
        while (str.charAt(iIndexOf) != ')') {
            while (str.charAt(iIndexOf) == '[') {
                iIndexOf++;
            }
            int i12 = iIndexOf + 1;
            iIndexOf = str.charAt(iIndexOf) == 'L' ? str.indexOf(59, i12) + 1 : i12;
            i11++;
        }
        y[] yVarArr = new y[i11];
        int i13 = 1;
        while (str.charAt(i13) != ')') {
            int i14 = i13;
            while (str.charAt(i14) == '[') {
                i14++;
            }
            int iIndexOf2 = i14 + 1;
            if (str.charAt(i14) == 'L') {
                iIndexOf2 = str.indexOf(59, iIndexOf2) + 1;
            }
            yVarArr[i10] = o(str, i13, iIndexOf2);
            i10++;
            i13 = iIndexOf2;
        }
        return yVarArr;
    }

    public static int c(String str) {
        char cCharAt = str.charAt(1);
        int i10 = 1;
        int i11 = 1;
        while (cCharAt != ')') {
            if (cCharAt == 'J' || cCharAt == 'D') {
                i10++;
                i11 += 2;
            } else {
                while (str.charAt(i10) == '[') {
                    i10++;
                }
                int iIndexOf = i10 + 1;
                if (str.charAt(i10) == 'L') {
                    iIndexOf = str.indexOf(59, iIndexOf) + 1;
                }
                i11++;
                i10 = iIndexOf;
            }
            cCharAt = str.charAt(i10);
        }
        char cCharAt2 = str.charAt(i10 + 1);
        if (cCharAt2 == 'V') {
            return i11 << 2;
        }
        return (i11 << 2) | ((cCharAt2 == 'J' || cCharAt2 == 'D') ? 2 : 1);
    }

    public static String d(Constructor constructor) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('(');
        for (Class<?> cls : constructor.getParameterTypes()) {
            a(cls, sb2);
        }
        sb2.append(")V");
        return sb2.toString();
    }

    public static String f(Class cls) {
        StringBuilder sb2 = new StringBuilder();
        a(cls, sb2);
        return sb2.toString();
    }

    public static String h(Class cls) {
        return cls.getName().replace('.', '/');
    }

    public static String i(Method method) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('(');
        for (Class<?> cls : method.getParameterTypes()) {
            a(cls, sb2);
        }
        sb2.append(')');
        a(method.getReturnType(), sb2);
        return sb2.toString();
    }

    public static y j(String str) {
        return new y(11, str, 0, str.length());
    }

    public static y k(String str) {
        return new y(str.charAt(0) == '[' ? 9 : 12, str, 0, str.length());
    }

    public static y m(Class cls) {
        if (!cls.isPrimitive()) {
            return n(f(cls));
        }
        if (cls == Integer.TYPE) {
            return f74067j;
        }
        if (cls == Void.TYPE) {
            return f74062e;
        }
        if (cls == Boolean.TYPE) {
            return f74063f;
        }
        if (cls == Byte.TYPE) {
            return f74065h;
        }
        if (cls == Character.TYPE) {
            return f74064g;
        }
        if (cls == Short.TYPE) {
            return f74066i;
        }
        if (cls == Double.TYPE) {
            return f74070m;
        }
        if (cls == Float.TYPE) {
            return f74068k;
        }
        if (cls == Long.TYPE) {
            return f74069l;
        }
        throw new AssertionError();
    }

    public static y n(String str) {
        return o(str, 0, str.length());
    }

    private static y o(String str, int i10, int i11) {
        char cCharAt = str.charAt(i10);
        if (cCharAt == '(') {
            return new y(11, str, i10, i11);
        }
        if (cCharAt == 'F') {
            return f74068k;
        }
        if (cCharAt == 'L') {
            return new y(10, str, i10 + 1, i11 - 1);
        }
        if (cCharAt == 'S') {
            return f74066i;
        }
        if (cCharAt == 'V') {
            return f74062e;
        }
        if (cCharAt == 'I') {
            return f74067j;
        }
        if (cCharAt == 'J') {
            return f74069l;
        }
        if (cCharAt == 'Z') {
            return f74063f;
        }
        if (cCharAt == '[') {
            return new y(9, str, i10, i11);
        }
        switch (cCharAt) {
            case 'B':
                return f74065h;
            case 'C':
                return f74064g;
            case 'D':
                return f74070m;
            default:
                throw new IllegalArgumentException();
        }
    }

    public String e() {
        int i10 = this.f74071a;
        if (i10 == 10) {
            return this.f74072b.substring(this.f74073c - 1, this.f74074d + 1);
        }
        if (i10 != 12) {
            return this.f74072b.substring(this.f74073c, this.f74074d);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('L');
        sb2.append((CharSequence) this.f74072b, this.f74073c, this.f74074d);
        sb2.append(';');
        return sb2.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        int i10 = this.f74071a;
        if (i10 == 12) {
            i10 = 10;
        }
        int i11 = yVar.f74071a;
        if (i10 != (i11 != 12 ? i11 : 10)) {
            return false;
        }
        int i12 = this.f74073c;
        int i13 = this.f74074d;
        int i14 = yVar.f74073c;
        if (i13 - i12 != yVar.f74074d - i14) {
            return false;
        }
        while (i12 < i13) {
            if (this.f74072b.charAt(i12) != yVar.f74072b.charAt(i14)) {
                return false;
            }
            i12++;
            i14++;
        }
        return true;
    }

    public String g() {
        return this.f74072b.substring(this.f74073c, this.f74074d);
    }

    public int hashCode() {
        int i10 = this.f74071a;
        int iCharAt = (i10 == 12 ? 10 : i10) * 13;
        if (i10 >= 9) {
            int i11 = this.f74074d;
            for (int i12 = this.f74073c; i12 < i11; i12++) {
                iCharAt = (iCharAt + this.f74072b.charAt(i12)) * 17;
            }
        }
        return iCharAt;
    }

    public int l() {
        int i10 = this.f74071a;
        if (i10 == 12) {
            return 10;
        }
        return i10;
    }

    public String toString() {
        return e();
    }
}
