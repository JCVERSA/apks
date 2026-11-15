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

public final class DivImage implements d65, ko4, og2 {
    public static final a e0 = new a(null);
    public static final DivAnimation f0;
    public static final Expression g0;
    public static final Expression h0;
    public static final Expression i0;
    public static final Expression j0;
    public static final DivSize.d k0;
    public static final Expression l0;
    public static final Expression m0;
    public static final Expression n0;
    public static final Expression o0;
    public static final Expression p0;
    public static final Expression q0;
    public static final DivSize.c r0;
    public static final s74 s0;
    public final String A;
    public final Expression B;
    public final DivLayoutProvider C;
    public final List D;
    public final DivEdgeInsets E;
    public final DivEdgeInsets F;
    public final Expression G;
    public final Expression H;
    public final List I;
    public final List J;
    public final Expression K;
    public final Expression L;
    public final Expression M;
    public final Expression N;
    public final List O;
    public final Expression P;
    public final Expression Q;
    public final List R;
    public final DivTransform S;
    public final DivChangeTransition T;
    public final DivAppearanceTransition U;
    public final DivAppearanceTransition V;
    public final List W;
    public final List X;
    public final List Y;
    public final Expression Z;
    public final DivAccessibility a;
    public final DivVisibilityAction a0;
    public final DivAction b;
    public final List b0;
    public final DivAnimation c;
    public final DivSize c0;
    public final List d;
    public Integer d0;
    public final Expression e;
    public final Expression f;
    public final Expression g;
    public final List h;
    public final DivFadeTransition i;
    public final DivAspect j;
    public final List k;
    public final DivBorder l;
    public final Expression m;
    public final Expression n;
    public final Expression o;
    public final Expression p;
    public final List q;
    public final List r;
    public final List s;
    public final List t;
    public final DivFocus u;
    public final List v;
    public final DivSize w;
    public final Expression x;
    public final List y;
    public final List z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivImage a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivImageJsonParser.b) ml0.a().U3().getValue()).a(hx7Var, jSONObject);
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
        f0 = new DivAnimation(expressionA, expressionA2, null, null, expressionA3, null, null, aVar.a(dValueOf), 108, null);
        g0 = aVar.a(dValueOf);
        h0 = aVar.a(Boolean.TRUE);
        i0 = aVar.a(DivAlignmentHorizontal.CENTER);
        j0 = aVar.a(DivAlignmentVertical.CENTER);
        k0 = new DivSize.d(new DivWrapContentSize(null, null, null == true ? 1 : 0, 7, null));
        Boolean bool = Boolean.FALSE;
        l0 = aVar.a(bool);
        m0 = aVar.a(335544320);
        n0 = aVar.a(bool);
        o0 = aVar.a(DivImageScale.FILL);
        p0 = aVar.a(DivBlendMode.SOURCE_IN);
        q0 = aVar.a(DivVisibility.VISIBLE);
        r0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        s0 = new s74() {
            @Override
            public final DivImage invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivImage.e0.a(hx7Var, jSONObject);
            }
        };
    }

    public DivImage(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, DivFadeTransition divFadeTransition, DivAspect divAspect, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, List list4, List list5, List list6, List list7, DivFocus divFocus, List list8, DivSize divSize, Expression expression8, List list9, List list10, String str, Expression expression9, DivLayoutProvider divLayoutProvider, List list11, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression10, Expression expression11, List list12, List list13, Expression expression12, Expression expression13, Expression expression14, Expression expression15, List list14, Expression expression16, Expression expression17, List list15, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list16, List list17, List list18, Expression expression18, DivVisibilityAction divVisibilityAction, List list19, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression4, "captureFocusOnAction");
        y45.j(expression6, "contentAlignmentHorizontal");
        y45.j(expression7, "contentAlignmentVertical");
        y45.j(divSize, "height");
        y45.j(expression8, "highPriorityPreviewShow");
        y45.j(expression9, "imageUrl");
        y45.j(expression10, "placeholderColor");
        y45.j(expression11, "preloadRequired");
        y45.j(expression15, "scale");
        y45.j(expression17, "tintMode");
        y45.j(expression18, "visibility");
        y45.j(divSize2, "width");
        this.a = divAccessibility;
        this.b = divAction;
        this.c = divAnimation;
        this.d = list;
        this.e = expression;
        this.f = expression2;
        this.g = expression3;
        this.h = list2;
        this.i = divFadeTransition;
        this.j = divAspect;
        this.k = list3;
        this.l = divBorder;
        this.m = expression4;
        this.n = expression5;
        this.o = expression6;
        this.p = expression7;
        this.q = list4;
        this.r = list5;
        this.s = list6;
        this.t = list7;
        this.u = divFocus;
        this.v = list8;
        this.w = divSize;
        this.x = expression8;
        this.y = list9;
        this.z = list10;
        this.A = str;
        this.B = expression9;
        this.C = divLayoutProvider;
        this.D = list11;
        this.E = divEdgeInsets;
        this.F = divEdgeInsets2;
        this.G = expression10;
        this.H = expression11;
        this.I = list12;
        this.J = list13;
        this.K = expression12;
        this.L = expression13;
        this.M = expression14;
        this.N = expression15;
        this.O = list14;
        this.P = expression16;
        this.Q = expression17;
        this.R = list15;
        this.S = divTransform;
        this.T = divChangeTransition;
        this.U = divAppearanceTransition;
        this.V = divAppearanceTransition2;
        this.W = list16;
        this.X = list17;
        this.Y = list18;
        this.Z = expression18;
        this.a0 = divVisibilityAction;
        this.b0 = list19;
        this.c0 = divSize2;
    }

    public static DivImage D(DivImage divImage, DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, DivFadeTransition divFadeTransition, DivAspect divAspect, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, List list4, List list5, List list6, List list7, DivFocus divFocus, List list8, DivSize divSize, Expression expression8, List list9, List list10, String str, Expression expression9, DivLayoutProvider divLayoutProvider, List list11, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression10, Expression expression11, List list12, List list13, Expression expression12, Expression expression13, Expression expression14, Expression expression15, List list14, Expression expression16, Expression expression17, List list15, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list16, List list17, List list18, Expression expression18, DivVisibilityAction divVisibilityAction, List list19, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divImage.r() : divAccessibility;
        DivAction divAction2 = (i & 2) != 0 ? divImage.b : divAction;
        DivAnimation divAnimation2 = (i & 4) != 0 ? divImage.c : divAnimation;
        List list20 = (i & 8) != 0 ? divImage.d : list;
        Expression expressionG = (i & 16) != 0 ? divImage.g() : expression;
        Expression expressionO = (i & 32) != 0 ? divImage.o() : expression2;
        Expression expressionP = (i & 64) != 0 ? divImage.p() : expression3;
        List listA = (i & 128) != 0 ? divImage.A() : list2;
        DivFadeTransition divFadeTransition2 = (i & 256) != 0 ? divImage.i : divFadeTransition;
        DivAspect divAspect2 = (i & 512) != 0 ? divImage.j : divAspect;
        List background = (i & 1024) != 0 ? divImage.getBackground() : list3;
        DivBorder divBorderB = (i & 2048) != 0 ? divImage.B() : divBorder;
        Expression expression19 = (i & 4096) != 0 ? divImage.m : expression4;
        Expression expressionB = (i & 8192) != 0 ? divImage.b() : expression5;
        Expression expression20 = (i & 16384) != 0 ? divImage.o : expression6;
        Expression expression21 = (i & 32768) != 0 ? divImage.p : expression7;
        List listK = (i & 65536) != 0 ? divImage.k() : list4;
        Expression expression22 = expression21;
        List list21 = (i & 131072) != 0 ? divImage.r : list5;
        List extensions = (i & 262144) != 0 ? divImage.getExtensions() : list6;
        List list22 = list21;
        List list23 = (i & 524288) != 0 ? divImage.t : list7;
        DivFocus divFocusQ = (i & 1048576) != 0 ? divImage.q() : divFocus;
        List listY = (i & 2097152) != 0 ? divImage.y() : list8;
        DivSize height = (i & 4194304) != 0 ? divImage.getHeight() : divSize;
        List list24 = list23;
        Expression expression23 = (i & 8388608) != 0 ? divImage.x : expression8;
        List list25 = (i & 16777216) != 0 ? divImage.y : list9;
        List list26 = (i & 33554432) != 0 ? divImage.z : list10;
        String id = (i & 67108864) != 0 ? divImage.getId() : str;
        List list27 = list26;
        Expression expression24 = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divImage.B : expression9;
        return divImage.C(divAccessibilityR, divAction2, divAnimation2, list20, expressionG, expressionO, expressionP, listA, divFadeTransition2, divAspect2, background, divBorderB, expression19, expressionB, expression20, expression22, listK, list22, extensions, list24, divFocusQ, listY, height, expression23, list25, list27, id, expression24, (i & 268435456) != 0 ? divImage.v() : divLayoutProvider, (i & 536870912) != 0 ? divImage.D : list11, (i & 1073741824) != 0 ? divImage.d() : divEdgeInsets, (i & Integer.MIN_VALUE) != 0 ? divImage.t() : divEdgeInsets2, (i2 & 1) != 0 ? divImage.G : expression10, (i2 & 2) != 0 ? divImage.H : expression11, (i2 & 4) != 0 ? divImage.I : list12, (i2 & 8) != 0 ? divImage.J : list13, (i2 & 16) != 0 ? divImage.K : expression12, (i2 & 32) != 0 ? divImage.f() : expression13, (i2 & 64) != 0 ? divImage.e() : expression14, (i2 & 128) != 0 ? divImage.N : expression15, (i2 & 256) != 0 ? divImage.u() : list14, (i2 & 512) != 0 ? divImage.P : expression16, (i2 & 1024) != 0 ? divImage.Q : expression17, (i2 & 2048) != 0 ? divImage.h() : list15, (i2 & 4096) != 0 ? divImage.m() : divTransform, (i2 & 8192) != 0 ? divImage.j() : divChangeTransition, (i2 & 16384) != 0 ? divImage.z() : divAppearanceTransition, (i2 & 32768) != 0 ? divImage.i() : divAppearanceTransition2, (i2 & 65536) != 0 ? divImage.n() : list16, (i2 & 131072) != 0 ? divImage.w() : list17, (i2 & 262144) != 0 ? divImage.c() : list18, (i2 & 524288) != 0 ? divImage.getVisibility() : expression18, (i2 & 1048576) != 0 ? divImage.x() : divVisibilityAction, (i2 & 2097152) != 0 ? divImage.a() : list19, (i2 & 4194304) != 0 ? divImage.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.h;
    }

    @Override
    public DivBorder B() {
        return this.l;
    }

    public final DivImage C(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, DivFadeTransition divFadeTransition, DivAspect divAspect, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, List list4, List list5, List list6, List list7, DivFocus divFocus, List list8, DivSize divSize, Expression expression8, List list9, List list10, String str, Expression expression9, DivLayoutProvider divLayoutProvider, List list11, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression10, Expression expression11, List list12, List list13, Expression expression12, Expression expression13, Expression expression14, Expression expression15, List list14, Expression expression16, Expression expression17, List list15, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list16, List list17, List list18, Expression expression18, DivVisibilityAction divVisibilityAction, List list19, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression4, "captureFocusOnAction");
        y45.j(expression6, "contentAlignmentHorizontal");
        y45.j(expression7, "contentAlignmentVertical");
        y45.j(divSize, "height");
        y45.j(expression8, "highPriorityPreviewShow");
        y45.j(expression9, "imageUrl");
        y45.j(expression10, "placeholderColor");
        y45.j(expression11, "preloadRequired");
        y45.j(expression15, "scale");
        y45.j(expression17, "tintMode");
        y45.j(expression18, "visibility");
        y45.j(divSize2, "width");
        return new DivImage(divAccessibility, divAction, divAnimation, list, expression, expression2, expression3, list2, divFadeTransition, divAspect, list3, divBorder, expression4, expression5, expression6, expression7, list4, list5, list6, list7, divFocus, list8, divSize, expression8, list9, list10, str, expression9, divLayoutProvider, list11, divEdgeInsets, divEdgeInsets2, expression10, expression11, list12, list13, expression12, expression13, expression14, expression15, list14, expression16, expression17, list15, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list16, list17, list18, expression18, divVisibilityAction, list19, divSize2);
    }

    public final boolean E(DivImage divImage, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        boolean z;
        boolean z2;
        boolean zA3;
        boolean zA4;
        boolean z3;
        boolean zA5;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean zA6;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean zA7;
        boolean z11;
        boolean zA8;
        boolean zA9;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean zA10;
        boolean zA11;
        boolean zA12;
        boolean zA13;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean zG;
        boolean z19;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divImage == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divImage.r(), oj3Var, oj3Var2);
        } else {
            zA = divImage.r() == null;
        }
        if (!zA) {
            return false;
        }
        DivAction divAction = this.b;
        if (divAction != null) {
            zA2 = divAction.a(divImage.b, oj3Var, oj3Var2);
        } else {
            zA2 = divImage.b == null;
        }
        if (!zA2 || !this.c.a(divImage.c, oj3Var, oj3Var2)) {
            return false;
        }
        List list = this.d;
        if (list != null) {
            List list2 = divImage.d;
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
            z = divImage.d == null;
        }
        if (!z) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divImage.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divImage.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divImage.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divImage.A();
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
            z2 = divImage.A() == null;
        }
        if (!z2) {
            return false;
        }
        DivFadeTransition divFadeTransition = this.i;
        if (divFadeTransition != null) {
            zA3 = divFadeTransition.a(divImage.i, oj3Var, oj3Var2);
        } else {
            zA3 = divImage.i == null;
        }
        if (!zA3) {
            return false;
        }
        DivAspect divAspect = this.j;
        if (divAspect != null) {
            zA4 = divAspect.a(divImage.j, oj3Var, oj3Var2);
        } else {
            zA4 = divImage.j == null;
        }
        if (!zA4) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divImage.getBackground();
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
            z3 = divImage.getBackground() == null;
        }
        if (!z3) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA5 = divBorderB.a(divImage.B(), oj3Var, oj3Var2);
        } else {
            zA5 = divImage.B() == null;
        }
        if (!zA5 || ((Boolean) this.m.b(oj3Var)).booleanValue() != ((Boolean) divImage.m.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divImage.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null) || this.o.b(oj3Var) != divImage.o.b(oj3Var2) || this.p.b(oj3Var) != divImage.p.b(oj3Var2)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divImage.k();
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
            z4 = divImage.k() == null;
        }
        if (!z4) {
            return false;
        }
        List list3 = this.r;
        if (list3 != null) {
            List list4 = divImage.r;
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
            z5 = divImage.r == null;
        }
        if (!z5) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divImage.getExtensions();
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
            z6 = divImage.getExtensions() == null;
        }
        if (!z6) {
            return false;
        }
        List list5 = this.t;
        if (list5 != null) {
            List list6 = divImage.t;
            if (list6 == null) {
                return false;
            }
            if (list5.size() == list6.size()) {
                Iterator it7 = list5.iterator();
                int i13 = 0;
                while (true) {
                    if (it7.hasNext()) {
                        Object next7 = it7.next();
                        int i14 = i13 + 1;
                        if (i13 < 0) {
                            y71.u();
                        }
                        if (((DivFilter) next7).a((DivFilter) list6.get(i13), oj3Var, oj3Var2)) {
                            i13 = i14;
                        }
                    }
                }
            }
        } else {
            z7 = divImage.t == null;
        }
        if (!z7) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA6 = divFocusQ.a(divImage.q(), oj3Var, oj3Var2);
        } else {
            zA6 = divImage.q() == null;
        }
        if (!zA6) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divImage.y();
            if (listY2 == null) {
                return false;
            }
            if (listY.size() == listY2.size()) {
                Iterator it8 = listY.iterator();
                int i15 = 0;
                while (true) {
                    if (it8.hasNext()) {
                        Object next8 = it8.next();
                        int i16 = i15 + 1;
                        if (i15 < 0) {
                            y71.u();
                        }
                        if (((DivFunction) next8).a((DivFunction) listY2.get(i15), oj3Var, oj3Var2)) {
                            i15 = i16;
                        }
                    }
                }
            }
        } else {
            z8 = divImage.y() == null;
        }
        if (!z8 || !getHeight().a(divImage.getHeight(), oj3Var, oj3Var2) || ((Boolean) this.x.b(oj3Var)).booleanValue() != ((Boolean) divImage.x.b(oj3Var2)).booleanValue()) {
            return false;
        }
        List list7 = this.y;
        if (list7 != null) {
            List list8 = divImage.y;
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
            z9 = divImage.y == null;
        }
        if (!z9) {
            return false;
        }
        List list9 = this.z;
        if (list9 != null) {
            List list10 = divImage.z;
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
            z10 = divImage.z == null;
        }
        if (!z10 || !y45.e(getId(), divImage.getId()) || !y45.e(this.B.b(oj3Var), divImage.B.b(oj3Var2))) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA7 = divLayoutProviderV.a(divImage.v(), oj3Var, oj3Var2);
        } else {
            zA7 = divImage.v() == null;
        }
        if (!zA7) {
            return false;
        }
        List list11 = this.D;
        if (list11 != null) {
            List list12 = divImage.D;
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
            z11 = divImage.D == null;
        }
        if (!z11) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA8 = divEdgeInsetsD.a(divImage.d(), oj3Var, oj3Var2);
        } else {
            zA8 = divImage.d() == null;
        }
        if (!zA8) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA9 = divEdgeInsetsT.a(divImage.t(), oj3Var, oj3Var2);
        } else {
            zA9 = divImage.t() == null;
        }
        if (!zA9 || ((Number) this.G.b(oj3Var)).intValue() != ((Number) divImage.G.b(oj3Var2)).intValue() || ((Boolean) this.H.b(oj3Var)).booleanValue() != ((Boolean) divImage.H.b(oj3Var2)).booleanValue()) {
            return false;
        }
        List list13 = this.I;
        if (list13 != null) {
            List list14 = divImage.I;
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
            z12 = divImage.I == null;
        }
        if (!z12) {
            return false;
        }
        List list15 = this.J;
        if (list15 != null) {
            List list16 = divImage.J;
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
            z13 = divImage.J == null;
        }
        if (!z13) {
            return false;
        }
        Expression expression = this.K;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        Expression expression2 = divImage.K;
        if (!y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionF = f();
        String str2 = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divImage.f();
        if (!y45.e(str2, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divImage.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null) || this.N.b(oj3Var) != divImage.N.b(oj3Var2)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divImage.u();
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
            z14 = divImage.u() == null;
        }
        if (!z14) {
            return false;
        }
        Expression expression3 = this.P;
        Integer num = expression3 != null ? (Integer) expression3.b(oj3Var) : null;
        Expression expression4 = divImage.P;
        if (!y45.e(num, expression4 != null ? (Integer) expression4.b(oj3Var2) : null) || this.Q.b(oj3Var) != divImage.Q.b(oj3Var2)) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divImage.h();
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
            z15 = divImage.h() == null;
        }
        if (!z15) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA10 = divTransformM.a(divImage.m(), oj3Var, oj3Var2);
        } else {
            zA10 = divImage.m() == null;
        }
        if (!zA10) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA11 = divChangeTransitionJ.a(divImage.j(), oj3Var, oj3Var2);
        } else {
            zA11 = divImage.j() == null;
        }
        if (!zA11) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA12 = divAppearanceTransitionZ.a(divImage.z(), oj3Var, oj3Var2);
        } else {
            zA12 = divImage.z() == null;
        }
        if (!zA12) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA13 = divAppearanceTransitionI.a(divImage.i(), oj3Var, oj3Var2);
        } else {
            zA13 = divImage.i() == null;
        }
        if (!zA13) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divImage.n();
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
            z16 = divImage.n() == null;
        }
        if (!z16) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divImage.w();
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
            z17 = divImage.w() == null;
        }
        if (!z17) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divImage.c();
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
            z18 = divImage.c() == null;
        }
        if (!z18 || getVisibility().b(oj3Var) != divImage.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divImage.x(), oj3Var, oj3Var2);
        } else {
            zG = divImage.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divImage.a();
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
            z19 = divImage.a() == null;
        }
        return z19 && getWidth().a(divImage.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.b0;
    }

    @Override
    public Expression b() {
        return this.n;
    }

    @Override
    public List c() {
        return this.Y;
    }

    @Override
    public DivEdgeInsets d() {
        return this.E;
    }

    @Override
    public Expression e() {
        return this.M;
    }

    @Override
    public Expression f() {
        return this.L;
    }

    @Override
    public Expression g() {
        return this.e;
    }

    @Override
    public List getBackground() {
        return this.k;
    }

    @Override
    public List getExtensions() {
        return this.s;
    }

    @Override
    public DivSize getHeight() {
        return this.w;
    }

    @Override
    public String getId() {
        return this.A;
    }

    @Override
    public Expression getVisibility() {
        return this.Z;
    }

    @Override
    public DivSize getWidth() {
        return this.c0;
    }

    @Override
    public List h() {
        return this.R;
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
        int iHash17;
        Integer num = this.d0;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivImage.class).hashCode();
        DivAccessibility divAccessibilityR = r();
        int iHash18 = 0;
        int iHash19 = iHashCode + (divAccessibilityR != null ? divAccessibilityR.hash() : 0);
        DivAction divAction = this.b;
        int iHash20 = iHash19 + (divAction != null ? divAction.hash() : 0) + this.c.hash();
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
        int i = iHash20 + iHash;
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
        DivFadeTransition divFadeTransition = this.i;
        int iHash21 = i2 + (divFadeTransition != null ? divFadeTransition.hash() : 0);
        DivAspect divAspect = this.j;
        int iHash22 = iHash21 + (divAspect != null ? divAspect.hash() : 0);
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
        int i3 = iHash22 + iHash3;
        DivBorder divBorderB = B();
        int iHash23 = i3 + (divBorderB != null ? divBorderB.hash() : 0) + this.m.hashCode();
        Expression expressionB = b();
        int iHashCode4 = iHash23 + (expressionB != null ? expressionB.hashCode() : 0) + this.o.hashCode() + this.p.hashCode();
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
        List list2 = this.r;
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
        List list3 = this.t;
        if (list3 != null) {
            Iterator it7 = list3.iterator();
            iHash7 = 0;
            while (it7.hasNext()) {
                iHash7 += ((DivFilter) it7.next()).hash();
            }
        } else {
            iHash7 = 0;
        }
        int i7 = i6 + iHash7;
        DivFocus divFocusQ = q();
        int iHash24 = i7 + (divFocusQ != null ? divFocusQ.hash() : 0);
        List listY = y();
        if (listY != null) {
            Iterator it8 = listY.iterator();
            iHash8 = 0;
            while (it8.hasNext()) {
                iHash8 += ((DivFunction) it8.next()).hash();
            }
        } else {
            iHash8 = 0;
        }
        int iHash25 = iHash24 + iHash8 + getHeight().hash() + this.x.hashCode();
        List list4 = this.y;
        if (list4 != null) {
            Iterator it9 = list4.iterator();
            iHash9 = 0;
            while (it9.hasNext()) {
                iHash9 += ((DivAction) it9.next()).hash();
            }
        } else {
            iHash9 = 0;
        }
        int i8 = iHash25 + iHash9;
        List list5 = this.z;
        if (list5 != null) {
            Iterator it10 = list5.iterator();
            iHash10 = 0;
            while (it10.hasNext()) {
                iHash10 += ((DivAction) it10.next()).hash();
            }
        } else {
            iHash10 = 0;
        }
        int i9 = i8 + iHash10;
        String id = getId();
        int iHashCode5 = i9 + (id != null ? id.hashCode() : 0) + this.B.hashCode();
        DivLayoutProvider divLayoutProviderV = v();
        int iHash26 = iHashCode5 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
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
        int i10 = iHash26 + iHash11;
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash27 = i10 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0);
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash28 = iHash27 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0) + this.G.hashCode() + this.H.hashCode();
        List list7 = this.I;
        if (list7 != null) {
            Iterator it12 = list7.iterator();
            iHash12 = 0;
            while (it12.hasNext()) {
                iHash12 += ((DivAction) it12.next()).hash();
            }
        } else {
            iHash12 = 0;
        }
        int i11 = iHash28 + iHash12;
        List list8 = this.J;
        if (list8 != null) {
            Iterator it13 = list8.iterator();
            iHash13 = 0;
            while (it13.hasNext()) {
                iHash13 += ((DivAction) it13.next()).hash();
            }
        } else {
            iHash13 = 0;
        }
        int i12 = i11 + iHash13;
        Expression expression = this.K;
        int iHashCode6 = i12 + (expression != null ? expression.hashCode() : 0);
        Expression expressionF = f();
        int iHashCode7 = iHashCode6 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode8 = iHashCode7 + (expressionE != null ? expressionE.hashCode() : 0) + this.N.hashCode();
        List listU = u();
        if (listU != null) {
            Iterator it14 = listU.iterator();
            iHash14 = 0;
            while (it14.hasNext()) {
                iHash14 += ((DivAction) it14.next()).hash();
            }
        } else {
            iHash14 = 0;
        }
        int i13 = iHashCode8 + iHash14;
        Expression expression2 = this.P;
        int iHashCode9 = i13 + (expression2 != null ? expression2.hashCode() : 0) + this.Q.hashCode();
        List listH = h();
        if (listH != null) {
            Iterator it15 = listH.iterator();
            iHash15 = 0;
            while (it15.hasNext()) {
                iHash15 += ((DivTooltip) it15.next()).hash();
            }
        } else {
            iHash15 = 0;
        }
        int i14 = iHashCode9 + iHash15;
        DivTransform divTransformM = m();
        int iHash29 = i14 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash30 = iHash29 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash31 = iHash30 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash32 = iHash31 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode10 = iHash32 + (listN != null ? listN.hashCode() : 0);
        List listW = w();
        if (listW != null) {
            Iterator it16 = listW.iterator();
            iHash16 = 0;
            while (it16.hasNext()) {
                iHash16 += ((DivTrigger) it16.next()).hash();
            }
        } else {
            iHash16 = 0;
        }
        int i15 = iHashCode10 + iHash16;
        List listC = c();
        if (listC != null) {
            Iterator it17 = listC.iterator();
            iHash17 = 0;
            while (it17.hasNext()) {
                iHash17 += ((DivVariable) it17.next()).hash();
            }
        } else {
            iHash17 = 0;
        }
        int iHashCode11 = i15 + iHash17 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash33 = iHashCode11 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it18 = listA2.iterator();
            while (it18.hasNext()) {
                iHash18 += ((DivVisibilityAction) it18.next()).hash();
            }
        }
        int iHash34 = iHash33 + iHash18 + getWidth().hash();
        this.d0 = Integer.valueOf(iHash34);
        return iHash34;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.V;
    }

    @Override
    public DivChangeTransition j() {
        return this.T;
    }

    @Override
    public List k() {
        return this.q;
    }

    @Override
    public DivTransform m() {
        return this.S;
    }

    @Override
    public List n() {
        return this.W;
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
        return this.u;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivImageJsonParser.b) ml0.a().U3().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.F;
    }

    @Override
    public List u() {
        return this.O;
    }

    @Override
    public DivLayoutProvider v() {
        return this.C;
    }

    @Override
    public List w() {
        return this.X;
    }

    @Override
    public DivVisibilityAction x() {
        return this.a0;
    }

    @Override
    public List y() {
        return this.v;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.U;
    }
}
