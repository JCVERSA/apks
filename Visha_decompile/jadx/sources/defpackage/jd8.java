package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public final class jd8 {
    public Number a;
    public final Number b;

    public jd8(Number number, Number number2) {
        y45.j(number, ES6Iterator.VALUE_PROPERTY);
        y45.j(number2, "fallbackValue");
        this.a = number;
        this.b = number2;
    }

    public final Number a(Object obj, af5 af5Var) {
        y45.j(af5Var, "property");
        return this.a;
    }

    public final void b(Object obj, af5 af5Var, Number number) {
        y45.j(af5Var, "property");
        y45.j(number, ES6Iterator.VALUE_PROPERTY);
        if (number.doubleValue() <= 0.0d) {
            number = this.b;
        }
        this.a = number;
    }

    public jd8(Number number, Number number2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(number, (i & 2) != 0 ? 1 : number2);
    }
}
