package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.types.DateTime;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

public final class m44 extends Function {
    public static final m44 c = new m44();
    public static final String d = "formatDateAsUTC";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        f84 f84Var = new f84(EvaluableType.DATETIME, false, 2, null);
        EvaluableType evaluableType = EvaluableType.STRING;
        e = y71.n(f84Var, new f84(evaluableType, false, 2, null));
        f = evaluableType;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type com.yandex.div.evaluable.types.DateTime");
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.String");
        Date dateB = ht1.b((DateTime) obj);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat((String) obj2, Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String str = simpleDateFormat.format(dateB);
        y45.i(str, "sdf.format(date)");
        return str;
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
