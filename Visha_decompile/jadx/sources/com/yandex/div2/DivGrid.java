package com.yandex.div2;

import androidx.media3.common.C;
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

public final class DivGrid implements d65, ko4, og2 {
    public static final a W = new a(null);
    public static final DivAnimation X;
    public static final Expression Y;
    public static final Expression Z;
    public static final Expression a0;
    public static final Expression b0;
    public static final DivSize.d c0;
    public static final Expression d0;
    public static final DivSize.c e0;
    public static final s74 f0;
    public final List A;
    public final DivEdgeInsets B;
    public final DivEdgeInsets C;
    public final List D;
    public final List E;
    public final Expression F;
    public final Expression G;
    public final List H;
    public final List I;
    public final DivTransform J;
    public final DivChangeTransition K;
    public final DivAppearanceTransition L;
    public final DivAppearanceTransition M;
    public final List N;
    public final List O;
    public final List P;
    public final Expression Q;
    public final DivVisibilityAction R;
    public final List S;
    public final DivSize T;
    public Integer U;
    public Integer V;
    public final DivAccessibility a;
    public final DivAction b;
    public final DivAnimation c;
    public final List d;
    public final Expression e;
    public final Expression f;
    public final Expression g;
    public final List h;
    public final List i;
    public final DivBorder j;
    public final Expression k;
    public final Expression l;
    public final Expression m;
    public final Expression n;
    public final Expression o;
    public final List p;
    public final List q;
    public final List r;
    public final DivFocus s;
    public final List t;
    public final DivSize u;
    public final List v;
    public final List w;
    public final String x;
    public final List y;
    public final DivLayoutProvider z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivGrid a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivGridJsonParser.b) ml0.a().O3().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        Expression expressionA = aVar.a(100L);
        Expression expressionA2 = aVar.a(Double.valueOf(0.6d));
        Expression expressionA3 = aVar.a(DivAnimation.Name.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        X = new DivAnimation(expressionA, expressionA2, null, null, expressionA3, null, null, aVar.a(dValueOf), 108, null);
        Y = aVar.a(dValueOf);
        Z = aVar.a(Boolean.TRUE);
        a0 = aVar.a(DivAlignmentHorizontal.START);
        b0 = aVar.a(DivAlignmentVertical.TOP);
        c0 = new DivSize.d(new DivWrapContentSize(null, null, null == true ? 1 : 0, 7, null));
        d0 = aVar.a(DivVisibility.VISIBLE);
        e0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        f0 = new s74() {
            @Override
            public final DivGrid invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivGrid.W.a(hx7Var, jSONObject);
            }
        };
    }

    public DivGrid(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, List list4, List list5, List list6, DivFocus divFocus, List list7, DivSize divSize, List list8, List list9, String str, List list10, DivLayoutProvider divLayoutProvider, List list11, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, List list12, List list13, Expression expression9, Expression expression10, List list14, List list15, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list16, List list17, List list18, Expression expression11, DivVisibilityAction divVisibilityAction, List list19, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression4, "captureFocusOnAction");
        y45.j(expression5, "columnCount");
        y45.j(expression7, "contentAlignmentHorizontal");
        y45.j(expression8, "contentAlignmentVertical");
        y45.j(divSize, "height");
        y45.j(expression11, "visibility");
        y45.j(divSize2, "width");
        this.a = divAccessibility;
        this.b = divAction;
        this.c = divAnimation;
        this.d = list;
        this.e = expression;
        this.f = expression2;
        this.g = expression3;
        this.h = list2;
        this.i = list3;
        this.j = divBorder;
        this.k = expression4;
        this.l = expression5;
        this.m = expression6;
        this.n = expression7;
        this.o = expression8;
        this.p = list4;
        this.q = list5;
        this.r = list6;
        this.s = divFocus;
        this.t = list7;
        this.u = divSize;
        this.v = list8;
        this.w = list9;
        this.x = str;
        this.y = list10;
        this.z = divLayoutProvider;
        this.A = list11;
        this.B = divEdgeInsets;
        this.C = divEdgeInsets2;
        this.D = list12;
        this.E = list13;
        this.F = expression9;
        this.G = expression10;
        this.H = list14;
        this.I = list15;
        this.J = divTransform;
        this.K = divChangeTransition;
        this.L = divAppearanceTransition;
        this.M = divAppearanceTransition2;
        this.N = list16;
        this.O = list17;
        this.P = list18;
        this.Q = expression11;
        this.R = divVisibilityAction;
        this.S = list19;
        this.T = divSize2;
    }

    public static DivGrid D(DivGrid divGrid, DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, List list4, List list5, List list6, DivFocus divFocus, List list7, DivSize divSize, List list8, List list9, String str, List list10, DivLayoutProvider divLayoutProvider, List list11, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, List list12, List list13, Expression expression9, Expression expression10, List list14, List list15, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list16, List list17, List list18, Expression expression11, DivVisibilityAction divVisibilityAction, List list19, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divGrid.r() : divAccessibility;
        DivAction divAction2 = (i & 2) != 0 ? divGrid.b : divAction;
        DivAnimation divAnimation2 = (i & 4) != 0 ? divGrid.c : divAnimation;
        List list20 = (i & 8) != 0 ? divGrid.d : list;
        Expression expressionG = (i & 16) != 0 ? divGrid.g() : expression;
        Expression expressionO = (i & 32) != 0 ? divGrid.o() : expression2;
        Expression expressionP = (i & 64) != 0 ? divGrid.p() : expression3;
        List listA = (i & 128) != 0 ? divGrid.A() : list2;
        List background = (i & 256) != 0 ? divGrid.getBackground() : list3;
        DivBorder divBorderB = (i & 512) != 0 ? divGrid.B() : divBorder;
        Expression expression12 = (i & 1024) != 0 ? divGrid.k : expression4;
        Expression expression13 = (i & 2048) != 0 ? divGrid.l : expression5;
        Expression expressionB = (i & 4096) != 0 ? divGrid.b() : expression6;
        Expression expression14 = (i & 8192) != 0 ? divGrid.n : expression7;
        Expression expression15 = (i & 16384) != 0 ? divGrid.o : expression8;
        List listK = (i & 32768) != 0 ? divGrid.k() : list4;
        Expression expression16 = expression15;
        List list21 = (i & 65536) != 0 ? divGrid.q : list5;
        List extensions = (i & 131072) != 0 ? divGrid.getExtensions() : list6;
        DivFocus divFocusQ = (i & 262144) != 0 ? divGrid.q() : divFocus;
        List listY = (i & 524288) != 0 ? divGrid.y() : list7;
        DivSize height = (i & 1048576) != 0 ? divGrid.getHeight() : divSize;
        List list22 = list21;
        List list23 = (i & 2097152) != 0 ? divGrid.v : list8;
        List list24 = (i & 4194304) != 0 ? divGrid.w : list9;
        String id = (i & 8388608) != 0 ? divGrid.getId() : str;
        List list25 = list24;
        List list26 = (i & 16777216) != 0 ? divGrid.y : list10;
        return divGrid.C(divAccessibilityR, divAction2, divAnimation2, list20, expressionG, expressionO, expressionP, listA, background, divBorderB, expression12, expression13, expressionB, expression14, expression16, listK, list22, extensions, divFocusQ, listY, height, list23, list25, id, list26, (i & 33554432) != 0 ? divGrid.v() : divLayoutProvider, (i & 67108864) != 0 ? divGrid.A : list11, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divGrid.d() : divEdgeInsets, (i & 268435456) != 0 ? divGrid.t() : divEdgeInsets2, (i & 536870912) != 0 ? divGrid.D : list12, (i & 1073741824) != 0 ? divGrid.E : list13, (i & Integer.MIN_VALUE) != 0 ? divGrid.f() : expression9, (i2 & 1) != 0 ? divGrid.e() : expression10, (i2 & 2) != 0 ? divGrid.u() : list14, (i2 & 4) != 0 ? divGrid.h() : list15, (i2 & 8) != 0 ? divGrid.m() : divTransform, (i2 & 16) != 0 ? divGrid.j() : divChangeTransition, (i2 & 32) != 0 ? divGrid.z() : divAppearanceTransition, (i2 & 64) != 0 ? divGrid.i() : divAppearanceTransition2, (i2 & 128) != 0 ? divGrid.n() : list16, (i2 & 256) != 0 ? divGrid.w() : list17, (i2 & 512) != 0 ? divGrid.c() : list18, (i2 & 1024) != 0 ? divGrid.getVisibility() : expression11, (i2 & 2048) != 0 ? divGrid.x() : divVisibilityAction, (i2 & 4096) != 0 ? divGrid.a() : list19, (i2 & 8192) != 0 ? divGrid.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.h;
    }

    @Override
    public DivBorder B() {
        return this.j;
    }

    public final DivGrid C(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, List list4, List list5, List list6, DivFocus divFocus, List list7, DivSize divSize, List list8, List list9, String str, List list10, DivLayoutProvider divLayoutProvider, List list11, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, List list12, List list13, Expression expression9, Expression expression10, List list14, List list15, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list16, List list17, List list18, Expression expression11, DivVisibilityAction divVisibilityAction, List list19, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression4, "captureFocusOnAction");
        y45.j(expression5, "columnCount");
        y45.j(expression7, "contentAlignmentHorizontal");
        y45.j(expression8, "contentAlignmentVertical");
        y45.j(divSize, "height");
        y45.j(expression11, "visibility");
        y45.j(divSize2, "width");
        return new DivGrid(divAccessibility, divAction, divAnimation, list, expression, expression2, expression3, list2, list3, divBorder, expression4, expression5, expression6, expression7, expression8, list4, list5, list6, divFocus, list7, divSize, list8, list9, str, list10, divLayoutProvider, list11, divEdgeInsets, divEdgeInsets2, list12, list13, expression9, expression10, list14, list15, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list16, list17, list18, expression11, divVisibilityAction, list19, divSize2);
    }

    public final boolean E(DivGrid divGrid, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean zA3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean zA4;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean zA5;
        boolean z11;
        boolean zA6;
        boolean zA7;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean zA8;
        boolean zA9;
        boolean zA10;
        boolean zA11;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean zG;
        boolean z19;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divGrid == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divGrid.r(), oj3Var, oj3Var2);
        } else {
            zA = divGrid.r() == null;
        }
        if (!zA) {
            return false;
        }
        DivAction divAction = this.b;
        if (divAction != null) {
            zA2 = divAction.a(divGrid.b, oj3Var, oj3Var2);
        } else {
            zA2 = divGrid.b == null;
        }
        if (!zA2 || !this.c.a(divGrid.c, oj3Var, oj3Var2)) {
            return false;
        }
        List list = this.d;
        if (list != null) {
            List list2 = divGrid.d;
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
            z = divGrid.d == null;
        }
        if (!z) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divGrid.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divGrid.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divGrid.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divGrid.A();
            if (listA2 == null) {
                return false;
            }
            if (listA.size() == listA2.size()) {
                Iterator it2 = listA.iterator();
                int i3 = 0;
                while (true) {
                    if (it2.hasNext()) {
                        Object next2 = it2.next();
                        int i4 = i3 + 1;
                        if (i3 < 0) {
                            y71.u();
                        }
                        if (((DivAnimator) next2).a((DivAnimator) listA2.get(i3), oj3Var, oj3Var2)) {
                            i3 = i4;
                        }
                    }
                }
            }
        } else {
            z2 = divGrid.A() == null;
        }
        if (!z2) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divGrid.getBackground();
            if (background2 == null) {
                return false;
            }
            if (background.size() == background2.size()) {
                Iterator it3 = background.iterator();
                int i5 = 0;
                while (true) {
                    if (it3.hasNext()) {
                        Object next3 = it3.next();
                        int i6 = i5 + 1;
                        if (i5 < 0) {
                            y71.u();
                        }
                        if (((DivBackground) next3).a((DivBackground) background2.get(i5), oj3Var, oj3Var2)) {
                            i5 = i6;
                        }
                    }
                }
            }
        } else {
            z3 = divGrid.getBackground() == null;
        }
        if (!z3) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA3 = divBorderB.a(divGrid.B(), oj3Var, oj3Var2);
        } else {
            zA3 = divGrid.B() == null;
        }
        if (!zA3 || ((Boolean) this.k.b(oj3Var)).booleanValue() != ((Boolean) divGrid.k.b(oj3Var2)).booleanValue() || ((Number) this.l.b(oj3Var)).longValue() != ((Number) divGrid.l.b(oj3Var2)).longValue()) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divGrid.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null) || this.n.b(oj3Var) != divGrid.n.b(oj3Var2) || this.o.b(oj3Var) != divGrid.o.b(oj3Var2)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divGrid.k();
            if (listK2 == null) {
                return false;
            }
            if (listK.size() == listK2.size()) {
                Iterator it4 = listK.iterator();
                int i7 = 0;
                while (true) {
                    if (it4.hasNext()) {
                        Object next4 = it4.next();
                        int i8 = i7 + 1;
                        if (i7 < 0) {
                            y71.u();
                        }
                        if (((DivDisappearAction) next4).g((DivDisappearAction) listK2.get(i7), oj3Var, oj3Var2)) {
                            i7 = i8;
                        }
                    }
                }
            }
        } else {
            z4 = divGrid.k() == null;
        }
        if (!z4) {
            return false;
        }
        List list3 = this.q;
        if (list3 != null) {
            List list4 = divGrid.q;
            if (list4 == null) {
                return false;
            }
            if (list3.size() == list4.size()) {
                Iterator it5 = list3.iterator();
                int i9 = 0;
                while (true) {
                    if (it5.hasNext()) {
                        Object next5 = it5.next();
                        int i10 = i9 + 1;
                        if (i9 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next5).a((DivAction) list4.get(i9), oj3Var, oj3Var2)) {
                            i9 = i10;
                        }
                    }
                }
            }
        } else {
            z5 = divGrid.q == null;
        }
        if (!z5) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divGrid.getExtensions();
            if (extensions2 == null) {
                return false;
            }
            if (extensions.size() == extensions2.size()) {
                Iterator it6 = extensions.iterator();
                int i11 = 0;
                while (true) {
                    if (it6.hasNext()) {
                        Object next6 = it6.next();
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            y71.u();
                        }
                        if (((DivExtension) next6).a((DivExtension) extensions2.get(i11), oj3Var, oj3Var2)) {
                            i11 = i12;
                        }
                    }
                }
            }
        } else {
            z6 = divGrid.getExtensions() == null;
        }
        if (!z6) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA4 = divFocusQ.a(divGrid.q(), oj3Var, oj3Var2);
        } else {
            zA4 = divGrid.q() == null;
        }
        if (!zA4) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divGrid.y();
            if (listY2 == null) {
                return false;
            }
            if (listY.size() == listY2.size()) {
                Iterator it7 = listY.iterator();
                int i13 = 0;
                while (true) {
                    if (it7.hasNext()) {
                        Object next7 = it7.next();
                        int i14 = i13 + 1;
                        if (i13 < 0) {
                            y71.u();
                        }
                        if (((DivFunction) next7).a((DivFunction) listY2.get(i13), oj3Var, oj3Var2)) {
                            i13 = i14;
                        }
                    }
                }
            }
        } else {
            z7 = divGrid.y() == null;
        }
        if (!z7 || !getHeight().a(divGrid.getHeight(), oj3Var, oj3Var2)) {
            return false;
        }
        List list5 = this.v;
        if (list5 != null) {
            List list6 = divGrid.v;
            if (list6 == null) {
                return false;
            }
            if (list5.size() == list6.size()) {
                Iterator it8 = list5.iterator();
                int i15 = 0;
                while (true) {
                    if (it8.hasNext()) {
                        Object next8 = it8.next();
                        int i16 = i15 + 1;
                        if (i15 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next8).a((DivAction) list6.get(i15), oj3Var, oj3Var2)) {
                            i15 = i16;
                        }
                    }
                }
            }
        } else {
            z8 = divGrid.v == null;
        }
        if (!z8) {
            return false;
        }
        List list7 = this.w;
        if (list7 != null) {
            List list8 = divGrid.w;
            if (list8 == null) {
                return false;
            }
            if (list7.size() == list8.size()) {
                Iterator it9 = list7.iterator();
                int i17 = 0;
                while (true) {
                    if (it9.hasNext()) {
                        Object next9 = it9.next();
                        int i18 = i17 + 1;
                        if (i17 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next9).a((DivAction) list8.get(i17), oj3Var, oj3Var2)) {
                            i17 = i18;
                        }
                    }
                }
            }
        } else {
            z9 = divGrid.w == null;
        }
        if (!z9 || !y45.e(getId(), divGrid.getId())) {
            return false;
        }
        List list9 = this.y;
        if (list9 != null) {
            List list10 = divGrid.y;
            if (list10 == null) {
                return false;
            }
            if (list9.size() == list10.size()) {
                Iterator it10 = list9.iterator();
                int i19 = 0;
                while (true) {
                    if (it10.hasNext()) {
                        Object next10 = it10.next();
                        int i20 = i19 + 1;
                        if (i19 < 0) {
                            y71.u();
                        }
                        if (((Div) next10).a((Div) list10.get(i19), oj3Var, oj3Var2)) {
                            i19 = i20;
                        }
                    }
                }
            }
        } else {
            z10 = divGrid.y == null;
        }
        if (!z10) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA5 = divLayoutProviderV.a(divGrid.v(), oj3Var, oj3Var2);
        } else {
            zA5 = divGrid.v() == null;
        }
        if (!zA5) {
            return false;
        }
        List list11 = this.A;
        if (list11 != null) {
            List list12 = divGrid.A;
            if (list12 == null) {
                return false;
            }
            if (list11.size() == list12.size()) {
                Iterator it11 = list11.iterator();
                int i21 = 0;
                while (true) {
                    if (it11.hasNext()) {
                        Object next11 = it11.next();
                        int i22 = i21 + 1;
                        if (i21 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next11).a((DivAction) list12.get(i21), oj3Var, oj3Var2)) {
                            i21 = i22;
                        }
                    }
                }
            }
        } else {
            z11 = divGrid.A == null;
        }
        if (!z11) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA6 = divEdgeInsetsD.a(divGrid.d(), oj3Var, oj3Var2);
        } else {
            zA6 = divGrid.d() == null;
        }
        if (!zA6) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA7 = divEdgeInsetsT.a(divGrid.t(), oj3Var, oj3Var2);
        } else {
            zA7 = divGrid.t() == null;
        }
        if (!zA7) {
            return false;
        }
        List list13 = this.D;
        if (list13 != null) {
            List list14 = divGrid.D;
            if (list14 == null) {
                return false;
            }
            if (list13.size() == list14.size()) {
                Iterator it12 = list13.iterator();
                int i23 = 0;
                while (true) {
                    if (it12.hasNext()) {
                        Object next12 = it12.next();
                        int i24 = i23 + 1;
                        if (i23 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next12).a((DivAction) list14.get(i23), oj3Var, oj3Var2)) {
                            i23 = i24;
                        }
                    }
                }
            }
        } else {
            z12 = divGrid.D == null;
        }
        if (!z12) {
            return false;
        }
        List list15 = this.E;
        if (list15 != null) {
            List list16 = divGrid.E;
            if (list16 == null) {
                return false;
            }
            if (list15.size() == list16.size()) {
                Iterator it13 = list15.iterator();
                int i25 = 0;
                while (true) {
                    if (it13.hasNext()) {
                        Object next13 = it13.next();
                        int i26 = i25 + 1;
                        if (i25 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next13).a((DivAction) list16.get(i25), oj3Var, oj3Var2)) {
                            i25 = i26;
                        }
                    }
                }
            }
        } else {
            z13 = divGrid.E == null;
        }
        if (!z13) {
            return false;
        }
        Expression expressionF = f();
        String str = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divGrid.f();
        if (!y45.e(str, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divGrid.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divGrid.u();
            if (listU2 == null) {
                return false;
            }
            if (listU.size() == listU2.size()) {
                Iterator it14 = listU.iterator();
                int i27 = 0;
                while (true) {
                    if (it14.hasNext()) {
                        Object next14 = it14.next();
                        int i28 = i27 + 1;
                        if (i27 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next14).a((DivAction) listU2.get(i27), oj3Var, oj3Var2)) {
                            i27 = i28;
                        }
                    }
                }
            }
        } else {
            z14 = divGrid.u() == null;
        }
        if (!z14) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divGrid.h();
            if (listH2 == null) {
                return false;
            }
            if (listH.size() == listH2.size()) {
                Iterator it15 = listH.iterator();
                int i29 = 0;
                while (true) {
                    if (it15.hasNext()) {
                        Object next15 = it15.next();
                        int i30 = i29 + 1;
                        if (i29 < 0) {
                            y71.u();
                        }
                        if (((DivTooltip) next15).a((DivTooltip) listH2.get(i29), oj3Var, oj3Var2)) {
                            i29 = i30;
                        }
                    }
                }
            }
        } else {
            z15 = divGrid.h() == null;
        }
        if (!z15) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA8 = divTransformM.a(divGrid.m(), oj3Var, oj3Var2);
        } else {
            zA8 = divGrid.m() == null;
        }
        if (!zA8) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA9 = divChangeTransitionJ.a(divGrid.j(), oj3Var, oj3Var2);
        } else {
            zA9 = divGrid.j() == null;
        }
        if (!zA9) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA10 = divAppearanceTransitionZ.a(divGrid.z(), oj3Var, oj3Var2);
        } else {
            zA10 = divGrid.z() == null;
        }
        if (!zA10) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA11 = divAppearanceTransitionI.a(divGrid.i(), oj3Var, oj3Var2);
        } else {
            zA11 = divGrid.i() == null;
        }
        if (!zA11) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divGrid.n();
            if (listN2 == null) {
                return false;
            }
            if (listN.size() == listN2.size()) {
                Iterator it16 = listN.iterator();
                int i31 = 0;
                while (true) {
                    if (it16.hasNext()) {
                        Object next16 = it16.next();
                        int i32 = i31 + 1;
                        if (i31 < 0) {
                            y71.u();
                        }
                        if (((DivTransitionTrigger) next16) == ((DivTransitionTrigger) listN2.get(i31))) {
                            i31 = i32;
                        }
                    }
                }
            }
        } else {
            z16 = divGrid.n() == null;
        }
        if (!z16) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divGrid.w();
            if (listW2 == null) {
                return false;
            }
            if (listW.size() == listW2.size()) {
                Iterator it17 = listW.iterator();
                int i33 = 0;
                while (true) {
                    if (it17.hasNext()) {
                        Object next17 = it17.next();
                        int i34 = i33 + 1;
                        if (i33 < 0) {
                            y71.u();
                        }
                        if (((DivTrigger) next17).a((DivTrigger) listW2.get(i33), oj3Var, oj3Var2)) {
                            i33 = i34;
                        }
                    }
                }
            }
        } else {
            z17 = divGrid.w() == null;
        }
        if (!z17) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divGrid.c();
            if (listC2 == null) {
                return false;
            }
            if (listC.size() == listC2.size()) {
                Iterator it18 = listC.iterator();
                int i35 = 0;
                while (true) {
                    if (it18.hasNext()) {
                        Object next18 = it18.next();
                        int i36 = i35 + 1;
                        if (i35 < 0) {
                            y71.u();
                        }
                        if (((DivVariable) next18).a((DivVariable) listC2.get(i35), oj3Var, oj3Var2)) {
                            i35 = i36;
                        }
                    }
                }
            }
        } else {
            z18 = divGrid.c() == null;
        }
        if (!z18 || getVisibility().b(oj3Var) != divGrid.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divGrid.x(), oj3Var, oj3Var2);
        } else {
            zG = divGrid.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divGrid.a();
            if (listA4 == null) {
                return false;
            }
            if (listA3.size() == listA4.size()) {
                Iterator it19 = listA3.iterator();
                int i37 = 0;
                while (true) {
                    if (it19.hasNext()) {
                        Object next19 = it19.next();
                        int i38 = i37 + 1;
                        if (i37 < 0) {
                            y71.u();
                        }
                        if (((DivVisibilityAction) next19).g((DivVisibilityAction) listA4.get(i37), oj3Var, oj3Var2)) {
                            i37 = i38;
                        }
                    }
                }
            }
        } else {
            z19 = divGrid.a() == null;
        }
        return z19 && getWidth().a(divGrid.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.S;
    }

    @Override
    public Expression b() {
        return this.m;
    }

    @Override
    public List c() {
        return this.P;
    }

    @Override
    public DivEdgeInsets d() {
        return this.B;
    }

    @Override
    public Expression e() {
        return this.G;
    }

    @Override
    public Expression f() {
        return this.F;
    }

    @Override
    public Expression g() {
        return this.e;
    }

    @Override
    public List getBackground() {
        return this.i;
    }

    @Override
    public List getExtensions() {
        return this.r;
    }

    @Override
    public DivSize getHeight() {
        return this.u;
    }

    @Override
    public String getId() {
        return this.x;
    }

    @Override
    public Expression getVisibility() {
        return this.Q;
    }

    @Override
    public DivSize getWidth() {
        return this.T;
    }

    @Override
    public List h() {
        return this.I;
    }

    @Override
    public int hash() {
        Integer num = this.V;
        if (num != null) {
            return num.intValue();
        }
        int iL = l();
        List list = this.y;
        int iHash = 0;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iHash += ((Div) it.next()).hash();
            }
        }
        int i = iL + iHash;
        this.V = Integer.valueOf(i);
        return i;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.M;
    }

    @Override
    public DivChangeTransition j() {
        return this.K;
    }

    @Override
    public List k() {
        return this.p;
    }

    @Override
    public int l() {
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
        int iHash11;
        int iHash12;
        int iHash13;
        int iHash14;
        int iHash15;
        int iHash16;
        Integer num = this.U;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivGrid.class).hashCode();
        DivAccessibility divAccessibilityR = r();
        int iHash17 = 0;
        int iHash18 = iHashCode + (divAccessibilityR != null ? divAccessibilityR.hash() : 0);
        DivAction divAction = this.b;
        int iHash19 = iHash18 + (divAction != null ? divAction.hash() : 0) + this.c.hash();
        List list = this.d;
        if (list != null) {
            Iterator it = list.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivAction) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i = iHash19 + iHash;
        Expression expressionG = g();
        int iHashCode2 = i + (expressionG != null ? expressionG.hashCode() : 0);
        Expression expressionO = o();
        int iHashCode3 = iHashCode2 + (expressionO != null ? expressionO.hashCode() : 0) + p().hashCode();
        List listA = A();
        if (listA != null) {
            Iterator it2 = listA.iterator();
            iHash2 = 0;
            while (it2.hasNext()) {
                iHash2 += ((DivAnimator) it2.next()).hash();
            }
        } else {
            iHash2 = 0;
        }
        int i2 = iHashCode3 + iHash2;
        List background = getBackground();
        if (background != null) {
            Iterator it3 = background.iterator();
            iHash3 = 0;
            while (it3.hasNext()) {
                iHash3 += ((DivBackground) it3.next()).hash();
            }
        } else {
            iHash3 = 0;
        }
        int i3 = i2 + iHash3;
        DivBorder divBorderB = B();
        int iHash20 = i3 + (divBorderB != null ? divBorderB.hash() : 0) + this.k.hashCode() + this.l.hashCode();
        Expression expressionB = b();
        int iHashCode4 = iHash20 + (expressionB != null ? expressionB.hashCode() : 0) + this.n.hashCode() + this.o.hashCode();
        List listK = k();
        if (listK != null) {
            Iterator it4 = listK.iterator();
            iHash4 = 0;
            while (it4.hasNext()) {
                iHash4 += ((DivDisappearAction) it4.next()).hash();
            }
        } else {
            iHash4 = 0;
        }
        int i4 = iHashCode4 + iHash4;
        List list2 = this.q;
        if (list2 != null) {
            Iterator it5 = list2.iterator();
            iHash5 = 0;
            while (it5.hasNext()) {
                iHash5 += ((DivAction) it5.next()).hash();
            }
        } else {
            iHash5 = 0;
        }
        int i5 = i4 + iHash5;
        List extensions = getExtensions();
        if (extensions != null) {
            Iterator it6 = extensions.iterator();
            iHash6 = 0;
            while (it6.hasNext()) {
                iHash6 += ((DivExtension) it6.next()).hash();
            }
        } else {
            iHash6 = 0;
        }
        int i6 = i5 + iHash6;
        DivFocus divFocusQ = q();
        int iHash21 = i6 + (divFocusQ != null ? divFocusQ.hash() : 0);
        List listY = y();
        if (listY != null) {
            Iterator it7 = listY.iterator();
            iHash7 = 0;
            while (it7.hasNext()) {
                iHash7 += ((DivFunction) it7.next()).hash();
            }
        } else {
            iHash7 = 0;
        }
        int iHash22 = iHash21 + iHash7 + getHeight().hash();
        List list3 = this.v;
        if (list3 != null) {
            Iterator it8 = list3.iterator();
            iHash8 = 0;
            while (it8.hasNext()) {
                iHash8 += ((DivAction) it8.next()).hash();
            }
        } else {
            iHash8 = 0;
        }
        int i7 = iHash22 + iHash8;
        List list4 = this.w;
        if (list4 != null) {
            Iterator it9 = list4.iterator();
            iHash9 = 0;
            while (it9.hasNext()) {
                iHash9 += ((DivAction) it9.next()).hash();
            }
        } else {
            iHash9 = 0;
        }
        int i8 = i7 + iHash9;
        String id = getId();
        int iHashCode5 = i8 + (id != null ? id.hashCode() : 0);
        DivLayoutProvider divLayoutProviderV = v();
        int iHash23 = iHashCode5 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        List list5 = this.A;
        if (list5 != null) {
            Iterator it10 = list5.iterator();
            iHash10 = 0;
            while (it10.hasNext()) {
                iHash10 += ((DivAction) it10.next()).hash();
            }
        } else {
            iHash10 = 0;
        }
        int i9 = iHash23 + iHash10;
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash24 = i9 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0);
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash25 = iHash24 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        List list6 = this.D;
        if (list6 != null) {
            Iterator it11 = list6.iterator();
            iHash11 = 0;
            while (it11.hasNext()) {
                iHash11 += ((DivAction) it11.next()).hash();
            }
        } else {
            iHash11 = 0;
        }
        int i10 = iHash25 + iHash11;
        List list7 = this.E;
        if (list7 != null) {
            Iterator it12 = list7.iterator();
            iHash12 = 0;
            while (it12.hasNext()) {
                iHash12 += ((DivAction) it12.next()).hash();
            }
        } else {
            iHash12 = 0;
        }
        int i11 = i10 + iHash12;
        Expression expressionF = f();
        int iHashCode6 = i11 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode7 = iHashCode6 + (expressionE != null ? expressionE.hashCode() : 0);
        List listU = u();
        if (listU != null) {
            Iterator it13 = listU.iterator();
            iHash13 = 0;
            while (it13.hasNext()) {
                iHash13 += ((DivAction) it13.next()).hash();
            }
        } else {
            iHash13 = 0;
        }
        int i12 = iHashCode7 + iHash13;
        List listH = h();
        if (listH != null) {
            Iterator it14 = listH.iterator();
            iHash14 = 0;
            while (it14.hasNext()) {
                iHash14 += ((DivTooltip) it14.next()).hash();
            }
        } else {
            iHash14 = 0;
        }
        int i13 = i12 + iHash14;
        DivTransform divTransformM = m();
        int iHash26 = i13 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash27 = iHash26 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash28 = iHash27 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash29 = iHash28 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode8 = iHash29 + (listN != null ? listN.hashCode() : 0);
        List listW = w();
        if (listW != null) {
            Iterator it15 = listW.iterator();
            iHash15 = 0;
            while (it15.hasNext()) {
                iHash15 += ((DivTrigger) it15.next()).hash();
            }
        } else {
            iHash15 = 0;
        }
        int i14 = iHashCode8 + iHash15;
        List listC = c();
        if (listC != null) {
            Iterator it16 = listC.iterator();
            iHash16 = 0;
            while (it16.hasNext()) {
                iHash16 += ((DivVariable) it16.next()).hash();
            }
        } else {
            iHash16 = 0;
        }
        int iHashCode9 = i14 + iHash16 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash30 = iHashCode9 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it17 = listA2.iterator();
            while (it17.hasNext()) {
                iHash17 += ((DivVisibilityAction) it17.next()).hash();
            }
        }
        int iHash31 = iHash30 + iHash17 + getWidth().hash();
        this.U = Integer.valueOf(iHash31);
        return iHash31;
    }

    @Override
    public DivTransform m() {
        return this.J;
    }

    @Override
    public List n() {
        return this.N;
    }

    @Override
    public Expression o() {
        return this.f;
    }

    @Override
    public Expression p() {
        return this.g;
    }

    @Override
    public DivFocus q() {
        return this.s;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivGridJsonParser.b) ml0.a().O3().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.C;
    }

    @Override
    public List u() {
        return this.H;
    }

    @Override
    public DivLayoutProvider v() {
        return this.z;
    }

    @Override
    public List w() {
        return this.O;
    }

    @Override
    public DivVisibilityAction x() {
        return this.R;
    }

    @Override
    public List y() {
        return this.t;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.L;
    }
}
