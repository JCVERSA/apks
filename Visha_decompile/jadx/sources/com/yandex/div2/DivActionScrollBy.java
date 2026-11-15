package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
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

public final class DivActionScrollBy implements d65, ko4 {
    public static final a g = new a(null);
    public static final Expression h;
    public static final Expression i;
    public static final Expression j;
    public static final Expression k;
    public static final s74 l;
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final Expression e;
    public Integer f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivActionScrollBy$Overflow;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "CLAMP", "RING", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Overflow {
        CLAMP("clamp"),
        RING("ring");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivActionScrollBy.Overflow overflow) {
                y45.j(overflow, ES6Iterator.VALUE_PROPERTY);
                return DivActionScrollBy.Overflow.INSTANCE.b(overflow);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivActionScrollBy.Overflow invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivActionScrollBy.Overflow.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Overflow a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Overflow overflow = Overflow.CLAMP;
                if (y45.e(str, overflow.value)) {
                    return overflow;
                }
                Overflow overflow2 = Overflow.RING;
                if (y45.e(str, overflow2.value)) {
                    return overflow2;
                }
                return null;
            }

            public final String b(Overflow overflow) {
                y45.j(overflow, "obj");
                return overflow.value;
            }

            public Companion() {
            }
        }

        Overflow(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionScrollBy a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivActionScrollByJsonParser.b) ml0.a().A0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        h = aVar.a(Boolean.TRUE);
        i = aVar.a(0L);
        j = aVar.a(0L);
        k = aVar.a(Overflow.CLAMP);
        l = new s74() {
            @Override
            public final DivActionScrollBy invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivActionScrollBy.g.a(hx7Var, jSONObject);
            }
        };
    }

    public DivActionScrollBy(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5) {
        y45.j(expression, "animated");
        y45.j(expression2, TtmlNode.ATTR_ID);
        y45.j(expression3, "itemCount");
        y45.j(expression4, TypedValues.CycleType.S_WAVE_OFFSET);
        y45.j(expression5, "overflow");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = expression4;
        this.e = expression5;
    }

    public final boolean a(DivActionScrollBy divActionScrollBy, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divActionScrollBy != null && ((Boolean) this.a.b(oj3Var)).booleanValue() == ((Boolean) divActionScrollBy.a.b(oj3Var2)).booleanValue() && y45.e(this.b.b(oj3Var), divActionScrollBy.b.b(oj3Var2)) && ((Number) this.c.b(oj3Var)).longValue() == ((Number) divActionScrollBy.c.b(oj3Var2)).longValue() && ((Number) this.d.b(oj3Var)).longValue() == ((Number) divActionScrollBy.d.b(oj3Var2)).longValue() && this.e.b(oj3Var) == divActionScrollBy.e.b(oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.f;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionScrollBy.class).hashCode() + this.a.hashCode() + this.b.hashCode() + this.c.hashCode() + this.d.hashCode() + this.e.hashCode();
        this.f = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivActionScrollByJsonParser.b) ml0.a().A0().getValue()).b(ml0.b(), this);
    }
}
