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

public final class DivSeparator implements d65, ko4, og2 {
    public static final a S = new a(null);
    public static final DivAnimation T;
    public static final Expression U;
    public static final Expression V;
    public static final DivSize.d W;
    public static final Expression X;
    public static final DivSize.c Y;
    public static final s74 Z;
    public final List A;
    public final List B;
    public final Expression C;
    public final Expression D;
    public final List E;
    public final List F;
    public final DivTransform G;
    public final DivChangeTransition H;
    public final DivAppearanceTransition I;
    public final DivAppearanceTransition J;
    public final List K;
    public final List L;
    public final List M;
    public final Expression N;
    public final DivVisibilityAction O;
    public final List P;
    public final DivSize Q;
    public Integer R;
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
    public final DelimiterStyle m;
    public final List n;
    public final List o;
    public final List p;
    public final DivFocus q;
    public final List r;
    public final DivSize s;
    public final List t;
    public final List u;
    public final String v;
    public final DivLayoutProvider w;
    public final List x;
    public final DivEdgeInsets y;
    public final DivEdgeInsets z;

    public static final class DelimiterStyle implements d65, ko4 {
        public static final a d = new a(null);
        public static final Expression e;
        public static final Expression f;
        public static final s74 g;
        public final Expression a;
        public final Expression b;
        public Integer c;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "VERTICAL", "HORIZONTAL", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public enum Orientation {
            VERTICAL("vertical"),
            HORIZONTAL("horizontal");

            private final String value;

            public static final Companion INSTANCE = new Companion(null);
            public static final e74 TO_STRING = new e74() {
                @Override
                public final String invoke(DivSeparator.DelimiterStyle.Orientation orientation) {
                    y45.j(orientation, ES6Iterator.VALUE_PROPERTY);
                    return DivSeparator.DelimiterStyle.Orientation.INSTANCE.b(orientation);
                }
            };
            public static final e74 FROM_STRING = new e74() {
                @Override
                public final DivSeparator.DelimiterStyle.Orientation invoke(String str) {
                    y45.j(str, ES6Iterator.VALUE_PROPERTY);
                    return DivSeparator.DelimiterStyle.Orientation.INSTANCE.a(str);
                }
            };

            public static final class Companion {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final Orientation a(String str) {
                    y45.j(str, ES6Iterator.VALUE_PROPERTY);
                    Orientation orientation = Orientation.VERTICAL;
                    if (y45.e(str, orientation.value)) {
                        return orientation;
                    }
                    Orientation orientation2 = Orientation.HORIZONTAL;
                    if (y45.e(str, orientation2.value)) {
                        return orientation2;
                    }
                    return null;
                }

                public final String b(Orientation orientation) {
                    y45.j(orientation, "obj");
                    return orientation.value;
                }

                public Companion() {
                }
            }

            Orientation(String str) {
                this.value = str;
            }
        }

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final DelimiterStyle a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((DivSeparatorDelimiterStyleJsonParser.b) ml0.a().G6().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        static {
            Expression.a aVar = Expression.a;
            e = aVar.a(335544320);
            f = aVar.a(Orientation.HORIZONTAL);
            g = new s74() {
                @Override
                public final DivSeparator.DelimiterStyle invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return DivSeparator.DelimiterStyle.d.a(hx7Var, jSONObject);
                }
            };
        }

        public DelimiterStyle(Expression expression, Expression expression2) {
            y45.j(expression, "color");
            y45.j(expression2, "orientation");
            this.a = expression;
            this.b = expression2;
        }

        public final boolean a(DelimiterStyle delimiterStyle, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            return delimiterStyle != null && ((Number) this.a.b(oj3Var)).intValue() == ((Number) delimiterStyle.a.b(oj3Var2)).intValue() && this.b.b(oj3Var) == delimiterStyle.b.b(oj3Var2);
        }

        @Override
        public int hash() {
            Integer num = this.c;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(DelimiterStyle.class).hashCode() + this.a.hashCode() + this.b.hashCode();
            this.c = Integer.valueOf(iHashCode);
            return iHashCode;
        }

