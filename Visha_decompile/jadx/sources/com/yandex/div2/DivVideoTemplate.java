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

public final class DivVideoTemplate implements d65, ac5 {
    public static final a V = new a(null);
    public static final Expression W;
    public static final Expression X;
    public static final DivSize.d Y;
    public static final Expression Z;
    public static final Expression a0;
    public static final Expression b0;
    public static final Expression c0;
    public static final Expression d0;
    public static final DivSize.c e0;
    public static final s74 f0;
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
    public final tp3 S;
    public final tp3 T;
    public final tp3 U;
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
        W = aVar.a(Double.valueOf(1.0d));
        Boolean bool = Boolean.FALSE;
        X = aVar.a(bool);
        Y = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        Z = aVar.a(bool);
        a0 = aVar.a(bool);
        b0 = aVar.a(bool);
        c0 = aVar.a(DivVideoScale.FIT);
        d0 = aVar.a(DivVisibility.VISIBLE);
        e0 = new DivSize.c(new DivMatchParentSize(null, 1, null));
        f0 = new s74() {
            @Override
            public final DivVideoTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivVideoTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivVideoTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10, tp3 tp3Var11, tp3 tp3Var12, tp3 tp3Var13, tp3 tp3Var14, tp3 tp3Var15, tp3 tp3Var16, tp3 tp3Var17, tp3 tp3Var18, tp3 tp3Var19, tp3 tp3Var20, tp3 tp3Var21, tp3 tp3Var22, tp3 tp3Var23, tp3 tp3Var24, tp3 tp3Var25, tp3 tp3Var26, tp3 tp3Var27, tp3 tp3Var28, tp3 tp3Var29, tp3 tp3Var30, tp3 tp3Var31, tp3 tp3Var32, tp3 tp3Var33, tp3 tp3Var34, tp3 tp3Var35, tp3 tp3Var36, tp3 tp3Var37, tp3 tp3Var38, tp3 tp3Var39, tp3 tp3Var40, tp3 tp3Var41, tp3 tp3Var42, tp3 tp3Var43, tp3 tp3Var44, tp3 tp3Var45, tp3 tp3Var46, tp3 tp3Var47) {
        y45.j(tp3Var, "accessibility");
        y45.j(tp3Var2, "alignmentHorizontal");
        y45.j(tp3Var3, "alignmentVertical");
        y45.j(tp3Var4, "alpha");
        y45.j(tp3Var5, "animators");
        y45.j(tp3Var6, "aspect");
        y45.j(tp3Var7, "autostart");
        y45.j(tp3Var8, "background");
        y45.j(tp3Var9, "border");
        y45.j(tp3Var10, "bufferingActions");
        y45.j(tp3Var11, "columnSpan");
        y45.j(tp3Var12, "disappearActions");
        y45.j(tp3Var13, "elapsedTimeVariable");
        y45.j(tp3Var14, "endActions");
        y45.j(tp3Var15, "extensions");
        y45.j(tp3Var16, "fatalActions");
        y45.j(tp3Var17, "focus");
        y45.j(tp3Var18, "functions");
        y45.j(tp3Var19, "height");
        y45.j(tp3Var20, TtmlNode.ATTR_ID);
        y45.j(tp3Var21, "layoutProvider");
        y45.j(tp3Var22, "margins");
        y45.j(tp3Var23, "muted");
        y45.j(tp3Var24, "paddings");
        y45.j(tp3Var25, "pauseActions");
        y45.j(tp3Var26, "playerSettingsPayload");
        y45.j(tp3Var27, "preloadRequired");
        y45.j(tp3Var28, "preview");
        y45.j(tp3Var29, "repeatable");
        y45.j(tp3Var30, "resumeActions");
        y45.j(tp3Var31, "reuseId");
        y45.j(tp3Var32, "rowSpan");
        y45.j(tp3Var33, "scale");
        y45.j(tp3Var34, "selectedActions");
        y45.j(tp3Var35, "tooltips");
        y45.j(tp3Var36, "transform");
        y45.j(tp3Var37, "transitionChange");
        y45.j(tp3Var38, "transitionIn");
        y45.j(tp3Var39, "transitionOut");
        y45.j(tp3Var40, "transitionTriggers");
        y45.j(tp3Var41, "variableTriggers");
        y45.j(tp3Var42, "variables");
        y45.j(tp3Var43, "videoSources");
        y45.j(tp3Var44, "visibility");
        y45.j(tp3Var45, "visibilityAction");
        y45.j(tp3Var46, "visibilityActions");
        y45.j(tp3Var47, "width");
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
        this.S = tp3Var45;
        this.T = tp3Var46;
        this.U = tp3Var47;
    }

    @Override
    public JSONObject s() {
        return ((DivVideoJsonParser.c) ml0.a().i9().getValue()).b(ml0.b(), this);
    }

    public DivVideoTemplate(hx7 hx7Var, DivVideoTemplate divVideoTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divVideoTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivVideoTemplate(hx7 hx7Var, DivVideoTemplate divVideoTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
