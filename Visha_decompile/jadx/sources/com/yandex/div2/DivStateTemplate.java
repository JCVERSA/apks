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

public final class DivStateTemplate implements d65, ac5 {
    public static final a M = new a(null);
    public static final Expression N;
    public static final Expression O;
    public static final DivSize.d P;
    public static final Expression Q;
    public static final Expression R;
    public static final DivSize.c S;
    public static final s74 T;
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
        N = aVar.a(Double.valueOf(1.0d));
        O = aVar.a(Boolean.TRUE);
        P = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        Q = aVar.a(DivTransitionSelector.STATE_CHANGE);
        R = aVar.a(DivVisibility.VISIBLE);
        S = new DivSize.c(new DivMatchParentSize(null, 1, null));
        T = new s74() {
            @Override
            public final DivStateTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivStateTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivStateTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10, tp3 tp3Var11, tp3 tp3Var12, tp3 tp3Var13, tp3 tp3Var14, tp3 tp3Var15, tp3 tp3Var16, tp3 tp3Var17, tp3 tp3Var18, tp3 tp3Var19, tp3 tp3Var20, tp3 tp3Var21, tp3 tp3Var22, tp3 tp3Var23, tp3 tp3Var24, tp3 tp3Var25, tp3 tp3Var26, tp3 tp3Var27, tp3 tp3Var28, tp3 tp3Var29, tp3 tp3Var30, tp3 tp3Var31, tp3 tp3Var32, tp3 tp3Var33, tp3 tp3Var34, tp3 tp3Var35, tp3 tp3Var36, tp3 tp3Var37, tp3 tp3Var38) {
        y45.j(tp3Var, "accessibility");
        y45.j(tp3Var2, "alignmentHorizontal");
        y45.j(tp3Var3, "alignmentVertical");
        y45.j(tp3Var4, "alpha");
        y45.j(tp3Var5, "animators");
        y45.j(tp3Var6, "background");
        y45.j(tp3Var7, "border");
        y45.j(tp3Var8, "clipToBounds");
        y45.j(tp3Var9, "columnSpan");
        y45.j(tp3Var10, "defaultStateId");
        y45.j(tp3Var11, "disappearActions");
        y45.j(tp3Var12, "divId");
        y45.j(tp3Var13, "extensions");
        y45.j(tp3Var14, "focus");
        y45.j(tp3Var15, "functions");
        y45.j(tp3Var16, "height");
        y45.j(tp3Var17, TtmlNode.ATTR_ID);
        y45.j(tp3Var18, "layoutProvider");
        y45.j(tp3Var19, "margins");
        y45.j(tp3Var20, "paddings");
        y45.j(tp3Var21, "reuseId");
        y45.j(tp3Var22, "rowSpan");
        y45.j(tp3Var23, "selectedActions");
        y45.j(tp3Var24, "stateIdVariable");
        y45.j(tp3Var25, "states");
        y45.j(tp3Var26, "tooltips");
        y45.j(tp3Var27, "transform");
        y45.j(tp3Var28, "transitionAnimationSelector");
        y45.j(tp3Var29, "transitionChange");
        y45.j(tp3Var30, "transitionIn");
        y45.j(tp3Var31, "transitionOut");
        y45.j(tp3Var32, "transitionTriggers");
        y45.j(tp3Var33, "variableTriggers");
        y45.j(tp3Var34, "variables");
        y45.j(tp3Var35, "visibility");
        y45.j(tp3Var36, "visibilityAction");
        y45.j(tp3Var37, "visibilityActions");
        y45.j(tp3Var38, "width");
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
    }

    @Override
    public JSONObject s() {
        return ((DivStateJsonParser.c) ml0.a().o7().getValue()).b(ml0.b(), this);
    }

    public static final class StateTemplate implements d65, ac5 {
        public static final a f = new a(null);
        public static final s74 g = new s74() {
            @Override
            public final DivStateTemplate.StateTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivStateTemplate.StateTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
        public final tp3 a;
        public final tp3 b;
        public final tp3 c;
        public final tp3 d;
        public final tp3 e;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public StateTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5) {
            y45.j(tp3Var, "animationIn");
            y45.j(tp3Var2, "animationOut");
            y45.j(tp3Var3, TtmlNode.TAG_DIV);
            y45.j(tp3Var4, "stateId");
            y45.j(tp3Var5, "swipeOutActions");
            this.a = tp3Var;
            this.b = tp3Var2;
            this.c = tp3Var3;
            this.d = tp3Var4;
            this.e = tp3Var5;
        }

        @Override
        public JSONObject s() {
            return ((w3) ml0.a().r7().getValue()).b(ml0.b(), this);
        }

        public StateTemplate(hx7 hx7Var, StateTemplate stateTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : stateTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public StateTemplate(hx7 hx7Var, StateTemplate stateTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivStateTemplate(hx7 hx7Var, DivStateTemplate divStateTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divStateTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivStateTemplate(hx7 hx7Var, DivStateTemplate divStateTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
