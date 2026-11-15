package com.yandex.div2;

import androidx.constraintlayout.motion.widget.Key;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import defpackage.acb;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class b5 {
    public static final a a = new a(null);
    public static final DivPivot.c b;
    public static final DivPivot.c c;

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
        public DivTransform a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            DivPivot divPivot = (DivPivot) tb5.n(ex7Var, jSONObject, "pivot_x", this.a.Q5());
            if (divPivot == null) {
                divPivot = b5.b;
            }
            y45.i(divPivot, "JsonPropertyParser.readO… ?: PIVOT_X_DEFAULT_VALUE");
            DivPivot divPivot2 = (DivPivot) tb5.n(ex7Var, jSONObject, "pivot_y", this.a.Q5());
            if (divPivot2 == null) {
                divPivot2 = b5.c;
            }
            y45.i(divPivot2, "JsonPropertyParser.readO… ?: PIVOT_Y_DEFAULT_VALUE");
            return new DivTransform(divPivot, divPivot2, pa5.i(ex7Var, jSONObject, Key.ROTATION, acb.d, ParsingConvertersKt.g));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTransform divTransform) {
            y45.j(ex7Var, "context");
            y45.j(divTransform, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.x(ex7Var, jSONObject, "pivot_x", divTransform.a, this.a.Q5());
            tb5.x(ex7Var, jSONObject, "pivot_y", divTransform.b, this.a.Q5());
            pa5.p(ex7Var, jSONObject, Key.ROTATION, divTransform.c);
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
        public DivTransformTemplate c(ex7 ex7Var, DivTransformTemplate divTransformTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "pivot_x", zC, divTransformTemplate != null ? divTransformTemplate.a : null, this.a.R5());
            y45.i(tp3VarS, "readOptionalField(contex…vPivotJsonTemplateParser)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "pivot_y", zC, divTransformTemplate != null ? divTransformTemplate.b : null, this.a.R5());
            y45.i(tp3VarS2, "readOptionalField(contex…vPivotJsonTemplateParser)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, Key.ROTATION, acb.d, zC, divTransformTemplate != null ? divTransformTemplate.c : null, ParsingConvertersKt.g);
            y45.i(tp3VarU, "readOptionalFieldWithExp…tation, NUMBER_TO_DOUBLE)");
            return new DivTransformTemplate(tp3VarS, tp3VarS2, tp3VarU);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivTransformTemplate divTransformTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divTransformTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.I(ex7Var, jSONObject, "pivot_x", divTransformTemplate.a, this.a.R5());
            ra5.I(ex7Var, jSONObject, "pivot_y", divTransformTemplate.b, this.a.R5());
            ra5.D(ex7Var, jSONObject, Key.ROTATION, divTransformTemplate.c);
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
        public DivTransform a(ex7 ex7Var, DivTransformTemplate divTransformTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divTransformTemplate, "template");
            y45.j(jSONObject, "data");
            DivPivot divPivot = (DivPivot) sa5.p(ex7Var, divTransformTemplate.a, jSONObject, "pivot_x", this.a.S5(), this.a.Q5());
            if (divPivot == null) {
                divPivot = b5.b;
            }
            y45.i(divPivot, "JsonFieldResolver.resolv… ?: PIVOT_X_DEFAULT_VALUE");
            DivPivot divPivot2 = (DivPivot) sa5.p(ex7Var, divTransformTemplate.b, jSONObject, "pivot_y", this.a.S5(), this.a.Q5());
            if (divPivot2 == null) {
                divPivot2 = b5.c;
            }
            y45.i(divPivot2, "JsonFieldResolver.resolv… ?: PIVOT_Y_DEFAULT_VALUE");
            return new DivTransform(divPivot, divPivot2, sa5.s(ex7Var, divTransformTemplate.c, jSONObject, Key.ROTATION, acb.d, ParsingConvertersKt.g));
        }
    }

    static {
        Expression.a aVar = Expression.a;
        Double dValueOf = Double.valueOf(50.0d);
        b = new DivPivot.c(new DivPivotPercentage(aVar.a(dValueOf)));
        c = new DivPivot.c(new DivPivotPercentage(aVar.a(dValueOf)));
    }
}
