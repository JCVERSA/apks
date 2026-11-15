package com.yandex.div2;

import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.e74;
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
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivIndicator implements d65, ko4, og2 {
    public static final a T = new a(null);
    public static final Expression U;
    public static final Expression V;
    public static final Expression W;
    public static final Expression X;
    public static final DivSize.d Y;
    public static final Expression Z;
    public static final Expression a0;
    public static final DivShape.c b0;
    public static final DivFixedSize c0;
    public static final Expression d0;
    public static final DivSize.c e0;
    public static final s74 f0;
    public final String A;
    public final Expression B;
    public final Expression C;
    public final List D;
    public final DivShape E;
    public final DivFixedSize F;
    public final List G;
    public final DivTransform H;
    public final DivChangeTransition I;
    public final DivAppearanceTransition J;
    public final DivAppearanceTransition K;
    public final List L;
    public final List M;
    public final List N;
    public final Expression O;
    public final DivVisibilityAction P;
    public final List Q;
    public final DivSize R;
    public Integer S;
    public final DivAccessibility a;
    public final Expression b;
    public final Expression c;
    public final DivRoundedRectangleShape d;
    public final Expression e;
    public final Expression f;
    public final Expression g;
    public final Expression h;
    public final List i;
    public final List j;
    public final DivBorder k;
    public final Expression l;
    public final List m;
    public final List n;
    public final DivFocus o;
    public final List p;
    public final DivSize q;
    public final String r;
    public final Expression s;
    public final DivRoundedRectangleShape t;
    public final DivRoundedRectangleShape u;
    public final DivIndicatorItemPlacement v;
    public final DivLayoutProvider w;
    public final DivEdgeInsets x;
    public final Expression y;
    public final DivEdgeInsets z;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/yandex/div2/DivIndicator$Animation;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "SCALE", "WORM", "SLIDER", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Animation {
        SCALE("scale"),
        WORM("worm"),
        SLIDER("slider");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivIndicator.Animation animation) {
                y45.j(animation, ES6Iterator.VALUE_PROPERTY);
                return DivIndicator.Animation.INSTANCE.b(animation);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivIndicator.Animation invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivIndicator.Animation.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Animation a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Animation animation = Animation.SCALE;
                if (y45.e(str, animation.value)) {
                    return animation;
                }
                Animation animation2 = Animation.WORM;
                if (y45.e(str, animation2.value)) {
                    return animation2;
                }
                Animation animation3 = Animation.SLIDER;
                if (y45.e(str, animation3.value)) {
                    return animation3;
                }
                return null;
            }

            public final String b(Animation animation) {
                y45.j(animation, "obj");
                return animation.value;
            }

            public Companion() {
            }
        }

        Animation(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivIndicator a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivIndicatorJsonParser.b) ml0.a().a4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        U = aVar.a(16768096);
        V = aVar.a(Double.valueOf(1.3d));
        W = aVar.a(Double.valueOf(1.0d));
        X = aVar.a(Animation.SCALE);
        Expression expression = null;
        Y = new DivSize.d(new DivWrapContentSize(expression, null, null, 7, null));
        Z = aVar.a(865180853);
        a0 = aVar.a(Double.valueOf(0.5d));
        Object[] objArr = null == true ? 1 : 0;
        b0 = new DivShape.c(new DivRoundedRectangleShape(expression, null == true ? 1 : 0, null == true ? 1 : 0, null, objArr, 31, null));
        int i = 1;
        c0 = new DivFixedSize(null == true ? 1 : 0, aVar.a(15L), i, null == true ? 1 : 0);
        d0 = aVar.a(DivVisibility.VISIBLE);
        e0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, i, null == true ? 1 : 0));
        f0 = new s74() {
            @Override
            public final DivIndicator invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivIndicator.T.a(hx7Var, jSONObject);
            }
        };
    }

    public DivIndicator(DivAccessibility divAccessibility, Expression expression, Expression expression2, DivRoundedRectangleShape divRoundedRectangleShape, Expression expression3, Expression expression4, Expression expression5, Expression expression6, List list, List list2, DivBorder divBorder, Expression expression7, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression8, DivRoundedRectangleShape divRoundedRectangleShape2, DivRoundedRectangleShape divRoundedRectangleShape3, DivIndicatorItemPlacement divIndicatorItemPlacement, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression9, DivEdgeInsets divEdgeInsets2, String str2, Expression expression10, Expression expression11, List list6, DivShape divShape, DivFixedSize divFixedSize, List list7, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list8, List list9, List list10, Expression expression12, DivVisibilityAction divVisibilityAction, List list11, DivSize divSize2) {
        y45.j(expression, "activeItemColor");
        y45.j(expression2, "activeItemSize");
        y45.j(expression5, "alpha");
        y45.j(expression6, "animation");
        y45.j(divSize, "height");
        y45.j(expression8, "inactiveItemColor");
        y45.j(expression9, "minimumItemSize");
        y45.j(divShape, "shape");
        y45.j(divFixedSize, "spaceBetweenCenters");
        y45.j(expression12, "visibility");
        y45.j(divSize2, "width");
        this.a = divAccessibility;
        this.b = expression;
        this.c = expression2;
        this.d = divRoundedRectangleShape;
        this.e = expression3;
        this.f = expression4;
        this.g = expression5;
        this.h = expression6;
        this.i = list;
        this.j = list2;
        this.k = divBorder;
        this.l = expression7;
        this.m = list3;
        this.n = list4;
        this.o = divFocus;
        this.p = list5;
        this.q = divSize;
        this.r = str;
        this.s = expression8;
        this.t = divRoundedRectangleShape2;
        this.u = divRoundedRectangleShape3;
        this.v = divIndicatorItemPlacement;
        this.w = divLayoutProvider;
        this.x = divEdgeInsets;
        this.y = expression9;
        this.z = divEdgeInsets2;
        this.A = str2;
        this.B = expression10;
        this.C = expression11;
        this.D = list6;
        this.E = divShape;
        this.F = divFixedSize;
        this.G = list7;
        this.H = divTransform;
        this.I = divChangeTransition;
        this.J = divAppearanceTransition;
        this.K = divAppearanceTransition2;
        this.L = list8;
        this.M = list9;
        this.N = list10;
        this.O = expression12;
        this.P = divVisibilityAction;
        this.Q = list11;
        this.R = divSize2;
    }

    public static DivIndicator D(DivIndicator divIndicator, DivAccessibility divAccessibility, Expression expression, Expression expression2, DivRoundedRectangleShape divRoundedRectangleShape, Expression expression3, Expression expression4, Expression expression5, Expression expression6, List list, List list2, DivBorder divBorder, Expression expression7, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression8, DivRoundedRectangleShape divRoundedRectangleShape2, DivRoundedRectangleShape divRoundedRectangleShape3, DivIndicatorItemPlacement divIndicatorItemPlacement, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression9, DivEdgeInsets divEdgeInsets2, String str2, Expression expression10, Expression expression11, List list6, DivShape divShape, DivFixedSize divFixedSize, List list7, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list8, List list9, List list10, Expression expression12, DivVisibilityAction divVisibilityAction, List list11, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divIndicator.r() : divAccessibility;
        Expression expression13 = (i & 2) != 0 ? divIndicator.b : expression;
        Expression expression14 = (i & 4) != 0 ? divIndicator.c : expression2;
        DivRoundedRectangleShape divRoundedRectangleShape4 = (i & 8) != 0 ? divIndicator.d : divRoundedRectangleShape;
        Expression expressionG = (i & 16) != 0 ? divIndicator.g() : expression3;
        Expression expressionO = (i & 32) != 0 ? divIndicator.o() : expression4;
        Expression expressionP = (i & 64) != 0 ? divIndicator.p() : expression5;
        Expression expression15 = (i & 128) != 0 ? divIndicator.h : expression6;
        List listA = (i & 256) != 0 ? divIndicator.A() : list;
        List background = (i & 512) != 0 ? divIndicator.getBackground() : list2;
        DivBorder divBorderB = (i & 1024) != 0 ? divIndicator.B() : divBorder;
        Expression expressionB = (i & 2048) != 0 ? divIndicator.b() : expression7;
        List listK = (i & 4096) != 0 ? divIndicator.k() : list3;
        List extensions = (i & 8192) != 0 ? divIndicator.getExtensions() : list4;
        DivFocus divFocusQ = (i & 16384) != 0 ? divIndicator.q() : divFocus;
        List listY = (i & 32768) != 0 ? divIndicator.y() : list5;
        DivSize height = (i & 65536) != 0 ? divIndicator.getHeight() : divSize;
        String id = (i & 131072) != 0 ? divIndicator.getId() : str;
        DivFocus divFocus2 = divFocusQ;
        Expression expression16 = (i & 262144) != 0 ? divIndicator.s : expression8;
        DivRoundedRectangleShape divRoundedRectangleShape5 = (i & 524288) != 0 ? divIndicator.t : divRoundedRectangleShape2;
        DivRoundedRectangleShape divRoundedRectangleShape6 = (i & 1048576) != 0 ? divIndicator.u : divRoundedRectangleShape3;
        DivIndicatorItemPlacement divIndicatorItemPlacement2 = (i & 2097152) != 0 ? divIndicator.v : divIndicatorItemPlacement;
        DivLayoutProvider divLayoutProviderV = (i & 4194304) != 0 ? divIndicator.v() : divLayoutProvider;
        DivEdgeInsets divEdgeInsetsD = (i & 8388608) != 0 ? divIndicator.d() : divEdgeInsets;
        DivIndicatorItemPlacement divIndicatorItemPlacement3 = divIndicatorItemPlacement2;
        Expression expression17 = (i & 16777216) != 0 ? divIndicator.y : expression9;
        return divIndicator.C(divAccessibilityR, expression13, expression14, divRoundedRectangleShape4, expressionG, expressionO, expressionP, expression15, listA, background, divBorderB, expressionB, listK, extensions, divFocus2, listY, height, id, expression16, divRoundedRectangleShape5, divRoundedRectangleShape6, divIndicatorItemPlacement3, divLayoutProviderV, divEdgeInsetsD, expression17, (i & 33554432) != 0 ? divIndicator.t() : divEdgeInsets2, (i & 67108864) != 0 ? divIndicator.A : str2, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divIndicator.f() : expression10, (i & 268435456) != 0 ? divIndicator.e() : expression11, (i & 536870912) != 0 ? divIndicator.u() : list6, (i & 1073741824) != 0 ? divIndicator.E : divShape, (i & Integer.MIN_VALUE) != 0 ? divIndicator.F : divFixedSize, (i2 & 1) != 0 ? divIndicator.h() : list7, (i2 & 2) != 0 ? divIndicator.m() : divTransform, (i2 & 4) != 0 ? divIndicator.j() : divChangeTransition, (i2 & 8) != 0 ? divIndicator.z() : divAppearanceTransition, (i2 & 16) != 0 ? divIndicator.i() : divAppearanceTransition2, (i2 & 32) != 0 ? divIndicator.n() : list8, (i2 & 64) != 0 ? divIndicator.w() : list9, (i2 & 128) != 0 ? divIndicator.c() : list10, (i2 & 256) != 0 ? divIndicator.getVisibility() : expression12, (i2 & 512) != 0 ? divIndicator.x() : divVisibilityAction, (i2 & 1024) != 0 ? divIndicator.a() : list11, (i2 & 2048) != 0 ? divIndicator.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.i;
    }

    @Override
    public DivBorder B() {
        return this.k;
    }

    public final DivIndicator C(DivAccessibility divAccessibility, Expression expression, Expression expression2, DivRoundedRectangleShape divRoundedRectangleShape, Expression expression3, Expression expression4, Expression expression5, Expression expression6, List list, List list2, DivBorder divBorder, Expression expression7, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression8, DivRoundedRectangleShape divRoundedRectangleShape2, DivRoundedRectangleShape divRoundedRectangleShape3, DivIndicatorItemPlacement divIndicatorItemPlacement, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression9, DivEdgeInsets divEdgeInsets2, String str2, Expression expression10, Expression expression11, List list6, DivShape divShape, DivFixedSize divFixedSize, List list7, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list8, List list9, List list10, Expression expression12, DivVisibilityAction divVisibilityAction, List list11, DivSize divSize2) {
        y45.j(expression, "activeItemColor");
        y45.j(expression2, "activeItemSize");
        y45.j(expression5, "alpha");
        y45.j(expression6, "animation");
        y45.j(divSize, "height");
        y45.j(expression8, "inactiveItemColor");
        y45.j(expression9, "minimumItemSize");
        y45.j(divShape, "shape");
        y45.j(divFixedSize, "spaceBetweenCenters");
        y45.j(expression12, "visibility");
        y45.j(divSize2, "width");
        return new DivIndicator(divAccessibility, expression, expression2, divRoundedRectangleShape, expression3, expression4, expression5, expression6, list, list2, divBorder, expression7, list3, list4, divFocus, list5, divSize, str, expression8, divRoundedRectangleShape2, divRoundedRectangleShape3, divIndicatorItemPlacement, divLayoutProvider, divEdgeInsets, expression9, divEdgeInsets2, str2, expression10, expression11, list6, divShape, divFixedSize, list7, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list8, list9, list10, expression12, divVisibilityAction, list11, divSize2);
    }

    public final boolean E(DivIndicator divIndicator, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        boolean z;
        boolean z2;
        boolean zA3;
        boolean z3;
        boolean z4;
        boolean zA4;
        boolean z5;
        boolean zA5;
        boolean zA6;
        boolean zA7;
        boolean zA8;
        boolean zA9;
        boolean zA10;
        boolean z6;
        boolean z7;
        boolean zA11;
        boolean zA12;
        boolean zA13;
        boolean zA14;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean zG;
        boolean z11;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divIndicator == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divIndicator.r(), oj3Var, oj3Var2);
        } else {
            zA = divIndicator.r() == null;
        }
        if (!zA || ((Number) this.b.b(oj3Var)).intValue() != ((Number) divIndicator.b.b(oj3Var2)).intValue()) {
            return false;
        }
        if (!(((Number) this.c.b(oj3Var)).doubleValue() == ((Number) divIndicator.c.b(oj3Var2)).doubleValue())) {
            return false;
        }
        DivRoundedRectangleShape divRoundedRectangleShape = this.d;
        if (divRoundedRectangleShape != null) {
            zA2 = divRoundedRectangleShape.a(divIndicator.d, oj3Var, oj3Var2);
        } else {
            zA2 = divIndicator.d == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divIndicator.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divIndicator.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divIndicator.p().b(oj3Var2)).doubleValue()) || this.h.b(oj3Var) != divIndicator.h.b(oj3Var2)) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divIndicator.A();
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
            z = divIndicator.A() == null;
        }
        if (!z) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divIndicator.getBackground();
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
            z2 = divIndicator.getBackground() == null;
        }
        if (!z2) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA3 = divBorderB.a(divIndicator.B(), oj3Var, oj3Var2);
        } else {
            zA3 = divIndicator.B() == null;
        }
        if (!zA3) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divIndicator.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divIndicator.k();
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
            z3 = divIndicator.k() == null;
        }
        if (!z3) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divIndicator.getExtensions();
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
            z4 = divIndicator.getExtensions() == null;
        }
        if (!z4) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA4 = divFocusQ.a(divIndicator.q(), oj3Var, oj3Var2);
        } else {
            zA4 = divIndicator.q() == null;
        }
        if (!zA4) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divIndicator.y();
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
            z5 = divIndicator.y() == null;
        }
        if (!z5 || !getHeight().a(divIndicator.getHeight(), oj3Var, oj3Var2) || !y45.e(getId(), divIndicator.getId()) || ((Number) this.s.b(oj3Var)).intValue() != ((Number) divIndicator.s.b(oj3Var2)).intValue()) {
            return false;
        }
        DivRoundedRectangleShape divRoundedRectangleShape2 = this.t;
        if (divRoundedRectangleShape2 != null) {
            zA5 = divRoundedRectangleShape2.a(divIndicator.t, oj3Var, oj3Var2);
        } else {
            zA5 = divIndicator.t == null;
        }
        if (!zA5) {
            return false;
        }
        DivRoundedRectangleShape divRoundedRectangleShape3 = this.u;
        if (divRoundedRectangleShape3 != null) {
            zA6 = divRoundedRectangleShape3.a(divIndicator.u, oj3Var, oj3Var2);
        } else {
            zA6 = divIndicator.u == null;
        }
        if (!zA6) {
            return false;
        }
        DivIndicatorItemPlacement divIndicatorItemPlacement = this.v;
        if (divIndicatorItemPlacement != null) {
            zA7 = divIndicatorItemPlacement.a(divIndicator.v, oj3Var, oj3Var2);
        } else {
            zA7 = divIndicator.v == null;
        }
        if (!zA7) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA8 = divLayoutProviderV.a(divIndicator.v(), oj3Var, oj3Var2);
        } else {
            zA8 = divIndicator.v() == null;
        }
        if (!zA8) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA9 = divEdgeInsetsD.a(divIndicator.d(), oj3Var, oj3Var2);
        } else {
            zA9 = divIndicator.d() == null;
        }
        if (!zA9) {
            return false;
        }
        if (!(((Number) this.y.b(oj3Var)).doubleValue() == ((Number) divIndicator.y.b(oj3Var2)).doubleValue())) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA10 = divEdgeInsetsT.a(divIndicator.t(), oj3Var, oj3Var2);
        } else {
            zA10 = divIndicator.t() == null;
        }
        if (!zA10 || !y45.e(this.A, divIndicator.A)) {
            return false;
        }
        Expression expressionF = f();
        String str = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divIndicator.f();
        if (!y45.e(str, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divIndicator.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divIndicator.u();
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
            z6 = divIndicator.u() == null;
        }
        if (!z6 || !this.E.a(divIndicator.E, oj3Var, oj3Var2) || !this.F.a(divIndicator.F, oj3Var, oj3Var2)) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divIndicator.h();
            if (listH2 == null) {
                return false;
            }
            if (listH.size() == listH2.size()) {
                Iterator it7 = listH.iterator();
                int i13 = 0;
                while (true) {
                    if (it7.hasNext()) {
                        Object next7 = it7.next();
                        int i14 = i13 + 1;
                        if (i13 < 0) {
                            y71.u();
                        }
                        if (((DivTooltip) next7).a((DivTooltip) listH2.get(i13), oj3Var, oj3Var2)) {
                            i13 = i14;
                        }
                    }
                }
            }
        } else {
            z7 = divIndicator.h() == null;
        }
        if (!z7) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA11 = divTransformM.a(divIndicator.m(), oj3Var, oj3Var2);
        } else {
            zA11 = divIndicator.m() == null;
        }
        if (!zA11) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA12 = divChangeTransitionJ.a(divIndicator.j(), oj3Var, oj3Var2);
        } else {
            zA12 = divIndicator.j() == null;
        }
        if (!zA12) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA13 = divAppearanceTransitionZ.a(divIndicator.z(), oj3Var, oj3Var2);
        } else {
            zA13 = divIndicator.z() == null;
        }
        if (!zA13) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA14 = divAppearanceTransitionI.a(divIndicator.i(), oj3Var, oj3Var2);
        } else {
            zA14 = divIndicator.i() == null;
        }
        if (!zA14) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divIndicator.n();
            if (listN2 == null) {
                return false;
            }
            if (listN.size() == listN2.size()) {
                Iterator it8 = listN.iterator();
                int i15 = 0;
                while (true) {
                    if (it8.hasNext()) {
                        Object next8 = it8.next();
                        int i16 = i15 + 1;
                        if (i15 < 0) {
                            y71.u();
                        }
                        if (((DivTransitionTrigger) next8) == ((DivTransitionTrigger) listN2.get(i15))) {
                            i15 = i16;
                        }
                    }
                }
            }
        } else {
            z8 = divIndicator.n() == null;
        }
        if (!z8) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divIndicator.w();
            if (listW2 == null) {
                return false;
            }
            if (listW.size() == listW2.size()) {
                Iterator it9 = listW.iterator();
                int i17 = 0;
                while (true) {
                    if (it9.hasNext()) {
                        Object next9 = it9.next();
                        int i18 = i17 + 1;
                        if (i17 < 0) {
                            y71.u();
                        }
                        if (((DivTrigger) next9).a((DivTrigger) listW2.get(i17), oj3Var, oj3Var2)) {
                            i17 = i18;
                        }
                    }
                }
            }
        } else {
            z9 = divIndicator.w() == null;
        }
        if (!z9) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divIndicator.c();
            if (listC2 == null) {
                return false;
            }
            if (listC.size() == listC2.size()) {
                Iterator it10 = listC.iterator();
                int i19 = 0;
                while (true) {
                    if (it10.hasNext()) {
                        Object next10 = it10.next();
                        int i20 = i19 + 1;
                        if (i19 < 0) {
                            y71.u();
                        }
                        if (((DivVariable) next10).a((DivVariable) listC2.get(i19), oj3Var, oj3Var2)) {
                            i19 = i20;
                        }
                    }
                }
            }
        } else {
            z10 = divIndicator.c() == null;
        }
        if (!z10 || getVisibility().b(oj3Var) != divIndicator.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divIndicator.x(), oj3Var, oj3Var2);
        } else {
            zG = divIndicator.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divIndicator.a();
            if (listA4 == null) {
                return false;
            }
            if (listA3.size() == listA4.size()) {
                Iterator it11 = listA3.iterator();
                int i21 = 0;
                while (true) {
                    if (it11.hasNext()) {
                        Object next11 = it11.next();
                        int i22 = i21 + 1;
                        if (i21 < 0) {
                            y71.u();
                        }
                        if (((DivVisibilityAction) next11).g((DivVisibilityAction) listA4.get(i21), oj3Var, oj3Var2)) {
                            i21 = i22;
                        }
                    }
                }
            }
        } else {
            z11 = divIndicator.a() == null;
        }
        return z11 && getWidth().a(divIndicator.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.Q;
    }

    @Override
    public Expression b() {
        return this.l;
    }

    @Override
    public List c() {
        return this.N;
    }

    @Override
    public DivEdgeInsets d() {
        return this.x;
    }

    @Override
    public Expression e() {
        return this.C;
    }

    @Override
    public Expression f() {
        return this.B;
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
        return this.n;
    }

    @Override
    public DivSize getHeight() {
        return this.q;
    }

    @Override
    public String getId() {
        return this.r;
    }

    @Override
    public Expression getVisibility() {
        return this.O;
    }

    @Override
    public DivSize getWidth() {
        return this.R;
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
        Integer num = this.S;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivIndicator.class).hashCode();
        DivAccessibility divAccessibilityR = r();
        int iHash10 = 0;
        int iHash11 = iHashCode + (divAccessibilityR != null ? divAccessibilityR.hash() : 0) + this.b.hashCode() + this.c.hashCode();
        DivRoundedRectangleShape divRoundedRectangleShape = this.d;
        int iHash12 = iHash11 + (divRoundedRectangleShape != null ? divRoundedRectangleShape.hash() : 0);
        Expression expressionG = g();
        int iHashCode2 = iHash12 + (expressionG != null ? expressionG.hashCode() : 0);
        Expression expressionO = o();
        int iHashCode3 = iHashCode2 + (expressionO != null ? expressionO.hashCode() : 0) + p().hashCode() + this.h.hashCode();
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
        int iHashCode5 = iHash15 + (id != null ? id.hashCode() : 0) + this.s.hashCode();
        DivRoundedRectangleShape divRoundedRectangleShape2 = this.t;
        int iHash16 = iHashCode5 + (divRoundedRectangleShape2 != null ? divRoundedRectangleShape2.hash() : 0);
        DivRoundedRectangleShape divRoundedRectangleShape3 = this.u;
        int iHash17 = iHash16 + (divRoundedRectangleShape3 != null ? divRoundedRectangleShape3.hash() : 0);
        DivIndicatorItemPlacement divIndicatorItemPlacement = this.v;
        int iHash18 = iHash17 + (divIndicatorItemPlacement != null ? divIndicatorItemPlacement.hash() : 0);
        DivLayoutProvider divLayoutProviderV = v();
        int iHash19 = iHash18 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash20 = iHash19 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0) + this.y.hashCode();
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash21 = iHash20 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        String str = this.A;
        int iHashCode6 = iHash21 + (str != null ? str.hashCode() : 0);
        Expression expressionF = f();
        int iHashCode7 = iHashCode6 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode8 = iHashCode7 + (expressionE != null ? expressionE.hashCode() : 0);
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
        int iHash22 = iHashCode8 + iHash6 + this.E.hash() + this.F.hash();
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
        int i5 = iHash22 + iHash7;
        DivTransform divTransformM = m();
        int iHash23 = i5 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash24 = iHash23 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash25 = iHash24 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash26 = iHash25 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode9 = iHash26 + (listN != null ? listN.hashCode() : 0);
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
        int i6 = iHashCode9 + iHash8;
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
        int iHashCode10 = i6 + iHash9 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash27 = iHashCode10 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it10 = listA2.iterator();
            while (it10.hasNext()) {
                iHash10 += ((DivVisibilityAction) it10.next()).hash();
            }
        }
        int iHash28 = iHash27 + iHash10 + getWidth().hash();
        this.S = Integer.valueOf(iHash28);
        return iHash28;
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
        return this.m;
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
        return this.f;
    }

    @Override
    public Expression p() {
        return this.g;
    }

    @Override
    public DivFocus q() {
        return this.o;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivIndicatorJsonParser.b) ml0.a().a4().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.z;
    }

    @Override
    public List u() {
        return this.D;
    }

    @Override
    public DivLayoutProvider v() {
        return this.w;
    }

    @Override
    public List w() {
        return this.M;
    }

    @Override
    public DivVisibilityAction x() {
        return this.P;
    }

    @Override
    public List y() {
        return this.p;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.J;
    }
}
