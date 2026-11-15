package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivSeparatorTemplate implements d65, ac5 {
    public static final a R = new a(null);
    public static final DivAnimation S;
    public static final Expression T;
    public static final Expression U;
    public static final DivSize.d V;
    public static final Expression W;
    public static final DivSize.c X;
    public static final s74 Y;
    public final tp3 A;
    public final tp3 B;
    public final tp3 C;
    public final tp3 D;
    public final tp3 E;
    public final tp3 F;
    public final tp3 G;
    public final tp3 H;
    public final tp3 I;
    public final tp3 J;
    public final tp3 K;
    public final tp3 L;
    public final tp3 M;
    public final tp3 N;
    public final tp3 O;
    public final tp3 P;
    public final tp3 Q;
    public final tp3 a;
    public final tp3 b;
    public final tp3 c;
    public final tp3 d;
    public final tp3 e;
    public final tp3 f;
    public final tp3 g;
    public final tp3 h;
    public final tp3 i;
    public final tp3 j;
    public final tp3 k;
    public final tp3 l;
    public final tp3 m;
    public final tp3 n;
    public final tp3 o;
    public final tp3 p;
    public final tp3 q;
    public final tp3 r;
    public final tp3 s;
    public final tp3 t;
    public final tp3 u;
    public final tp3 v;
    public final tp3 w;
    public final tp3 x;
    public final tp3 y;
    public final tp3 z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        Expression expressionA = aVar.a(100L);
        Expression expressionA2 = aVar.a(Double.valueOf(0.6d));
        Expression expressionA3 = aVar.a(DivAnimation.Name.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        S = new DivAnimation(expressionA, expressionA2, null, null, expressionA3, null, null, aVar.a(dValueOf), 108, null);
        T = aVar.a(dValueOf);
        U = aVar.a(Boolean.TRUE);
        V = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        W = aVar.a(DivVisibility.VISIBLE);
        X = new DivSize.c(new DivMatchParentSize(null, 1, null));
        Y = new s74() {
            @Override
            public final DivSeparatorTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivSeparatorTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivSeparatorTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10, tp3 tp3Var11, tp3 tp3Var12, tp3 tp3Var13, tp3 tp3Var14, tp3 tp3Var15, tp3 tp3Var16, tp3 tp3Var17, tp3 tp3Var18, tp3 tp3Var19, tp3 tp3Var20, tp3 tp3Var21, tp3 tp3Var22, tp3 tp3Var23, tp3 tp3Var24, tp3 tp3Var25, tp3 tp3Var26, tp3 tp3Var27, tp3 tp3Var28, tp3 tp3Var29, tp3 tp3Var30, tp3 tp3Var31, tp3 tp3Var32, tp3 tp3Var33, tp3 tp3Var34, tp3 tp3Var35, tp3 tp3Var36, tp3 tp3Var37, tp3 tp3Var38, tp3 tp3Var39, tp3 tp3Var40, tp3 tp3Var41, tp3 tp3Var42, tp3 tp3Var43) {
        y45.j(tp3Var, "accessibility");
        y45.j(tp3Var2, "action");
        y45.j(tp3Var3, "actionAnimation");
        y45.j(tp3Var4, "actions");
        y45.j(tp3Var5, "alignmentHorizontal");
        y45.j(tp3Var6, "alignmentVertical");
        y45.j(tp3Var7, "alpha");
        y45.j(tp3Var8, "animators");
        y45.j(tp3Var9, "background");
        y45.j(tp3Var10, "border");
        y45.j(tp3Var11, "captureFocusOnAction");
        y45.j(tp3Var12, "columnSpan");
        y45.j(tp3Var13, "delimiterStyle");
        y45.j(tp3Var14, "disappearActions");
        y45.j(tp3Var15, "doubletapActions");
        y45.j(tp3Var16, "extensions");
        y45.j(tp3Var17, "focus");
        y45.j(tp3Var18, "functions");
        y45.j(tp3Var19, "height");
        y45.j(tp3Var20, "hoverEndActions");
        y45.j(tp3Var21, "hoverStartActions");
        y45.j(tp3Var22, TtmlNode.ATTR_ID);
        y45.j(tp3Var23, "layoutProvider");
        y45.j(tp3Var24, "longtapActions");
        y45.j(tp3Var25, "margins");
        y45.j(tp3Var26, "paddings");
        y45.j(tp3Var27, "pressEndActions");
        y45.j(tp3Var28, "pressStartActions");
        y45.j(tp3Var29, "reuseId");
        y45.j(tp3Var30, "rowSpan");
        y45.j(tp3Var31, "selectedActions");
        y45.j(tp3Var32, "tooltips");
        y45.j(tp3Var33, "transform");
        y45.j(tp3Var34, "transitionChange");
        y45.j(tp3Var35, "transitionIn");
        y45.j(tp3Var36, "transitionOut");
        y45.j(tp3Var37, "transitionTriggers");
        y45.j(tp3Var38, "variableTriggers");
        y45.j(tp3Var39, "variables");
        y45.j(tp3Var40, "visibility");
        y45.j(tp3Var41, "visibilityAction");
        y45.j(tp3Var42, "visibilityActions");
        y45.j(tp3Var43, "width");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
        this.e = tp3Var5;
        this.f = tp3Var6;
        this.g = tp3Var7;
        this.h = tp3Var8;
        this.i = tp3Var9;
        this.j = tp3Var10;
        this.k = tp3Var11;
        this.l = tp3Var12;
        this.m = tp3Var13;
        this.n = tp3Var14;
        this.o = tp3Var15;
        this.p = tp3Var16;
        this.q = tp3Var17;
        this.r = tp3Var18;
        this.s = tp3Var19;
        this.t = tp3Var20;
        this.u = tp3Var21;
        this.v = tp3Var22;
        this.w = tp3Var23;
        this.x = tp3Var24;
        this.y = tp3Var25;
        this.z = tp3Var26;
        this.A = tp3Var27;
        this.B = tp3Var28;
        this.C = tp3Var29;
        this.D = tp3Var30;
        this.E = tp3Var31;
        this.F = tp3Var32;
        this.G = tp3Var33;
        this.H = tp3Var34;
        this.I = tp3Var35;
        this.J = tp3Var36;
        this.K = tp3Var37;
        this.L = tp3Var38;
        this.M = tp3Var39;
        this.N = tp3Var40;
        this.O = tp3Var41;
        this.P = tp3Var42;
        this.Q = tp3Var43;
    }

    @Override
    public JSONObject s() {
        return ((DivSeparatorJsonParser.c) ml0.a().K6().getValue()).b(ml0.b(), this);
    }

    public static final class DelimiterStyleTemplate implements d65, ac5 {
        public static final a c = new a(null);
        public static final Expression d;
        public static final Expression e;
        public static final s74 f;
        public final tp3 a;
        public final tp3 b;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        static {
            Expression.a aVar = Expression.a;
            d = aVar.a(335544320);
            e = aVar.a(DivSeparator.DelimiterStyle.Orientation.HORIZONTAL);
            f = new s74() {
                @Override
                public final DivSeparatorTemplate.DelimiterStyleTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return new DivSeparatorTemplate.DelimiterStyleTemplate(hx7Var, null, false, jSONObject, 6, null);
                }
            };
        }

        public DelimiterStyleTemplate(tp3 tp3Var, tp3 tp3Var2) {
            y45.j(tp3Var, "color");
            y45.j(tp3Var2, "orientation");
            this.a = tp3Var;
            this.b = tp3Var2;
        }

        @Override
        public JSONObject s() {
            return ((DivSeparatorDelimiterStyleJsonParser.c) ml0.a().H6().getValue()).b(ml0.b(), this);
        }

        public DelimiterStyleTemplate(hx7 hx7Var, DelimiterStyleTemplate delimiterStyleTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : delimiterStyleTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public DelimiterStyleTemplate(hx7 hx7Var, DelimiterStyleTemplate delimiterStyleTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivSeparatorTemplate(hx7 hx7Var, DivSeparatorTemplate divSeparatorTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divSeparatorTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivSeparatorTemplate(hx7 hx7Var, DivSeparatorTemplate divSeparatorTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
