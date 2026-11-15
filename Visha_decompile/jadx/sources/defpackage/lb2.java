package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import kotlin.Pair;
import org.json.JSONException;
import org.json.JSONObject;

public final class lb2 extends Function {
    public static final lb2 c = new lb2();
    public static final String d = "toString";
    public static final List e = x71.e(new f84(EvaluableType.DICT, false, 2, null));
    public static final EvaluableType f = EvaluableType.STRING;
    public static final boolean g = false;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type org.json.JSONObject");
        return n(m((JSONObject) objO0));
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

    public final Map m(JSONObject jSONObject) throws JSONException {
        ArrayList<String> arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        y45.i(itKeys, "keys()");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            y45.i(next, "key");
            arrayList.add(next);
        }
        c81.A(arrayList);
        SortedMap sortedMapI = ky5.i(new Pair[0]);
        for (String str : arrayList) {
            Object objM = jSONObject.get(str);
            if (objM instanceof JSONObject) {
                objM = c.m((JSONObject) objM);
            }
            sortedMapI.put(str, objM);
        }
        return sortedMapI;
    }

    public final String n(Object obj) {
        if (!(obj instanceof Map)) {
            if (!(obj instanceof String)) {
                return obj.toString();
            }
            StringBuilder sb = new StringBuilder();
            sb.append('\"');
            sb.append(obj);
            sb.append('\"');
            return sb.toString();
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('\"');
            sb2.append(entry.getKey());
            sb2.append("\":");
            Object value = entry.getValue();
            sb2.append(value != null ? c.n(value) : null);
            arrayList.add(sb2.toString());
        }
        return '{' + i81.y0(arrayList, StringUtils.COMMA, null, null, 0, null, null, 62, null) + '}';
    }
}
