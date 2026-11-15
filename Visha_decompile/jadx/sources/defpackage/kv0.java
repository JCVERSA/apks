package defpackage;

import java.util.Arrays;

public final class kv0 extends u25 {
    public kv0(char c) {
        super(Character.valueOf(c));
    }

    public final String c(char c) {
        if (c == '\b') {
            return "\\b";
        }
        if (c == '\t') {
            return "\\t";
        }
        if (c == '\n') {
            return "\\n";
        }
        if (c == '\f') {
            return "\\f";
        }
        if (c == '\r') {
            return "\\r";
        }
        return e(c) ? String.valueOf(c) : "?";
    }

    @Override
    public sm9 a(qq6 qq6Var) {
        y45.j(qq6Var, "module");
        sm9 sm9VarU = qq6Var.o().u();
        y45.i(sm9VarU, "module.builtIns.charType");
        return sm9VarU;
    }

    public final boolean e(char c) {
        byte type = (byte) Character.getType(c);
        return (type == 0 || type == 13 || type == 14 || type == 15 || type == 16 || type == 18 || type == 19) ? false : true;
    }

    @Override
    public String toString() {
        String str = String.format("\\u%04X ('%s')", Arrays.copyOf(new Object[]{Integer.valueOf(((Character) b()).charValue()), c(((Character) b()).charValue())}, 2));
        y45.i(str, "format(this, *args)");
        return str;
    }
}
