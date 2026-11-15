package defpackage;

import com.transsion.livecaption.constant.ICode;
import org.mozilla.javascript.ES6Iterator;

public final class jw7 {
    public final String a;
    public static final jw7 b = new jw7("[unknown role]");
    public static final jw7 c = new jw7("left-hand operand");
    public static final jw7 d = new jw7("right-hand operand");
    public static final jw7 e = new jw7("enclosed operand");
    public static final jw7 f = new jw7("item value");
    public static final jw7 g = new jw7("item key");
    public static final jw7 h = new jw7("assignment target");
    public static final jw7 i = new jw7("assignment operator");
    public static final jw7 j = new jw7("assignment source");
    public static final jw7 k = new jw7("variable scope");
    public static final jw7 l = new jw7("namespace");
    public static final jw7 m = new jw7("error handler");
    public static final jw7 n = new jw7("passed value");
    public static final jw7 o = new jw7("condition");
    public static final jw7 p = new jw7(ES6Iterator.VALUE_PROPERTY);
    public static final jw7 q = new jw7("AST-node subtype");
    public static final jw7 r = new jw7("placeholder variable");
    public static final jw7 s = new jw7("expression template");
    public static final jw7 t = new jw7("list source");
    public static final jw7 u = new jw7("target loop variable");
    public static final jw7 v = new jw7("template name");
    public static final jw7 w = new jw7("\"parse\" parameter");
    public static final jw7 x = new jw7("\"encoding\" parameter");
    public static final jw7 y = new jw7("\"ignore_missing\" parameter");
    public static final jw7 z = new jw7("parameter name");
    public static final jw7 A = new jw7("parameter default");
    public static final jw7 B = new jw7("catch-all parameter name");
    public static final jw7 C = new jw7("argument name");
    public static final jw7 D = new jw7("argument value");
    public static final jw7 E = new jw7(ICode.CALL.CALL_KEY_CONTENT);
    public static final jw7 F = new jw7("embedded template");
    public static final jw7 G = new jw7("minimum decimals");
    public static final jw7 H = new jw7("maximum decimals");
    public static final jw7 I = new jw7("node");
    public static final jw7 J = new jw7("callee");
    public static final jw7 K = new jw7("message");

    public jw7(String str) {
        this.a = str;
    }

    public static jw7 a(int i2) {
        if (i2 == 0) {
            return c;
        }
        if (i2 == 1) {
            return d;
        }
        throw new IndexOutOfBoundsException();
    }

    public String toString() {
        return this.a;
    }
}
