package defpackage;

import org.mozilla.javascript.ES6Iterator;

public interface py0 {

    public static final class a {
        public static boolean a(py0 py0Var, Comparable comparable) {
            y45.j(comparable, ES6Iterator.VALUE_PROPERTY);
            return comparable.compareTo(py0Var.getStart()) >= 0 && comparable.compareTo(py0Var.getEndInclusive()) <= 0;
        }

        public static boolean b(py0 py0Var) {
            return py0Var.getStart().compareTo(py0Var.getEndInclusive()) > 0;
        }
    }

    Comparable getEndInclusive();

    Comparable getStart();
}
