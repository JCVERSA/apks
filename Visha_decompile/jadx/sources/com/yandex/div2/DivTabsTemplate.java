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

public final class DivTabsTemplate implements d65, ac5 {
    public static final a R = new a(null);
    public static final Expression S;
    public static final Expression T;
    public static final Expression U;
    public static final DivSize.d V;
    public static final Expression W;
    public static final Expression X;
    public static final Expression Y;
    public static final DivEdgeInsets Z;
    public static final Expression a0;
    public static final DivEdgeInsets b0;
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
        S = aVar.a(Double.valueOf(1.0d));
        Boolean bool = Boolean.FALSE;
        T = aVar.a(bool);
        U = aVar.a(bool);
        V = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        W = aVar.a(bool);
        X = aVar.a(0L);
        Y = aVar.a(335544320);
        Z = new DivEdgeInsets(aVar.a(0L), null, aVar.a(12L), aVar.a(12L), null, aVar.a(0L), null, 82, null);
        a0 = aVar.a(Boolean.TRUE);
        b0 = new DivEdgeInsets(aVar.a(8L), null, aVar.a(12L), aVar.a(12L), null, aVar.a(0L), null, 82, null);
        c0 = aVar.a(DivVisibility.VISIBLE);
        d0 = new DivSize.c(new DivMatchParentSize(null, 1, null));
        e0 = new s74() {
            @Override
            public final DivTabsTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivTabsTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivTabsTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10, tp3 tp3Var11, tp3 tp3Var12, tp3 tp3Var13, tp3 tp3Var14, tp3 tp3Var15, tp3 tp3Var16, tp3 tp3Var17, tp3 tp3Var18, tp3 tp3Var19, tp3 tp3Var20, tp3 tp3Var21, tp3 tp3Var22, tp3 tp3Var23, tp3 tp3Var24, tp3 tp3Var25, tp3 tp3Var26, tp3 tp3Var27, tp3 tp3Var28, tp3 tp3Var29, tp3 tp3Var30, tp3 tp3Var31, tp3 tp3Var32, tp3 tp3Var33, tp3 tp3Var34, tp3 tp3Var35, tp3 tp3Var36, tp3 tp3Var37, tp3 tp3Var38, tp3 tp3Var39, tp3 tp3Var40, tp3 tp3Var41, tp3 tp3Var42, tp3 tp3Var43) {
        y45.j(tp3Var, "accessibility");
        y45.j(tp3Var2, "alignmentHorizontal");
        y45.j(tp3Var3, "alignmentVertical");
        y45.j(tp3Var4, "alpha");
        y45.j(tp3Var5, "animators");
        y45.j(tp3Var6, "background");
        y45.j(tp3Var7, "border");
        y45.j(tp3Var8, "columnSpan");
        y45.j(tp3Var9, "disappearActions");
        y45.j(tp3Var10, "dynamicHeight");
        y45.j(tp3Var11, "extensions");
        y45.j(tp3Var12, "focus");
        y45.j(tp3Var13, "functions");
        y45.j(tp3Var14, "hasSeparator");
        y45.j(tp3Var15, "height");
        y45.j(tp3Var16, TtmlNode.ATTR_ID);
        y45.j(tp3Var17, "items");
        y45.j(tp3Var18, "layoutProvider");
        y45.j(tp3Var19, "margins");
        y45.j(tp3Var20, "paddings");
        y45.j(tp3Var21, "restrictParentScroll");
        y45.j(tp3Var22, "reuseId");
        y45.j(tp3Var23, "rowSpan");
        y45.j(tp3Var24, "selectedActions");
        y45.j(tp3Var25, "selectedTab");
        y45.j(tp3Var26, "separatorColor");
        y45.j(tp3Var27, "separatorPaddings");
        y45.j(tp3Var28, "switchTabsByContentSwipeEnabled");
        y45.j(tp3Var29, "tabTitleDelimiter");
        y45.j(tp3Var30, "tabTitleStyle");
        y45.j(tp3Var31, "titlePaddings");
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
        return ((DivTabsJsonParser.c) ml0.a().P7().getValue()).b(ml0.b(), this);
    }

    public static final class ItemTemplate implements d65, ac5 {
        public static final a d = new a(null);
        public static final s74 e = new s74() {
            @Override
            public final DivTabsTemplate.ItemTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivTabsTemplate.ItemTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
        public final tp3 a;
        public final tp3 b;
        public final tp3 c;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public ItemTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3) {
            y45.j(tp3Var, TtmlNode.TAG_DIV);
            y45.j(tp3Var2, "title");
            y45.j(tp3Var3, "titleClickAction");
            this.a = tp3Var;
            this.b = tp3Var2;
            this.c = tp3Var3;
        }

        @Override
        public JSONObject s() {
            return ((d4) ml0.a().M7().getValue()).b(ml0.b(), this);
        }

