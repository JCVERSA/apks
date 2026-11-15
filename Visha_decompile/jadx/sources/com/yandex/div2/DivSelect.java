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
import org.mozilla.javascript.ES6Iterator;

public final class DivSelect implements d65, ko4, og2 {
    public static final a U = new a(null);
    public static final Expression V;
    public static final Expression W;
    public static final Expression X;
    public static final Expression Y;
    public static final DivSize.d Z;
    public static final Expression a0;
    public static final Expression b0;
    public static final Expression c0;
    public static final Expression d0;
    public static final DivSize.c e0;
    public static final s74 f0;
    public final List A;
    public final DivEdgeInsets B;
    public final Expression C;
    public final Expression D;
    public final List E;
    public final Expression F;
    public final List G;
    public final DivTransform H;
    public final DivChangeTransition I;
    public final DivAppearanceTransition J;
    public final DivAppearanceTransition K;
    public final List L;
    public final String M;
    public final List N;
    public final List O;
    public final Expression P;
    public final DivVisibilityAction Q;
    public final List R;
    public final DivSize S;
    public Integer T;
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
    public final Expression l;
    public final Expression m;
    public final Expression n;
    public final Expression o;
    public final Expression p;
    public final Expression q;
    public final List r;
    public final DivSize s;
    public final Expression t;
    public final Expression u;
    public final String v;
    public final DivLayoutProvider w;
    public final Expression x;
    public final Expression y;
    public final DivEdgeInsets z;

    public static final class Option implements d65, ko4 {
        public static final a d = new a(null);
        public static final s74 e = new s74() {
            @Override
            public final DivSelect.Option invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivSelect.Option.d.a(hx7Var, jSONObject);
            }
        };
        public final Expression a;
        public final Expression b;
        public Integer c;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Option a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((i3) ml0.a().D6().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public Option(Expression expression, Expression expression2) {
            y45.j(expression2, ES6Iterator.VALUE_PROPERTY);
            this.a = expression;
            this.b = expression2;
        }

        public final boolean a(Option option, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (option == null) {
                return false;
            }
            Expression expression = this.a;
            String str = expression != null ? (String) expression.b(oj3Var) : null;
            Expression expression2 = option.a;
            return y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null) && y45.e(this.b.b(oj3Var), option.b.b(oj3Var2));
        }