        @Override
        public JSONObject s() {
            return ((DivSeparatorDelimiterStyleJsonParser.b) ml0.a().G6().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivSeparator a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivSeparatorJsonParser.b) ml0.a().J6().getValue()).a(hx7Var, jSONObject);
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
        T = new DivAnimation(expressionA, expressionA2, null, null, expressionA3, null, null, aVar.a(dValueOf), 108, null);
        U = aVar.a(dValueOf);
        V = aVar.a(Boolean.TRUE);
        W = new DivSize.d(new DivWrapContentSize(null, null, null == true ? 1 : 0, 7, null));
        X = aVar.a(DivVisibility.VISIBLE);
        Y = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        Z = new s74() {
            @Override
            public final DivSeparator invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivSeparator.S.a(hx7Var, jSONObject);
            }
        };
    }

    public DivSeparator(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, List list3, DivBorder divBorder, Expression expression4, Expression expression5, DelimiterStyle delimiterStyle, List list4, List list5, List list6, DivFocus divFocus, List list7, DivSize divSize, List list8, List list9, String str, DivLayoutProvider divLayoutProvider, List list10, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, List list11, List list12, Expression expression6, Expression expression7, List list13, List list14, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list15, List list16, List list17, Expression expression8, DivVisibilityAction divVisibilityAction, List list18, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression4, "captureFocusOnAction");
        y45.j(divSize, "height");
        y45.j(expression8, "visibility");
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
        this.m = delimiterStyle;
        this.n = list4;
        this.o = list5;
        this.p = list6;
        this.q = divFocus;
        this.r = list7;
        this.s = divSize;
        this.t = list8;
        this.u = list9;
        this.v = str;
        this.w = divLayoutProvider;
        this.x = list10;
        this.y = divEdgeInsets;
        this.z = divEdgeInsets2;
        this.A = list11;
        this.B = list12;
        this.C = expression6;
        this.D = expression7;
        this.E = list13;
        this.F = list14;
        this.G = divTransform;
        this.H = divChangeTransition;
        this.I = divAppearanceTransition;
        this.J = divAppearanceTransition2;
        this.K = list15;
        this.L = list16;
        this.M = list17;
        this.N = expression8;
        this.O = divVisibilityAction;
        this.P = list18;
        this.Q = divSize2;
    }

    public static DivSeparator D(DivSeparator divSeparator, DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, List list3, DivBorder divBorder, Expression expression4, Expression expression5, DelimiterStyle delimiterStyle, List list4, List list5, List list6, DivFocus divFocus, List list7, DivSize divSize, List list8, List list9, String str, DivLayoutProvider divLayoutProvider, List list10, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, List list11, List list12, Expression expression6, Expression expression7, List list13, List list14, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list15, List list16, List list17, Expression expression8, DivVisibilityAction divVisibilityAction, List list18, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divSeparator.r() : divAccessibility;
        DivAction divAction2 = (i & 2) != 0 ? divSeparator.b : divAction;
        DivAnimation divAnimation2 = (i & 4) != 0 ? divSeparator.c : divAnimation;
        List list19 = (i & 8) != 0 ? divSeparator.d : list;
        Expression expressionG = (i & 16) != 0 ? divSeparator.g() : expression;
        Expression expressionO = (i & 32) != 0 ? divSeparator.o() : expression2;
        Expression expressionP = (i & 64) != 0 ? divSeparator.p() : expression3;
        List listA = (i & 128) != 0 ? divSeparator.A() : list2;
        List background = (i & 256) != 0 ? divSeparator.getBackground() : list3;
        DivBorder divBorderB = (i & 512) != 0 ? divSeparator.B() : divBorder;
        Expression expression9 = (i & 1024) != 0 ? divSeparator.k : expression4;
        Expression expressionB = (i & 2048) != 0 ? divSeparator.b() : expression5;
        DelimiterStyle delimiterStyle2 = (i & 4096) != 0 ? divSeparator.m : delimiterStyle;
        List listK = (i & 8192) != 0 ? divSeparator.k() : list4;
        List list20 = (i & 16384) != 0 ? divSeparator.o : list5;
        List extensions = (i & 32768) != 0 ? divSeparator.getExtensions() : list6;
        DivFocus divFocusQ = (i & 65536) != 0 ? divSeparator.q() : divFocus;
        List listY = (i & 131072) != 0 ? divSeparator.y() : list7;
        DivSize height = (i & 262144) != 0 ? divSeparator.getHeight() : divSize;
        List list21 = list20;
        List list22 = (i & 524288) != 0 ? divSeparator.t : list8;
        List list23 = (i & 1048576) != 0 ? divSeparator.u : list9;
        return divSeparator.C(divAccessibilityR, divAction2, divAnimation2, list19, expressionG, expressionO, expressionP, listA, background, divBorderB, expression9, expressionB, delimiterStyle2, listK, list21, extensions, divFocusQ, listY, height, list22, list23, (i & 2097152) != 0 ? divSeparator.getId() : str, (i & 4194304) != 0 ? divSeparator.v() : divLayoutProvider, (i & 8388608) != 0 ? divSeparator.x : list10, (i & 16777216) != 0 ? divSeparator.d() : divEdgeInsets, (i & 33554432) != 0 ? divSeparator.t() : divEdgeInsets2, (i & 67108864) != 0 ? divSeparator.A : list11, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divSeparator.B : list12, (i & 268435456) != 0 ? divSeparator.f() : expression6, (i & 536870912) != 0 ? divSeparator.e() : expression7, (i & 1073741824) != 0 ? divSeparator.u() : list13, (i & Integer.MIN_VALUE) != 0 ? divSeparator.h() : list14, (i2 & 1) != 0 ? divSeparator.m() : divTransform, (i2 & 2) != 0 ? divSeparator.j() : divChangeTransition, (i2 & 4) != 0 ? divSeparator.z() : divAppearanceTransition, (i2 & 8) != 0 ? divSeparator.i() : divAppearanceTransition2, (i2 & 16) != 0 ? divSeparator.n() : list15, (i2 & 32) != 0 ? divSeparator.w() : list16, (i2 & 64) != 0 ? divSeparator.c() : list17, (i2 & 128) != 0 ? divSeparator.getVisibility() : expression8, (i2 & 256) != 0 ? divSeparator.x() : divVisibilityAction, (i2 & 512) != 0 ? divSeparator.a() : list18, (i2 & 1024) != 0 ? divSeparator.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.h;
    }

    @Override
    public DivBorder B() {
        return this.j;
    }

    public final DivSeparator C(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, List list3, DivBorder divBorder, Expression expression4, Expression expression5, DelimiterStyle delimiterStyle, List list4, List list5, List list6, DivFocus divFocus, List list7, DivSize divSize, List list8, List list9, String str, DivLayoutProvider divLayoutProvider, List list10, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, List list11, List list12, Expression expression6, Expression expression7, List list13, List list14, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list15, List list16, List list17, Expression expression8, DivVisibilityAction divVisibilityAction, List list18, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression4, "captureFocusOnAction");
        y45.j(divSize, "height");
        y45.j(expression8, "visibility");
        y45.j(divSize2, "width");
        return new DivSeparator(divAccessibility, divAction, divAnimation, list, expression, expression2, expression3, list2, list3, divBorder, expression4, expression5, delimiterStyle, list4, list5, list6, divFocus, list7, divSize, list8, list9, str, divLayoutProvider, list10, divEdgeInsets, divEdgeInsets2, list11, list12, expression6, expression7, list13, list14, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list15, list16, list17, expression8, divVisibilityAction, list18, divSize2);
    }

    public final boolean E(DivSeparator divSeparator, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean zA3;
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
        if (divSeparator == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divSeparator.r(), oj3Var, oj3Var2);
        } else {
            zA = divSeparator.r() == null;
        }
        if (!zA) {
            return false;
        }
        DivAction divAction = this.b;
        if (divAction != null) {
            zA2 = divAction.a(divSeparator.b, oj3Var, oj3Var2);
        } else {
            zA2 = divSeparator.b == null;
        }
        if (!zA2 || !this.c.a(divSeparator.c, oj3Var, oj3Var2)) {
            return false;
        }
        List list = this.d;
        if (list != null) {
            List list2 = divSeparator.d;
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
            z = divSeparator.d == null;
        }
        if (!z) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divSeparator.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divSeparator.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divSeparator.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divSeparator.A();
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
            z2 = divSeparator.A() == null;
        }
        if (!z2) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divSeparator.getBackground();
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
            z3 = divSeparator.getBackground() == null;
        }
        if (!z3) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA3 = divBorderB.a(divSeparator.B(), oj3Var, oj3Var2);
        } else {
            zA3 = divSeparator.B() == null;
        }
        if (!zA3 || ((Boolean) this.k.b(oj3Var)).booleanValue() != ((Boolean) divSeparator.k.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divSeparator.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null)) {
            return false;
        }
        DelimiterStyle delimiterStyle = this.m;
        if (delimiterStyle != null) {
            zA4 = delimiterStyle.a(divSeparator.m, oj3Var, oj3Var2);
        } else {
            zA4 = divSeparator.m == null;
        }
        if (!zA4) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divSeparator.k();
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
            z4 = divSeparator.k() == null;
        }
        if (!z4) {
            return false;
        }
        List list3 = this.o;
        if (list3 != null) {
            List list4 = divSeparator.o;
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
            z5 = divSeparator.o == null;
        }
        if (!z5) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divSeparator.getExtensions();
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
            z6 = divSeparator.getExtensions() == null;
        }
        if (!z6) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA5 = divFocusQ.a(divSeparator.q(), oj3Var, oj3Var2);
        } else {
            zA5 = divSeparator.q() == null;
        }
        if (!zA5) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divSeparator.y();
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
            z7 = divSeparator.y() == null;
        }
        if (!z7 || !getHeight().a(divSeparator.getHeight(), oj3Var, oj3Var2)) {
            return false;
        }
        List list5 = this.t;
        if (list5 != null) {
            List list6 = divSeparator.t;
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
            z8 = divSeparator.t == null;
        }
        if (!z8) {
            return false;
        }
        List list7 = this.u;
        if (list7 != null) {
            List list8 = divSeparator.u;
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
            z9 = divSeparator.u == null;
        }
        if (!z9 || !y45.e(getId(), divSeparator.getId())) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA6 = divLayoutProviderV.a(divSeparator.v(), oj3Var, oj3Var2);
        } else {
            zA6 = divSeparator.v() == null;
        }
        if (!zA6) {
            return false;
        }
        List list9 = this.x;
        if (list9 != null) {
            List list10 = divSeparator.x;
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
            z10 = divSeparator.x == null;
        }
        if (!z10) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA7 = divEdgeInsetsD.a(divSeparator.d(), oj3Var, oj3Var2);
        } else {
            zA7 = divSeparator.d() == null;
        }
        if (!zA7) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA8 = divEdgeInsetsT.a(divSeparator.t(), oj3Var, oj3Var2);
        } else {
            zA8 = divSeparator.t() == null;
        }
        if (!zA8) {
            return false;
        }
        List list11 = this.A;
        if (list11 != null) {
            List list12 = divSeparator.A;
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
            z11 = divSeparator.A == null;
        }
        if (!z11) {
            return false;
        }
        List list13 = this.B;
        if (list13 != null) {
            List list14 = divSeparator.B;
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
            z12 = divSeparator.B == null;
        }
        if (!z12) {
            return false;
        }
        Expression expressionF = f();
        String str = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divSeparator.f();
        if (!y45.e(str, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divSeparator.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divSeparator.u();
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
            z13 = divSeparator.u() == null;
        }
        if (!z13) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divSeparator.h();
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
            z14 = divSeparator.h() == null;
        }
        if (!z14) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA9 = divTransformM.a(divSeparator.m(), oj3Var, oj3Var2);
        } else {
            zA9 = divSeparator.m() == null;
        }
        if (!zA9) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA10 = divChangeTransitionJ.a(divSeparator.j(), oj3Var, oj3Var2);
        } else {
            zA10 = divSeparator.j() == null;
        }
        if (!zA10) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA11 = divAppearanceTransitionZ.a(divSeparator.z(), oj3Var, oj3Var2);
        } else {
            zA11 = divSeparator.z() == null;
        }
        if (!zA11) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA12 = divAppearanceTransitionI.a(divSeparator.i(), oj3Var, oj3Var2);
        } else {
            zA12 = divSeparator.i() == null;
        }
        if (!zA12) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divSeparator.n();
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
            z15 = divSeparator.n() == null;
        }
        if (!z15) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divSeparator.w();
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
            z16 = divSeparator.w() == null;
        }
        if (!z16) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divSeparator.c();
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
            z17 = divSeparator.c() == null;
        }
        if (!z17 || getVisibility().b(oj3Var) != divSeparator.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divSeparator.x(), oj3Var, oj3Var2);
        } else {
            zG = divSeparator.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divSeparator.a();
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
            z18 = divSeparator.a() == null;
        }
        return z18 && getWidth().a(divSeparator.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.P;
    }

    @Override
    public Expression b() {
        return this.l;
    }

    @Override
    public List c() {
        return this.M;
    }

    @Override
    public DivEdgeInsets d() {
        return this.y;
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
        return this.e;
    }

    @Override
    public List getBackground() {
        return this.i;
    }

    @Override
    public List getExtensions() {
        return this.p;
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
        return this.N;
    }

    @Override
    public DivSize getWidth() {
        return this.Q;
    }

    @Override
    public List h() {
        return this.F;
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
        Integer num = this.R;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivSeparator.class).hashCode();
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
        int iHash20 = i3 + (divBorderB != null ? divBorderB.hash() : 0) + this.k.hashCode();
        Expression expressionB = b();
        int iHashCode4 = iHash20 + (expressionB != null ? expressionB.hashCode() : 0);
        DelimiterStyle delimiterStyle = this.m;
        int iHash21 = iHashCode4 + (delimiterStyle != null ? delimiterStyle.hash() : 0);
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
        int i4 = iHash21 + iHash4;
        List list2 = this.o;
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
        int iHash23 = iHash22 + iHash7 + getHeight().hash();
        List list3 = this.t;
        if (list3 != null) {
            Iterator it8 = list3.iterator();
            iHash8 = 0;
            while (it8.hasNext()) {
                iHash8 += ((DivAction) it8.next()).hash();
            }
        } else {
            iHash8 = 0;
        }
        int i7 = iHash23 + iHash8;
        List list4 = this.u;
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
        int iHash24 = iHashCode5 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        List list5 = this.x;
        if (list5 != null) {
            Iterator it10 = list5.iterator();
            iHash10 = 0;
            while (it10.hasNext()) {
                iHash10 += ((DivAction) it10.next()).hash();
            }
        } else {
            iHash10 = 0;
        }
        int i9 = iHash24 + iHash10;
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash25 = i9 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0);
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash26 = iHash25 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        List list6 = this.A;
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
        List list7 = this.B;
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
        int iHash27 = i13 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash28 = iHash27 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash29 = iHash28 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash30 = iHash29 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode8 = iHash30 + (listN != null ? listN.hashCode() : 0);
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
        int iHash31 = iHashCode9 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it17 = listA2.iterator();
            while (it17.hasNext()) {
                iHash17 += ((DivVisibilityAction) it17.next()).hash();
            }
        }
        int iHash32 = iHash31 + iHash17 + getWidth().hash();
        this.R = Integer.valueOf(iHash32);
        return iHash32;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.J;
    }

    @Override
    public DivChangeTransition j() {
        return this.H;
    }

    @Override
    public List k() {
        return this.n;
    }

    @Override
    public DivTransform m() {
        return this.G;
    }

    @Override
    public List n() {
        return this.K;
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
        return this.q;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivSeparatorJsonParser.b) ml0.a().J6().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.z;
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
        return this.L;
    }

    @Override
    public DivVisibilityAction x() {
        return this.O;
    }

    @Override
    public List y() {
        return this.r;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.I;
    }
}
