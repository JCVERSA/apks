package defpackage;

public abstract class f2 {
    public static y1 a(y1 y1Var) {
        return b(y1Var, 128);
    }

    public static y1 b(y1 y1Var, int i) {
        if (y1Var.M(i)) {
            return y1Var;
        }
        throw new IllegalStateException("Expected " + e(i) + " tag but found " + f(y1Var));
    }

    public static y1 c(y1 y1Var, int i) {
        return b(y1Var, i).F();
    }

    public static y1 d(y1 y1Var) {
        return c(y1Var, 128);
    }

    public static String e(int i) {
        if (i == 64) {
            return "APPLICATION";
        }
        if (i != 128) {
            return i != 192 ? "UNIVERSAL" : "PRIVATE";
        }
        return "CONTEXT";
    }

    public static String f(y1 y1Var) {
        return e(y1Var.I());
    }

    public static String g(int i, int i2) {
        StringBuilder sb;
        String str;
        if (i == 64) {
            sb = new StringBuilder();
            str = "[APPLICATION ";
        } else if (i == 128) {
            sb = new StringBuilder();
            str = "[CONTEXT ";
        } else if (i != 192) {
            sb = new StringBuilder();
            str = "[UNIVERSAL ";
        } else {
            sb = new StringBuilder();
            str = "[PRIVATE ";
        }
        sb.append(str);
        sb.append(i2);
        sb.append("]");
        return sb.toString();
    }

    public static String h(y1 y1Var) {
        return g(y1Var.I(), y1Var.J());
    }
}
