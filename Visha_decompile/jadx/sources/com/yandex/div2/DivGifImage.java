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

public final class DivGifImage implements d65, ko4, og2 {
    public static final a Z = new a(null);
    public static final DivAnimation a0;
    public static final Expression b0;
    public static final Expression c0;
    public static final Expression d0;
    public static final Expression e0;
    public static final DivSize.d f0;
    public static final Expression g0;
    public static final Expression h0;
    public static final Expression i0;
    public static final Expression j0;
    public static final DivSize.c k0;
    public static final s74 l0;
    public final List A;
    public final DivEdgeInsets B;
    public final DivEdgeInsets C;
    public final Expression D;
    public final Expression E;
    public final List F;
    public final List G;
    public final Expression H;
    public final Expression I;
    public final Expression J;
    public final Expression K;
    public final List L;
    public final List M;
    public final DivTransform N;
    public final DivChangeTransition O;
    public final DivAppearanceTransition P;
    public final DivAppearanceTransition Q;
    public final List R;
    public final List S;
    public final List T;
    public final Expression U;
    public final DivVisibilityAction V;
    public final List W;
    public final DivSize X;
    public Integer Y;
    public final DivAccessibility a;
    public final DivAction b;
    public final DivAnimation c;
    public final List d;
    public final Expression e;
    public final Expression f;
    public final Expression g;
    public final List h;
    public final DivAspect i;
    public final List j;
    public final DivBorder k;
    public final Expression l;
    public final Expression m;
    public final Expression n;
    public final Expression o;
    public final List p;
    public final List q;
    public final List r;
    public final DivFocus s;
    public final List t;
    public final Expression u;
    public final DivSize v;
    public final List w;
    public final List x;
    public final String y;
    public final DivLayoutProvider z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivGifImage a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivGifImageJsonParser.b) ml0.a().L3().getValue()).a(hx7Var, jSONObject);
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
        a0 = new DivAnimation(expressionA, expressionA2, null, null, expressionA3, null, null, aVar.a(dValueOf), 108, null);
        b0 = aVar.a(dValueOf);
        c0 = aVar.a(Boolean.TRUE);
        d0 = aVar.a(DivAlignmentHorizontal.CENTER);
        e0 = aVar.a(DivAlignmentVertical.CENTER);
        f0 = new DivSize.d(new DivWrapContentSize(null, null, null == true ? 1 : 0, 7, null));
        g0 = aVar.a(335544320);
        h0 = aVar.a(Boolean.FALSE);
        i0 = aVar.a(DivImageScale.FILL);
        j0 = aVar.a(DivVisibility.VISIBLE);
        k0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        l0 = new s74() {
            @Override
            public final DivGifImage invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivGifImage.Z.a(hx7Var, jSONObject);
            }
        };
    }

    public DivGifImage(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, DivAspect divAspect, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, List list4, List list5, List list6, DivFocus divFocus, List list7, Expression expression8, DivSize divSize, List list8, List list9, String str, DivLayoutProvider divLayoutProvider, List list10, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression9, Expression expression10, List list11, List list12, Expression expression11, Expression expression12, Expression expression13, Expression expression14, List list13, List list14, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list15, List list16, List list17, Expression expression15, DivVisibilityAction divVisibilityAction, List list18, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression4, "captureFocusOnAction");
        y45.j(expression6, "contentAlignmentHorizontal");
        y45.j(expression7, "contentAlignmentVertical");
        y45.j(expression8, "gifUrl");
        y45.j(divSize, "height");
        y45.j(expression9, "placeholderColor");
        y45.j(expression10, "preloadRequired");
        y45.j(expression14, "scale");
        y45.j(expression15, "visibility");
        y45.j(divSize2, "width");
        this.a = divAccessibility;
        this.b = divAction;
        this.c = divAnimation;
        this.d = list;
        this.e = expression;
        this.f = expression2;
        this.g = expression3;
        this.h = list2;
        this.i = divAspect;
        this.j = list3;
        this.k = divBorder;
        this.l = expression4;
        this.m = expression5;
        this.n = expression6;
        this.o = expression7;
        this.p = list4;
        this.q = list5;
        this.r = list6;
        this.s = divFocus;
        this.t = list7;
        this.u = expression8;
        this.v = divSize;
        this.w = list8;
        this.x = list9;
        this.y = str;
        this.z = divLayoutProvider;
        this.A = list10;
        this.B = divEdgeInsets;
        this.C = divEdgeInsets2;
        this.D = expression9;
        this.E = expression10;
        this.F = list11;
        this.G = list12;
        this.H = expression11;
        this.I = expression12;
        this.J = expression13;
        this.K = expression14;
        this.L = list13;
        this.M = list14;
        this.N = divTransform;
        this.O = divChangeTransition;
        this.P = divAppearanceTransition;
        this.Q = divAppearanceTransition2;
        this.R = list15;
        this.S = list16;
        this.T = list17;
        this.U = expression15;
        this.V = divVisibilityAction;
        this.W = list18;
        this.X = divSize2;
    }

    public static DivGifImage D(DivGifImage divGifImage, DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, DivAspect divAspect, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, List list4, List list5, List list6, DivFocus divFocus, List list7, Expression expression8, DivSize divSize, List list8, List list9, String str, DivLayoutProvider divLayoutProvider, List list10, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression9, Expression expression10, List list11, List list12, Expression expression11, Expression expression12, Expression expression13, Expression expression14, List list13, List list14, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list15, List list16, List list17, Expression expression15, DivVisibilityAction divVisibilityAction, List list18, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divGifImage.r() : divAccessibility;
        DivAction divAction2 = (i & 2) != 0 ? divGifImage.b : divAction;
        DivAnimation divAnimation2 = (i & 4) != 0 ? divGifImage.c : divAnimation;
        List list19 = (i & 8) != 0 ? divGifImage.d : list;
        Expression expressionG = (i & 16) != 0 ? divGifImage.g() : expression;
        Expression expressionO = (i & 32) != 0 ? divGifImage.o() : expression2;
        Expression expressionP = (i & 64) != 0 ? divGifImage.p() : expression3;
        List listA = (i & 128) != 0 ? divGifImage.A() : list2;
        DivAspect divAspect2 = (i & 256) != 0 ? divGifImage.i : divAspect;
        List background = (i & 512) != 0 ? divGifImage.getBackground() : list3;
        DivBorder divBorderB = (i & 1024) != 0 ? divGifImage.B() : divBorder;
        Expression expression16 = (i & 2048) != 0 ? divGifImage.l : expression4;
        Expression expressionB = (i & 4096) != 0 ? divGifImage.b() : expression5;
        Expression expression17 = (i & 8192) != 0 ? divGifImage.n : expression6;
        Expression expression18 = (i & 16384) != 0 ? divGifImage.o : expression7;
        List listK = (i & 32768) != 0 ? divGifImage.k() : list4;
        Expression expression19 = expression18;
        List list20 = (i & 65536) != 0 ? divGifImage.q : list5;
        List extensions = (i & 131072) != 0 ? divGifImage.getExtensions() : list6;
        DivFocus divFocusQ = (i & 262144) != 0 ? divGifImage.q() : divFocus;
        List listY = (i & 524288) != 0 ? divGifImage.y() : list7;
        List list21 = list20;
        Expression expression20 = (i & 1048576) != 0 ? divGifImage.u : expression8;
        DivSize height = (i & 2097152) != 0 ? divGifImage.getHeight() : divSize;
        Expression expression21 = expression20;
        List list22 = (i & 4194304) != 0 ? divGifImage.w : list8;
        List list23 = (i & 8388608) != 0 ? divGifImage.x : list9;
        String id = (i & 16777216) != 0 ? divGifImage.getId() : str;
        DivLayoutProvider divLayoutProviderV = (i & 33554432) != 0 ? divGifImage.v() : divLayoutProvider;
        List list24 = list23;
        List list25 = (i & 67108864) != 0 ? divGifImage.A : list10;
        return divGifImage.C(divAccessibilityR, divAction2, divAnimation2, list19, expressionG, expressionO, expressionP, listA, divAspect2, background, divBorderB, expression16, expressionB, expression17, expression19, listK, list21, extensions, divFocusQ, listY, expression21, height, list22, list24, id, divLayoutProviderV, list25, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divGifImage.d() : divEdgeInsets, (i & 268435456) != 0 ? divGifImage.t() : divEdgeInsets2, (i & 536870912) != 0 ? divGifImage.D : expression9, (i & 1073741824) != 0 ? divGifImage.E : expression10, (i & Integer.MIN_VALUE) != 0 ? divGifImage.F : list11, (i2 & 1) != 0 ? divGifImage.G : list12, (i2 & 2) != 0 ? divGifImage.H : expression11, (i2 & 4) != 0 ? divGifImage.f() : expression12, (i2 & 8) != 0 ? divGifImage.e() : expression13, (i2 & 16) != 0 ? divGifImage.K : expression14, (i2 & 32) != 0 ? divGifImage.u() : list13, (i2 & 64) != 0 ? divGifImage.h() : list14, (i2 & 128) != 0 ? divGifImage.m() : divTransform, (i2 & 256) != 0 ? divGifImage.j() : divChangeTransition, (i2 & 512) != 0 ? divGifImage.z() : divAppearanceTransition, (i2 & 1024) != 0 ? divGifImage.i() : divAppearanceTransition2, (i2 & 2048) != 0 ? divGifImage.n() : list15, (i2 & 4096) != 0 ? divGifImage.w() : list16, (i2 & 8192) != 0 ? divGifImage.c() : list17, (i2 & 16384) != 0 ? divGifImage.getVisibility() : expression15, (i2 & 32768) != 0 ? divGifImage.x() : divVisibilityAction, (i2 & 65536) != 0 ? divGifImage.a() : list18, (i2 & 131072) != 0 ? divGifImage.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.h;
    }

    @Override
    public DivBorder B() {
        return this.k;
    }

    public final DivGifImage C(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, DivAspect divAspect, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, List list4, List list5, List list6, DivFocus divFocus, List list7, Expression expression8, DivSize divSize, List list8, List list9, String str, DivLayoutProvider divLayoutProvider, List list10, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression9, Expression expression10, List list11, List list12, Expression expression11, Expression expression12, Expression expression13, Expression expression14, List list13, List list14, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list15, List list16, List list17, Expression expression15, DivVisibilityAction divVisibilityAction, List list18, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression4, "captureFocusOnAction");
        y45.j(expression6, "contentAlignmentHorizontal");
        y45.j(expression7, "contentAlignmentVertical");
        y45.j(expression8, "gifUrl");
        y45.j(divSize, "height");
        y45.j(expression9, "placeholderColor");
        y45.j(expression10, "preloadRequired");
        y45.j(expression14, "scale");
        y45.j(expression15, "visibility");
        y45.j(divSize2, "width");
        return new DivGifImage(divAccessibility, divAction, divAnimation, list, expression, expression2, expression3, list2, divAspect, list3, divBorder, expression4, expression5, expression6, expression7, list4, list5, list6, divFocus, list7, expression8, divSize, list8, list9, str, divLayoutProvider, list10, divEdgeInsets, divEdgeInsets2, expression9, expression10, list11, list12, expression11, expression12, expression13, expression14, list13, list14, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list15, list16, list17, expression15, divVisibilityAction, list18, divSize2);
    }

    public final boolean E(DivGifImage divGifImage, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        boolean z;
        boolean z2;
        boolean zA3;
        boolean z3;
        boolean zA4;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean zA5;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean zA6;
        boolean z10;
        boolean zA7;
        boolean zA8;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean zA9;
        boolean zA10;
        boolean zA11;
        boolean zA12;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean zG;
        boolean z18;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divGifImage == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divGifImage.r(), oj3Var, oj3Var2);
        } else {
            zA = divGifImage.r() == null;
        }
        if (!zA) {
            return false;
        }
        DivAction divAction = this.b;
        if (divAction != null) {
            zA2 = divAction.a(divGifImage.b, oj3Var, oj3Var2);
        } else {
            zA2 = divGifImage.b == null;
        }
        if (!zA2 || !this.c.a(divGifImage.c, oj3Var, oj3Var2)) {
            return false;
        }
        List list = this.d;
        if (list != null) {
            List list2 = divGifImage.d;
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
            z = divGifImage.d == null;
        }
        if (!z) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divGifImage.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divGifImage.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divGifImage.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divGifImage.A();
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
            z2 = divGifImage.A() == null;
        }
        if (!z2) {
            return false;
        }
        DivAspect divAspect = this.i;
        if (divAspect != null) {
            zA3 = divAspect.a(divGifImage.i, oj3Var, oj3Var2);
        } else {
            zA3 = divGifImage.i == null;
        }
        if (!zA3) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divGifImage.getBackground();
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
            z3 = divGifImage.getBackground() == null;
        }
        if (!z3) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA4 = divBorderB.a(divGifImage.B(), oj3Var, oj3Var2);
        } else {
            zA4 = divGifImage.B() == null;
        }
        if (!zA4 || ((Boolean) this.l.b(oj3Var)).booleanValue() != ((Boolean) divGifImage.l.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divGifImage.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null) || this.n.b(oj3Var) != divGifImage.n.b(oj3Var2) || this.o.b(oj3Var) != divGifImage.o.b(oj3Var2)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divGifImage.k();
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
            z4 = divGifImage.k() == null;
        }
        if (!z4) {
            return false;
        }
        List list3 = this.q;
        if (list3 != null) {
            List list4 = divGifImage.q;
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
            z5 = divGifImage.q == null;
        }
        if (!z5) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divGifImage.getExtensions();
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
            z6 = divGifImage.getExtensions() == null;
        }
        if (!z6) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA5 = divFocusQ.a(divGifImage.q(), oj3Var, oj3Var2);
        } else {
            zA5 = divGifImage.q() == null;
        }
        if (!zA5) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divGifImage.y();
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
            z7 = divGifImage.y() == null;
        }
        if (!z7 || !y45.e(this.u.b(oj3Var), divGifImage.u.b(oj3Var2)) || !getHeight().a(divGifImage.getHeight(), oj3Var, oj3Var2)) {
            return false;
        }
        List list5 = this.w;
        if (list5 != null) {
            List list6 = divGifImage.w;
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
            z8 = divGifImage.w == null;
        }
        if (!z8) {
            return false;
        }
        List list7 = this.x;
        if (list7 != null) {
            List list8 = divGifImage.x;
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
            z9 = divGifImage.x == null;
        }
        if (!z9 || !y45.e(getId(), divGifImage.getId())) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA6 = divLayoutProviderV.a(divGifImage.v(), oj3Var, oj3Var2);
        } else {
            zA6 = divGifImage.v() == null;
        }
        if (!zA6) {
            return false;
        }
        List list9 = this.A;
        if (list9 != null) {
            List list10 = divGifImage.A;
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
                        if (((DivAction) next10).a((DivAction) list10.get(i19), oj3Var, oj3Var2)) {
                            i19 = i20;
                        }
                    }
                }
            }
        } else {
            z10 = divGifImage.A == null;
        }
        if (!z10) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA7 = divEdgeInsetsD.a(divGifImage.d(), oj3Var, oj3Var2);
        } else {
            zA7 = divGifImage.d() == null;
        }
        if (!zA7) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA8 = divEdgeInsetsT.a(divGifImage.t(), oj3Var, oj3Var2);
        } else {
            zA8 = divGifImage.t() == null;
        }
        if (!zA8 || ((Number) this.D.b(oj3Var)).intValue() != ((Number) divGifImage.D.b(oj3Var2)).intValue() || ((Boolean) this.E.b(oj3Var)).booleanValue() != ((Boolean) divGifImage.E.b(oj3Var2)).booleanValue()) {
            return false;
        }
        List list11 = this.F;
        if (list11 != null) {
            List list12 = divGifImage.F;
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
            z11 = divGifImage.F == null;
        }
        if (!z11) {
            return false;
        }
        List list13 = this.G;
        if (list13 != null) {
            List list14 = divGifImage.G;
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
            z12 = divGifImage.G == null;
        }
        if (!z12) {
            return false;
        }
        Expression expression = this.H;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        Expression expression2 = divGifImage.H;
        if (!y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionF = f();
        String str2 = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divGifImage.f();
        if (!y45.e(str2, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divGifImage.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null) || this.K.b(oj3Var) != divGifImage.K.b(oj3Var2)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divGifImage.u();
            if (listU2 == null) {
                return false;
            }
            if (listU.size() == listU2.size()) {
                Iterator it13 = listU.iterator();
                int i25 = 0;
                while (true) {
                    if (it13.hasNext()) {
                        Object next13 = it13.next();
                        int i26 = i25 + 1;
                        if (i25 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next13).a((DivAction) listU2.get(i25), oj3Var, oj3Var2)) {
                            i25 = i26;
                        }
                    }
                }
            }
        } else {
            z13 = divGifImage.u() == null;
        }
        if (!z13) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divGifImage.h();
            if (listH2 == null) {
                return false;
            }
            if (listH.size() == listH2.size()) {
                Iterator it14 = listH.iterator();
                int i27 = 0;
                while (true) {
                    if (it14.hasNext()) {
                        Object next14 = it14.next();
                        int i28 = i27 + 1;
                        if (i27 < 0) {
                            y71.u();
                        }
                        if (((DivTooltip) next14).a((DivTooltip) listH2.get(i27), oj3Var, oj3Var2)) {
                            i27 = i28;
                        }
                    }
                }
            }
        } else {
            z14 = divGifImage.h() == null;
        }
        if (!z14) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA9 = divTransformM.a(divGifImage.m(), oj3Var, oj3Var2);
        } else {
            zA9 = divGifImage.m() == null;
        }
        if (!zA9) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA10 = divChangeTransitionJ.a(divGifImage.j(), oj3Var, oj3Var2);
        } else {
            zA10 = divGifImage.j() == null;
        }
        if (!zA10) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA11 = divAppearanceTransitionZ.a(divGifImage.z(), oj3Var, oj3Var2);
        } else {
            zA11 = divGifImage.z() == null;
        }
        if (!zA11) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA12 = divAppearanceTransitionI.a(divGifImage.i(), oj3Var, oj3Var2);
        } else {
            zA12 = divGifImage.i() == null;
        }
        if (!zA12) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divGifImage.n();
            if (listN2 == null) {
                return false;
            }
            if (listN.size() == listN2.size()) {
                Iterator it15 = listN.iterator();
                int i29 = 0;
                while (true) {
                    if (it15.hasNext()) {
                        Object next15 = it15.next();
                        int i30 = i29 + 1;
                        if (i29 < 0) {
                            y71.u();
                        }
                        if (((DivTransitionTrigger) next15) == ((DivTransitionTrigger) listN2.get(i29))) {
                            i29 = i30;
                        }
                    }
                }
            }
        } else {
            z15 = divGifImage.n() == null;
        }
        if (!z15) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divGifImage.w();
            if (listW2 == null) {
                return false;
            }
            if (listW.size() == listW2.size()) {
                Iterator it16 = listW.iterator();
                int i31 = 0;
                while (true) {
                    if (it16.hasNext()) {
                        Object next16 = it16.next();
                        int i32 = i31 + 1;
                        if (i31 < 0) {
                            y71.u();
                        }
                        if (((DivTrigger) next16).a((DivTrigger) listW2.get(i31), oj3Var, oj3Var2)) {
                            i31 = i32;
                        }
                    }
                }
            }
        } else {
            z16 = divGifImage.w() == null;
        }
        if (!z16) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divGifImage.c();
            if (listC2 == null) {
                return false;
            }
            if (listC.size() == listC2.size()) {
                Iterator it17 = listC.iterator();
                int i33 = 0;
                while (true) {
                    if (it17.hasNext()) {
                        Object next17 = it17.next();
                        int i34 = i33 + 1;
                        if (i33 < 0) {
                            y71.u();
                        }
                        if (((DivVariable) next17).a((DivVariable) listC2.get(i33), oj3Var, oj3Var2)) {
                            i33 = i34;
                        }
                    }
                }
            }
        } else {
            z17 = divGifImage.c() == null;
        }
        if (!z17 || getVisibility().b(oj3Var) != divGifImage.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divGifImage.x(), oj3Var, oj3Var2);
        } else {
            zG = divGifImage.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divGifImage.a();
            if (listA4 == null) {
                return false;
            }
            if (listA3.size() == listA4.size()) {
                Iterator it18 = listA3.iterator();
                int i35 = 0;
                while (true) {
                    if (it18.hasNext()) {
                        Object next18 = it18.next();
                        int i36 = i35 + 1;
                        if (i35 < 0) {
                            y71.u();
                        }
                        if (((DivVisibilityAction) next18).g((DivVisibilityAction) listA4.get(i35), oj3Var, oj3Var2)) {
                            i35 = i36;
                        }
                    }
                }
            }
        } else {
            z18 = divGifImage.a() == null;
        }
        return z18 && getWidth().a(divGifImage.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.W;
    }

    @Override
    public Expression b() {
        return this.m;
    }

    @Override
    public List c() {
        return this.T;
    }

    @Override
    public DivEdgeInsets d() {
        return this.B;
    }

    @Override
    public Expression e() {
        return this.J;
    }

    @Override
    public Expression f() {
        return this.I;
    }

    @Override
    public Expression g() {
        return this.e;
    }

    @Override
    public List getBackground() {
        return this.j;
    }

    @Override
    public List getExtensions() {
        return this.r;
    }

    @Override
    public DivSize getHeight() {
        return this.v;
    }

    @Override
    public String getId() {
        return this.y;
    }

    @Override
    public Expression getVisibility() {
        return this.U;
    }

    @Override
    public DivSize getWidth() {
        return this.X;
    }

    @Override
    public List h() {
        return this.M;
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
        int iHash11;
        int iHash12;
        int iHash13;
        int iHash14;
        int iHash15;
        int iHash16;
        Integer num = this.Y;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivGifImage.class).hashCode();
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
        DivAspect divAspect = this.i;
        int iHash20 = i2 + (divAspect != null ? divAspect.hash() : 0);
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
        int i3 = iHash20 + iHash3;
        DivBorder divBorderB = B();
        int iHash21 = i3 + (divBorderB != null ? divBorderB.hash() : 0) + this.l.hashCode();
        Expression expressionB = b();
        int iHashCode4 = iHash21 + (expressionB != null ? expressionB.hashCode() : 0) + this.n.hashCode() + this.o.hashCode();
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
        int iHash22 = i6 + (divFocusQ != null ? divFocusQ.hash() : 0);
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
        int iHashCode5 = iHash22 + iHash7 + this.u.hashCode() + getHeight().hash();
        List list3 = this.w;
        if (list3 != null) {
            Iterator it8 = list3.iterator();
            iHash8 = 0;
            while (it8.hasNext()) {
                iHash8 += ((DivAction) it8.next()).hash();
            }
        } else {
            iHash8 = 0;
        }
        int i7 = iHashCode5 + iHash8;
        List list4 = this.x;
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
        int iHashCode6 = i8 + (id != null ? id.hashCode() : 0);
        DivLayoutProvider divLayoutProviderV = v();
        int iHash23 = iHashCode6 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
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
        int iHash25 = iHash24 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0) + this.D.hashCode() + this.E.hashCode();
        List list6 = this.F;
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
        List list7 = this.G;
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
        Expression expression = this.H;
        int iHashCode7 = i11 + (expression != null ? expression.hashCode() : 0);
        Expression expressionF = f();
        int iHashCode8 = iHashCode7 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode9 = iHashCode8 + (expressionE != null ? expressionE.hashCode() : 0) + this.K.hashCode();
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
        int i12 = iHashCode9 + iHash13;
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
        int iHashCode10 = iHash29 + (listN != null ? listN.hashCode() : 0);
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
        int i14 = iHashCode10 + iHash15;
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
        int iHashCode11 = i14 + iHash16 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash30 = iHashCode11 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it17 = listA2.iterator();
            while (it17.hasNext()) {
                iHash17 += ((DivVisibilityAction) it17.next()).hash();
            }
        }
        int iHash31 = iHash30 + iHash17 + getWidth().hash();
        this.Y = Integer.valueOf(iHash31);
        return iHash31;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.Q;
    }

    @Override
    public DivChangeTransition j() {
        return this.O;
    }

    @Override
    public List k() {
        return this.p;
    }

    @Override
    public DivTransform m() {
        return this.N;
    }

    @Override
    public List n() {
        return this.R;
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
        return ((DivGifImageJsonParser.b) ml0.a().L3().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.C;
    }

    @Override
    public List u() {
        return this.L;
    }

    @Override
    public DivLayoutProvider v() {
        return this.z;
    }

    @Override
    public List w() {
        return this.S;
    }

    @Override
    public DivVisibilityAction x() {
        return this.V;
    }

    @Override
    public List y() {
        return this.t;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.P;
    }
}
