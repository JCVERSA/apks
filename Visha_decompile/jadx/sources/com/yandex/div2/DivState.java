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

public final class DivState implements d65, ko4, og2 {
    public static final a O = new a(null);
    public static final Expression P;
    public static final Expression Q;
    public static final DivSize.d R;
    public static final Expression S;
    public static final Expression T;
    public static final DivSize.c U;
    public static final s74 V;
    public final DivTransform A;
    public final Expression B;
    public final DivChangeTransition C;
    public final DivAppearanceTransition D;
    public final DivAppearanceTransition E;
    public final List F;
    public final List G;
    public final List H;
    public final Expression I;
    public final DivVisibilityAction J;
    public final List K;
    public final DivSize L;
    public Integer M;
    public Integer N;
    public final DivAccessibility a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final List e;
    public final List f;
    public final DivBorder g;
    public final Expression h;
    public final Expression i;
    public final Expression j;
    public final List k;
    public final String l;
    public final List m;
    public final DivFocus n;
    public final List o;
    public final DivSize p;
    public final String q;
    public final DivLayoutProvider r;
    public final DivEdgeInsets s;
    public final DivEdgeInsets t;
    public final Expression u;
    public final Expression v;
    public final List w;
    public final String x;
    public final List y;
    public final List z;

    public static final class State implements d65, ko4 {
        public static final a g = new a(null);
        public static final s74 h = new s74() {
            @Override
            public final DivState.State invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivState.State.g.a(hx7Var, jSONObject);
            }
        };
        public final DivAnimation a;
        public final DivAnimation b;
        public final Div c;
        public final String d;
        public final List e;
        public Integer f;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final State a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((v3) ml0.a().q7().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public State(DivAnimation divAnimation, DivAnimation divAnimation2, Div div, String str, List list) {
            y45.j(str, "stateId");
            this.a = divAnimation;
            this.b = divAnimation2;
            this.c = div;
            this.d = str;
            this.e = list;
        }

        public static State b(State state, DivAnimation divAnimation, DivAnimation divAnimation2, Div div, String str, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                divAnimation = state.a;
            }
            if ((i & 2) != 0) {
                divAnimation2 = state.b;
            }
            DivAnimation divAnimation3 = divAnimation2;
            if ((i & 4) != 0) {
                div = state.c;
            }
            Div div2 = div;
            if ((i & 8) != 0) {
                str = state.d;
            }
            String str2 = str;
            if ((i & 16) != 0) {
                list = state.e;
            }
            return state.a(divAnimation, divAnimation3, div2, str2, list);
        }

        public final State a(DivAnimation divAnimation, DivAnimation divAnimation2, Div div, String str, List list) {
            y45.j(str, "stateId");
            return new State(divAnimation, divAnimation2, div, str, list);
        }

        public final boolean c(State state, oj3 oj3Var, oj3 oj3Var2) {
            boolean zA;
            boolean zA2;
            boolean zA3;
            boolean z;
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (state == null) {
                return false;
            }
            DivAnimation divAnimation = this.a;
            if (divAnimation != null) {
                zA = divAnimation.a(state.a, oj3Var, oj3Var2);
            } else {
                zA = state.a == null;
            }
            if (!zA) {
                return false;
            }
            DivAnimation divAnimation2 = this.b;
            if (divAnimation2 != null) {
                zA2 = divAnimation2.a(state.b, oj3Var, oj3Var2);
            } else {
                zA2 = state.b == null;
            }
            if (!zA2) {
                return false;
            }
            Div div = this.c;
            if (div != null) {
                zA3 = div.a(state.c, oj3Var, oj3Var2);
            } else {
                zA3 = state.c == null;
            }
            if (!zA3 || !y45.e(this.d, state.d)) {
                return false;
            }
            List list = this.e;
            if (list != null) {
                List list2 = state.e;
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
                z = state.e == null;
            }
            return z;
        }

