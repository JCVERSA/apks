package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlin.KotlinNothingValueException;

public final class uga extends Function {
    public static final uga c = new uga();
    public static final String d = "testRegex";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.STRING;
        e = y71.n(new f84(evaluableType, false, 2, null), new f84(evaluableType, false, 2, null));
        f = EvaluableType.BOOLEAN;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        String str = (String) obj;
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.String");
        try {
            return Boolean.valueOf(Pattern.compile((String) obj2).matcher(str).find());
        } catch (PatternSyntaxException unused) {
            List list2 = list;
            ArrayList arrayList = new ArrayList(z71.v(list2, 10));
            for (Object objN : list2) {
                if (objN instanceof String) {
                    objN = g1a.N((String) objN, "\\", "\\\\", false, 4, null);
                }
                arrayList.add(objN);
            }
            EvaluableExceptionKt.g(f(), arrayList, "Invalid regular expression.", null, 8, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override
    public List d() {
        return e;
    }

    @Override
    public String f() {
        return d;
    }

    @Override
    public EvaluableType g() {
        return f;
    }

    @Override
    public boolean i() {
        return g;
    }
}
