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

public final class DivVideo implements d65, ko4, og2 {
    public static final a W = new a(null);
    public static final Expression X;
    public static final Expression Y;
    public static final DivSize.d Z;
    public static final Expression a0;
    public static final Expression b0;
    public static final Expression c0;
    public static final Expression d0;
    public static final Expression e0;
    public static final DivSize.c f0;
    public static final s74 g0;
    public final Expression A;
    public final Expression B;
    public final Expression C;
    public final List D;
    public final Expression E;
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
    public final DivAspect f;
    public final Expression g;
    public final List h;
    public final DivBorder i;
    public final List j;
    public final Expression k;
    public final List l;
    public final String m;
    public final List n;
    public final List o;
    public final List p;
    public final DivFocus q;
    public final List r;
    public final DivSize s;
    public final String t;
    public final DivLayoutProvider u;
    public final DivEdgeInsets v;
    public final Expression w;
    public final DivEdgeInsets x;
    public final List y;
    public final JSONObject z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivVideo a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivVideoJsonParser.b) ml0.a().h9().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        X = aVar.a(Double.valueOf(1.0d));
        Boolean bool = Boolean.FALSE;
        Y = aVar.a(bool);
        Z = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        a0 = aVar.a(bool);
        b0 = aVar.a(bool);
        c0 = aVar.a(bool);
        d0 = aVar.a(DivVideoScale.FIT);
        e0 = aVar.a(DivVisibility.VISIBLE);
        f0 = new DivSize.c(new DivMatchParentSize(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0));
        g0 = new s74() {
            @Override
            public final DivVideo invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivVideo.W.a(hx7Var, jSONObject);
            }
        };
    }

    public DivVideo(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, DivAspect divAspect, Expression expression4, List list2, DivBorder divBorder, List list3, Expression expression5, List list4, String str, List list5, List list6, List list7, DivFocus divFocus, List list8, DivSize divSize, String str2, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression6, DivEdgeInsets divEdgeInsets2, List list9, JSONObject jSONObject, Expression expression7, Expression expression8, Expression expression9, List list10, Expression expression10, Expression expression11, Expression expression12, List list11, List list12, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list13, List list14, List list15, List list16, Expression expression13, DivVisibilityAction divVisibilityAction, List list17, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression4, "autostart");
        y45.j(divSize, "height");
        y45.j(expression6, "muted");
        y45.j(expression7, "preloadRequired");
        y45.j(expression9, "repeatable");
        y45.j(expression12, "scale");
        y45.j(list16, "videoSources");
        y45.j(expression13, "visibility");
        y45.j(divSize2, "width");
        this.a = divAccessibility;
        this.b = expression;
        this.c = expression2;
        this.d = expression3;
        this.e = list;
        this.f = divAspect;
        this.g = expression4;
        this.h = list2;
        this.i = divBorder;
        this.j = list3;
        this.k = expression5;
        this.l = list4;
        this.m = str;
        this.n = list5;
        this.o = list6;
        this.p = list7;
        this.q = divFocus;
        this.r = list8;
        this.s = divSize;
        this.t = str2;
        this.u = divLayoutProvider;
        this.v = divEdgeInsets;
        this.w = expression6;
        this.x = divEdgeInsets2;
        this.y = list9;
        this.z = jSONObject;
        this.A = expression7;
        this.B = expression8;
        this.C = expression9;
        this.D = list10;
        this.E = expression10;
        this.F = expression11;
        this.G = expression12;
        this.H = list11;
        this.I = list12;
        this.J = divTransform;
        this.K = divChangeTransition;
        this.L = divAppearanceTransition;
        this.M = divAppearanceTransition2;
        this.N = list13;
        this.O = list14;
        this.P = list15;
        this.Q = list16;
        this.R = expression13;
        this.S = divVisibilityAction;
        this.T = list17;
        this.U = divSize2;
    }

    public static DivVideo D(DivVideo divVideo, DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, DivAspect divAspect, Expression expression4, List list2, DivBorder divBorder, List list3, Expression expression5, List list4, String str, List list5, List list6, List list7, DivFocus divFocus, List list8, DivSize divSize, String str2, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression6, DivEdgeInsets divEdgeInsets2, List list9, JSONObject jSONObject, Expression expression7, Expression expression8, Expression expression9, List list10, Expression expression10, Expression expression11, Expression expression12, List list11, List list12, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list13, List list14, List list15, List list16, Expression expression13, DivVisibilityAction divVisibilityAction, List list17, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divVideo.r() : divAccessibility;
        Expression expressionG = (i & 2) != 0 ? divVideo.g() : expression;
        Expression expressionO = (i & 4) != 0 ? divVideo.o() : expression2;
        Expression expressionP = (i & 8) != 0 ? divVideo.p() : expression3;
        List listA = (i & 16) != 0 ? divVideo.A() : list;
        DivAspect divAspect2 = (i & 32) != 0 ? divVideo.f : divAspect;
        Expression expression14 = (i & 64) != 0 ? divVideo.g : expression4;
        List background = (i & 128) != 0 ? divVideo.getBackground() : list2;
        DivBorder divBorderB = (i & 256) != 0 ? divVideo.B() : divBorder;
        List list18 = (i & 512) != 0 ? divVideo.j : list3;
        Expression expressionB = (i & 1024) != 0 ? divVideo.b() : expression5;
        List listK = (i & 2048) != 0 ? divVideo.k() : list4;
        String str3 = (i & 4096) != 0 ? divVideo.m : str;
        List list19 = (i & 8192) != 0 ? divVideo.n : list5;
        List extensions = (i & 16384) != 0 ? divVideo.getExtensions() : list6;
        List list20 = (i & 32768) != 0 ? divVideo.p : list7;
        DivFocus divFocusQ = (i & 65536) != 0 ? divVideo.q() : divFocus;
        List listY = (i & 131072) != 0 ? divVideo.y() : list8;
        DivSize height = (i & 262144) != 0 ? divVideo.getHeight() : divSize;
        String id = (i & 524288) != 0 ? divVideo.getId() : str2;
        DivLayoutProvider divLayoutProviderV = (i & 1048576) != 0 ? divVideo.v() : divLayoutProvider;
        DivEdgeInsets divEdgeInsetsD = (i & 2097152) != 0 ? divVideo.d() : divEdgeInsets;
        List list21 = list20;
        Expression expression15 = (i & 4194304) != 0 ? divVideo.w : expression6;
        return divVideo.C(divAccessibilityR, expressionG, expressionO, expressionP, listA, divAspect2, expression14, background, divBorderB, list18, expressionB, listK, str3, list19, extensions, list21, divFocusQ, listY, height, id, divLayoutProviderV, divEdgeInsetsD, expression15, (i & 8388608) != 0 ? divVideo.t() : divEdgeInsets2, (i & 16777216) != 0 ? divVideo.y : list9, (i & 33554432) != 0 ? divVideo.z : jSONObject, (i & 67108864) != 0 ? divVideo.A : expression7, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divVideo.B : expression8, (i & 268435456) != 0 ? divVideo.C : expression9, (i & 536870912) != 0 ? divVideo.D : list10, (i & 1073741824) != 0 ? divVideo.f() : expression10, (i & Integer.MIN_VALUE) != 0 ? divVideo.e() : expression11, (i2 & 1) != 0 ? divVideo.G : expression12, (i2 & 2) != 0 ? divVideo.u() : list11, (i2 & 4) != 0 ? divVideo.h() : list12, (i2 & 8) != 0 ? divVideo.m() : divTransform, (i2 & 16) != 0 ? divVideo.j() : divChangeTransition, (i2 & 32) != 0 ? divVideo.z() : divAppearanceTransition, (i2 & 64) != 0 ? divVideo.i() : divAppearanceTransition2, (i2 & 128) != 0 ? divVideo.n() : list13, (i2 & 256) != 0 ? divVideo.w() : list14, (i2 & 512) != 0 ? divVideo.c() : list15, (i2 & 1024) != 0 ? divVideo.Q : list16, (i2 & 2048) != 0 ? divVideo.getVisibility() : expression13, (i2 & 4096) != 0 ? divVideo.x() : divVisibilityAction, (i2 & 8192) != 0 ? divVideo.a() : list17, (i2 & 16384) != 0 ? divVideo.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.e;
    }

    @Override
    public DivBorder B() {
        return this.i;
    }

    public final DivVideo C(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, DivAspect divAspect, Expression expression4, List list2, DivBorder divBorder, List list3, Expression expression5, List list4, String str, List list5, List list6, List list7, DivFocus divFocus, List list8, DivSize divSize, String str2, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression6, DivEdgeInsets divEdgeInsets2, List list9, JSONObject jSONObject, Expression expression7, Expression expression8, Expression expression9, List list10, Expression expression10, Expression expression11, Expression expression12, List list11, List list12, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list13, List list14, List list15, List list16, Expression expression13, DivVisibilityAction divVisibilityAction, List list17, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression4, "autostart");
        y45.j(divSize, "height");
        y45.j(expression6, "muted");
        y45.j(expression7, "preloadRequired");
        y45.j(expression9, "repeatable");
        y45.j(expression12, "scale");
        y45.j(list16, "videoSources");
        y45.j(expression13, "visibility");
        y45.j(divSize2, "width");
        return new DivVideo(divAccessibility, expression, expression2, expression3, list, divAspect, expression4, list2, divBorder, list3, expression5, list4, str, list5, list6, list7, divFocus, list8, divSize, str2, divLayoutProvider, divEdgeInsets, expression6, divEdgeInsets2, list9, jSONObject, expression7, expression8, expression9, list10, expression10, expression11, expression12, list11, list12, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list13, list14, list15, list16, expression13, divVisibilityAction, list17, divSize2);
    }

    public final boolean E(DivVideo divVideo, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean z;
        boolean zA2;
        boolean z2;
        boolean zA3;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean zA4;
        boolean z8;
        boolean zA5;
        boolean zA6;
        boolean zA7;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean zA8;
        boolean zA9;
        boolean zA10;
        boolean zA11;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean zG;
        boolean z17;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divVideo == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divVideo.r(), oj3Var, oj3Var2);
        } else {
            zA = divVideo.r() == null;
        }
        if (!zA) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divVideo.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divVideo.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divVideo.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divVideo.A();
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
            z = divVideo.A() == null;
        }
        if (!z) {
            return false;
        }
        DivAspect divAspect = this.f;
        if (divAspect != null) {
            zA2 = divAspect.a(divVideo.f, oj3Var, oj3Var2);
        } else {
            zA2 = divVideo.f == null;
        }
        if (!zA2 || ((Boolean) this.g.b(oj3Var)).booleanValue() != ((Boolean) divVideo.g.b(oj3Var2)).booleanValue()) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divVideo.getBackground();
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
            z2 = divVideo.getBackground() == null;
        }
        if (!z2) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA3 = divBorderB.a(divVideo.B(), oj3Var, oj3Var2);
        } else {
            zA3 = divVideo.B() == null;
        }
        if (!zA3) {
            return false;
        }
        List list = this.j;
        if (list != null) {
            List list2 = divVideo.j;
            if (list2 == null) {
                return false;
            }
            if (list.size() == list2.size()) {
                Iterator it3 = list.iterator();
                int i5 = 0;
                while (true) {
                    if (it3.hasNext()) {
                        Object next3 = it3.next();
                        int i6 = i5 + 1;
                        if (i5 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next3).a((DivAction) list2.get(i5), oj3Var, oj3Var2)) {
                            i5 = i6;
                        }
                    }
                }
            }
        } else {
            z3 = divVideo.j == null;
        }
        if (!z3) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divVideo.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divVideo.k();
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
            z4 = divVideo.k() == null;
        }
        if (!z4 || !y45.e(this.m, divVideo.m)) {
            return false;
        }
        List list3 = this.n;
        if (list3 != null) {
            List list4 = divVideo.n;
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
            z5 = divVideo.n == null;
        }
        if (!z5) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divVideo.getExtensions();
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
            z6 = divVideo.getExtensions() == null;
        }
        if (!z6) {
            return false;
        }
        List list5 = this.p;
        if (list5 != null) {
            List list6 = divVideo.p;
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
                        if (((DivAction) next7).a((DivAction) list6.get(i13), oj3Var, oj3Var2)) {
                            i13 = i14;
                        }
                    }
                }
            }
        } else {
            z7 = divVideo.p == null;
        }
        if (!z7) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA4 = divFocusQ.a(divVideo.q(), oj3Var, oj3Var2);
        } else {
            zA4 = divVideo.q() == null;
        }
        if (!zA4) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divVideo.y();
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
            z8 = divVideo.y() == null;
        }
        if (!z8 || !getHeight().a(divVideo.getHeight(), oj3Var, oj3Var2) || !y45.e(getId(), divVideo.getId())) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA5 = divLayoutProviderV.a(divVideo.v(), oj3Var, oj3Var2);
        } else {
            zA5 = divVideo.v() == null;
        }
        if (!zA5) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA6 = divEdgeInsetsD.a(divVideo.d(), oj3Var, oj3Var2);
        } else {
            zA6 = divVideo.d() == null;
        }
        if (!zA6 || ((Boolean) this.w.b(oj3Var)).booleanValue() != ((Boolean) divVideo.w.b(oj3Var2)).booleanValue()) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA7 = divEdgeInsetsT.a(divVideo.t(), oj3Var, oj3Var2);
        } else {
            zA7 = divVideo.t() == null;
        }
        if (!zA7) {
            return false;
        }
        List list7 = this.y;
        if (list7 != null) {
            List list8 = divVideo.y;
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
            z9 = divVideo.y == null;
        }
        if (!z9 || !y45.e(this.z, divVideo.z) || ((Boolean) this.A.b(oj3Var)).booleanValue() != ((Boolean) divVideo.A.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expression = this.B;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        Expression expression2 = divVideo.B;
        if (!y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null) || ((Boolean) this.C.b(oj3Var)).booleanValue() != ((Boolean) divVideo.C.b(oj3Var2)).booleanValue()) {
            return false;
        }
        List list9 = this.D;
        if (list9 != null) {
            List list10 = divVideo.D;
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
            z10 = divVideo.D == null;
        }
        if (!z10) {
            return false;
        }
        Expression expressionF = f();
        String str2 = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divVideo.f();
        if (!y45.e(str2, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divVideo.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null) || this.G.b(oj3Var) != divVideo.G.b(oj3Var2)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divVideo.u();
            if (listU2 == null) {
                return false;
            }
            if (listU.size() == listU2.size()) {
                Iterator it11 = listU.iterator();
                int i21 = 0;
                while (true) {
                    if (it11.hasNext()) {
                        Object next11 = it11.next();
                        int i22 = i21 + 1;
                        if (i21 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next11).a((DivAction) listU2.get(i21), oj3Var, oj3Var2)) {
                            i21 = i22;
                        }
                    }
                }
            }
        } else {
            z11 = divVideo.u() == null;
        }
        if (!z11) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divVideo.h();
            if (listH2 == null) {
                return false;
            }
            if (listH.size() == listH2.size()) {
                Iterator it12 = listH.iterator();
                int i23 = 0;
                while (true) {
                    if (it12.hasNext()) {
                        Object next12 = it12.next();
                        int i24 = i23 + 1;
                        if (i23 < 0) {
                            y71.u();
                        }
                        if (((DivTooltip) next12).a((DivTooltip) listH2.get(i23), oj3Var, oj3Var2)) {
                            i23 = i24;
                        }
                    }
                }
            }
        } else {
            z12 = divVideo.h() == null;
        }
        if (!z12) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA8 = divTransformM.a(divVideo.m(), oj3Var, oj3Var2);
        } else {
            zA8 = divVideo.m() == null;
        }
        if (!zA8) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA9 = divChangeTransitionJ.a(divVideo.j(), oj3Var, oj3Var2);
        } else {
            zA9 = divVideo.j() == null;
        }
        if (!zA9) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA10 = divAppearanceTransitionZ.a(divVideo.z(), oj3Var, oj3Var2);
        } else {
            zA10 = divVideo.z() == null;
        }
        if (!zA10) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA11 = divAppearanceTransitionI.a(divVideo.i(), oj3Var, oj3Var2);
        } else {
            zA11 = divVideo.i() == null;
        }
        if (!zA11) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divVideo.n();
            if (listN2 == null) {
                return false;
            }
            if (listN.size() == listN2.size()) {
                Iterator it13 = listN.iterator();
                int i25 = 0;
                while (true) {
                    if (it13.hasNext()) {
                        Object next13 = it13.next();
                        int i26 = i25 + 1;
                        if (i25 < 0) {
                            y71.u();
                        }
                        if (((DivTransitionTrigger) next13) == ((DivTransitionTrigger) listN2.get(i25))) {
                            i25 = i26;
                        }
                    }
                }
            }
        } else {
            z13 = divVideo.n() == null;
        }
        if (!z13) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divVideo.w();
            if (listW2 == null) {
                return false;
            }
            if (listW.size() == listW2.size()) {
                Iterator it14 = listW.iterator();
                int i27 = 0;
                while (true) {
                    if (it14.hasNext()) {
                        Object next14 = it14.next();
                        int i28 = i27 + 1;
                        if (i27 < 0) {
                            y71.u();
                        }
                        if (((DivTrigger) next14).a((DivTrigger) listW2.get(i27), oj3Var, oj3Var2)) {
                            i27 = i28;
                        }
                    }
                }
            }
        } else {
            z14 = divVideo.w() == null;
        }
        if (!z14) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divVideo.c();
            if (listC2 == null) {
                return false;
            }
            if (listC.size() == listC2.size()) {
                Iterator it15 = listC.iterator();
                int i29 = 0;
                while (true) {
                    if (it15.hasNext()) {
                        Object next15 = it15.next();
                        int i30 = i29 + 1;
                        if (i29 < 0) {
                            y71.u();
                        }
                        if (((DivVariable) next15).a((DivVariable) listC2.get(i29), oj3Var, oj3Var2)) {
                            i29 = i30;
                        }
                    }
                }
            }
        } else {
            z15 = divVideo.c() == null;
        }
        if (!z15) {
            return false;
        }
        List list11 = this.Q;
        List list12 = divVideo.Q;
        if (list11.size() == list12.size()) {
            Iterator it16 = list11.iterator();
            int i31 = 0;
            while (true) {
                if (!it16.hasNext()) {
                    z16 = true;
                    break;
                }
                Object next16 = it16.next();
                int i32 = i31 + 1;
                if (i31 < 0) {
                    y71.u();
                }
                if (!((DivVideoSource) next16).a((DivVideoSource) list12.get(i31), oj3Var, oj3Var2)) {
                    z16 = false;
                    break;
                }
                i31 = i32;
            }
        } else {
            z16 = false;
            break;
        }
        if (!z16 || getVisibility().b(oj3Var) != divVideo.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divVideo.x(), oj3Var, oj3Var2);
        } else {
            zG = divVideo.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divVideo.a();
            if (listA4 == null) {
                return false;
            }
            if (listA3.size() == listA4.size()) {
                Iterator it17 = listA3.iterator();
                int i33 = 0;
                while (true) {
                    if (it17.hasNext()) {
                        Object next17 = it17.next();
                        int i34 = i33 + 1;
                        if (i33 < 0) {
                            y71.u();
                        }
                        if (((DivVisibilityAction) next17).g((DivVisibilityAction) listA4.get(i33), oj3Var, oj3Var2)) {
                            i33 = i34;
                        }
                    }
                }
            }
        } else {
            z17 = divVideo.a() == null;
        }
        return z17 && getWidth().a(divVideo.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.T;
    }

    @Override
    public Expression b() {
        return this.k;
    }

    @Override
    public List c() {
        return this.P;
    }

    @Override
    public DivEdgeInsets d() {
        return this.v;
    }

    @Override
    public Expression e() {
        return this.F;
    }

    @Override
    public Expression f() {
        return this.E;
    }

    @Override
    public Expression g() {
        return this.b;
    }

    @Override
    public List getBackground() {
        return this.h;
    }

    @Override
    public List getExtensions() {
        return this.o;
    }

    @Override
    public DivSize getHeight() {
        return this.s;
    }

    @Override
    public String getId() {
        return this.t;
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
        return this.I;
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
        Integer num = this.V;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivVideo.class).hashCode();
        DivAccessibility divAccessibilityR = r();
        int iHash15 = 0;
        int iHash16 = iHashCode + (divAccessibilityR != null ? divAccessibilityR.hash() : 0);
        Expression expressionG = g();
        int iHashCode2 = iHash16 + (expressionG != null ? expressionG.hashCode() : 0);
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
        DivAspect divAspect = this.f;
        int iHash17 = i + (divAspect != null ? divAspect.hash() : 0) + this.g.hashCode();
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
        int i2 = iHash17 + iHash2;
        DivBorder divBorderB = B();
        int iHash18 = i2 + (divBorderB != null ? divBorderB.hash() : 0);
        List list = this.j;
        if (list != null) {
            Iterator it3 = list.iterator();
            iHash3 = 0;
            while (it3.hasNext()) {
                iHash3 += ((DivAction) it3.next()).hash();
            }
        } else {
            iHash3 = 0;
        }
        int i3 = iHash18 + iHash3;
        Expression expressionB = b();
        int iHashCode4 = i3 + (expressionB != null ? expressionB.hashCode() : 0);
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
        String str = this.m;
        int iHashCode5 = i4 + (str != null ? str.hashCode() : 0);
        List list2 = this.n;
        if (list2 != null) {
            Iterator it5 = list2.iterator();
            iHash5 = 0;
            while (it5.hasNext()) {
                iHash5 += ((DivAction) it5.next()).hash();
            }
        } else {
            iHash5 = 0;
        }
        int i5 = iHashCode5 + iHash5;
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
        List list3 = this.p;
        if (list3 != null) {
            Iterator it7 = list3.iterator();
            iHash7 = 0;
            while (it7.hasNext()) {
                iHash7 += ((DivAction) it7.next()).hash();
            }
        } else {
            iHash7 = 0;
        }
        int i7 = i6 + iHash7;
        DivFocus divFocusQ = q();
        int iHash19 = i7 + (divFocusQ != null ? divFocusQ.hash() : 0);
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
        int iHash20 = iHash19 + iHash8 + getHeight().hash();
        String id = getId();
        int iHashCode6 = iHash20 + (id != null ? id.hashCode() : 0);
        DivLayoutProvider divLayoutProviderV = v();
        int iHash21 = iHashCode6 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash22 = iHash21 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0) + this.w.hashCode();
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash23 = iHash22 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
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
        int i8 = iHash23 + iHash9;
        JSONObject jSONObject = this.z;
        int iHashCode7 = i8 + (jSONObject != null ? jSONObject.hashCode() : 0) + this.A.hashCode();
        Expression expression = this.B;
        int iHashCode8 = iHashCode7 + (expression != null ? expression.hashCode() : 0) + this.C.hashCode();
        List list5 = this.D;
        if (list5 != null) {
            Iterator it10 = list5.iterator();
            iHash10 = 0;
            while (it10.hasNext()) {
                iHash10 += ((DivAction) it10.next()).hash();
            }
        } else {
            iHash10 = 0;
        }
        int i9 = iHashCode8 + iHash10;
        Expression expressionF = f();
        int iHashCode9 = i9 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode10 = iHashCode9 + (expressionE != null ? expressionE.hashCode() : 0) + this.G.hashCode();
        List listU = u();
        if (listU != null) {
            Iterator it11 = listU.iterator();
            iHash11 = 0;
            while (it11.hasNext()) {
                iHash11 += ((DivAction) it11.next()).hash();
            }
        } else {
            iHash11 = 0;
        }
        int i10 = iHashCode10 + iHash11;
        List listH = h();
        if (listH != null) {
            Iterator it12 = listH.iterator();
            iHash12 = 0;
            while (it12.hasNext()) {
                iHash12 += ((DivTooltip) it12.next()).hash();
            }
        } else {
            iHash12 = 0;
        }
        int i11 = i10 + iHash12;
        DivTransform divTransformM = m();
        int iHash24 = i11 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash25 = iHash24 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash26 = iHash25 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash27 = iHash26 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode11 = iHash27 + (listN != null ? listN.hashCode() : 0);
        List listW = w();
        if (listW != null) {
            Iterator it13 = listW.iterator();
            iHash13 = 0;
            while (it13.hasNext()) {
                iHash13 += ((DivTrigger) it13.next()).hash();
            }
        } else {
            iHash13 = 0;
        }
        int i12 = iHashCode11 + iHash13;
        List listC = c();
        if (listC != null) {
            Iterator it14 = listC.iterator();
            iHash14 = 0;
            while (it14.hasNext()) {
                iHash14 += ((DivVariable) it14.next()).hash();
            }
        } else {
            iHash14 = 0;
        }
        int i13 = i12 + iHash14;
        Iterator it15 = this.Q.iterator();
        int iHash28 = 0;
        while (it15.hasNext()) {
            iHash28 += ((DivVideoSource) it15.next()).hash();
        }
        int iHashCode12 = i13 + iHash28 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash29 = iHashCode12 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it16 = listA2.iterator();
            while (it16.hasNext()) {
                iHash15 += ((DivVisibilityAction) it16.next()).hash();
            }
        }
        int iHash30 = iHash29 + iHash15 + getWidth().hash();
        this.V = Integer.valueOf(iHash30);
        return iHash30;
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
        return this.l;
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
        return this.c;
    }

    @Override
    public Expression p() {
        return this.d;
    }

    @Override
    public DivFocus q() {
        return this.q;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivVideoJsonParser.b) ml0.a().h9().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.x;
    }

    @Override
    public List u() {
        return this.H;
    }

    @Override
    public DivLayoutProvider v() {
        return this.u;
    }

    @Override
    public List w() {
        return this.O;
    }

    @Override
    public DivVisibilityAction x() {
        return this.S;
    }

    @Override
    public List y() {
        return this.r;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.L;
    }
}
