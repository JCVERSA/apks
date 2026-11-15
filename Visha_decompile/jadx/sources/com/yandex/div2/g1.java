package com.yandex.div2;

import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.g1;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hm5;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zbb;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class g1 {
    public static final a a = new a(null);
    public static final Expression b = Expression.a.a(Boolean.FALSE);
    public static final hm5 c = new hm5() {
        @Override
        public final boolean a(List list) {
            return g1.b(list);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b implements pd9, w92 {
        public final JsonParserComponent a;

        public b(JsonParserComponent jsonParserComponent) {
            y45.j(jsonParserComponent, "component");
            this.a = jsonParserComponent;
        }

        @Override
        public DivFixedLengthInputMask a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = g1.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "always_visible", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            Expression expressionD = pa5.d(ex7Var, jSONObject, "pattern", acb.c);
            y45.i(expressionD, "readExpression(context, …ern\", TYPE_HELPER_STRING)");
            List listJ = tb5.j(ex7Var, jSONObject, "pattern_elements", this.a.q3(), g1.c);
            y45.i(listJ, "readList(context, data, …TTERN_ELEMENTS_VALIDATOR)");
            Object objD = tb5.d(ex7Var, jSONObject, "raw_text_variable");
            y45.i(objD, "read(context, data, \"raw_text_variable\")");
            return new DivFixedLengthInputMask(expression, expressionD, listJ, (String) objD);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivFixedLengthInputMask divFixedLengthInputMask) {
            y45.j(ex7Var, "context");
            y45.j(divFixedLengthInputMask, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "always_visible", divFixedLengthInputMask.a);
            pa5.p(ex7Var, jSONObject, "pattern", divFixedLengthInputMask.b);
            tb5.z(ex7Var, jSONObject, "pattern_elements", divFixedLengthInputMask.c, this.a.q3());
            tb5.v(ex7Var, jSONObject, "raw_text_variable", divFixedLengthInputMask.a());
            tb5.v(ex7Var, jSONObject, "type", "fixed_length");
            return jSONObject;
        }
    }

    public static final class c implements pd9, gfa {
        public final JsonParserComponent a;

        public c(JsonParserComponent jsonParserComponent) {
            y45.j(jsonParserComponent, "component");
            this.a = jsonParserComponent;
        }

        @Override
        public DivFixedLengthInputMaskTemplate c(ex7 ex7Var, DivFixedLengthInputMaskTemplate divFixedLengthInputMaskTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "always_visible", acb.a, zC, divFixedLengthInputMaskTemplate != null ? divFixedLengthInputMaskTemplate.a : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…sVisible, ANY_TO_BOOLEAN)");
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, "pattern", acb.c, zC, divFixedLengthInputMaskTemplate != null ? divFixedLengthInputMaskTemplate.b : null);
            y45.i(tp3VarH, "readFieldWithExpression(…verride, parent?.pattern)");
            tp3 tp3Var = divFixedLengthInputMaskTemplate != null ? divFixedLengthInputMaskTemplate.c : null;
            yi5 yi5VarR3 = this.a.r3();
            hm5 hm5Var = g1.c;
            y45.h(hm5Var, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>");
            tp3 tp3VarM = ra5.m(ex7VarC, jSONObject, "pattern_elements", zC, tp3Var, yi5VarR3, hm5Var);
            y45.i(tp3VarM, "readListField(context, d…LEMENTS_VALIDATOR.cast())");
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "raw_text_variable", zC, divFixedLengthInputMaskTemplate != null ? divFixedLengthInputMaskTemplate.d : null);
            y45.i(tp3VarC, "readField(context, data,… parent?.rawTextVariable)");
            return new DivFixedLengthInputMaskTemplate(tp3VarU, tp3VarH, tp3VarM, tp3VarC);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivFixedLengthInputMaskTemplate divFixedLengthInputMaskTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divFixedLengthInputMaskTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "always_visible", divFixedLengthInputMaskTemplate.a);
            ra5.D(ex7Var, jSONObject, "pattern", divFixedLengthInputMaskTemplate.b);
            ra5.K(ex7Var, jSONObject, "pattern_elements", divFixedLengthInputMaskTemplate.c, this.a.r3());
            ra5.G(ex7Var, jSONObject, "raw_text_variable", divFixedLengthInputMaskTemplate.d);
            tb5.v(ex7Var, jSONObject, "type", "fixed_length");
            return jSONObject;
        }
    }

    public static final class d implements lga {
        public final JsonParserComponent a;

        public d(JsonParserComponent jsonParserComponent) {
            y45.j(jsonParserComponent, "component");
            this.a = jsonParserComponent;
        }

        @Override
        public DivFixedLengthInputMask a(ex7 ex7Var, DivFixedLengthInputMaskTemplate divFixedLengthInputMaskTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divFixedLengthInputMaskTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divFixedLengthInputMaskTemplate.a;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = g1.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "always_visible", zbbVar, e74Var, expression);
            if (expressionV != null) {
                expression = expressionV;
            }
            Expression expressionG = sa5.g(ex7Var, divFixedLengthInputMaskTemplate.b, jSONObject, "pattern", acb.c);
            y45.i(expressionG, "resolveExpression(contex…ern\", TYPE_HELPER_STRING)");
            List listL = sa5.l(ex7Var, divFixedLengthInputMaskTemplate.c, jSONObject, "pattern_elements", this.a.s3(), this.a.q3(), g1.c);
            y45.i(listL, "resolveList(context, tem…TTERN_ELEMENTS_VALIDATOR)");
            Object objA = sa5.a(ex7Var, divFixedLengthInputMaskTemplate.d, jSONObject, "raw_text_variable");
            y45.i(objA, "resolve(context, templat…ata, \"raw_text_variable\")");
            return new DivFixedLengthInputMask(expression, expressionG, listL, (String) objA);
        }
    }

    public static final boolean b(List list) {
        y45.j(list, "it");
        return list.size() >= 1;
    }
}