        public ItemTemplate(hx7 hx7Var, ItemTemplate itemTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : itemTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public ItemTemplate(hx7 hx7Var, ItemTemplate itemTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public static final class TabTitleDelimiterTemplate implements d65, ac5 {
        public static final a d = new a(null);
        public static final DivFixedSize e;
        public static final DivFixedSize f;
        public static final s74 g;
        public final tp3 a;
        public final tp3 b;
        public final tp3 c;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        static {
            Expression.a aVar = Expression.a;
            e = new DivFixedSize(null, aVar.a(12L), 1, null);
            f = new DivFixedSize(null, aVar.a(12L), 1, null);
            g = new s74() {
                @Override
                public final DivTabsTemplate.TabTitleDelimiterTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return new DivTabsTemplate.TabTitleDelimiterTemplate(hx7Var, null, false, jSONObject, 6, null);
                }
            };
        }

        public TabTitleDelimiterTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3) {
            y45.j(tp3Var, "height");
            y45.j(tp3Var2, "imageUrl");
            y45.j(tp3Var3, "width");
            this.a = tp3Var;
            this.b = tp3Var2;
            this.c = tp3Var3;
        }

        @Override
        public JSONObject s() {
            return ((f4.c) ml0.a().S7().getValue()).b(ml0.b(), this);
        }

        public TabTitleDelimiterTemplate(hx7 hx7Var, TabTitleDelimiterTemplate tabTitleDelimiterTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : tabTitleDelimiterTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public TabTitleDelimiterTemplate(hx7 hx7Var, TabTitleDelimiterTemplate tabTitleDelimiterTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public static final class TabTitleStyleTemplate implements d65, ac5 {
        public static final Expression A;
        public static final Expression B;
        public static final Expression C;
        public static final Expression D;
        public static final Expression E;
        public static final DivEdgeInsets F;
        public static final s74 G;
        public static final a u = new a(null);
        public static final Expression v;
        public static final Expression w;
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

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        static {
            Expression.a aVar = Expression.a;
            v = aVar.a(-9120);
            w = aVar.a(-872415232);
            x = aVar.a(300L);
            y = aVar.a(DivTabs.TabTitleStyle.AnimationType.SLIDE);
            z = aVar.a(12L);
            A = aVar.a(DivSizeUnit.SP);
            B = aVar.a(DivFontWeight.REGULAR);
            C = aVar.a(Integer.MIN_VALUE);
            D = aVar.a(0L);
            E = aVar.a(Double.valueOf(0.0d));
            F = new DivEdgeInsets(aVar.a(6L), null, aVar.a(8L), aVar.a(8L), null, aVar.a(6L), null, 82, null);
            G = new s74() {
                @Override
                public final DivTabsTemplate.TabTitleStyleTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return new DivTabsTemplate.TabTitleStyleTemplate(hx7Var, null, false, jSONObject, 6, null);
                }
            };
        }

        public TabTitleStyleTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10, tp3 tp3Var11, tp3 tp3Var12, tp3 tp3Var13, tp3 tp3Var14, tp3 tp3Var15, tp3 tp3Var16, tp3 tp3Var17, tp3 tp3Var18, tp3 tp3Var19, tp3 tp3Var20) {
            y45.j(tp3Var, "activeBackgroundColor");
            y45.j(tp3Var2, "activeFontVariationSettings");
            y45.j(tp3Var3, "activeFontWeight");
            y45.j(tp3Var4, "activeTextColor");
            y45.j(tp3Var5, "animationDuration");
            y45.j(tp3Var6, "animationType");
            y45.j(tp3Var7, "cornerRadius");
            y45.j(tp3Var8, "cornersRadius");
            y45.j(tp3Var9, TtmlNode.ATTR_TTS_FONT_FAMILY);
            y45.j(tp3Var10, TtmlNode.ATTR_TTS_FONT_SIZE);
            y45.j(tp3Var11, "fontSizeUnit");
            y45.j(tp3Var12, TtmlNode.ATTR_TTS_FONT_WEIGHT);
            y45.j(tp3Var13, "inactiveBackgroundColor");
            y45.j(tp3Var14, "inactiveFontVariationSettings");
            y45.j(tp3Var15, "inactiveFontWeight");
            y45.j(tp3Var16, "inactiveTextColor");
            y45.j(tp3Var17, "itemSpacing");
            y45.j(tp3Var18, "letterSpacing");
            y45.j(tp3Var19, "lineHeight");
            y45.j(tp3Var20, "paddings");
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
        }

        @Override
        public JSONObject s() {
            return ((DivTabsTabTitleStyleJsonParser.c) ml0.a().V7().getValue()).b(ml0.b(), this);
        }

        public TabTitleStyleTemplate(hx7 hx7Var, TabTitleStyleTemplate tabTitleStyleTemplate, boolean z2, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : tabTitleStyleTemplate, (i & 4) != 0 ? false : z2, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public TabTitleStyleTemplate(hx7 hx7Var, TabTitleStyleTemplate tabTitleStyleTemplate, boolean z2, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivTabsTemplate(hx7 hx7Var, DivTabsTemplate divTabsTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divTabsTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivTabsTemplate(hx7 hx7Var, DivTabsTemplate divTabsTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
