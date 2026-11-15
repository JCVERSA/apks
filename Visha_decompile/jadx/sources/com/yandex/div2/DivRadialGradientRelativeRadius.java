package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.e74;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivRadialGradientRelativeRadius implements d65, ko4 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final DivRadialGradientRelativeRadius invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivRadialGradientRelativeRadius.c.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public Integer b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/yandex/div2/DivRadialGradientRelativeRadius$Value;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "NEAREST_CORNER", "FARTHEST_CORNER", "NEAREST_SIDE", "FARTHEST_SIDE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Value {
        NEAREST_CORNER("nearest_corner"),
        FARTHEST_CORNER("farthest_corner"),
        NEAREST_SIDE("nearest_side"),
        FARTHEST_SIDE("farthest_side");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivRadialGradientRelativeRadius.Value value) {
                y45.j(value, ES6Iterator.VALUE_PROPERTY);
                return DivRadialGradientRelativeRadius.Value.INSTANCE.b(value);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivRadialGradientRelativeRadius.Value invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivRadialGradientRelativeRadius.Value.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Value a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Value value = Value.NEAREST_CORNER;
                if (y45.e(str, value.value)) {
                    return value;
                }
                Value value2 = Value.FARTHEST_CORNER;
                if (y45.e(str, value2.value)) {
                    return value2;
                }
                Value value3 = Value.NEAREST_SIDE;
                if (y45.e(str, value3.value)) {
                    return value3;
                }
                Value value4 = Value.FARTHEST_SIDE;
                if (y45.e(str, value4.value)) {
                    return value4;
                }
                return null;
            }

            public final String b(Value value) {
                y45.j(value, "obj");
                return value.value;
            }

            public Companion() {
            }
        }

        Value(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivRadialGradientRelativeRadius a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivRadialGradientRelativeRadiusJsonParser.b) ml0.a().r6().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivRadialGradientRelativeRadius(Expression expression) {
        y45.j(expression, ES6Iterator.VALUE_PROPERTY);
        this.a = expression;
    }

    public final boolean a(DivRadialGradientRelativeRadius divRadialGradientRelativeRadius, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divRadialGradientRelativeRadius != null && this.a.b(oj3Var) == divRadialGradientRelativeRadius.a.b(oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivRadialGradientRelativeRadius.class).hashCode() + this.a.hashCode();
        this.b = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivRadialGradientRelativeRadiusJsonParser.b) ml0.a().r6().getValue()).b(ml0.b(), this);
    }
}
