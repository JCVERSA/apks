package com.yandex.div2;

import com.hisavana.common.tracking.TrackingKey;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivImageBackgroundJsonParser;
import defpackage.acb;
import defpackage.e74;
import defpackage.ex7;
import defpackage.fx7;
import defpackage.gfa;
import defpackage.hi;
import defpackage.lga;
import defpackage.pa5;
import defpackage.pd9;
import defpackage.pnb;
import defpackage.ra5;
import defpackage.sa5;
import defpackage.tb5;
import defpackage.tp3;
import defpackage.w92;
import defpackage.y45;
import defpackage.zbb;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivImageBackgroundJsonParser {
    public static final a a = new a(null);
    public static final Expression b;
    public static final Expression c;
    public static final Expression d;
    public static final Expression e;
    public static final Expression f;
    public static final zbb g;
    public static final zbb h;
    public static final zbb i;
    public static final pnb j;

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
        public DivImageBackground a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivImageBackgroundJsonParser.j;
            Expression expression = DivImageBackgroundJsonParser.b;
            Expression expressionK = pa5.k(ex7Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionK != null) {
                expression = expressionK;
            }
            zbb zbbVar2 = DivImageBackgroundJsonParser.g;
            e74 e74Var2 = DivAlignmentHorizontal.FROM_STRING;
            Expression expression2 = DivImageBackgroundJsonParser.c;
            Expression expressionL = pa5.l(ex7Var, jSONObject, "content_alignment_horizontal", zbbVar2, e74Var2, expression2);
            if (expressionL != null) {
                expression2 = expressionL;
            }
            zbb zbbVar3 = DivImageBackgroundJsonParser.h;
            e74 e74Var3 = DivAlignmentVertical.FROM_STRING;
            Expression expression3 = DivImageBackgroundJsonParser.d;
            Expression expressionL2 = pa5.l(ex7Var, jSONObject, "content_alignment_vertical", zbbVar3, e74Var3, expression3);
            if (expressionL2 != null) {
                expression3 = expressionL2;
            }
            List listR = tb5.r(ex7Var, jSONObject, "filters", this.a.e3());
            Expression expressionE = pa5.e(ex7Var, jSONObject, TrackingKey.IMAGE_URL, acb.e, ParsingConvertersKt.e);
            y45.i(expressionE, "readExpression(context, …E_HELPER_URI, ANY_TO_URI)");
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expression4 = DivImageBackgroundJsonParser.e;
            Expression expressionL3 = pa5.l(ex7Var, jSONObject, "preload_required", zbbVar4, e74Var4, expression4);
            if (expressionL3 != null) {
                expression4 = expressionL3;
            }
            zbb zbbVar5 = DivImageBackgroundJsonParser.i;
            e74 e74Var5 = DivImageScale.FROM_STRING;
            Expression expression5 = DivImageBackgroundJsonParser.f;
            Expression expressionL4 = pa5.l(ex7Var, jSONObject, "scale", zbbVar5, e74Var5, expression5);
            return new DivImageBackground(expression, expression2, expression3, listR, expressionE, expression4, expressionL4 == null ? expression5 : expressionL4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivImageBackground divImageBackground) {
            y45.j(ex7Var, "context");
            y45.j(divImageBackground, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            pa5.p(ex7Var, jSONObject, "alpha", divImageBackground.a);
            pa5.q(ex7Var, jSONObject, "content_alignment_horizontal", divImageBackground.b, DivAlignmentHorizontal.TO_STRING);
            pa5.q(ex7Var, jSONObject, "content_alignment_vertical", divImageBackground.c, DivAlignmentVertical.TO_STRING);
            tb5.z(ex7Var, jSONObject, "filters", divImageBackground.d, this.a.e3());
            pa5.q(ex7Var, jSONObject, TrackingKey.IMAGE_URL, divImageBackground.e, ParsingConvertersKt.c);
            pa5.p(ex7Var, jSONObject, "preload_required", divImageBackground.f);
            pa5.q(ex7Var, jSONObject, "scale", divImageBackground.g, DivImageScale.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "image");
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
        public DivImageBackgroundTemplate c(ex7 ex7Var, DivImageBackgroundTemplate divImageBackgroundTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "alpha", acb.d, zC, divImageBackgroundTemplate != null ? divImageBackgroundTemplate.a : null, ParsingConvertersKt.g, DivImageBackgroundJsonParser.j);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_DOUBLE, ALPHA_VALIDATOR)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, "content_alignment_horizontal", DivImageBackgroundJsonParser.g, zC, divImageBackgroundTemplate != null ? divImageBackgroundTemplate.b : null, DivAlignmentHorizontal.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ntHorizontal.FROM_STRING)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "content_alignment_vertical", DivImageBackgroundJsonParser.h, zC, divImageBackgroundTemplate != null ? divImageBackgroundTemplate.c : null, DivAlignmentVertical.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…mentVertical.FROM_STRING)");
            tp3 tp3VarZ = ra5.z(ex7VarC, jSONObject, "filters", zC, divImageBackgroundTemplate != null ? divImageBackgroundTemplate.d : null, this.a.f3());
            y45.i(tp3VarZ, "readOptionalListField(co…FilterJsonTemplateParser)");
            tp3 tp3VarI = ra5.i(ex7VarC, jSONObject, TrackingKey.IMAGE_URL, acb.e, zC, divImageBackgroundTemplate != null ? divImageBackgroundTemplate.e : null, ParsingConvertersKt.e);
            y45.i(tp3VarI, "readFieldWithExpression(…nt?.imageUrl, ANY_TO_URI)");
            tp3 tp3VarU3 = ra5.u(ex7VarC, jSONObject, "preload_required", acb.a, zC, divImageBackgroundTemplate != null ? divImageBackgroundTemplate.f : null, ParsingConvertersKt.f);
            y45.i(tp3VarU3, "readOptionalFieldWithExp…Required, ANY_TO_BOOLEAN)");
            tp3 tp3VarU4 = ra5.u(ex7VarC, jSONObject, "scale", DivImageBackgroundJsonParser.i, zC, divImageBackgroundTemplate != null ? divImageBackgroundTemplate.g : null, DivImageScale.FROM_STRING);
            y45.i(tp3VarU4, "readOptionalFieldWithExp…ivImageScale.FROM_STRING)");
            return new DivImageBackgroundTemplate(tp3VarV, tp3VarU, tp3VarU2, tp3VarZ, tp3VarI, tp3VarU3, tp3VarU4);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivImageBackgroundTemplate divImageBackgroundTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divImageBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.D(ex7Var, jSONObject, "alpha", divImageBackgroundTemplate.a);
            ra5.E(ex7Var, jSONObject, "content_alignment_horizontal", divImageBackgroundTemplate.b, DivAlignmentHorizontal.TO_STRING);
            ra5.E(ex7Var, jSONObject, "content_alignment_vertical", divImageBackgroundTemplate.c, DivAlignmentVertical.TO_STRING);
            ra5.K(ex7Var, jSONObject, "filters", divImageBackgroundTemplate.d, this.a.f3());
            ra5.E(ex7Var, jSONObject, TrackingKey.IMAGE_URL, divImageBackgroundTemplate.e, ParsingConvertersKt.c);
            ra5.D(ex7Var, jSONObject, "preload_required", divImageBackgroundTemplate.f);
            ra5.E(ex7Var, jSONObject, "scale", divImageBackgroundTemplate.g, DivImageScale.TO_STRING);
            tb5.v(ex7Var, jSONObject, "type", "image");
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
        public DivImageBackground a(ex7 ex7Var, DivImageBackgroundTemplate divImageBackgroundTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divImageBackgroundTemplate, "template");
            y45.j(jSONObject, "data");
            tp3 tp3Var = divImageBackgroundTemplate.a;
            zbb zbbVar = acb.d;
            e74 e74Var = ParsingConvertersKt.g;
            pnb pnbVar = DivImageBackgroundJsonParser.j;
            Expression expression = DivImageBackgroundJsonParser.b;
            Expression expressionU = sa5.u(ex7Var, tp3Var, jSONObject, "alpha", zbbVar, e74Var, pnbVar, expression);
            if (expressionU != null) {
                expression = expressionU;
            }
            tp3 tp3Var2 = divImageBackgroundTemplate.b;
            zbb zbbVar2 = DivImageBackgroundJsonParser.g;
            e74 e74Var2 = DivAlignmentHorizontal.FROM_STRING;
            Expression expression2 = DivImageBackgroundJsonParser.c;
            Expression expressionV = sa5.v(ex7Var, tp3Var2, jSONObject, "content_alignment_horizontal", zbbVar2, e74Var2, expression2);
            if (expressionV != null) {
                expression2 = expressionV;
            }
            tp3 tp3Var3 = divImageBackgroundTemplate.c;
            zbb zbbVar3 = DivImageBackgroundJsonParser.h;
            e74 e74Var3 = DivAlignmentVertical.FROM_STRING;
            Expression expression3 = DivImageBackgroundJsonParser.d;
            Expression expressionV2 = sa5.v(ex7Var, tp3Var3, jSONObject, "content_alignment_vertical", zbbVar3, e74Var3, expression3);
            if (expressionV2 != null) {
                expression3 = expressionV2;
            }
            List listB = sa5.B(ex7Var, divImageBackgroundTemplate.d, jSONObject, "filters", this.a.g3(), this.a.e3());
            Expression expressionH = sa5.h(ex7Var, divImageBackgroundTemplate.e, jSONObject, TrackingKey.IMAGE_URL, acb.e, ParsingConvertersKt.e);
            y45.i(expressionH, "resolveExpression(contex…E_HELPER_URI, ANY_TO_URI)");
            tp3 tp3Var4 = divImageBackgroundTemplate.f;
            zbb zbbVar4 = acb.a;
            e74 e74Var4 = ParsingConvertersKt.f;
            Expression expression4 = DivImageBackgroundJsonParser.e;
            Expression expressionV3 = sa5.v(ex7Var, tp3Var4, jSONObject, "preload_required", zbbVar4, e74Var4, expression4);
            if (expressionV3 != null) {
                expression4 = expressionV3;
            }
            tp3 tp3Var5 = divImageBackgroundTemplate.g;
            zbb zbbVar5 = DivImageBackgroundJsonParser.i;
            e74 e74Var5 = DivImageScale.FROM_STRING;
            Expression expression5 = DivImageBackgroundJsonParser.f;
            Expression expressionV4 = sa5.v(ex7Var, tp3Var5, jSONObject, "scale", zbbVar5, e74Var5, expression5);
            if (expressionV4 != null) {
                expression5 = expressionV4;
            }
            return new DivImageBackground(expression, expression2, expression3, listB, expressionH, expression4, expression5);
        }
    }

    static {
        Expression.a aVar = Expression.a;
        b = aVar.a(Double.valueOf(1.0d));
        c = aVar.a(DivAlignmentHorizontal.CENTER);
        d = aVar.a(DivAlignmentVertical.CENTER);
        e = aVar.a(Boolean.FALSE);
        f = aVar.a(DivImageScale.FILL);
        zbb.a aVar2 = zbb.a;
        g = aVar2.a(hi.W(DivAlignmentHorizontal.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentHorizontal);
            }
        });
        h = aVar2.a(hi.W(DivAlignmentVertical.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAlignmentVertical);
            }
        });
        i = aVar2.a(hi.W(DivImageScale.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivImageScale);
            }
        });
        j = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivImageBackgroundJsonParser.b(((Double) obj).doubleValue());
            }
        };
    }

    public static final boolean b(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }
}
