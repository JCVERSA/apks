package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hi;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivActionScrollByJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final zbb f;

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
        public DivActionScrollBy a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = DivActionScrollByJsonParser.b;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "animated", zbbVar, e74Var, expression);
            if (expressionL != null) {
                expression = expressionL;
            }
            Expression expressionD = pa5.d(ex7Var, jSONObject, TtmlNode.ATTR_ID, acb.c);
            y45.i(expressionD, "readExpression(context, …\"id\", TYPE_HELPER_STRING)");
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expression2 = DivActionScrollByJsonParser.c;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "item_count", zbbVar2, e74Var2, expression2);
            if (expressionL2 != null) {
                expression2 = expressionL2;
            }
            Expression expression3 = DivActionScrollByJsonParser.d;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, zbbVar2, e74Var2, expression3);
            if (expressionL3 != null) {
                expression3 = expressionL3;
            }
            zbb zbbVar3 = DivActionScrollByJsonParser.f;
            e74 e74Var3 = DivActionScrollBy.Overflow.FROM_STRING;
            Expression expression4 = DivActionScrollByJsonParser.e;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "overflow", zbbVar3, e74Var3, expression4);
            return new DivActionScrollBy(expression, expressionD, expression2, expression3, expressionL4 == null ? expression4 : expressionL4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionScrollBy divActionScrollBy) {
            y45.j(ex7Var, "context");
            y45.j(divActionScrollBy, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "animated", divActionScrollBy.a);
            pa5.p(ex7Var, jSONObject, TtmlNode.ATTR_ID, divActionScrollBy.b);
            pa5.p(ex7Var, jSONObject, "item_count", divActionScrollBy.c);
            pa5.p(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, divActionScrollBy.d);
            pa5.q(ex7Var, jSONObject, "overflow", divActionScrollBy.e, DivActionScrollBy.Overflow.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "scroll_by");
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
        public DivActionScrollByTemplate c(ex7 ex7Var, DivActionScrollByTemplate divActionScrollByTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "animated", acb.a, zC, divActionScrollByTemplate != null ? divActionScrollByTemplate.a : null, ParsingConvertersKt.f);
            y45.i(tp3VarU, "readOptionalFieldWithExp…animated, ANY_TO_BOOLEAN)");
            tp3 tp3VarH = ra5.h(ex7VarC, jSONObject, TtmlNode.ATTR_ID, acb.c, zC, divActionScrollByTemplate != null ? divActionScrollByTemplate.b : null);
            y45.i(tp3VarH, "readFieldWithExpression(…llowOverride, parent?.id)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divActionScrollByTemplate != null ? divActionScrollByTemplate.c : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "item_count", zbbVar, zC, tp3Var, e74Var);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…itemCount, NUMBER_TO_INT)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, zbbVar, zC, divActionScrollByTemplate != null ? divActionScrollByTemplate.d : null, e74Var);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…t?.offset, NUMBER_TO_INT)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "overflow", DivActionScrollByJsonParser.f, zC, divActionScrollByTemplate != null ? divActionScrollByTemplate.e : null, DivActionScrollBy.Overflow.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…lBy.Overflow.FROM_STRING)");
            return new DivActionScrollByTemplate(tp3VarU, tp3VarH, tp3VarU2, tp3VarU3, tp3VarU4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionScrollByTemplate divActionScrollByTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divActionScrollByTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "animated", divActionScrollByTemplate.a);
            ra5.D(ex7Var, jSONObject, TtmlNode.ATTR_ID, divActionScrollByTemplate.b);
            ra5.D(ex7Var, jSONObject, "item_count", divActionScrollByTemplate.c);
            ra5.D(ex7Var, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, divActionScrollByTemplate.d);
            ra5.E(ex7Var, jSONObject, "overflow", divActionScrollByTemplate.e, DivActionScrollBy.Overflow.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "scroll_by");
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
        public DivActionScrollBy a(ex7 ex7Var, DivActionScrollByTemplate divActionScrollByTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divActionScrollByTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divActionScrollByTemplate.a;
            zbb zbbVar = acb.a;
            e74 e74Var = ParsingConvertersKt.f;
            Expression expression = DivActionScrollByJsonParser.b;
            Expression expressionV = sa5.v(ex7Var, tp3Var, jSONObject, "animated", zbbVar, e74Var, expression);
            Expression expression2 = expressionV == null ? expression : expressionV;
            Expression expressionG = sa5.g(ex7Var, divActionScrollByTemplate.b, jSONObject, TtmlNode.ATTR_ID, acb.c);
            y45.i(expressionG, "resolveExpression(contex…\"id\", TYPE_HELPER_STRING)");
            tp3 tp3Var2 = divActionScrollByTemplate.c;
            zbb zbbVar2 = acb.b;
            e74 e74Var2 = ParsingConvertersKt.h;
            Expression expression3 = DivActionScrollByJsonParser.c;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var2, jSONObject, "item_count", zbbVar2, e74Var2, expression3);
            if (expressionV2 == null) {
                expressionV2 = expression3;
            }
            tp3 tp3Var3 = divActionScrollByTemplate.d;
            Expression expression4 = DivActionScrollByJsonParser.d;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var3, jSONObject, TypedValues.CycleType.S_WAVE_OFFSET, zbbVar2, e74Var2, expression4);
            if (expressionV3 != null) {
                expression4 = expressionV3;
            }
            tp3 tp3Var4 = divActionScrollByTemplate.e;
            zbb zbbVar3 = DivActionScrollByJsonParser.f;
            e74 e74Var3 = DivActionScrollBy.Overflow.FROM_STRING;
            Expression expression5 = DivActionScrollByJsonParser.e;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var4, jSONObject, "overflow", zbbVar3, e74Var3, expression5);
            return new DivActionScrollBy(expression2, expressionG, expressionV2, expression4, expressionV4 == null ? expression5 : expressionV4);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Boolean.TRUE);
        c = aVar.a(0L);
        d = aVar.a(0L);
        e = aVar.a(DivActionScrollBy.Overflow.CLAMP);
        f = zbb.a.a(hi.W(DivActionScrollBy.Overflow.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivActionScrollBy.Overflow);
            }
        });
    }
}
