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

public final class DivTextTemplate implements d65, ac5 {
    public static final Expression A0;
    public static final Expression B0;
    public static final Expression C0;
    public static final Expression D0;
    public static final Expression E0;
    public static final Expression F0;
    public static final Expression G0;
    public static final Expression H0;
    public static final Expression I0;
    public static final DivSize.c J0;
    public static final s74 K0;
    public static final a r0 = new a(null);
    public static final DivAnimation s0;
    public static final Expression t0;
    public static final Expression u0;
    public static final Expression v0;
    public static final Expression w0;
    public static final Expression x0;
    public static final DivSize.d y0;
    public static final Expression z0;
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
    public final tp3 h0;
    public final tp3 i;
    public final tp3 i0;
    public final tp3 j;
    public final tp3 j0;
    public final tp3 k;
    public final tp3 k0;
    public final tp3 l;
    public final tp3 l0;
    public final tp3 m;
    public final tp3 m0;
    public final tp3 n;
    public final tp3 n0;
    public final tp3 o;
    public final tp3 o0;
    public final tp3 p;
    public final tp3 p0;
    public final tp3 q;
    public final tp3 q0;
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
        s0 = new DivAnimation(expressionA, expressionA2, null, null, expressionA3, null, null, aVar.a(dValueOf), 108, null);
        t0 = aVar.a(dValueOf);
        u0 = aVar.a(Boolean.TRUE);
        v0 = aVar.a(12L);
        w0 = aVar.a(DivSizeUnit.SP);
        x0 = aVar.a(DivFontWeight.REGULAR);
        y0 = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        z0 = aVar.a(Double.valueOf(0.0d));
        Boolean bool = Boolean.FALSE;
        A0 = aVar.a(bool);
        DivLineStyle divLineStyle = DivLineStyle.NONE;
        B0 = aVar.a(divLineStyle);
        C0 = aVar.a(DivAlignmentHorizontal.START);
        D0 = aVar.a(DivAlignmentVertical.TOP);
        E0 = aVar.a(-16777216);
        F0 = aVar.a(bool);
        G0 = aVar.a(DivText.Truncate.END);
        H0 = aVar.a(divLineStyle);
        I0 = aVar.a(DivVisibility.VISIBLE);
        J0 = new DivSize.c(new DivMatchParentSize(null, 1, null));
        K0 = new s74() {
            @Override
            public final DivTextTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivTextTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivTextTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10, tp3 tp3Var11, tp3 tp3Var12, tp3 tp3Var13, tp3 tp3Var14, tp3 tp3Var15, tp3 tp3Var16, tp3 tp3Var17, tp3 tp3Var18, tp3 tp3Var19, tp3 tp3Var20, tp3 tp3Var21, tp3 tp3Var22, tp3 tp3Var23, tp3 tp3Var24, tp3 tp3Var25, tp3 tp3Var26, tp3 tp3Var27, tp3 tp3Var28, tp3 tp3Var29, tp3 tp3Var30, tp3 tp3Var31, tp3 tp3Var32, tp3 tp3Var33, tp3 tp3Var34, tp3 tp3Var35, tp3 tp3Var36, tp3 tp3Var37, tp3 tp3Var38, tp3 tp3Var39, tp3 tp3Var40, tp3 tp3Var41, tp3 tp3Var42, tp3 tp3Var43, tp3 tp3Var44, tp3 tp3Var45, tp3 tp3Var46, tp3 tp3Var47, tp3 tp3Var48, tp3 tp3Var49, tp3 tp3Var50, tp3 tp3Var51, tp3 tp3Var52, tp3 tp3Var53, tp3 tp3Var54, tp3 tp3Var55, tp3 tp3Var56, tp3 tp3Var57, tp3 tp3Var58, tp3 tp3Var59, tp3 tp3Var60, tp3 tp3Var61, tp3 tp3Var62, tp3 tp3Var63, tp3 tp3Var64, tp3 tp3Var65, tp3 tp3Var66, tp3 tp3Var67, tp3 tp3Var68, tp3 tp3Var69) {
        y45.j(tp3Var, "accessibility");
        y45.j(tp3Var2, "action");
        y45.j(tp3Var3, "actionAnimation");
        y45.j(tp3Var4, "actions");
        y45.j(tp3Var5, "alignmentHorizontal");
        y45.j(tp3Var6, "alignmentVertical");
        y45.j(tp3Var7, "alpha");
        y45.j(tp3Var8, "animators");
        y45.j(tp3Var9, "autoEllipsize");
        y45.j(tp3Var10, "background");
        y45.j(tp3Var11, "border");
        y45.j(tp3Var12, "captureFocusOnAction");
        y45.j(tp3Var13, "columnSpan");
        y45.j(tp3Var14, "disappearActions");
        y45.j(tp3Var15, "doubletapActions");
        y45.j(tp3Var16, "ellipsis");
        y45.j(tp3Var17, "extensions");
        y45.j(tp3Var18, "focus");
        y45.j(tp3Var19, "focusedTextColor");
        y45.j(tp3Var20, TtmlNode.ATTR_TTS_FONT_FAMILY);
        y45.j(tp3Var21, "fontFeatureSettings");
        y45.j(tp3Var22, TtmlNode.ATTR_TTS_FONT_SIZE);
        y45.j(tp3Var23, "fontSizeUnit");
        y45.j(tp3Var24, "fontVariationSettings");
        y45.j(tp3Var25, TtmlNode.ATTR_TTS_FONT_WEIGHT);
        y45.j(tp3Var26, "fontWeightValue");
        y45.j(tp3Var27, "functions");
        y45.j(tp3Var28, "height");
        y45.j(tp3Var29, "hoverEndActions");
        y45.j(tp3Var30, "hoverStartActions");
        y45.j(tp3Var31, TtmlNode.ATTR_ID);
        y45.j(tp3Var32, "images");
        y45.j(tp3Var33, "layoutProvider");
        y45.j(tp3Var34, "letterSpacing");
        y45.j(tp3Var35, "lineHeight");
        y45.j(tp3Var36, "longtapActions");
        y45.j(tp3Var37, "margins");
        y45.j(tp3Var38, "maxLines");
        y45.j(tp3Var39, "minHiddenLines");
        y45.j(tp3Var40, "paddings");
        y45.j(tp3Var41, "pressEndActions");
        y45.j(tp3Var42, "pressStartActions");
        y45.j(tp3Var43, "ranges");
        y45.j(tp3Var44, "reuseId");
        y45.j(tp3Var45, "rowSpan");
        y45.j(tp3Var46, "selectable");
        y45.j(tp3Var47, "selectedActions");
        y45.j(tp3Var48, "strike");
        y45.j(tp3Var49, "text");
        y45.j(tp3Var50, "textAlignmentHorizontal");
        y45.j(tp3Var51, "textAlignmentVertical");
        y45.j(tp3Var52, "textColor");
        y45.j(tp3Var53, "textGradient");
        y45.j(tp3Var54, "textShadow");
        y45.j(tp3Var55, "tightenWidth");
        y45.j(tp3Var56, "tooltips");
        y45.j(tp3Var57, "transform");
        y45.j(tp3Var58, "transitionChange");
        y45.j(tp3Var59, "transitionIn");
        y45.j(tp3Var60, "transitionOut");
        y45.j(tp3Var61, "transitionTriggers");
        y45.j(tp3Var62, "truncate");
        y45.j(tp3Var63, TtmlNode.UNDERLINE);
        y45.j(tp3Var64, "variableTriggers");
        y45.j(tp3Var65, "variables");
        y45.j(tp3Var66, "visibility");
        y45.j(tp3Var67, "visibilityAction");
        y45.j(tp3Var68, "visibilityActions");
        y45.j(tp3Var69, "width");
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
        this.h0 = tp3Var60;
        this.i0 = tp3Var61;
        this.j0 = tp3Var62;
        this.k0 = tp3Var63;
        this.l0 = tp3Var64;
        this.m0 = tp3Var65;
        this.n0 = tp3Var66;
        this.o0 = tp3Var67;
        this.p0 = tp3Var68;
        this.q0 = tp3Var69;
    }

