package com.yandex.div2;

import com.transsion.livecaption.constant.ICode;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivActionAnimatorStartJsonParser;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivActionAnimatorStartJsonParser {
    public static final a a = new a(null);
    public static final zbb b;
    public static final zbb c;
    public static final pnb d;
    public static final pnb e;

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
        public DivActionAnimatorStart a(ex7 ex7Var, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            Object objD = tb5.d(ex7Var, jSONObject, "animator_id");
            y45.i(objD, "read(context, data, \"animator_id\")");
            String str = (String) objD;
            Expression expressionI = pa5.i(ex7Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, DivActionAnimatorStartJsonParser.b, DivAnimationDirection.FROM_STRING);
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            return new DivActionAnimatorStart(str, expressionI, pa5.j(ex7Var, jSONObject, "duration", zbbVar, e74Var, DivActionAnimatorStartJsonParser.d), (DivTypedValue) tb5.n(ex7Var, jSONObject, "end_value", this.a.b9()), pa5.i(ex7Var, jSONObject, "interpolator", DivActionAnimatorStartJsonParser.c, DivAnimationInterpolator.FROM_STRING), (DivCount) tb5.n(ex7Var, jSONObject, "repeat_count", this.a.s2()), pa5.j(ex7Var, jSONObject, "start_delay", zbbVar, e74Var, DivActionAnimatorStartJsonParser.e), (DivTypedValue) tb5.n(ex7Var, jSONObject, "start_value", this.a.b9()));
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionAnimatorStart divActionAnimatorStart) {
            y45.j(ex7Var, "context");
            y45.j(divActionAnimatorStart, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            tb5.v(ex7Var, jSONObject, "animator_id", divActionAnimatorStart.a);
            pa5.q(ex7Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, divActionAnimatorStart.b, DivAnimationDirection.TO_STRING);
            pa5.p(ex7Var, jSONObject, "duration", divActionAnimatorStart.c);
            tb5.x(ex7Var, jSONObject, "end_value", divActionAnimatorStart.d, this.a.b9());
            pa5.q(ex7Var, jSONObject, "interpolator", divActionAnimatorStart.e, DivAnimationInterpolator.TO_STRING);
            tb5.x(ex7Var, jSONObject, "repeat_count", divActionAnimatorStart.f, this.a.s2());
            pa5.p(ex7Var, jSONObject, "start_delay", divActionAnimatorStart.g);
            tb5.x(ex7Var, jSONObject, "start_value", divActionAnimatorStart.h, this.a.b9());
            tb5.v(ex7Var, jSONObject, "type", "animator_start");
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
        public DivActionAnimatorStartTemplate c(ex7 ex7Var, DivActionAnimatorStartTemplate divActionAnimatorStartTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(jSONObject, "data");
            boolean zC = ex7Var.c();
            ex7 ex7VarC = fx7.c(ex7Var);
            tp3 tp3VarC = ra5.c(ex7VarC, jSONObject, "animator_id", zC, divActionAnimatorStartTemplate != null ? divActionAnimatorStartTemplate.a : null);
            y45.i(tp3VarC, "readField(context, data,…ride, parent?.animatorId)");
            tp3 tp3VarU = ra5.u(ex7VarC, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, DivActionAnimatorStartJsonParser.b, zC, divActionAnimatorStartTemplate != null ? divActionAnimatorStartTemplate.b : null, DivAnimationDirection.FROM_STRING);
            y45.i(tp3VarU, "readOptionalFieldWithExp…ionDirection.FROM_STRING)");
            zbb zbbVar = acb.b;
            tp3 tp3Var = divActionAnimatorStartTemplate != null ? divActionAnimatorStartTemplate.c : null;
            e74 e74Var = ParsingConvertersKt.h;
            tp3 tp3VarV = ra5.v(ex7VarC, jSONObject, "duration", zbbVar, zC, tp3Var, e74Var, DivActionAnimatorStartJsonParser.d);
            y45.i(tp3VarV, "readOptionalFieldWithExp…_INT, DURATION_VALIDATOR)");
            tp3 tp3VarS = ra5.s(ex7VarC, jSONObject, "end_value", zC, divActionAnimatorStartTemplate != null ? divActionAnimatorStartTemplate.d : null, this.a.c9());
            y45.i(tp3VarS, "readOptionalField(contex…dValueJsonTemplateParser)");
            tp3 tp3VarU2 = ra5.u(ex7VarC, jSONObject, "interpolator", DivActionAnimatorStartJsonParser.c, zC, divActionAnimatorStartTemplate != null ? divActionAnimatorStartTemplate.e : null, DivAnimationInterpolator.FROM_STRING);
            y45.i(tp3VarU2, "readOptionalFieldWithExp…Interpolator.FROM_STRING)");
            tp3 tp3VarS2 = ra5.s(ex7VarC, jSONObject, "repeat_count", zC, divActionAnimatorStartTemplate != null ? divActionAnimatorStartTemplate.f : null, this.a.t2());
            y45.i(tp3VarS2, "readOptionalField(contex…vCountJsonTemplateParser)");
            tp3 tp3VarV2 = ra5.v(ex7VarC, jSONObject, "start_delay", zbbVar, zC, divActionAnimatorStartTemplate != null ? divActionAnimatorStartTemplate.g : null, e74Var, DivActionAnimatorStartJsonParser.e);
            y45.i(tp3VarV2, "readOptionalFieldWithExp…T, START_DELAY_VALIDATOR)");
            tp3 tp3VarS3 = ra5.s(ex7VarC, jSONObject, "start_value", zC, divActionAnimatorStartTemplate != null ? divActionAnimatorStartTemplate.h : null, this.a.c9());
            y45.i(tp3VarS3, "readOptionalField(contex…dValueJsonTemplateParser)");
            return new DivActionAnimatorStartTemplate(tp3VarC, tp3VarU, tp3VarV, tp3VarS, tp3VarU2, tp3VarS2, tp3VarV2, tp3VarS3);
        }

        @Override
        public JSONObject b(ex7 ex7Var, DivActionAnimatorStartTemplate divActionAnimatorStartTemplate) {
            y45.j(ex7Var, "context");
            y45.j(divActionAnimatorStartTemplate, ES6Iterator.VALUE_PROPERTY);
            JSONObject jSONObject = new JSONObject();
            ra5.G(ex7Var, jSONObject, "animator_id", divActionAnimatorStartTemplate.a);
            ra5.E(ex7Var, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, divActionAnimatorStartTemplate.b, DivAnimationDirection.TO_STRING);
            ra5.D(ex7Var, jSONObject, "duration", divActionAnimatorStartTemplate.c);
            ra5.I(ex7Var, jSONObject, "end_value", divActionAnimatorStartTemplate.d, this.a.c9());
            ra5.E(ex7Var, jSONObject, "interpolator", divActionAnimatorStartTemplate.e, DivAnimationInterpolator.TO_STRING);
            ra5.I(ex7Var, jSONObject, "repeat_count", divActionAnimatorStartTemplate.f, this.a.t2());
            ra5.D(ex7Var, jSONObject, "start_delay", divActionAnimatorStartTemplate.g);
            ra5.I(ex7Var, jSONObject, "start_value", divActionAnimatorStartTemplate.h, this.a.c9());
            tb5.v(ex7Var, jSONObject, "type", "animator_start");
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
        public DivActionAnimatorStart a(ex7 ex7Var, DivActionAnimatorStartTemplate divActionAnimatorStartTemplate, JSONObject jSONObject) {
            y45.j(ex7Var, "context");
            y45.j(divActionAnimatorStartTemplate, "template");
            y45.j(jSONObject, "data");
            Object objA = sa5.a(ex7Var, divActionAnimatorStartTemplate.a, jSONObject, "animator_id");
            y45.i(objA, "resolve(context, templat…rId, data, \"animator_id\")");
            Expression expressionS = sa5.s(ex7Var, divActionAnimatorStartTemplate.b, jSONObject, ICode.CALL.CALL_KEY_DIRECTION, DivActionAnimatorStartJsonParser.b, DivAnimationDirection.FROM_STRING);
            tp3 tp3Var = divActionAnimatorStartTemplate.c;
            zbb zbbVar = acb.b;
            e74 e74Var = ParsingConvertersKt.h;
            return new DivActionAnimatorStart((String) objA, expressionS, sa5.t(ex7Var, tp3Var, jSONObject, "duration", zbbVar, e74Var, DivActionAnimatorStartJsonParser.d), (DivTypedValue) sa5.p(ex7Var, divActionAnimatorStartTemplate.d, jSONObject, "end_value", this.a.d9(), this.a.b9()), sa5.s(ex7Var, divActionAnimatorStartTemplate.e, jSONObject, "interpolator", DivActionAnimatorStartJsonParser.c, DivAnimationInterpolator.FROM_STRING), (DivCount) sa5.p(ex7Var, divActionAnimatorStartTemplate.f, jSONObject, "repeat_count", this.a.u2(), this.a.s2()), sa5.t(ex7Var, divActionAnimatorStartTemplate.g, jSONObject, "start_delay", zbbVar, e74Var, DivActionAnimatorStartJsonParser.e), (DivTypedValue) sa5.p(ex7Var, divActionAnimatorStartTemplate.h, jSONObject, "start_value", this.a.d9(), this.a.b9()));
        }
    }

    static {
        zbb.a aVar = zbb.a;
        b = aVar.a(hi.W(DivAnimationDirection.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationDirection);
            }
        });
        c = aVar.a(hi.W(DivAnimationInterpolator.values()), new e74() {
            @Override
            public final Boolean invoke(Object obj) {
                y45.j(obj, "it");
                return Boolean.valueOf(obj instanceof DivAnimationInterpolator);
            }
        });
        d = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivActionAnimatorStartJsonParser.c(((Long) obj).longValue());
            }
        };
        e = new pnb() {
            @Override
            public final boolean a(Object obj) {
                return DivActionAnimatorStartJsonParser.d(((Long) obj).longValue());
            }
        };
    }

    public static final boolean c(long j) {
        return j >= 0;
    }

    public static final boolean d(long j) {
        return j >= 0;
    }
}