        @Override
        public int hash() {
            Integer num = this.f;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(State.class).hashCode();
            DivAnimation divAnimation = this.a;
            int iHash = 0;
            int iHash2 = iHashCode + (divAnimation != null ? divAnimation.hash() : 0);
            DivAnimation divAnimation2 = this.b;
            int iHash3 = iHash2 + (divAnimation2 != null ? divAnimation2.hash() : 0);
            Div div = this.c;
            int iHash4 = iHash3 + (div != null ? div.hash() : 0) + this.d.hashCode();
            List list = this.e;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    iHash += ((DivAction) it.next()).hash();
                }
            }
            int i = iHash4 + iHash;
            this.f = Integer.valueOf(i);
            return i;
        }

        @Override
        public JSONObject s() {
            return ((v3) ml0.a().q7().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivState a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivStateJsonParser.b) ml0.a().n7().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        P = aVar.a(Double.valueOf(1.0d));
        Q = aVar.a(Boolean.TRUE);
        R = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        S = aVar.a(DivTransitionSelector.STATE_CHANGE);
        T = aVar.a(DivVisibility.VISIBLE);
        U = new DivSize.c(new DivMatchParentSize(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0));
        V = new s74() {
            @Override
            public final DivState invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivState.O.a(hx7Var, jSONObject);
            }
        };
    }

    public DivState(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, List list3, String str, List list4, DivFocus divFocus, List list5, DivSize divSize, String str2, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression7, Expression expression8, List list6, String str3, List list7, List list8, DivTransform divTransform, Expression expression9, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression10, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression4, "clipToBounds");
        y45.j(divSize, "height");
        y45.j(list7, "states");
        y45.j(expression9, "transitionAnimationSelector");
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
        this.i = expression5;
        this.j = expression6;
        this.k = list3;
        this.l = str;
        this.m = list4;
        this.n = divFocus;
        this.o = list5;
        this.p = divSize;
        this.q = str2;
        this.r = divLayoutProvider;
        this.s = divEdgeInsets;
        this.t = divEdgeInsets2;
        this.u = expression7;
        this.v = expression8;
        this.w = list6;
        this.x = str3;
        this.y = list7;
        this.z = list8;
        this.A = divTransform;
        this.B = expression9;
        this.C = divChangeTransition;
        this.D = divAppearanceTransition;
        this.E = divAppearanceTransition2;
        this.F = list9;
        this.G = list10;
        this.H = list11;
        this.I = expression10;
        this.J = divVisibilityAction;
        this.K = list12;
        this.L = divSize2;
    }

    public static DivState D(DivState divState, DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, List list3, String str, List list4, DivFocus divFocus, List list5, DivSize divSize, String str2, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression7, Expression expression8, List list6, String str3, List list7, List list8, DivTransform divTransform, Expression expression9, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression10, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divState.r() : divAccessibility;
        Expression expressionG = (i & 2) != 0 ? divState.g() : expression;
        Expression expressionO = (i & 4) != 0 ? divState.o() : expression2;
        Expression expressionP = (i & 8) != 0 ? divState.p() : expression3;
        List listA = (i & 16) != 0 ? divState.A() : list;
        List background = (i & 32) != 0 ? divState.getBackground() : list2;
        DivBorder divBorderB = (i & 64) != 0 ? divState.B() : divBorder;
        Expression expression11 = (i & 128) != 0 ? divState.h : expression4;
        Expression expressionB = (i & 256) != 0 ? divState.b() : expression5;
        Expression expression12 = (i & 512) != 0 ? divState.j : expression6;
        List listK = (i & 1024) != 0 ? divState.k() : list3;
        String str4 = (i & 2048) != 0 ? divState.l : str;
        List extensions = (i & 4096) != 0 ? divState.getExtensions() : list4;
        DivFocus divFocusQ = (i & 8192) != 0 ? divState.q() : divFocus;
        List listY = (i & 16384) != 0 ? divState.y() : list5;
        return divState.C(divAccessibilityR, expressionG, expressionO, expressionP, listA, background, divBorderB, expression11, expressionB, expression12, listK, str4, extensions, divFocusQ, listY, (i & 32768) != 0 ? divState.getHeight() : divSize, (i & 65536) != 0 ? divState.getId() : str2, (i & 131072) != 0 ? divState.v() : divLayoutProvider, (i & 262144) != 0 ? divState.d() : divEdgeInsets, (i & 524288) != 0 ? divState.t() : divEdgeInsets2, (i & 1048576) != 0 ? divState.f() : expression7, (i & 2097152) != 0 ? divState.e() : expression8, (i & 4194304) != 0 ? divState.u() : list6, (i & 8388608) != 0 ? divState.x : str3, (i & 16777216) != 0 ? divState.y : list7, (i & 33554432) != 0 ? divState.h() : list8, (i & 67108864) != 0 ? divState.m() : divTransform, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divState.B : expression9, (i & 268435456) != 0 ? divState.j() : divChangeTransition, (i & 536870912) != 0 ? divState.z() : divAppearanceTransition, (i & 1073741824) != 0 ? divState.i() : divAppearanceTransition2, (i & Integer.MIN_VALUE) != 0 ? divState.n() : list9, (i2 & 1) != 0 ? divState.w() : list10, (i2 & 2) != 0 ? divState.c() : list11, (i2 & 4) != 0 ? divState.getVisibility() : expression10, (i2 & 8) != 0 ? divState.x() : divVisibilityAction, (i2 & 16) != 0 ? divState.a() : list12, (i2 & 32) != 0 ? divState.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.e;
    }

    @Override
    public DivBorder B() {
        return this.g;
    }

    public final DivState C(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, List list3, String str, List list4, DivFocus divFocus, List list5, DivSize divSize, String str2, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression7, Expression expression8, List list6, String str3, List list7, List list8, DivTransform divTransform, Expression expression9, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression10, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression4, "clipToBounds");
        y45.j(divSize, "height");
        y45.j(list7, "states");
        y45.j(expression9, "transitionAnimationSelector");
        y45.j(expression10, "visibility");
        y45.j(divSize2, "width");
        return new DivState(divAccessibility, expression, expression2, expression3, list, list2, divBorder, expression4, expression5, expression6, list3, str, list4, divFocus, list5, divSize, str2, divLayoutProvider, divEdgeInsets, divEdgeInsets2, expression7, expression8, list6, str3, list7, list8, divTransform, expression9, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list9, list10, list11, expression10, divVisibilityAction, list12, divSize2);
    }

    public final boolean E(DivState divState, oj3 oj3Var, oj3 oj3Var2) {
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
        if (divState == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divState.r(), oj3Var, oj3Var2);
        } else {
            zA = divState.r() == null;
        }
        if (!zA) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divState.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divState.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divState.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divState.A();
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
            z = divState.A() == null;
        }
        if (!z) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divState.getBackground();
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
            z2 = divState.getBackground() == null;
        }
        if (!z2) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA2 = divBorderB.a(divState.B(), oj3Var, oj3Var2);
        } else {
            zA2 = divState.B() == null;
        }
        if (!zA2 || ((Boolean) this.h.b(oj3Var)).booleanValue() != ((Boolean) divState.h.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divState.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression = this.j;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        Expression expression2 = divState.j;
        if (!y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divState.k();
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
            z3 = divState.k() == null;
        }
        if (!z3 || !y45.e(this.l, divState.l)) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divState.getExtensions();
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
            z4 = divState.getExtensions() == null;
        }
        if (!z4) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA3 = divFocusQ.a(divState.q(), oj3Var, oj3Var2);
        } else {
            zA3 = divState.q() == null;
        }
        if (!zA3) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divState.y();
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
            z5 = divState.y() == null;
        }
        if (!z5 || !getHeight().a(divState.getHeight(), oj3Var, oj3Var2) || !y45.e(getId(), divState.getId())) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA4 = divLayoutProviderV.a(divState.v(), oj3Var, oj3Var2);
        } else {
            zA4 = divState.v() == null;
        }
        if (!zA4) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA5 = divEdgeInsetsD.a(divState.d(), oj3Var, oj3Var2);
        } else {
            zA5 = divState.d() == null;
        }
        if (!zA5) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA6 = divEdgeInsetsT.a(divState.t(), oj3Var, oj3Var2);
        } else {
            zA6 = divState.t() == null;
        }
        if (!zA6) {
            return false;
        }
        Expression expressionF = f();
        String str2 = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divState.f();
        if (!y45.e(str2, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divState.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divState.u();
            if (listU2 == null) {
                return false;
            }
            if (listU.size() == listU2.size()) {
                Iterator it6 = listU.iterator();
                int i11 = 0;
                while (true) {
                    if (it6.hasNext()) {
                        Object next6 = it6.next();
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next6).a((DivAction) listU2.get(i11), oj3Var, oj3Var2)) {
                            i11 = i12;
                        }
                    }
                }
            }
        } else {
            z6 = divState.u() == null;
        }
        if (!z6 || !y45.e(this.x, divState.x)) {
            return false;
        }
        List list = this.y;
        List list2 = divState.y;
        if (list.size() == list2.size()) {
            Iterator it7 = list.iterator();
            int i13 = 0;
            while (true) {
                if (!it7.hasNext()) {
                    z7 = true;
                    break;
                }
                Object next7 = it7.next();
                int i14 = i13 + 1;
                if (i13 < 0) {
                    y71.u();
                }
                if (!((State) next7).c((State) list2.get(i13), oj3Var, oj3Var2)) {
                    z7 = false;
                    break;
                }
                i13 = i14;
            }
        } else {
            z7 = false;
            break;
        }
        if (!z7) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divState.h();
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
            z8 = divState.h() == null;
        }
        if (!z8) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA7 = divTransformM.a(divState.m(), oj3Var, oj3Var2);
        } else {
            zA7 = divState.m() == null;
        }
        if (!zA7 || this.B.b(oj3Var) != divState.B.b(oj3Var2)) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA8 = divChangeTransitionJ.a(divState.j(), oj3Var, oj3Var2);
        } else {
            zA8 = divState.j() == null;
        }
        if (!zA8) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA9 = divAppearanceTransitionZ.a(divState.z(), oj3Var, oj3Var2);
        } else {
            zA9 = divState.z() == null;
        }
        if (!zA9) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA10 = divAppearanceTransitionI.a(divState.i(), oj3Var, oj3Var2);
        } else {
            zA10 = divState.i() == null;
        }
        if (!zA10) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divState.n();
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
            z9 = divState.n() == null;
        }
        if (!z9) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divState.w();
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
            z10 = divState.w() == null;
        }
        if (!z10) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divState.c();
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
            z11 = divState.c() == null;
        }
        if (!z11 || getVisibility().b(oj3Var) != divState.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divState.x(), oj3Var, oj3Var2);
        } else {
            zG = divState.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divState.a();
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
            z12 = divState.a() == null;
        }
        return z12 && getWidth().a(divState.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.K;
    }

    @Override
    public Expression b() {
        return this.i;
    }

    @Override
    public List c() {
        return this.H;
    }

    @Override
    public DivEdgeInsets d() {
        return this.s;
    }

    @Override
    public Expression e() {
        return this.v;
    }

    @Override
    public Expression f() {
        return this.u;
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
        return this.m;
    }

    @Override
    public DivSize getHeight() {
        return this.p;
    }

    @Override
    public String getId() {
        return this.q;
    }

    @Override
    public Expression getVisibility() {
        return this.I;
    }

    @Override
    public DivSize getWidth() {
        return this.L;
    }

    @Override
    public List h() {
        return this.z;
    }

    @Override
    public int hash() {
        Integer num = this.N;
        if (num != null) {
            return num.intValue();
        }
        int iL = l();
        Iterator it = this.y.iterator();
        int iHash = 0;
        while (it.hasNext()) {
            iHash += ((State) it.next()).hash();
        }
        int i = iL + iHash;
        this.N = Integer.valueOf(i);
        return i;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.E;
    }

    @Override
    public DivChangeTransition j() {
        return this.C;
    }

    @Override
    public List k() {
        return this.k;
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
        Integer num = this.M;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivState.class).hashCode();
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
        int iHash12 = i2 + (divBorderB != null ? divBorderB.hash() : 0) + this.h.hashCode();
        Expression expressionB = b();
        int iHashCode4 = iHash12 + (expressionB != null ? expressionB.hashCode() : 0);
        Expression expression = this.j;
        int iHashCode5 = iHashCode4 + (expression != null ? expression.hashCode() : 0);
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
        int i3 = iHashCode5 + iHash3;
        String str = this.l;
        int iHashCode6 = i3 + (str != null ? str.hashCode() : 0);
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
        int i4 = iHashCode6 + iHash4;
        DivFocus divFocusQ = q();
        int iHash13 = i4 + (divFocusQ != null ? divFocusQ.hash() : 0);
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
        int iHash14 = iHash13 + iHash5 + getHeight().hash();
        String id = getId();
        int iHashCode7 = iHash14 + (id != null ? id.hashCode() : 0);
        DivLayoutProvider divLayoutProviderV = v();
        int iHash15 = iHashCode7 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash16 = iHash15 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0);
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash17 = iHash16 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        Expression expressionF = f();
        int iHashCode8 = iHash17 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode9 = iHashCode8 + (expressionE != null ? expressionE.hashCode() : 0);
        List listU = u();
        if (listU != null) {
            Iterator it6 = listU.iterator();
            iHash6 = 0;
            while (it6.hasNext()) {
                iHash6 += ((DivAction) it6.next()).hash();
            }
        } else {
            iHash6 = 0;
        }
        int i5 = iHashCode9 + iHash6;
        String str2 = this.x;
        int iHashCode10 = i5 + (str2 != null ? str2.hashCode() : 0);
        List listH = h();
        if (listH != null) {
            Iterator it7 = listH.iterator();
            iHash7 = 0;
            while (it7.hasNext()) {
                iHash7 += ((DivTooltip) it7.next()).hash();
            }
        } else {
            iHash7 = 0;
        }
        int i6 = iHashCode10 + iHash7;
        DivTransform divTransformM = m();
        int iHash18 = i6 + (divTransformM != null ? divTransformM.hash() : 0) + this.B.hashCode();
        DivChangeTransition divChangeTransitionJ = j();
        int iHash19 = iHash18 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash20 = iHash19 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash21 = iHash20 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode11 = iHash21 + (listN != null ? listN.hashCode() : 0);
        List listW = w();
        if (listW != null) {
            Iterator it8 = listW.iterator();
            iHash8 = 0;
            while (it8.hasNext()) {
                iHash8 += ((DivTrigger) it8.next()).hash();
            }
        } else {
            iHash8 = 0;
        }
        int i7 = iHashCode11 + iHash8;
        List listC = c();
        if (listC != null) {
            Iterator it9 = listC.iterator();
            iHash9 = 0;
            while (it9.hasNext()) {
                iHash9 += ((DivVariable) it9.next()).hash();
            }
        } else {
            iHash9 = 0;
        }
        int iHashCode12 = i7 + iHash9 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash22 = iHashCode12 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it10 = listA2.iterator();
            while (it10.hasNext()) {
                iHash10 += ((DivVisibilityAction) it10.next()).hash();
            }
        }
        int iHash23 = iHash22 + iHash10 + getWidth().hash();
        this.M = Integer.valueOf(iHash23);
        return iHash23;
    }

    @Override
    public DivTransform m() {
        return this.A;
    }

    @Override
    public List n() {
        return this.F;
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
        return this.n;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivStateJsonParser.b) ml0.a().n7().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.t;
    }

    @Override
    public List u() {
        return this.w;
    }

    @Override
    public DivLayoutProvider v() {
        return this.r;
    }

    @Override
    public List w() {
        return this.G;
    }

    @Override
    public DivVisibilityAction x() {
        return this.J;
    }

    @Override
    public List y() {
        return this.o;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.D;
    }
}
