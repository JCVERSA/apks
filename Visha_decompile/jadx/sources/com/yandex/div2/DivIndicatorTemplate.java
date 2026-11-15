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

public final class DivIndicatorTemplate implements d65, ac5 {
    public static final a S = new a(null);
    public static final Expression T;
    public static final Expression U;
    public static final Expression V;
    public static final Expression W;
    public static final DivSize.d X;
    public static final Expression Y;
    public static final Expression Z;
    public static final DivShape.c a0;
    public static final DivFixedSize b0;
    public static final Expression c0;
    public static final DivSize.c d0;
    public static final s74 e0;
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
    public final tp3 R;
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
        T = aVar.a(16768096);
        U = aVar.a(Double.valueOf(1.3d));
        V = aVar.a(Double.valueOf(1.0d));
        W = aVar.a(DivIndicator.Animation.SCALE);
        X = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        Y = aVar.a(865180853);
        Z = aVar.a(Double.valueOf(0.5d));
        a0 = new DivShape.c(new DivRoundedRectangleShape(null, null, null, null, null, 31, null));
        b0 = new DivFixedSize(null, aVar.a(15L), 1, null);
        c0 = aVar.a(DivVisibility.VISIBLE);
        d0 = new DivSize.c(new DivMatchParentSize(null, 1, null));
        e0 = new s74() {
            @Override
            public final DivIndicatorTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivIndicatorTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivIndicatorTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10, tp3 tp3Var11, tp3 tp3Var12, tp3 tp3Var13, tp3 tp3Var14, tp3 tp3Var15, tp3 tp3Var16, tp3 tp3Var17, tp3 tp3Var18, tp3 tp3Var19, tp3 tp3Var20, tp3 tp3Var21, tp3 tp3Var22, tp3 tp3Var23, tp3 tp3Var24, tp3 tp3Var25, tp3 tp3Var26, tp3 tp3Var27, tp3 tp3Var28, tp3 tp3Var29, tp3 tp3Var30, tp3 tp3Var31, tp3 tp3Var32, tp3 tp3Var33, tp3 tp3Var34, tp3 tp3Var35, tp3 tp3Var36, tp3 tp3Var37, tp3 tp3Var38, tp3 tp3Var39, tp3 tp3Var40, tp3 tp3Var41, tp3 tp3Var42, tp3 tp3Var43, tp3 tp3Var44) {
        y45.j(tp3Var, "accessibility");
        y45.j(tp3Var2, "activeItemColor");
        y45.j(tp3Var3, "activeItemSize");
        y45.j(tp3Var4, "activeShape");
        y45.j(tp3Var5, "alignmentHorizontal");
        y45.j(tp3Var6, "alignmentVertical");
        y45.j(tp3Var7, "alpha");
        y45.j(tp3Var8, "animation");
        y45.j(tp3Var9, "animators");
        y45.j(tp3Var10, "background");
        y45.j(tp3Var11, "border");
        y45.j(tp3Var12, "columnSpan");
        y45.j(tp3Var13, "disappearActions");
        y45.j(tp3Var14, "extensions");
        y45.j(tp3Var15, "focus");
        y45.j(tp3Var16, "functions");
        y45.j(tp3Var17, "height");
        y45.j(tp3Var18, TtmlNode.ATTR_ID);
        y45.j(tp3Var19, "inactiveItemColor");
        y45.j(tp3Var20, "inactiveMinimumShape");
        y45.j(tp3Var21, "inactiveShape");
        y45.j(tp3Var22, "itemsPlacement");
        y45.j(tp3Var23, "layoutProvider");
        y45.j(tp3Var24, "margins");
        y45.j(tp3Var25, "minimumItemSize");
        y45.j(tp3Var26, "paddings");
        y45.j(tp3Var27, "pagerId");
        y45.j(tp3Var28, "reuseId");
        y45.j(tp3Var29, "rowSpan");
        y45.j(tp3Var30, "selectedActions");
        y45.j(tp3Var31, "shape");
        y45.j(tp3Var32, "spaceBetweenCenters");
        y45.j(tp3Var33, "tooltips");
        y45.j(tp3Var34, "transform");
        y45.j(tp3Var35, "transitionChange");
        y45.j(tp3Var36, "transitionIn");
        y45.j(tp3Var37, "transitionOut");
        y45.j(tp3Var38, "transitionTriggers");
        y45.j(tp3Var39, "variableTriggers");
        y45.j(tp3Var40, "variables");
        y45.j(tp3Var41, "visibility");
        y45.j(tp3Var42, "visibilityAction");
        y45.j(tp3Var43, "visibilityActions");
        y45.j(tp3Var44, "width");
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
        this.R = tp3Var44;
    }

    @Override
    public JSONObject s() {
        return ((DivIndicatorJsonParser.c) ml0.a().b4().getValue()).b(ml0.b(), this);
    }

    public DivIndicatorTemplate(hx7 hx7Var, DivIndicatorTemplate divIndicatorTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divIndicatorTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivIndicatorTemplate(hx7 hx7Var, DivIndicatorTemplate divIndicatorTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
