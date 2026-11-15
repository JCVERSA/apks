package defpackage;

import com.yandex.div.json.ParsingException;
import java.util.List;

public interface oj3 {
    public static final b a = b.a;
    public static final oj3 b = new a();

    public static final class a implements oj3 {
        @Override
        public qc2 a(String str, List list, c74 c74Var) {
            y45.j(str, "rawExpression");
            y45.j(list, "variableNames");
            y45.j(c74Var, "callback");
            return qc2.A1;
        }

        @Override
        public Object b(String str, String str2, com.yandex.div.evaluable.a aVar, e74 e74Var, pnb pnbVar, zbb zbbVar, lx7 lx7Var) {
            y45.j(str, "expressionKey");
            y45.j(str2, "rawExpression");
            y45.j(aVar, "evaluable");
            y45.j(pnbVar, "validator");
            y45.j(zbbVar, "fieldType");
            y45.j(lx7Var, "logger");
            return null;
        }
    }

    public static final class b {
        public static final b a = new b();
    }

    qc2 a(String str, List list, c74 c74Var);

    Object b(String str, String str2, com.yandex.div.evaluable.a aVar, e74 e74Var, pnb pnbVar, zbb zbbVar, lx7 lx7Var);

    default void c(ParsingException parsingException) {
        y45.j(parsingException, "e");
    }
}
