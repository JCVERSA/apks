package defpackage;

import com.yandex.div.json.expressions.Expression;

public abstract class uj3 {
    public static final boolean a(nj3 nj3Var, nj3 nj3Var2) {
        if (nj3Var == null && nj3Var2 == null) {
            return true;
        }
        return nj3Var != null && (nj3Var instanceof of1) && nj3Var2 != null && (nj3Var2 instanceof of1) && y45.e(((of1) nj3Var).c(), ((of1) nj3Var2).c());
    }

    public static final boolean b(Expression expression, Expression expression2) {
        if (expression == null && expression2 == null) {
            return true;
        }
        return expression != null && d(expression) && expression2 != null && d(expression2) && y45.e(expression.c(), expression2.c());
    }

    public static final boolean c(nj3 nj3Var) {
        y45.j(nj3Var, "<this>");
        return nj3Var instanceof of1;
    }

    public static final boolean d(Expression expression) {
        y45.j(expression, "<this>");
        return expression instanceof Expression.b;
    }

    public static final boolean e(nj3 nj3Var) {
        return nj3Var == null || c(nj3Var);
    }

    public static final boolean f(Expression expression) {
        return expression == null || d(expression);
    }
}