    @Override
    public JSONObject s() {
        return ((DivTextJsonParser.c) ml0.a().k8().getValue()).b(ml0.b(), this);
    }

    public static final class ImageTemplate implements d65, ac5 {
        public static final a k = new a(null);
        public static final Expression l;
        public static final DivFixedSize m;
        public static final Expression n;
        public static final Expression o;
        public static final Expression p;
        public static final DivFixedSize q;
        public static final s74 r;
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

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        static {
            Expression.a aVar = Expression.a;
            l = aVar.a(DivTextAlignmentVertical.CENTER);
            m = new DivFixedSize(null, aVar.a(20L), 1, null);
            n = aVar.a(DivText.Image.IndexingDirection.NORMAL);
            o = aVar.a(Boolean.FALSE);
            p = aVar.a(DivBlendMode.SOURCE_IN);
            q = new DivFixedSize(null, aVar.a(20L), 1, null);
            r = new s74() {
                @Override
                public final DivTextTemplate.ImageTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return new DivTextTemplate.ImageTemplate(hx7Var, null, false, jSONObject, 6, null);
                }
            };
        }

        public ImageTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10) {
            y45.j(tp3Var, "accessibility");
            y45.j(tp3Var2, "alignmentVertical");
            y45.j(tp3Var3, "height");
            y45.j(tp3Var4, "indexingDirection");
            y45.j(tp3Var5, "preloadRequired");
            y45.j(tp3Var6, TtmlNode.START);
            y45.j(tp3Var7, "tintColor");
            y45.j(tp3Var8, "tintMode");
            y45.j(tp3Var9, "url");
            y45.j(tp3Var10, "width");
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
        }

        @Override
        public JSONObject s() {
            return ((DivTextImageJsonParser.c) ml0.a().h8().getValue()).b(ml0.b(), this);
        }

        public static final class AccessibilityTemplate implements d65, ac5 {
            public static final a c = new a(null);
            public static final DivText.Image.Accessibility.Type d = DivText.Image.Accessibility.Type.AUTO;
            public static final s74 e = new s74() {
                @Override
                public final DivTextTemplate.ImageTemplate.AccessibilityTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return new DivTextTemplate.ImageTemplate.AccessibilityTemplate(hx7Var, null, false, jSONObject, 6, null);
                }
            };
            public final tp3 a;
            public final tp3 b;

            public static final class a {
                public a(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public a() {
                }
            }

            public AccessibilityTemplate(tp3 tp3Var, tp3 tp3Var2) {
                y45.j(tp3Var, "description");
                y45.j(tp3Var2, "type");
                this.a = tp3Var;
                this.b = tp3Var2;
            }

            @Override
            public JSONObject s() {
                return ((m4.c) ml0.a().e8().getValue()).b(ml0.b(), this);
            }

            public AccessibilityTemplate(hx7 hx7Var, AccessibilityTemplate accessibilityTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(hx7Var, (i & 2) != 0 ? null : accessibilityTemplate, (i & 4) != 0 ? false : z, jSONObject);
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public AccessibilityTemplate(hx7 hx7Var, AccessibilityTemplate accessibilityTemplate, boolean z, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                tp3.a aVar = tp3.c;
                this(aVar.a(false), aVar.a(false));
                throw new UnsupportedOperationException("Do not use this constructor directly.");
            }
        }

        public ImageTemplate(hx7 hx7Var, ImageTemplate imageTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : imageTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public ImageTemplate(hx7 hx7Var, ImageTemplate imageTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public static final class EllipsisTemplate implements d65, ac5 {
        public static final a e = new a(null);
        public static final s74 f = new s74() {
            @Override
            public final DivTextTemplate.EllipsisTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivTextTemplate.EllipsisTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
        public final tp3 a;
        public final tp3 b;
        public final tp3 c;
        public final tp3 d;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public EllipsisTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4) {
            y45.j(tp3Var, "actions");
            y45.j(tp3Var2, "images");
            y45.j(tp3Var3, "ranges");
            y45.j(tp3Var4, "text");
            this.a = tp3Var;
            this.b = tp3Var2;
            this.c = tp3Var3;
            this.d = tp3Var4;
        }

        @Override
        public JSONObject s() {
            return ((h4) ml0.a().Y7().getValue()).b(ml0.b(), this);
        }

        public EllipsisTemplate(hx7 hx7Var, EllipsisTemplate ellipsisTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : ellipsisTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public EllipsisTemplate(hx7 hx7Var, EllipsisTemplate ellipsisTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public static final class RangeTemplate implements d65, ac5 {
        public static final s74 A;
        public static final a w = new a(null);
        public static final Expression x;
        public static final Expression y;
        public static final Expression z;
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

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        static {
            Expression.a aVar = Expression.a;
            x = aVar.a(Double.valueOf(0.0d));
            y = aVar.a(DivSizeUnit.SP);
            z = aVar.a(0L);
            A = new s74() {
                @Override
                public final DivTextTemplate.RangeTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return new DivTextTemplate.RangeTemplate(hx7Var, null, false, jSONObject, 6, null);
                }
            };
        }

        public RangeTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10, tp3 tp3Var11, tp3 tp3Var12, tp3 tp3Var13, tp3 tp3Var14, tp3 tp3Var15, tp3 tp3Var16, tp3 tp3Var17, tp3 tp3Var18, tp3 tp3Var19, tp3 tp3Var20, tp3 tp3Var21, tp3 tp3Var22) {
            y45.j(tp3Var, "actions");
            y45.j(tp3Var2, "alignmentVertical");
            y45.j(tp3Var3, "background");
            y45.j(tp3Var4, "baselineOffset");
            y45.j(tp3Var5, "border");
            y45.j(tp3Var6, TtmlNode.END);
            y45.j(tp3Var7, TtmlNode.ATTR_TTS_FONT_FAMILY);
            y45.j(tp3Var8, "fontFeatureSettings");
            y45.j(tp3Var9, TtmlNode.ATTR_TTS_FONT_SIZE);
            y45.j(tp3Var10, "fontSizeUnit");
            y45.j(tp3Var11, "fontVariationSettings");
            y45.j(tp3Var12, TtmlNode.ATTR_TTS_FONT_WEIGHT);
            y45.j(tp3Var13, "fontWeightValue");
            y45.j(tp3Var14, "letterSpacing");
            y45.j(tp3Var15, "lineHeight");
            y45.j(tp3Var16, "mask");
            y45.j(tp3Var17, TtmlNode.START);
            y45.j(tp3Var18, "strike");
            y45.j(tp3Var19, "textColor");
            y45.j(tp3Var20, "textShadow");
            y45.j(tp3Var21, "topOffset");
            y45.j(tp3Var22, TtmlNode.UNDERLINE);
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
        }

        @Override
        public JSONObject s() {
            return ((DivTextRangeJsonParser.c) ml0.a().t8().getValue()).b(ml0.b(), this);
        }

        public RangeTemplate(hx7 hx7Var, RangeTemplate rangeTemplate, boolean z2, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : rangeTemplate, (i & 4) != 0 ? false : z2, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public RangeTemplate(hx7 hx7Var, RangeTemplate rangeTemplate, boolean z2, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivTextTemplate(hx7 hx7Var, DivTextTemplate divTextTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divTextTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivTextTemplate(hx7 hx7Var, DivTextTemplate divTextTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