        @Override
        public int hash() {
            Integer num = this.c;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Option.class).hashCode();
            Expression expression = this.a;
            int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + this.b.hashCode();
            this.c = Integer.valueOf(iHashCode2);
            return iHashCode2;
        }

        @Override
        public JSONObject s() {
            return ((i3) ml0.a().D6().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivSelect a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivSelectJsonParser.b) ml0.a().A6().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        V = aVar.a(Double.valueOf(1.0d));
        W = aVar.a(12L);
        X = aVar.a(DivSizeUnit.SP);
        Y = aVar.a(DivFontWeight.REGULAR);
        Z = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        a0 = aVar.a(1929379840);
        b0 = aVar.a(Double.valueOf(0.0d));
        c0 = aVar.a(-16777216);
        d0 = aVar.a(DivVisibility.VISIBLE);
        e0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        f0 = new s74() {
            @Override
            public final DivSelect invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivSelect.U.a(hx7Var, jSONObject);
            }
        };
    }

    public DivSelect(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, List list4, DivFocus divFocus, Expression expression5, Expression expression6, Expression expression7, Expression expression8, Expression expression9, Expression expression10, List list5, DivSize divSize, Expression expression11, Expression expression12, String str, DivLayoutProvider divLayoutProvider, Expression expression13, Expression expression14, DivEdgeInsets divEdgeInsets, List list6, DivEdgeInsets divEdgeInsets2, Expression expression15, Expression expression16, List list7, Expression expression17, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, String str2, List list10, List list11, Expression expression18, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression6, TtmlNode.ATTR_TTS_FONT_SIZE);
        y45.j(expression7, "fontSizeUnit");
        y45.j(expression9, TtmlNode.ATTR_TTS_FONT_WEIGHT);
        y45.j(divSize, "height");
        y45.j(expression11, "hintColor");
        y45.j(expression13, "letterSpacing");
        y45.j(list6, "options");
        y45.j(expression17, "textColor");
        y45.j(str2, "valueVariable");
        y45.j(expression18, "visibility");
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
        this.l = expression5;
        this.m = expression6;
        this.n = expression7;
        this.o = expression8;
        this.p = expression9;
        this.q = expression10;
        this.r = list5;
        this.s = divSize;
        this.t = expression11;
        this.u = expression12;
        this.v = str;
        this.w = divLayoutProvider;
        this.x = expression13;
        this.y = expression14;
        this.z = divEdgeInsets;
        this.A = list6;
        this.B = divEdgeInsets2;
        this.C = expression15;
        this.D = expression16;
        this.E = list7;
        this.F = expression17;
        this.G = list8;
        this.H = divTransform;
        this.I = divChangeTransition;
        this.J = divAppearanceTransition;
        this.K = divAppearanceTransition2;
        this.L = list9;
        this.M = str2;
        this.N = list10;
        this.O = list11;
        this.P = expression18;
        this.Q = divVisibilityAction;
        this.R = list12;
        this.S = divSize2;
    }

    public static DivSelect D(DivSelect divSelect, DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, List list4, DivFocus divFocus, Expression expression5, Expression expression6, Expression expression7, Expression expression8, Expression expression9, Expression expression10, List list5, DivSize divSize, Expression expression11, Expression expression12, String str, DivLayoutProvider divLayoutProvider, Expression expression13, Expression expression14, DivEdgeInsets divEdgeInsets, List list6, DivEdgeInsets divEdgeInsets2, Expression expression15, Expression expression16, List list7, Expression expression17, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, String str2, List list10, List list11, Expression expression18, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divSelect.r() : divAccessibility;
        Expression expressionG = (i & 2) != 0 ? divSelect.g() : expression;
        Expression expressionO = (i & 4) != 0 ? divSelect.o() : expression2;
        Expression expressionP = (i & 8) != 0 ? divSelect.p() : expression3;
        List listA = (i & 16) != 0 ? divSelect.A() : list;
        List background = (i & 32) != 0 ? divSelect.getBackground() : list2;
        DivBorder divBorderB = (i & 64) != 0 ? divSelect.B() : divBorder;
        Expression expressionB = (i & 128) != 0 ? divSelect.b() : expression4;
        List listK = (i & 256) != 0 ? divSelect.k() : list3;
        List extensions = (i & 512) != 0 ? divSelect.getExtensions() : list4;
        DivFocus divFocusQ = (i & 1024) != 0 ? divSelect.q() : divFocus;
        Expression expression19 = (i & 2048) != 0 ? divSelect.l : expression5;
        Expression expression20 = (i & 4096) != 0 ? divSelect.m : expression6;
        Expression expression21 = (i & 8192) != 0 ? divSelect.n : expression7;
        Expression expression22 = (i & 16384) != 0 ? divSelect.o : expression8;
        Expression expression23 = (i & 32768) != 0 ? divSelect.p : expression9;
        Expression expression24 = (i & 65536) != 0 ? divSelect.q : expression10;
        List listY = (i & 131072) != 0 ? divSelect.y() : list5;
        DivSize height = (i & 262144) != 0 ? divSelect.getHeight() : divSize;
        Expression expression25 = expression24;
        Expression expression26 = (i & 524288) != 0 ? divSelect.t : expression11;
        Expression expression27 = (i & 1048576) != 0 ? divSelect.u : expression12;
        String id = (i & 2097152) != 0 ? divSelect.getId() : str;
        DivLayoutProvider divLayoutProviderV = (i & 4194304) != 0 ? divSelect.v() : divLayoutProvider;
        Expression expression28 = expression27;
        Expression expression29 = (i & 8388608) != 0 ? divSelect.x : expression13;
        Expression expression30 = (i & 16777216) != 0 ? divSelect.y : expression14;
        return divSelect.C(divAccessibilityR, expressionG, expressionO, expressionP, listA, background, divBorderB, expressionB, listK, extensions, divFocusQ, expression19, expression20, expression21, expression22, expression23, expression25, listY, height, expression26, expression28, id, divLayoutProviderV, expression29, expression30, (i & 33554432) != 0 ? divSelect.d() : divEdgeInsets, (i & 67108864) != 0 ? divSelect.A : list6, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divSelect.t() : divEdgeInsets2, (i & 268435456) != 0 ? divSelect.f() : expression15, (i & 536870912) != 0 ? divSelect.e() : expression16, (i & 1073741824) != 0 ? divSelect.u() : list7, (i & Integer.MIN_VALUE) != 0 ? divSelect.F : expression17, (i2 & 1) != 0 ? divSelect.h() : list8, (i2 & 2) != 0 ? divSelect.m() : divTransform, (i2 & 4) != 0 ? divSelect.j() : divChangeTransition, (i2 & 8) != 0 ? divSelect.z() : divAppearanceTransition, (i2 & 16) != 0 ? divSelect.i() : divAppearanceTransition2, (i2 & 32) != 0 ? divSelect.n() : list9, (i2 & 64) != 0 ? divSelect.M : str2, (i2 & 128) != 0 ? divSelect.w() : list10, (i2 & 256) != 0 ? divSelect.c() : list11, (i2 & 512) != 0 ? divSelect.getVisibility() : expression18, (i2 & 1024) != 0 ? divSelect.x() : divVisibilityAction, (i2 & 2048) != 0 ? divSelect.a() : list12, (i2 & 4096) != 0 ? divSelect.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.e;
    }

    @Override
    public DivBorder B() {
        return this.g;
    }

    public final DivSelect C(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, List list4, DivFocus divFocus, Expression expression5, Expression expression6, Expression expression7, Expression expression8, Expression expression9, Expression expression10, List list5, DivSize divSize, Expression expression11, Expression expression12, String str, DivLayoutProvider divLayoutProvider, Expression expression13, Expression expression14, DivEdgeInsets divEdgeInsets, List list6, DivEdgeInsets divEdgeInsets2, Expression expression15, Expression expression16, List list7, Expression expression17, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, String str2, List list10, List list11, Expression expression18, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression6, TtmlNode.ATTR_TTS_FONT_SIZE);
        y45.j(expression7, "fontSizeUnit");
        y45.j(expression9, TtmlNode.ATTR_TTS_FONT_WEIGHT);
        y45.j(divSize, "height");
        y45.j(expression11, "hintColor");
        y45.j(expression13, "letterSpacing");
        y45.j(list6, "options");
        y45.j(expression17, "textColor");
        y45.j(str2, "valueVariable");
        y45.j(expression18, "visibility");
        y45.j(divSize2, "width");
        return new DivSelect(divAccessibility, expression, expression2, expression3, list, list2, divBorder, expression4, list3, list4, divFocus, expression5, expression6, expression7, expression8, expression9, expression10, list5, divSize, expression11, expression12, str, divLayoutProvider, expression13, expression14, divEdgeInsets, list6, divEdgeInsets2, expression15, expression16, list7, expression17, list8, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list9, str2, list10, list11, expression18, divVisibilityAction, list12, divSize2);
    }

    public final boolean E(DivSelect divSelect, oj3 oj3Var, oj3 oj3Var2) {
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
        boolean z6;
        boolean zA6;
        boolean z7;
        boolean z8;
        boolean zA7;
        boolean zA8;
        boolean zA9;
        boolean zA10;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean zG;
        boolean z12;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divSelect == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divSelect.r(), oj3Var, oj3Var2);
        } else {
            zA = divSelect.r() == null;
        }
        if (!zA) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divSelect.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divSelect.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divSelect.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divSelect.A();
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
            z = divSelect.A() == null;
        }
        if (!z) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divSelect.getBackground();
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
            z2 = divSelect.getBackground() == null;
        }
        if (!z2) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA2 = divBorderB.a(divSelect.B(), oj3Var, oj3Var2);
        } else {
            zA2 = divSelect.B() == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divSelect.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divSelect.k();
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
            z3 = divSelect.k() == null;
        }
        if (!z3) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divSelect.getExtensions();
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
            z4 = divSelect.getExtensions() == null;
        }
        if (!z4) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA3 = divFocusQ.a(divSelect.q(), oj3Var, oj3Var2);
        } else {
            zA3 = divSelect.q() == null;
        }
        if (!zA3) {
            return false;
        }
        Expression expression = this.l;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        Expression expression2 = divSelect.l;
        if (!y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null) || ((Number) this.m.b(oj3Var)).longValue() != ((Number) divSelect.m.b(oj3Var2)).longValue() || this.n.b(oj3Var) != divSelect.n.b(oj3Var2)) {
            return false;
        }
        Expression expression3 = this.o;
        JSONObject jSONObject = expression3 != null ? (JSONObject) expression3.b(oj3Var) : null;
        Expression expression4 = divSelect.o;
        if (!y45.e(jSONObject, expression4 != null ? (JSONObject) expression4.b(oj3Var2) : null) || this.p.b(oj3Var) != divSelect.p.b(oj3Var2)) {
            return false;
        }
        Expression expression5 = this.q;
        Long l2 = expression5 != null ? (Long) expression5.b(oj3Var) : null;
        Expression expression6 = divSelect.q;
        if (!y45.e(l2, expression6 != null ? (Long) expression6.b(oj3Var2) : null)) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divSelect.y();
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
            z5 = divSelect.y() == null;
        }
        if (!z5 || !getHeight().a(divSelect.getHeight(), oj3Var, oj3Var2) || ((Number) this.t.b(oj3Var)).intValue() != ((Number) divSelect.t.b(oj3Var2)).intValue()) {
            return false;
        }
        Expression expression7 = this.u;
        String str2 = expression7 != null ? (String) expression7.b(oj3Var) : null;
        Expression expression8 = divSelect.u;
        if (!y45.e(str2, expression8 != null ? (String) expression8.b(oj3Var2) : null) || !y45.e(getId(), divSelect.getId())) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA4 = divLayoutProviderV.a(divSelect.v(), oj3Var, oj3Var2);
        } else {
            zA4 = divSelect.v() == null;
        }
        if (!zA4) {
            return false;
        }
        if (!(((Number) this.x.b(oj3Var)).doubleValue() == ((Number) divSelect.x.b(oj3Var2)).doubleValue())) {
            return false;
        }
        Expression expression9 = this.y;
        Long l3 = expression9 != null ? (Long) expression9.b(oj3Var) : null;
        Expression expression10 = divSelect.y;
        if (!y45.e(l3, expression10 != null ? (Long) expression10.b(oj3Var2) : null)) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA5 = divEdgeInsetsD.a(divSelect.d(), oj3Var, oj3Var2);
        } else {
            zA5 = divSelect.d() == null;
        }
        if (!zA5) {
            return false;
        }
        List list = this.A;
        List list2 = divSelect.A;
        if (list.size() == list2.size()) {
            Iterator it6 = list.iterator();
            int i11 = 0;
            while (true) {
                if (!it6.hasNext()) {
                    z6 = true;
                    break;
                }
                Object next6 = it6.next();
                int i12 = i11 + 1;
                if (i11 < 0) {
                    y71.u();
                }
                if (!((Option) next6).a((Option) list2.get(i11), oj3Var, oj3Var2)) {
                    z6 = false;
                    break;
                }
                i11 = i12;
            }
        } else {
            z6 = false;
            break;
        }
        if (!z6) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA6 = divEdgeInsetsT.a(divSelect.t(), oj3Var, oj3Var2);
        } else {
            zA6 = divSelect.t() == null;
        }
        if (!zA6) {
            return false;
        }
        Expression expressionF = f();
        String str3 = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divSelect.f();
        if (!y45.e(str3, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l4 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divSelect.e();
        if (!y45.e(l4, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divSelect.u();
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
            z7 = divSelect.u() == null;
        }
        if (!z7 || ((Number) this.F.b(oj3Var)).intValue() != ((Number) divSelect.F.b(oj3Var2)).intValue()) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divSelect.h();
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
            z8 = divSelect.h() == null;
        }
        if (!z8) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA7 = divTransformM.a(divSelect.m(), oj3Var, oj3Var2);
        } else {
            zA7 = divSelect.m() == null;
        }
        if (!zA7) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA8 = divChangeTransitionJ.a(divSelect.j(), oj3Var, oj3Var2);
        } else {
            zA8 = divSelect.j() == null;
        }
        if (!zA8) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA9 = divAppearanceTransitionZ.a(divSelect.z(), oj3Var, oj3Var2);
        } else {
            zA9 = divSelect.z() == null;
        }
        if (!zA9) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA10 = divAppearanceTransitionI.a(divSelect.i(), oj3Var, oj3Var2);
        } else {
            zA10 = divSelect.i() == null;
        }
        if (!zA10) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divSelect.n();
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
            z9 = divSelect.n() == null;
        }
        if (!z9 || !y45.e(this.M, divSelect.M)) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divSelect.w();
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
            z10 = divSelect.w() == null;
        }
        if (!z10) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divSelect.c();
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
            z11 = divSelect.c() == null;
        }
        if (!z11 || getVisibility().b(oj3Var) != divSelect.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divSelect.x(), oj3Var, oj3Var2);
        } else {
            zG = divSelect.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divSelect.a();
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
            z12 = divSelect.a() == null;
        }
        return z12 && getWidth().a(divSelect.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.R;
    }

    @Override
    public Expression b() {
        return this.h;
    }

    @Override
    public List c() {
        return this.O;
    }

    @Override
    public DivEdgeInsets d() {
        return this.z;
    }

    @Override
    public Expression e() {
        return this.D;
    }

    @Override
    public Expression f() {
        return this.C;
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
        return this.s;
    }

    @Override
    public String getId() {
        return this.v;
    }

    @Override
    public Expression getVisibility() {
        return this.P;
    }

    @Override
    public DivSize getWidth() {
        return this.S;
    }

    @Override
    public List h() {
        return this.G;
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
        Integer num = this.T;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivSelect.class).hashCode();
        DivAccessibility divAccessibilityR = r();
        int iHash10 = 0;
        int iHash11 = iHashCode + (divAccessibilityR != null ? divAccessibilityR.hash() : 0);
        Expression expressionG = g();
        int iHashCode2 = iHash11 + (expressionG != null ? expressionG.hashCode() : 0);
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
        int iHash12 = i2 + (divBorderB != null ? divBorderB.hash() : 0);
        Expression expressionB = b();
        int iHashCode4 = iHash12 + (expressionB != null ? expressionB.hashCode() : 0);
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
        int iHash13 = i4 + (divFocusQ != null ? divFocusQ.hash() : 0);
        Expression expression = this.l;
        int iHashCode5 = iHash13 + (expression != null ? expression.hashCode() : 0) + this.m.hashCode() + this.n.hashCode();
        Expression expression2 = this.o;
        int iHashCode6 = iHashCode5 + (expression2 != null ? expression2.hashCode() : 0) + this.p.hashCode();
        Expression expression3 = this.q;
        int iHashCode7 = iHashCode6 + (expression3 != null ? expression3.hashCode() : 0);
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
        int iHash14 = iHashCode7 + iHash5 + getHeight().hash() + this.t.hashCode();
        Expression expression4 = this.u;
        int iHashCode8 = iHash14 + (expression4 != null ? expression4.hashCode() : 0);
        String id = getId();
        int iHashCode9 = iHashCode8 + (id != null ? id.hashCode() : 0);
        DivLayoutProvider divLayoutProviderV = v();
        int iHash15 = iHashCode9 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0) + this.x.hashCode();
        Expression expression5 = this.y;
        int iHashCode10 = iHash15 + (expression5 != null ? expression5.hashCode() : 0);
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash16 = iHashCode10 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0);
        Iterator it6 = this.A.iterator();
        int iHash17 = 0;
        while (it6.hasNext()) {
            iHash17 += ((Option) it6.next()).hash();
        }
        int i5 = iHash16 + iHash17;
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash18 = i5 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        Expression expressionF = f();
        int iHashCode11 = iHash18 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode12 = iHashCode11 + (expressionE != null ? expressionE.hashCode() : 0);
        List listU = u();
        if (listU != null) {
            Iterator it7 = listU.iterator();
            iHash6 = 0;
            while (it7.hasNext()) {
                iHash6 += ((DivAction) it7.next()).hash();
            }
        } else {
            iHash6 = 0;
        }
        int iHashCode13 = iHashCode12 + iHash6 + this.F.hashCode();
        List listH = h();
        if (listH != null) {
            Iterator it8 = listH.iterator();
            iHash7 = 0;
            while (it8.hasNext()) {
                iHash7 += ((DivTooltip) it8.next()).hash();
            }
        } else {
            iHash7 = 0;
        }
        int i6 = iHashCode13 + iHash7;
        DivTransform divTransformM = m();
        int iHash19 = i6 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash20 = iHash19 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash21 = iHash20 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash22 = iHash21 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode14 = iHash22 + (listN != null ? listN.hashCode() : 0) + this.M.hashCode();
        List listW = w();
        if (listW != null) {
            Iterator it9 = listW.iterator();
            iHash8 = 0;
            while (it9.hasNext()) {
                iHash8 += ((DivTrigger) it9.next()).hash();
            }
        } else {
            iHash8 = 0;
        }
        int i7 = iHashCode14 + iHash8;
        List listC = c();
        if (listC != null) {
            Iterator it10 = listC.iterator();
            iHash9 = 0;
            while (it10.hasNext()) {
                iHash9 += ((DivVariable) it10.next()).hash();
            }
        } else {
            iHash9 = 0;
        }
        int iHashCode15 = i7 + iHash9 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash23 = iHashCode15 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it11 = listA2.iterator();
            while (it11.hasNext()) {
                iHash10 += ((DivVisibilityAction) it11.next()).hash();
            }
        }
        int iHash24 = iHash23 + iHash10 + getWidth().hash();
        this.T = Integer.valueOf(iHash24);
        return iHash24;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.K;
    }

    @Override
    public DivChangeTransition j() {
        return this.I;
    }

    @Override
    public List k() {
        return this.i;
    }

    @Override
    public DivTransform m() {
        return this.H;
    }

    @Override
    public List n() {
        return this.L;
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
        return ((DivSelectJsonParser.b) ml0.a().A6().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.B;
    }

    @Override
    public List u() {
        return this.E;
    }

    @Override
    public DivLayoutProvider v() {
        return this.w;
    }

    @Override
    public List w() {
        return this.N;
    }

    @Override
    public DivVisibilityAction x() {
        return this.Q;
    }

    @Override
    public List y() {
        return this.r;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.J;
    }
}
