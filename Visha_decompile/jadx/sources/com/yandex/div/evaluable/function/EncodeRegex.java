package com.yandex.div.evaluable.function;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import defpackage.c26;
import defpackage.e74;
import defpackage.f84;
import defpackage.pd3;
import defpackage.x71;
import defpackage.y45;
import java.util.List;
import kotlin.text.Regex;
import org.apache.commons.io.IOUtils;

public final class EncodeRegex extends Function {
    public static final EncodeRegex c = new EncodeRegex();
    public static final String d = "encodeRegex";
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
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        return new Regex("[.*+?^${}()|\\[\\]\\\\]").replace((String) obj, new e74() {
            @Override
            public final CharSequence invoke(c26 c26Var) {
                y45.j(c26Var, "it");
                return IOUtils.DIR_SEPARATOR_WINDOWS + c26Var.getValue();
            }
        });
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
