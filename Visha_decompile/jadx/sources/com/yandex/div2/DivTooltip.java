package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.e74;
import defpackage.hb0;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivTooltip implements d65, ko4 {
    public static final a m = new a(null);
    public static final Expression n;
    public static final Expression o;
    public static final DivTooltipMode.b p;
    public static final s74 q;
    public final DivAnimation a;
    public final DivAnimation b;
    public final Expression c;
    public final Expression d;
    public final Div e;
    public final Expression f;
    public final String g;
    public final DivTooltipMode h;
    public final DivPoint i;
    public final Expression j;
    public final List k;
    public Integer l;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/yandex/div2/DivTooltip$Position;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "LEFT", "TOP_LEFT", "TOP", "TOP_RIGHT", "RIGHT", "BOTTOM_RIGHT", "BOTTOM", "BOTTOM_LEFT", "CENTER", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Position {
        LEFT(TtmlNode.LEFT),
        TOP_LEFT("top-left"),
        TOP("top"),
        TOP_RIGHT("top-right"),
        RIGHT(TtmlNode.RIGHT),
        BOTTOM_RIGHT("bottom-right"),
        BOTTOM("bottom"),
        BOTTOM_LEFT("bottom-left"),
        CENTER(TtmlNode.CENTER);

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivTooltip.Position position) {
                y45.j(position, ES6Iterator.VALUE_PROPERTY);
                return DivTooltip.Position.INSTANCE.b(position);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivTooltip.Position invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivTooltip.Position.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Position a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Position position = Position.LEFT;
                if (y45.e(str, position.value)) {
                    return position;
                }
                Position position2 = Position.TOP_LEFT;
                if (y45.e(str, position2.value)) {
                    return position2;
                }
                Position position3 = Position.TOP;
                if (y45.e(str, position3.value)) {
                    return position3;
                }
                Position position4 = Position.TOP_RIGHT;
                if (y45.e(str, position4.value)) {
                    return position4;
                }
                Position position5 = Position.RIGHT;
                if (y45.e(str, position5.value)) {
                    return position5;
                }
                Position position6 = Position.BOTTOM_RIGHT;
                if (y45.e(str, position6.value)) {
                    return position6;
                }
                Position position7 = Position.BOTTOM;
                if (y45.e(str, position7.value)) {
                    return position7;
                }
                Position position8 = Position.BOTTOM_LEFT;
                if (y45.e(str, position8.value)) {
                    return position8;
                }
                Position position9 = Position.CENTER;
                if (y45.e(str, position9.value)) {
                    return position9;
                }
                return null;
            }

            public final String b(Position position) {
                y45.j(position, "obj");
                return position.value;
            }

            public Companion() {
            }
        }

        Position(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTooltip a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivTooltipJsonParser.b) ml0.a().J8().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        n = aVar.a(Boolean.TRUE);
        o = aVar.a(5000L);
        p = new DivTooltipMode.b(new DivTooltipModeModal());
        q = new s74() {
            @Override
            public final DivTooltip invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivTooltip.m.a(hx7Var, jSONObject);
            }
        };
    }

    public DivTooltip(DivAnimation divAnimation, DivAnimation divAnimation2, Expression expression, Expression expression2, Div div, Expression expression3, String str, DivTooltipMode divTooltipMode, DivPoint divPoint, Expression expression4, List list) {
        y45.j(expression2, "closeByTapOutside");
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(expression3, "duration");
        y45.j(str, TtmlNode.ATTR_ID);
        y45.j(divTooltipMode, hb0.KEY_NAME_MODE);
        y45.j(expression4, "position");
        this.a = divAnimation;
        this.b = divAnimation2;
        this.c = expression;
        this.d = expression2;
        this.e = div;
        this.f = expression3;
        this.g = str;
        this.h = divTooltipMode;
        this.i = divPoint;
        this.j = expression4;
        this.k = list;
    }

    public final boolean a(DivTooltip divTooltip, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        boolean zA3;
        boolean z;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divTooltip == null) {
            return false;
        }
        DivAnimation divAnimation = this.a;
        if (divAnimation != null) {
            zA = divAnimation.a(divTooltip.a, oj3Var, oj3Var2);
        } else {
            zA = divTooltip.a == null;
        }
        if (!zA) {
            return false;
        }
        DivAnimation divAnimation2 = this.b;
        if (divAnimation2 != null) {
            zA2 = divAnimation2.a(divTooltip.b, oj3Var, oj3Var2);
        } else {
            zA2 = divTooltip.b == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expression = this.c;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        Expression expression2 = divTooltip.c;
        if (!y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null) || ((Boolean) this.d.b(oj3Var)).booleanValue() != ((Boolean) divTooltip.d.b(oj3Var2)).booleanValue() || !this.e.a(divTooltip.e, oj3Var, oj3Var2) || ((Number) this.f.b(oj3Var)).longValue() != ((Number) divTooltip.f.b(oj3Var2)).longValue() || !y45.e(this.g, divTooltip.g) || !this.h.a(divTooltip.h, oj3Var, oj3Var2)) {
            return false;
        }
        DivPoint divPoint = this.i;
        if (divPoint != null) {
            zA3 = divPoint.a(divTooltip.i, oj3Var, oj3Var2);
        } else {
            zA3 = divTooltip.i == null;
        }
        if (!zA3 || this.j.b(oj3Var) != divTooltip.j.b(oj3Var2)) {
            return false;
        }
        List list = this.k;
        if (list != null) {
            List list2 = divTooltip.k;
            if (list2 == null) {
                return false;
            }
            if (list.size() == list2.size()) {
                Iterator it = list.iterator();
                int i = 0;
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        int i2 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        if (((DivAction) next).a((DivAction) list2.get(i), oj3Var, oj3Var2)) {
                            i = i2;
                        }
                    }
                }
            }
        } else {
            z = divTooltip.k == null;
        }
        return z;
    }

    @Override
    public int hash() {
        Integer num = this.l;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivTooltip.class).hashCode();
        DivAnimation divAnimation = this.a;
        int iHash = 0;
        int iHash2 = iHashCode + (divAnimation != null ? divAnimation.hash() : 0);
        DivAnimation divAnimation2 = this.b;
        int iHash3 = iHash2 + (divAnimation2 != null ? divAnimation2.hash() : 0);
        Expression expression = this.c;
        int iHashCode2 = iHash3 + (expression != null ? expression.hashCode() : 0) + this.d.hashCode() + this.e.hash() + this.f.hashCode() + this.g.hashCode() + this.h.hash();
        DivPoint divPoint = this.i;
        int iHash4 = iHashCode2 + (divPoint != null ? divPoint.hash() : 0) + this.j.hashCode();
        List list = this.k;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iHash += ((DivAction) it.next()).hash();
            }
        }
        int i = iHash4 + iHash;
        this.l = Integer.valueOf(i);
        return i;
    }

    @Override
    public JSONObject s() {
        return ((DivTooltipJsonParser.b) ml0.a().J8().getValue()).b(ml0.b(), this);
    }
}
