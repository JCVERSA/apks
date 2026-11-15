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

public final class DivInputTemplate implements d65, ac5 {
    public static final a h0 = new a(null);
    public static final Expression i0;
    public static final Expression j0;
    public static final Expression k0;
    public static final Expression l0;
    public static final Expression m0;
    public static final Expression n0;
    public static final DivSize.d o0;
    public static final Expression p0;
    public static final Expression q0;
    public static final Expression r0;
    public static final Expression s0;
    public static final Expression t0;
    public static final Expression u0;
    public static final Expression v0;
    public static final Expression w0;
    public static final Expression x0;
    public static final DivSize.c y0;
    public static final s74 z0;
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
    public final tp3 V;
    public final tp3 W;
    public final tp3 X;
    public final tp3 Y;
    public final tp3 Z;
    public final tp3 a;
    public final tp3 a0;
    public final tp3 b;
    public final tp3 b0;
    public final tp3 c;
    public final tp3 c0;
    public final tp3 d;
    public final tp3 d0;
    public final tp3 e;
    public final tp3 e0;
    public final tp3 f;
    public final tp3 f0;
    public final tp3 g;
    public final tp3 g0;
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
        i0 = aVar.a(Double.valueOf(1.0d));
        j0 = aVar.a(DivInput.Autocapitalization.AUTO);
        k0 = aVar.a(DivInput.EnterKeyType.DEFAULT);
        l0 = aVar.a(12L);
        m0 = aVar.a(DivSizeUnit.SP);
        n0 = aVar.a(DivFontWeight.REGULAR);
        o0 = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        p0 = aVar.a(1929379840);
        q0 = aVar.a(Boolean.TRUE);
        r0 = aVar.a(DivInput.KeyboardType.MULTI_LINE_TEXT);
        s0 = aVar.a(Double.valueOf(0.0d));
        t0 = aVar.a(Boolean.FALSE);
        u0 = aVar.a(DivAlignmentHorizontal.START);
        v0 = aVar.a(DivAlignmentVertical.CENTER);
        w0 = aVar.a(-16777216);
        x0 = aVar.a(DivVisibility.VISIBLE);
        y0 = new DivSize.c(new DivMatchParentSize(null, 1, null));
        z0 = new s74() {
            @Override
            public final DivInputTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivInputTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivInputTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10, tp3 tp3Var11, tp3 tp3Var12, tp3 tp3Var13, tp3 tp3Var14, tp3 tp3Var15, tp3 tp3Var16, tp3 tp3Var17, tp3 tp3Var18, tp3 tp3Var19, tp3 tp3Var20, tp3 tp3Var21, tp3 tp3Var22, tp3 tp3Var23, tp3 tp3Var24, tp3 tp3Var25, tp3 tp3Var26, tp3 tp3Var27, tp3 tp3Var28, tp3 tp3Var29, tp3 tp3Var30, tp3 tp3Var31, tp3 tp3Var32, tp3 tp3Var33, tp3 tp3Var34, tp3 tp3Var35, tp3 tp3Var36, tp3 tp3Var37, tp3 tp3Var38, tp3 tp3Var39, tp3 tp3Var40, tp3 tp3Var41, tp3 tp3Var42, tp3 tp3Var43, tp3 tp3Var44, tp3 tp3Var45, tp3 tp3Var46, tp3 tp3Var47, tp3 tp3Var48, tp3 tp3Var49, tp3 tp3Var50, tp3 tp3Var51, tp3 tp3Var52, tp3 tp3Var53, tp3 tp3Var54, tp3 tp3Var55, tp3 tp3Var56, tp3 tp3Var57, tp3 tp3Var58, tp3 tp3Var59) {
        y45.j(tp3Var, "accessibility");
        y45.j(tp3Var2, "alignmentHorizontal");
        y45.j(tp3Var3, "alignmentVertical");
        y45.j(tp3Var4, "alpha");
        y45.j(tp3Var5, "animators");
        y45.j(tp3Var6, "autocapitalization");
        y45.j(tp3Var7, "background");
        y45.j(tp3Var8, "border");
        y45.j(tp3Var9, "columnSpan");
        y45.j(tp3Var10, "disappearActions");
        y45.j(tp3Var11, "enterKeyActions");
        y45.j(tp3Var12, "enterKeyType");
        y45.j(tp3Var13, "extensions");
        y45.j(tp3Var14, "filters");
        y45.j(tp3Var15, "focus");
        y45.j(tp3Var16, TtmlNode.ATTR_TTS_FONT_FAMILY);
        y45.j(tp3Var17, TtmlNode.ATTR_TTS_FONT_SIZE);
        y45.j(tp3Var18, "fontSizeUnit");
        y45.j(tp3Var19, "fontVariationSettings");
        y45.j(tp3Var20, TtmlNode.ATTR_TTS_FONT_WEIGHT);
        y45.j(tp3Var21, "fontWeightValue");
        y45.j(tp3Var22, "functions");
        y45.j(tp3Var23, "height");
        y45.j(tp3Var24, "highlightColor");
        y45.j(tp3Var25, "hintColor");
        y45.j(tp3Var26, "hintText");
        y45.j(tp3Var27, TtmlNode.ATTR_ID);
        y45.j(tp3Var28, "isEnabled");
        y45.j(tp3Var29, "keyboardType");
        y45.j(tp3Var30, "layoutProvider");
        y45.j(tp3Var31, "letterSpacing");
        y45.j(tp3Var32, "lineHeight");
        y45.j(tp3Var33, "margins");
        y45.j(tp3Var34, "mask");
        y45.j(tp3Var35, "maxLength");
        y45.j(tp3Var36, "maxVisibleLines");
        y45.j(tp3Var37, "nativeInterface");
        y45.j(tp3Var38, "paddings");
        y45.j(tp3Var39, "reuseId");
        y45.j(tp3Var40, "rowSpan");
        y45.j(tp3Var41, "selectAllOnFocus");
        y45.j(tp3Var42, "selectedActions");
        y45.j(tp3Var43, "textAlignmentHorizontal");
        y45.j(tp3Var44, "textAlignmentVertical");
        y45.j(tp3Var45, "textColor");
        y45.j(tp3Var46, "textVariable");
        y45.j(tp3Var47, "tooltips");
        y45.j(tp3Var48, "transform");
        y45.j(tp3Var49, "transitionChange");
        y45.j(tp3Var50, "transitionIn");
        y45.j(tp3Var51, "transitionOut");
        y45.j(tp3Var52, "transitionTriggers");
        y45.j(tp3Var53, "validators");
        y45.j(tp3Var54, "variableTriggers");
        y45.j(tp3Var55, "variables");
        y45.j(tp3Var56, "visibility");
        y45.j(tp3Var57, "visibilityAction");
        y45.j(tp3Var58, "visibilityActions");
        y45.j(tp3Var59, "width");
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
        this.V = tp3Var48;
        this.W = tp3Var49;
        this.X = tp3Var50;
        this.Y = tp3Var51;
        this.Z = tp3Var52;
        this.a0 = tp3Var53;
        this.b0 = tp3Var54;
        this.c0 = tp3Var55;
        this.d0 = tp3Var56;
        this.e0 = tp3Var57;
        this.f0 = tp3Var58;
        this.g0 = tp3Var59;
    }

    @Override
    public JSONObject s() {
        return ((DivInputJsonParser.c) ml0.a().q4().getValue()).b(ml0.b(), this);
    }

    public static final class NativeInterfaceTemplate implements d65, ac5 {
        public static final a b = new a(null);
        public static final s74 c = new s74() {
            @Override
            public final DivInputTemplate.NativeInterfaceTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivInputTemplate.NativeInterfaceTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
        public final tp3 a;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public NativeInterfaceTemplate(tp3 tp3Var) {
            y45.j(tp3Var, "color");
            this.a = tp3Var;
        }

        @Override
        public JSONObject s() {
            return ((y1) ml0.a().w4().getValue()).b(ml0.b(), this);
        }

        public NativeInterfaceTemplate(hx7 hx7Var, NativeInterfaceTemplate nativeInterfaceTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : nativeInterfaceTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public NativeInterfaceTemplate(hx7 hx7Var, NativeInterfaceTemplate nativeInterfaceTemplate, boolean z, JSONObject jSONObject) {
            this(tp3.c.a(false));
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivInputTemplate(hx7 hx7Var, DivInputTemplate divInputTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divInputTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivInputTemplate(hx7 hx7Var, DivInputTemplate divInputTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
