package com.yandex.div2;

import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.og2;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivSlider implements d65, ko4, og2 {
    public static final a W = new a(null);
    public static final Expression X;
    public static final DivSize.d Y;
    public static final Expression Z;
    public static final Expression a0;
    public static final Expression b0;
    public static final Expression c0;
    public static final DivSize.c d0;
    public static final s74 e0;
    public final TextStyle A;
    public final String B;
    public final DivDrawable C;
    public final TextStyle D;
    public final String E;
    public final DivDrawable F;
    public final DivDrawable G;
    public final List H;
    public final DivDrawable I;
    public final DivDrawable J;
    public final DivTransform K;
    public final DivChangeTransition L;
    public final DivAppearanceTransition M;
    public final DivAppearanceTransition N;
    public final List O;
    public final List P;
    public final List Q;
    public final Expression R;
    public final DivVisibilityAction S;
    public final List T;
    public final DivSize U;
    public Integer V;
    public final DivAccessibility a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final List e;
    public final List f;
    public final DivBorder g;
    public final Expression h;
    public final List i;
    public final List j;
    public final DivFocus k;
    public final List l;
    public final DivSize m;
    public final String n;
    public final Expression o;
    public final DivLayoutProvider p;
    public final DivEdgeInsets q;
    public final Expression r;
    public final Expression s;
    public final DivEdgeInsets t;
    public final List u;
    public final Expression v;
    public final Expression w;
    public final DivAccessibility x;
    public final List y;
    public final DivDrawable z;

    public static final class Range implements d65, ko4 {
        public static final a g = new a(null);
        public static final s74 h = new s74() {
            @Override
            public final DivSlider.Range invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivSlider.Range.g.a(hx7Var, jSONObject);
            }
        };
        public final Expression a;
        public final DivEdgeInsets b;
        public final Expression c;
        public final DivDrawable d;
        public final DivDrawable e;
        public Integer f;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Range a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((s3) ml0.a().e7().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public Range(Expression expression, DivEdgeInsets divEdgeInsets, Expression expression2, DivDrawable divDrawable, DivDrawable divDrawable2) {
            this.a = expression;
            this.b = divEdgeInsets;
            this.c = expression2;
            this.d = divDrawable;
            this.e = divDrawable2;
        }

        public final boolean a(Range range, oj3 oj3Var, oj3 oj3Var2) {
            boolean zA;
            boolean zA2;
            boolean zA3;
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (range == null) {
                return false;
            }
            Expression expression = this.a;
            Long l = expression != null ? (Long) expression.b(oj3Var) : null;
            Expression expression2 = range.a;
            if (!y45.e(l, expression2 != null ? (Long) expression2.b(oj3Var2) : null)) {
                return false;
            }
            DivEdgeInsets divEdgeInsets = this.b;
            if (divEdgeInsets != null) {
                zA = divEdgeInsets.a(range.b, oj3Var, oj3Var2);
            } else {
                zA = range.b == null;
            }
            if (!zA) {
                return false;
            }
            Expression expression3 = this.c;
            Long l2 = expression3 != null ? (Long) expression3.b(oj3Var) : null;
            Expression expression4 = range.c;
            if (!y45.e(l2, expression4 != null ? (Long) expression4.b(oj3Var2) : null)) {
                return false;
            }
            DivDrawable divDrawable = this.d;
            if (divDrawable != null) {
                zA2 = divDrawable.a(range.d, oj3Var, oj3Var2);
            } else {
                zA2 = range.d == null;
            }
            if (!zA2) {
                return false;
            }
            DivDrawable divDrawable2 = this.e;
            if (divDrawable2 != null) {
                zA3 = divDrawable2.a(range.e, oj3Var, oj3Var2);
            } else {
                zA3 = range.e == null;
            }
            return zA3;
        }

        @Override
        public int hash() {
            Integer num = this.f;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Range.class).hashCode();
            Expression expression = this.a;
            int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
            DivEdgeInsets divEdgeInsets = this.b;
            int iHash = iHashCode2 + (divEdgeInsets != null ? divEdgeInsets.hash() : 0);
            Expression expression2 = this.c;
            int iHashCode3 = iHash + (expression2 != null ? expression2.hashCode() : 0);
            DivDrawable divDrawable = this.d;
            int iHash2 = iHashCode3 + (divDrawable != null ? divDrawable.hash() : 0);
            DivDrawable divDrawable2 = this.e;
            int iHash3 = iHash2 + (divDrawable2 != null ? divDrawable2.hash() : 0);
            this.f = Integer.valueOf(iHash3);
            return iHash3;
        }

        @Override
        public JSONObject s() {
            return ((s3) ml0.a().e7().getValue()).b(ml0.b(), this);
        }
    }

    public static final class TextStyle implements d65, ko4 {
        public static final a j = new a(null);
        public static final Expression k;
        public static final Expression l;
        public static final Expression m;
        public static final Expression n;
        public static final s74 o;
        public final Expression a;
        public final Expression b;
        public final Expression c;
        public final Expression d;
        public final Expression e;
        public final Expression f;
        public final DivPoint g;
        public final Expression h;
        public Integer i;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final TextStyle a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((DivSliderTextStyleJsonParser.b) ml0.a().h7().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        static {
            Expression.a aVar = Expression.a;
            k = aVar.a(12L);
            l = aVar.a(DivSizeUnit.SP);
            m = aVar.a(DivFontWeight.REGULAR);
            n = aVar.a(-16777216);
            o = new s74() {
                @Override
                public final DivSlider.TextStyle invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return DivSlider.TextStyle.j.a(hx7Var, jSONObject);
                }
            };
        }

        public TextStyle(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Expression expression6, DivPoint divPoint, Expression expression7) {
            y45.j(expression2, TtmlNode.ATTR_TTS_FONT_SIZE);
            y45.j(expression3, "fontSizeUnit");
            y45.j(expression5, TtmlNode.ATTR_TTS_FONT_WEIGHT);
            y45.j(expression7, "textColor");
            this.a = expression;
            this.b = expression2;
            this.c = expression3;
            this.d = expression4;
            this.e = expression5;
            this.f = expression6;
            this.g = divPoint;
            this.h = expression7;
        }

        public final boolean a(TextStyle textStyle, oj3 oj3Var, oj3 oj3Var2) {
            boolean zA;
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (textStyle == null) {
                return false;
            }
            Expression expression = this.a;
            String str = expression != null ? (String) expression.b(oj3Var) : null;
            Expression expression2 = textStyle.a;
            if (!y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null) || ((Number) this.b.b(oj3Var)).longValue() != ((Number) textStyle.b.b(oj3Var2)).longValue() || this.c.b(oj3Var) != textStyle.c.b(oj3Var2)) {
                return false;
            }
            Expression expression3 = this.d;
            JSONObject jSONObject = expression3 != null ? (JSONObject) expression3.b(oj3Var) : null;
            Expression expression4 = textStyle.d;
            if (!y45.e(jSONObject, expression4 != null ? (JSONObject) expression4.b(oj3Var2) : null) || this.e.b(oj3Var) != textStyle.e.b(oj3Var2)) {
                return false;
            }
            Expression expression5 = this.f;
            Long l2 = expression5 != null ? (Long) expression5.b(oj3Var) : null;
            Expression expression6 = textStyle.f;
            if (!y45.e(l2, expression6 != null ? (Long) expression6.b(oj3Var2) : null)) {
                return false;
            }
            DivPoint divPoint = this.g;
            if (divPoint != null) {
                zA = divPoint.a(textStyle.g, oj3Var, oj3Var2);
            } else {
                zA = textStyle.g == null;
            }
            return zA && ((Number) this.h.b(oj3Var)).intValue() == ((Number) textStyle.h.b(oj3Var2)).intValue();
        }

        @Override
        public int hash() {
            Integer num = this.i;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(TextStyle.class).hashCode();
            Expression expression = this.a;
            int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + this.b.hashCode() + this.c.hashCode();
            Expression expression2 = this.d;
            int iHashCode3 = iHashCode2 + (expression2 != null ? expression2.hashCode() : 0) + this.e.hashCode();
            Expression expression3 = this.f;
            int iHashCode4 = iHashCode3 + (expression3 != null ? expression3.hashCode() : 0);
            DivPoint divPoint = this.g;
            int iHash = iHashCode4 + (divPoint != null ? divPoint.hash() : 0) + this.h.hashCode();
            this.i = Integer.valueOf(iHash);
            return iHash;
        }

        @Override
        public JSONObject s() {
            return ((DivSliderTextStyleJsonParser.b) ml0.a().h7().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivSlider a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivSliderJsonParser.b) ml0.a().b7().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        X = aVar.a(Double.valueOf(1.0d));
        Y = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        Z = aVar.a(Boolean.TRUE);
        a0 = aVar.a(100L);
        b0 = aVar.a(0L);
        c0 = aVar.a(DivVisibility.VISIBLE);
        d0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        e0 = new s74() {
            @Override
            public final DivSlider invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivSlider.W.a(hx7Var, jSONObject);
            }
        };
    }

    public DivSlider(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression5, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression6, Expression expression7, DivEdgeInsets divEdgeInsets2, List list6, Expression expression8, Expression expression9, DivAccessibility divAccessibility2, List list7, DivDrawable divDrawable, TextStyle textStyle, String str2, DivDrawable divDrawable2, TextStyle textStyle2, String str3, DivDrawable divDrawable3, DivDrawable divDrawable4, List list8, DivDrawable divDrawable5, DivDrawable divDrawable6, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression10, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(divSize, "height");
        y45.j(expression5, "isEnabled");
        y45.j(expression6, "maxValue");
        y45.j(expression7, "minValue");
        y45.j(divDrawable2, "thumbStyle");
        y45.j(divDrawable5, "trackActiveStyle");
        y45.j(divDrawable6, "trackInactiveStyle");
        y45.j(expression10, "visibility");
        y45.j(divSize2, "width");
        this.a = divAccessibility;
        this.b = expression;
        this.c = expression2;
        this.d = expression3;
        this.e = list;
        this.f = list2;
        this.g = divBorder;
        this.h = expression4;
        this.i = list3;
        this.j = list4;
        this.k = divFocus;
        this.l = list5;
        this.m = divSize;
        this.n = str;
        this.o = expression5;
        this.p = divLayoutProvider;
        this.q = divEdgeInsets;
        this.r = expression6;
        this.s = expression7;
        this.t = divEdgeInsets2;
        this.u = list6;
        this.v = expression8;
        this.w = expression9;
        this.x = divAccessibility2;
        this.y = list7;
        this.z = divDrawable;
        this.A = textStyle;
        this.B = str2;
        this.C = divDrawable2;
        this.D = textStyle2;
        this.E = str3;
        this.F = divDrawable3;
        this.G = divDrawable4;
        this.H = list8;
        this.I = divDrawable5;
        this.J = divDrawable6;
        this.K = divTransform;
        this.L = divChangeTransition;
        this.M = divAppearanceTransition;
        this.N = divAppearanceTransition2;
        this.O = list9;
        this.P = list10;
        this.Q = list11;
        this.R = expression10;
        this.S = divVisibilityAction;
        this.T = list12;
        this.U = divSize2;
    }

    public static DivSlider D(DivSlider divSlider, DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression5, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression6, Expression expression7, DivEdgeInsets divEdgeInsets2, List list6, Expression expression8, Expression expression9, DivAccessibility divAccessibility2, List list7, DivDrawable divDrawable, TextStyle textStyle, String str2, DivDrawable divDrawable2, TextStyle textStyle2, String str3, DivDrawable divDrawable3, DivDrawable divDrawable4, List list8, DivDrawable divDrawable5, DivDrawable divDrawable6, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression10, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divSlider.r() : divAccessibility;
        Expression expressionG = (i & 2) != 0 ? divSlider.g() : expression;
        Expression expressionO = (i & 4) != 0 ? divSlider.o() : expression2;
        Expression expressionP = (i & 8) != 0 ? divSlider.p() : expression3;
        List listA = (i & 16) != 0 ? divSlider.A() : list;
        List background = (i & 32) != 0 ? divSlider.getBackground() : list2;
        DivBorder divBorderB = (i & 64) != 0 ? divSlider.B() : divBorder;
        Expression expressionB = (i & 128) != 0 ? divSlider.b() : expression4;
        List listK = (i & 256) != 0 ? divSlider.k() : list3;
        List extensions = (i & 512) != 0 ? divSlider.getExtensions() : list4;
        DivFocus divFocusQ = (i & 1024) != 0 ? divSlider.q() : divFocus;
        List listY = (i & 2048) != 0 ? divSlider.y() : list5;
        DivSize height = (i & 4096) != 0 ? divSlider.getHeight() : divSize;
        String id = (i & 8192) != 0 ? divSlider.getId() : str;
        Expression expression11 = (i & 16384) != 0 ? divSlider.o : expression5;
        DivLayoutProvider divLayoutProviderV = (i & 32768) != 0 ? divSlider.v() : divLayoutProvider;
        DivEdgeInsets divEdgeInsetsD = (i & 65536) != 0 ? divSlider.d() : divEdgeInsets;
        Expression expression12 = expression11;
        Expression expression13 = (i & 131072) != 0 ? divSlider.r : expression6;
        Expression expression14 = (i & 262144) != 0 ? divSlider.s : expression7;
        DivEdgeInsets divEdgeInsetsT = (i & 524288) != 0 ? divSlider.t() : divEdgeInsets2;
        Expression expression15 = expression14;
        List list13 = (i & 1048576) != 0 ? divSlider.u : list6;
        Expression expressionF = (i & 2097152) != 0 ? divSlider.f() : expression8;
        Expression expressionE = (i & 4194304) != 0 ? divSlider.e() : expression9;
        List list14 = list13;
        DivAccessibility divAccessibility3 = (i & 8388608) != 0 ? divSlider.x : divAccessibility2;
        return divSlider.C(divAccessibilityR, expressionG, expressionO, expressionP, listA, background, divBorderB, expressionB, listK, extensions, divFocusQ, listY, height, id, expression12, divLayoutProviderV, divEdgeInsetsD, expression13, expression15, divEdgeInsetsT, list14, expressionF, expressionE, divAccessibility3, (i & 16777216) != 0 ? divSlider.u() : list7, (i & 33554432) != 0 ? divSlider.z : divDrawable, (i & 67108864) != 0 ? divSlider.A : textStyle, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divSlider.B : str2, (i & 268435456) != 0 ? divSlider.C : divDrawable2, (i & 536870912) != 0 ? divSlider.D : textStyle2, (i & 1073741824) != 0 ? divSlider.E : str3, (i & Integer.MIN_VALUE) != 0 ? divSlider.F : divDrawable3, (i2 & 1) != 0 ? divSlider.G : divDrawable4, (i2 & 2) != 0 ? divSlider.h() : list8, (i2 & 4) != 0 ? divSlider.I : divDrawable5, (i2 & 8) != 0 ? divSlider.J : divDrawable6, (i2 & 16) != 0 ? divSlider.m() : divTransform, (i2 & 32) != 0 ? divSlider.j() : divChangeTransition, (i2 & 64) != 0 ? divSlider.z() : divAppearanceTransition, (i2 & 128) != 0 ? divSlider.i() : divAppearanceTransition2, (i2 & 256) != 0 ? divSlider.n() : list9, (i2 & 512) != 0 ? divSlider.w() : list10, (i2 & 1024) != 0 ? divSlider.c() : list11, (i2 & 2048) != 0 ? divSlider.getVisibility() : expression10, (i2 & 4096) != 0 ? divSlider.x() : divVisibilityAction, (i2 & 8192) != 0 ? divSlider.a() : list12, (i2 & 16384) != 0 ? divSlider.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.e;
    }

    @Override
    public DivBorder B() {
        return this.g;
    }

    public final DivSlider C(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression5, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression6, Expression expression7, DivEdgeInsets divEdgeInsets2, List list6, Expression expression8, Expression expression9, DivAccessibility divAccessibility2, List list7, DivDrawable divDrawable, TextStyle textStyle, String str2, DivDrawable divDrawable2, TextStyle textStyle2, String str3, DivDrawable divDrawable3, DivDrawable divDrawable4, List list8, DivDrawable divDrawable5, DivDrawable divDrawable6, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression10, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(divSize, "height");
        y45.j(expression5, "isEnabled");
        y45.j(expression6, "maxValue");
        y45.j(expression7, "minValue");
        y45.j(divDrawable2, "thumbStyle");
        y45.j(divDrawable5, "trackActiveStyle");
        y45.j(divDrawable6, "trackInactiveStyle");
        y45.j(expression10, "visibility");
        y45.j(divSize2, "width");
        return new DivSlider(divAccessibility, expression, expression2, expression3, list, list2, divBorder, expression4, list3, list4, divFocus, list5, divSize, str, expression5, divLayoutProvider, divEdgeInsets, expression6, expression7, divEdgeInsets2, list6, expression8, expression9, divAccessibility2, list7, divDrawable, textStyle, str2, divDrawable2, textStyle2, str3, divDrawable3, divDrawable4, list8, divDrawable5, divDrawable6, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list9, list10, list11, expression10, divVisibilityAction, list12, divSize2);
    }

    public final boolean E(DivSlider divSlider, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean z;
        boolean z2;
        boolean zA2;
        boolean z3;
        boolean z4;
        boolean zA3;
        boolean z5;
        boolean zA4;
        boolean zA5;
        boolean zA6;
        boolean z6;
        boolean zA7;
        boolean z7;
        boolean zA8;
        boolean zA9;
        boolean zA10;
        boolean zA11;
        boolean zA12;
        boolean z8;
        boolean zA13;
        boolean zA14;
        boolean zA15;
        boolean zA16;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean zG;
        boolean z12;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divSlider == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divSlider.r(), oj3Var, oj3Var2);
        } else {
            zA = divSlider.r() == null;
        }
        if (!zA) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divSlider.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divSlider.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divSlider.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divSlider.A();
            if (listA2 == null) {
                return false;
            }
            if (listA.size() == listA2.size()) {
                Iterator it = listA.iterator();
                int i = 0;
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        int i2 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        if (((DivAnimator) next).a((DivAnimator) listA2.get(i), oj3Var, oj3Var2)) {
                            i = i2;
                        }
                    }
                }
            }
        } else {
            z = divSlider.A() == null;
        }
        if (!z) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divSlider.getBackground();
            if (background2 == null) {
                return false;
            }
            if (background.size() == background2.size()) {
                Iterator it2 = background.iterator();
                int i3 = 0;
                while (true) {
                    if (it2.hasNext()) {
                        Object next2 = it2.next();
                        int i4 = i3 + 1;
                        if (i3 < 0) {
                            y71.u();
                        }
                        if (((DivBackground) next2).a((DivBackground) background2.get(i3), oj3Var, oj3Var2)) {
                            i3 = i4;
                        }
                    }
                }
            }
        } else {
            z2 = divSlider.getBackground() == null;
        }
        if (!z2) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA2 = divBorderB.a(divSlider.B(), oj3Var, oj3Var2);
        } else {
            zA2 = divSlider.B() == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divSlider.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divSlider.k();
            if (listK2 == null) {
                return false;
            }
            if (listK.size() == listK2.size()) {
                Iterator it3 = listK.iterator();
                int i5 = 0;
                while (true) {
                    if (it3.hasNext()) {
                        Object next3 = it3.next();
                        int i6 = i5 + 1;
                        if (i5 < 0) {
                            y71.u();
                        }
                        if (((DivDisappearAction) next3).g((DivDisappearAction) listK2.get(i5), oj3Var, oj3Var2)) {
                            i5 = i6;
                        }
                    }
                }
            }
        } else {
            z3 = divSlider.k() == null;
        }
        if (!z3) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divSlider.getExtensions();
            if (extensions2 == null) {
                return false;
            }
            if (extensions.size() == extensions2.size()) {
                Iterator it4 = extensions.iterator();
                int i7 = 0;
                while (true) {
                    if (it4.hasNext()) {
                        Object next4 = it4.next();
                        int i8 = i7 + 1;
                        if (i7 < 0) {
                            y71.u();
                        }
                        if (((DivExtension) next4).a((DivExtension) extensions2.get(i7), oj3Var, oj3Var2)) {
                            i7 = i8;
                        }
                    }
                }
            }
        } else {
            z4 = divSlider.getExtensions() == null;
        }
        if (!z4) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA3 = divFocusQ.a(divSlider.q(), oj3Var, oj3Var2);
        } else {
            zA3 = divSlider.q() == null;
        }
        if (!zA3) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divSlider.y();
            if (listY2 == null) {
                return false;
            }
            if (listY.size() == listY2.size()) {
                Iterator it5 = listY.iterator();
                int i9 = 0;
                while (true) {
                    if (it5.hasNext()) {
                        Object next5 = it5.next();
                        int i10 = i9 + 1;
                        if (i9 < 0) {
                            y71.u();
                        }
                        if (((DivFunction) next5).a((DivFunction) listY2.get(i9), oj3Var, oj3Var2)) {
                            i9 = i10;
                        }
                    }
                }
            }
        } else {
            z5 = divSlider.y() == null;
        }
        if (!z5 || !getHeight().a(divSlider.getHeight(), oj3Var, oj3Var2) || !y45.e(getId(), divSlider.getId()) || ((Boolean) this.o.b(oj3Var)).booleanValue() != ((Boolean) divSlider.o.b(oj3Var2)).booleanValue()) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA4 = divLayoutProviderV.a(divSlider.v(), oj3Var, oj3Var2);
        } else {
            zA4 = divSlider.v() == null;
        }
        if (!zA4) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA5 = divEdgeInsetsD.a(divSlider.d(), oj3Var, oj3Var2);
        } else {
            zA5 = divSlider.d() == null;
        }
        if (!zA5 || ((Number) this.r.b(oj3Var)).longValue() != ((Number) divSlider.r.b(oj3Var2)).longValue() || ((Number) this.s.b(oj3Var)).longValue() != ((Number) divSlider.s.b(oj3Var2)).longValue()) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA6 = divEdgeInsetsT.a(divSlider.t(), oj3Var, oj3Var2);
        } else {
            zA6 = divSlider.t() == null;
        }
        if (!zA6) {
            return false;
        }
        List list = this.u;
        if (list != null) {
            List list2 = divSlider.u;
            if (list2 == null) {
                return false;
            }
            if (list.size() == list2.size()) {
                Iterator it6 = list.iterator();
                int i11 = 0;
                while (true) {
                    if (it6.hasNext()) {
                        Object next6 = it6.next();
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            y71.u();
                        }
                        if (((Range) next6).a((Range) list2.get(i11), oj3Var, oj3Var2)) {
                            i11 = i12;
                        }
                    }
                }
            }
        } else {
            z6 = divSlider.u == null;
        }
        if (!z6) {
            return false;
        }
        Expression expressionF = f();
        String str = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divSlider.f();
        if (!y45.e(str, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divSlider.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null)) {
            return false;
        }
        DivAccessibility divAccessibility = this.x;
        if (divAccessibility != null) {
            zA7 = divAccessibility.a(divSlider.x, oj3Var, oj3Var2);
        } else {
            zA7 = divSlider.x == null;
        }
        if (!zA7) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divSlider.u();
            if (listU2 == null) {
                return false;
            }
            if (listU.size() == listU2.size()) {
                Iterator it7 = listU.iterator();
                int i13 = 0;
                while (true) {
                    if (it7.hasNext()) {
                        Object next7 = it7.next();
                        int i14 = i13 + 1;
                        if (i13 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next7).a((DivAction) listU2.get(i13), oj3Var, oj3Var2)) {
                            i13 = i14;
                        }
                    }
                }
            }
        } else {
            z7 = divSlider.u() == null;
        }
        if (!z7) {
            return false;
        }
        DivDrawable divDrawable = this.z;
        if (divDrawable != null) {
            zA8 = divDrawable.a(divSlider.z, oj3Var, oj3Var2);
        } else {
            zA8 = divSlider.z == null;
        }
        if (!zA8) {
            return false;
        }
        TextStyle textStyle = this.A;
        if (textStyle != null) {
            zA9 = textStyle.a(divSlider.A, oj3Var, oj3Var2);
        } else {
            zA9 = divSlider.A == null;
        }
        if (!zA9 || !y45.e(this.B, divSlider.B) || !this.C.a(divSlider.C, oj3Var, oj3Var2)) {
            return false;
        }
        TextStyle textStyle2 = this.D;
        if (textStyle2 != null) {
            zA10 = textStyle2.a(divSlider.D, oj3Var, oj3Var2);
        } else {
            zA10 = divSlider.D == null;
        }
        if (!zA10 || !y45.e(this.E, divSlider.E)) {
            return false;
        }
        DivDrawable divDrawable2 = this.F;
        if (divDrawable2 != null) {
            zA11 = divDrawable2.a(divSlider.F, oj3Var, oj3Var2);
        } else {
            zA11 = divSlider.F == null;
        }
        if (!zA11) {
            return false;
        }
        DivDrawable divDrawable3 = this.G;
        if (divDrawable3 != null) {
            zA12 = divDrawable3.a(divSlider.G, oj3Var, oj3Var2);
        } else {
            zA12 = divSlider.G == null;
        }
        if (!zA12) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divSlider.h();
            if (listH2 == null) {
                return false;
            }
            if (listH.size() == listH2.size()) {
                Iterator it8 = listH.iterator();
                int i15 = 0;
                while (true) {
                    if (it8.hasNext()) {
                        Object next8 = it8.next();
                        int i16 = i15 + 1;
                        if (i15 < 0) {
                            y71.u();
                        }
                        if (((DivTooltip) next8).a((DivTooltip) listH2.get(i15), oj3Var, oj3Var2)) {
                            i15 = i16;
                        }
                    }
                }
            }
        } else {
            z8 = divSlider.h() == null;
        }
        if (!z8 || !this.I.a(divSlider.I, oj3Var, oj3Var2) || !this.J.a(divSlider.J, oj3Var, oj3Var2)) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA13 = divTransformM.a(divSlider.m(), oj3Var, oj3Var2);
        } else {
            zA13 = divSlider.m() == null;
        }
        if (!zA13) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA14 = divChangeTransitionJ.a(divSlider.j(), oj3Var, oj3Var2);
        } else {
            zA14 = divSlider.j() == null;
        }
        if (!zA14) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA15 = divAppearanceTransitionZ.a(divSlider.z(), oj3Var, oj3Var2);
        } else {
            zA15 = divSlider.z() == null;
        }
        if (!zA15) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA16 = divAppearanceTransitionI.a(divSlider.i(), oj3Var, oj3Var2);
        } else {
            zA16 = divSlider.i() == null;
        }
        if (!zA16) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divSlider.n();
            if (listN2 == null) {
                return false;
            }
            if (listN.size() == listN2.size()) {
                Iterator it9 = listN.iterator();
                int i17 = 0;
                while (true) {
                    if (it9.hasNext()) {
                        Object next9 = it9.next();
                        int i18 = i17 + 1;
                        if (i17 < 0) {
                            y71.u();
                        }
                        if (((DivTransitionTrigger) next9) == ((DivTransitionTrigger) listN2.get(i17))) {
                            i17 = i18;
                        }
                    }
                }
            }
        } else {
            z9 = divSlider.n() == null;
        }
        if (!z9) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divSlider.w();
            if (listW2 == null) {
                return false;
            }
            if (listW.size() == listW2.size()) {
                Iterator it10 = listW.iterator();
                int i19 = 0;
                while (true) {
                    if (it10.hasNext()) {
                        Object next10 = it10.next();
                        int i20 = i19 + 1;
                        if (i19 < 0) {
                            y71.u();
                        }
                        if (((DivTrigger) next10).a((DivTrigger) listW2.get(i19), oj3Var, oj3Var2)) {
                            i19 = i20;
                        }
                    }
                }
            }
        } else {
            z10 = divSlider.w() == null;
        }
        if (!z10) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divSlider.c();
            if (listC2 == null) {
                return false;
            }
            if (listC.size() == listC2.size()) {
                Iterator it11 = listC.iterator();
                int i21 = 0;
                while (true) {
                    if (it11.hasNext()) {
                        Object next11 = it11.next();
                        int i22 = i21 + 1;
                        if (i21 < 0) {
                            y71.u();
                        }
                        if (((DivVariable) next11).a((DivVariable) listC2.get(i21), oj3Var, oj3Var2)) {
                            i21 = i22;
                        }
                    }
                }
            }
        } else {
            z11 = divSlider.c() == null;
        }
        if (!z11 || getVisibility().b(oj3Var) != divSlider.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divSlider.x(), oj3Var, oj3Var2);
        } else {
            zG = divSlider.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divSlider.a();
            if (listA4 == null) {
                return false;
            }
            if (listA3.size() == listA4.size()) {
                Iterator it12 = listA3.iterator();
                int i23 = 0;
                while (true) {
                    if (it12.hasNext()) {
                        Object next12 = it12.next();
                        int i24 = i23 + 1;
                        if (i23 < 0) {
                            y71.u();
                        }
                        if (((DivVisibilityAction) next12).g((DivVisibilityAction) listA4.get(i23), oj3Var, oj3Var2)) {
                            i23 = i24;
                        }
                    }
                }
            }
        } else {
            z12 = divSlider.a() == null;
        }
        return z12 && getWidth().a(divSlider.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.T;
    }

    @Override
    public Expression b() {
        return this.h;
    }

    @Override
    public List c() {
        return this.Q;
    }

    @Override
    public DivEdgeInsets d() {
        return this.q;
    }

    @Override
    public Expression e() {
        return this.w;
    }

    @Override
    public Expression f() {
        return this.v;
    }

    @Override
    public Expression g() {
        return this.b;
    }

    @Override
    public List getBackground() {
        return this.f;
    }

    @Override
    public List getExtensions() {
        return this.j;
    }

    @Override
    public DivSize getHeight() {
        return this.m;
    }

    @Override
    public String getId() {
        return this.n;
    }

    @Override
    public Expression getVisibility() {
        return this.R;
    }

    @Override
    public DivSize getWidth() {
        return this.U;
    }

    @Override
    public List h() {
        return this.H;
    }

    @Override
    public int hash() {
        int iHash;
        int iHash2;
        int iHash3;
        int iHash4;
        int iHash5;
        int iHash6;
        int iHash7;
        int iHash8;
        int iHash9;
        int iHash10;
        Integer num = this.V;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivSlider.class).hashCode();
        DivAccessibility divAccessibilityR = r();
        int iHash11 = 0;
        int iHash12 = iHashCode + (divAccessibilityR != null ? divAccessibilityR.hash() : 0);
        Expression expressionG = g();
        int iHashCode2 = iHash12 + (expressionG != null ? expressionG.hashCode() : 0);
        Expression expressionO = o();
        int iHashCode3 = iHashCode2 + (expressionO != null ? expressionO.hashCode() : 0) + p().hashCode();
        List listA = A();
        if (listA != null) {
            Iterator it = listA.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivAnimator) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i = iHashCode3 + iHash;
        List background = getBackground();
        if (background != null) {
            Iterator it2 = background.iterator();
            iHash2 = 0;
            while (it2.hasNext()) {
                iHash2 += ((DivBackground) it2.next()).hash();
            }
        } else {
            iHash2 = 0;
        }
        int i2 = i + iHash2;
        DivBorder divBorderB = B();
        int iHash13 = i2 + (divBorderB != null ? divBorderB.hash() : 0);
        Expression expressionB = b();
        int iHashCode4 = iHash13 + (expressionB != null ? expressionB.hashCode() : 0);
        List listK = k();
        if (listK != null) {
            Iterator it3 = listK.iterator();
            iHash3 = 0;
            while (it3.hasNext()) {
                iHash3 += ((DivDisappearAction) it3.next()).hash();
            }
        } else {
            iHash3 = 0;
        }
        int i3 = iHashCode4 + iHash3;
        List extensions = getExtensions();
        if (extensions != null) {
            Iterator it4 = extensions.iterator();
            iHash4 = 0;
            while (it4.hasNext()) {
                iHash4 += ((DivExtension) it4.next()).hash();
            }
        } else {
            iHash4 = 0;
        }
        int i4 = i3 + iHash4;
        DivFocus divFocusQ = q();
        int iHash14 = i4 + (divFocusQ != null ? divFocusQ.hash() : 0);
        List listY = y();
        if (listY != null) {
            Iterator it5 = listY.iterator();
            iHash5 = 0;
            while (it5.hasNext()) {
                iHash5 += ((DivFunction) it5.next()).hash();
            }
        } else {
            iHash5 = 0;
        }
        int iHash15 = iHash14 + iHash5 + getHeight().hash();
        String id = getId();
        int iHashCode5 = iHash15 + (id != null ? id.hashCode() : 0) + this.o.hashCode();
        DivLayoutProvider divLayoutProviderV = v();
        int iHash16 = iHashCode5 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash17 = iHash16 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0) + this.r.hashCode() + this.s.hashCode();
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash18 = iHash17 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        List list = this.u;
        if (list != null) {
            Iterator it6 = list.iterator();
            iHash6 = 0;
            while (it6.hasNext()) {
                iHash6 += ((Range) it6.next()).hash();
            }
        } else {
            iHash6 = 0;
        }
        int i5 = iHash18 + iHash6;
        Expression expressionF = f();
        int iHashCode6 = i5 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode7 = iHashCode6 + (expressionE != null ? expressionE.hashCode() : 0);
        DivAccessibility divAccessibility = this.x;
        int iHash19 = iHashCode7 + (divAccessibility != null ? divAccessibility.hash() : 0);
        List listU = u();
        if (listU != null) {
            Iterator it7 = listU.iterator();
            iHash7 = 0;
            while (it7.hasNext()) {
                iHash7 += ((DivAction) it7.next()).hash();
            }
        } else {
            iHash7 = 0;
        }
        int i6 = iHash19 + iHash7;
        DivDrawable divDrawable = this.z;
        int iHash20 = i6 + (divDrawable != null ? divDrawable.hash() : 0);
        TextStyle textStyle = this.A;
        int iHash21 = iHash20 + (textStyle != null ? textStyle.hash() : 0);
        String str = this.B;
        int iHashCode8 = iHash21 + (str != null ? str.hashCode() : 0) + this.C.hash();
        TextStyle textStyle2 = this.D;
        int iHash22 = iHashCode8 + (textStyle2 != null ? textStyle2.hash() : 0);
        String str2 = this.E;
        int iHashCode9 = iHash22 + (str2 != null ? str2.hashCode() : 0);
        DivDrawable divDrawable2 = this.F;
        int iHash23 = iHashCode9 + (divDrawable2 != null ? divDrawable2.hash() : 0);
        DivDrawable divDrawable3 = this.G;
        int iHash24 = iHash23 + (divDrawable3 != null ? divDrawable3.hash() : 0);
        List listH = h();
        if (listH != null) {
            Iterator it8 = listH.iterator();
            iHash8 = 0;
            while (it8.hasNext()) {
                iHash8 += ((DivTooltip) it8.next()).hash();
            }
        } else {
            iHash8 = 0;
        }
        int iHash25 = iHash24 + iHash8 + this.I.hash() + this.J.hash();
        DivTransform divTransformM = m();
        int iHash26 = iHash25 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash27 = iHash26 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash28 = iHash27 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash29 = iHash28 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode10 = iHash29 + (listN != null ? listN.hashCode() : 0);
        List listW = w();
        if (listW != null) {
            Iterator it9 = listW.iterator();
            iHash9 = 0;
            while (it9.hasNext()) {
                iHash9 += ((DivTrigger) it9.next()).hash();
            }
        } else {
            iHash9 = 0;
        }
        int i7 = iHashCode10 + iHash9;
        List listC = c();
        if (listC != null) {
            Iterator it10 = listC.iterator();
            iHash10 = 0;
            while (it10.hasNext()) {
                iHash10 += ((DivVariable) it10.next()).hash();
            }
        } else {
            iHash10 = 0;
        }
        int iHashCode11 = i7 + iHash10 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash30 = iHashCode11 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it11 = listA2.iterator();
            while (it11.hasNext()) {
                iHash11 += ((DivVisibilityAction) it11.next()).hash();
            }
        }
        int iHash31 = iHash30 + iHash11 + getWidth().hash();
        this.V = Integer.valueOf(iHash31);
        return iHash31;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.N;
    }

    @Override
    public DivChangeTransition j() {
        return this.L;
    }

    @Override
    public List k() {
        return this.i;
    }

    @Override
    public DivTransform m() {
        return this.K;
    }

    @Override
    public List n() {
        return this.O;
    }

    @Override
    public Expression o() {
        return this.c;
    }

    @Override
    public Expression p() {
        return this.d;
    }

    @Override
    public DivFocus q() {
        return this.k;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivSliderJsonParser.b) ml0.a().b7().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.t;
    }

    @Override
    public List u() {
        return this.y;
    }

    @Override
    public DivLayoutProvider v() {
        return this.p;
    }

    @Override
    public List w() {
        return this.P;
    }

    @Override
    public DivVisibilityAction x() {
        return this.S;
    }

    @Override
    public List y() {
        return this.l;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.M;
    }
}
