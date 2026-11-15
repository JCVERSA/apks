package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import org.slf4j.Marker;

public final class kz9 extends Function {
    public static final kz9 c = new kz9();
    public static final String d = "encodeUri";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.STRING;
        e = x71.e(new f84(evaluableType, false, 2, null));
        f = evaluableType;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) throws UnsupportedEncodingException {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        String strEncode = URLEncoder.encode((String) obj, qv0.b.name());
        y45.i(strEncode, "encode(str, Charsets.UTF_8.name())");
        return g1a.N(g1a.N(g1a.N(g1a.N(g1a.N(g1a.N(strEncode, Marker.ANY_NON_NULL_MARKER, "%20", false, 4, null), "%21", "!", false, 4, null), "%7E", "~", false, 4, null), "%27", "'", false, 4, null), "%28", "(", false, 4, null), "%29", ")", false, 4, null);
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
