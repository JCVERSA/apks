package com.yandex.div2;

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

public final class DivSlideTransition implements d65, ko4 {
    public static final a g = new a(null);
    public static final Expression h;
    public static final Expression i;
    public static final Expression j;
    public static final Expression k;
    public static final s74 l;
    public final DivDimension a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final Expression e;
    public Integer f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/yandex/div2/DivSlideTransition$Edge;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "LEFT", "TOP", "RIGHT", "BOTTOM", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Edge {
        LEFT(TtmlNode.LEFT),
        TOP("top"),
        RIGHT(TtmlNode.RIGHT),
        BOTTOM("bottom");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivSlideTransition.Edge edge) {
                y45.j(edge, ES6Iterator.VALUE_PROPERTY);
                return DivSlideTransition.Edge.INSTANCE.b(edge);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivSlideTransition.Edge invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivSlideTransition.Edge.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Edge a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Edge edge = Edge.LEFT;
                if (y45.e(str, edge.value)) {
                    return edge;
                }
                Edge edge2 = Edge.TOP;
                if (y45.e(str, edge2.value)) {
                    return edge2;
                }
                Edge edge3 = Edge.RIGHT;
                if (y45.e(str, edge3.value)) {
                    return edge3;
                }
                Edge edge4 = Edge.BOTTOM;
                if (y45.e(str, edge4.value)) {
                    return edge4;
                }
                return null;
            }

            public final String b(Edge edge) {
                y45.j(edge, "obj");
                return edge.value;
            }

            public Companion() {
            }
        }

        Edge(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivSlideTransition a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivSlideTransitionJsonParser.b) ml0.a().Y6().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        h = aVar.a(200L);
        i = aVar.a(Edge.BOTTOM);
        j = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        k = aVar.a(0L);
        l = new s74() {
            @Override
            public final DivSlideTransition invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivSlideTransition.g.a(hx7Var, jSONObject);
            }
        };
    }

    public DivSlideTransition(DivDimension divDimension, Expression expression, Expression expression2, Expression expression3, Expression expression4) {
        y45.j(expression, "duration");
        y45.j(expression2, "edge");
        y45.j(expression3, "interpolator");
        y45.j(expression4, "startDelay");
        this.a = divDimension;
        this.b = expression;
        this.c = expression2;
        this.d = expression3;
        this.e = expression4;
    }

    public final boolean a(DivSlideTransition divSlideTransition, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divSlideTransition == null) {
            return false;
        }
        DivDimension divDimension = this.a;
        if (divDimension != null) {
            zA = divDimension.a(divSlideTransition.a, oj3Var, oj3Var2);
        } else {
            zA = divSlideTransition.a == null;
        }
        return zA && ((Number) b().b(oj3Var)).longValue() == ((Number) divSlideTransition.b().b(oj3Var2)).longValue() && this.c.b(oj3Var) == divSlideTransition.c.b(oj3Var2) && c().b(oj3Var) == divSlideTransition.c().b(oj3Var2) && ((Number) d().b(oj3Var)).longValue() == ((Number) divSlideTransition.d().b(oj3Var2)).longValue();
    }

    public Expression b() {
        return this.b;
    }

    public Expression c() {
        return this.d;
    }

    public Expression d() {
        return this.e;
    }

    @Override
    public int hash() {
        Integer num = this.f;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivSlideTransition.class).hashCode();
        DivDimension divDimension = this.a;
        int iHash = iHashCode + (divDimension != null ? divDimension.hash() : 0) + b().hashCode() + this.c.hashCode() + c().hashCode() + d().hashCode();
        this.f = Integer.valueOf(iHash);
        return iHash;
    }

    @Override
    public JSONObject s() {
        return ((DivSlideTransitionJsonParser.b) ml0.a().Y6().getValue()).b(ml0.b(), this);
    }
}
