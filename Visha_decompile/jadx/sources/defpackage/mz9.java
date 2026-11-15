package defpackage;

import com.yandex.div.evaluable.a;
import java.util.Iterator;

public abstract class mz9 {
    public static final String a(pd3 pd3Var, a aVar, int i, String str) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(str, "repeatable");
        if (str.length() == 0 || i <= 0) {
            if (str.length() != 0) {
                return "";
            }
            pd3Var.d().a(aVar, "String for padding is empty.");
            return "";
        }
        StringBuilder sb = new StringBuilder(i);
        Iterator it = wn8.q(0, i).iterator();
        while (it.hasNext()) {
            sb.append(str.charAt(((q15) it).nextInt() % str.length()));
        }
        String string = sb.toString();
        y45.i(string, "stringBuilder.toString()");
        return string;
    }
}
