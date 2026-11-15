package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Evaluator;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.LinkedHashMap;
import java.util.List;

public final class rn5 extends Function {
    public final String c;
    public final List d;
    public final EvaluableType e;
    public final List f;
    public final boolean g;
    public final a h;

    public rn5(String str, List list, EvaluableType evaluableType, List list2, String str2) {
        y45.j(str, "name");
        y45.j(list, "declaredArgs");
        y45.j(evaluableType, "resultType");
        y45.j(list2, "argNames");
        y45.j(str2, TtmlNode.TAG_BODY);
        this.c = str;
        this.d = list;
        this.e = evaluableType;
        this.f = list2;
        this.h = a.d.a(str2);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i = 0;
        for (Object obj : this.f) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            linkedHashMap.put((String) obj, list.get(i));
            i = i2;
        }
        cob cobVarC = pd3Var.c();
        y45.h(cobVarC, "null cannot be cast to non-null type com.yandex.div.core.expression.variables.VariableController");
        return new Evaluator(new pd3(new rnb((snb) cobVarC, new vf1(linkedHashMap)), pd3Var.b(), pd3Var.a(), pd3Var.d())).d(this.h);
    }

    @Override
    public List d() {
        return this.d;
    }

    @Override
    public String f() {
        return this.c;
    }

    @Override
    public EvaluableType g() {
        return this.e;
    }

    @Override
    public boolean i() {
        return this.g;
    }
}
