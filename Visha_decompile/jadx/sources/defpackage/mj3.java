package defpackage;

import com.yandex.div.json.expressions.Expression;
import org.mozilla.javascript.ES6Iterator;

public final class mj3 implements ua0 {
    public final Expression a;
    public final oj3 b;

    public mj3(Expression expression, oj3 oj3Var) {
        y45.j(expression, "condition");
        y45.j(oj3Var, "resolver");
        this.a = expression;
        this.b = oj3Var;
    }

    @Override
    public boolean a(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        return ((Boolean) this.a.b(this.b)).booleanValue();
    }
}
