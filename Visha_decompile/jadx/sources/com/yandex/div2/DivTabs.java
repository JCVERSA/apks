package com.yandex.div2;

import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.tools.fragments.SettingFragment;
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

public final class DivTabs implements d65, ko4, og2 {
    public static final a T = new a(null);
    public static final Expression U;
    public static final Expression V;
    public static final Expression W;
    public static final DivSize.d X;
    public static final Expression Y;
    public static final Expression Z;
    public static final Expression a0;
    public static final DivEdgeInsets b0;
    public static final Expression c0;
    public static final DivEdgeInsets d0;
    public static final Expression e0;
    public static final DivSize.c f0;
    public static final s74 g0;
    public final DivEdgeInsets A;
    public final Expression B;
    public final TabTitleDelimiter C;
    public final TabTitleStyle D;
    public final DivEdgeInsets E;
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
    public Integer S;
    public final DivAccessibility a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final List e;
    public final List f;
    public final DivBorder g;
    public final Expression h;
    public final List i;
    public final Expression j;
    public final List k;
    public final DivFocus l;
    public final List m;
    public final Expression n;
    public final DivSize o;
    public final String p;
    public final List q;
    public final DivLayoutProvider r;
    public final DivEdgeInsets s;
    public final DivEdgeInsets t;
    public final Expression u;
    public final Expression v;
    public final Expression w;
    public final List x;
    public final Expression y;
    public final Expression z;

    public static final class Item implements d65, ko4 {
        public static final a e = new a(null);
        public static final s74 f = new s74() {
            @Override
            public final DivTabs.Item invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivTabs.Item.e.a(hx7Var, jSONObject);
            }
        };
        public final Div a;
        public final Expression b;
        public final DivAction c;
        public Integer d;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Item a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((c4) ml0.a().L7().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public Item(Div div, Expression expression, DivAction divAction) {
            y45.j(div, TtmlNode.TAG_DIV);
            y45.j(expression, "title");
            this.a = div;
            this.b = expression;
            this.c = divAction;
        }

        public static Item b(Item item, Div div, Expression expression, DivAction divAction, int i, Object obj) {
            if ((i & 1) != 0) {
                div = item.a;
            }
            if ((i & 2) != 0) {
                expression = item.b;
            }
            if ((i & 4) != 0) {
                divAction = item.c;
            }
            return item.a(div, expression, divAction);
        }

        public final Item a(Div div, Expression expression, DivAction divAction) {
            y45.j(div, TtmlNode.TAG_DIV);
            y45.j(expression, "title");
            return new Item(div, expression, divAction);
        }

        public final boolean c(Item item, oj3 oj3Var, oj3 oj3Var2) {
            boolean zA;
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (item == null || !this.a.a(item.a, oj3Var, oj3Var2) || !y45.e(this.b.b(oj3Var), item.b.b(oj3Var2))) {
                return false;
            }
            DivAction divAction = this.c;
            if (divAction != null) {
                zA = divAction.a(item.c, oj3Var, oj3Var2);
            } else {
                zA = item.c == null;
            }
            return zA;
        }

        @Override
        public int hash() {
            Integer num = this.d;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Item.class).hashCode() + this.a.hash() + this.b.hashCode();
            DivAction divAction = this.c;
            int iHash = iHashCode + (divAction != null ? divAction.hash() : 0);
            this.d = Integer.valueOf(iHash);
            return iHash;
        }

        @Override
        public JSONObject s() {
            return ((c4) ml0.a().L7().getValue()).b(ml0.b(), this);
        }
    }

    public static final class TabTitleDelimiter implements d65, ko4 {
        public static final a e = new a(null);
        public static final DivFixedSize f;
        public static final DivFixedSize g;
        public static final s74 h;
        public final DivFixedSize a;
        public final Expression b;
        public final DivFixedSize c;
        public Integer d;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final TabTitleDelimiter a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((f4.b) ml0.a().R7().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        static {
            Expression.a aVar = Expression.a;
            int i = 1;
            f = new DivFixedSize(null == true ? 1 : 0, aVar.a(12L), i, null == true ? 1 : 0);
            g = new DivFixedSize(null == true ? 1 : 0, aVar.a(12L), i, null == true ? 1 : 0);
            h = new s74() {
                @Override
                public final DivTabs.TabTitleDelimiter invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return DivTabs.TabTitleDelimiter.e.a(hx7Var, jSONObject);
                }
            };
        }

        public TabTitleDelimiter(DivFixedSize divFixedSize, Expression expression, DivFixedSize divFixedSize2) {
            y45.j(divFixedSize, "height");
            y45.j(expression, "imageUrl");
            y45.j(divFixedSize2, "width");
            this.a = divFixedSize;
            this.b = expression;
            this.c = divFixedSize2;
        }

        public final boolean a(TabTitleDelimiter tabTitleDelimiter, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            return tabTitleDelimiter != null && this.a.a(tabTitleDelimiter.a, oj3Var, oj3Var2) && y45.e(this.b.b(oj3Var), tabTitleDelimiter.b.b(oj3Var2)) && this.c.a(tabTitleDelimiter.c, oj3Var, oj3Var2);
        }

        @Override
        public int hash() {
            Integer num = this.d;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(TabTitleDelimiter.class).hashCode() + this.a.hash() + this.b.hashCode() + this.c.hash();
            this.d = Integer.valueOf(iHashCode);
            return iHashCode;
        }

        @Override
        public JSONObject s() {
            return ((f4.b) ml0.a().R7().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTabs a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivTabsJsonParser.b) ml0.a().O7().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        U = aVar.a(Double.valueOf(1.0d));
        Boolean bool = Boolean.FALSE;
        V = aVar.a(bool);
        W = aVar.a(bool);
        X = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        Y = aVar.a(bool);
        Z = aVar.a(0L);
        a0 = aVar.a(335544320);
        int i = 82;
        DefaultConstructorMarker defaultConstructorMarker = null;
        Expression expression = null;
        Expression expression2 = null;
        b0 = new DivEdgeInsets(aVar.a(0L), expression, aVar.a(12L), aVar.a(12L), null == true ? 1 : 0, aVar.a(0L), expression2, i, defaultConstructorMarker);
        c0 = aVar.a(Boolean.TRUE);
        d0 = new DivEdgeInsets(aVar.a(8L), expression, aVar.a(12L), aVar.a(12L), null == true ? 1 : 0, aVar.a(0L), expression2, i, defaultConstructorMarker);
        e0 = aVar.a(DivVisibility.VISIBLE);
        f0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        g0 = new s74() {
            @Override
            public final DivTabs invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivTabs.T.a(hx7Var, jSONObject);
            }
        };
    }

    public DivTabs(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, Expression expression5, List list4, DivFocus divFocus, List list5, Expression expression6, DivSize divSize, String str, List list6, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression7, Expression expression8, Expression expression9, List list7, Expression expression10, Expression expression11, DivEdgeInsets divEdgeInsets3, Expression expression12, TabTitleDelimiter tabTitleDelimiter, TabTitleStyle tabTitleStyle, DivEdgeInsets divEdgeInsets4, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression13, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression5, "dynamicHeight");
        y45.j(expression6, "hasSeparator");
        y45.j(divSize, "height");
        y45.j(list6, "items");
        y45.j(expression7, "restrictParentScroll");
        y45.j(expression10, "selectedTab");
        y45.j(expression11, "separatorColor");
        y45.j(divEdgeInsets3, "separatorPaddings");
        y45.j(expression12, "switchTabsByContentSwipeEnabled");
        y45.j(divEdgeInsets4, "titlePaddings");
        y45.j(expression13, "visibility");
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
        this.j = expression5;
        this.k = list4;
        this.l = divFocus;
        this.m = list5;
        this.n = expression6;
        this.o = divSize;
        this.p = str;
        this.q = list6;
        this.r = divLayoutProvider;
        this.s = divEdgeInsets;
        this.t = divEdgeInsets2;
        this.u = expression7;
        this.v = expression8;
        this.w = expression9;
        this.x = list7;
        this.y = expression10;
        this.z = expression11;
        this.A = divEdgeInsets3;
        this.B = expression12;
        this.C = tabTitleDelimiter;
        this.D = tabTitleStyle;
        this.E = divEdgeInsets4;
        this.F = list8;
        this.G = divTransform;
        this.H = divChangeTransition;
        this.I = divAppearanceTransition;
        this.J = divAppearanceTransition2;
        this.K = list9;
        this.L = list10;
        this.M = list11;
        this.N = expression13;
        this.O = divVisibilityAction;
        this.P = list12;
        this.Q = divSize2;
    }

    public static DivTabs D(DivTabs divTabs, DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, Expression expression5, List list4, DivFocus divFocus, List list5, Expression expression6, DivSize divSize, String str, List list6, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression7, Expression expression8, Expression expression9, List list7, Expression expression10, Expression expression11, DivEdgeInsets divEdgeInsets3, Expression expression12, TabTitleDelimiter tabTitleDelimiter, TabTitleStyle tabTitleStyle, DivEdgeInsets divEdgeInsets4, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression13, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divTabs.r() : divAccessibility;
        Expression expressionG = (i & 2) != 0 ? divTabs.g() : expression;
        Expression expressionO = (i & 4) != 0 ? divTabs.o() : expression2;
        Expression expressionP = (i & 8) != 0 ? divTabs.p() : expression3;
        List listA = (i & 16) != 0 ? divTabs.A() : list;
        List background = (i & 32) != 0 ? divTabs.getBackground() : list2;
        DivBorder divBorderB = (i & 64) != 0 ? divTabs.B() : divBorder;
        Expression expressionB = (i & 128) != 0 ? divTabs.b() : expression4;
        List listK = (i & 256) != 0 ? divTabs.k() : list3;
        Expression expression14 = (i & 512) != 0 ? divTabs.j : expression5;
        List extensions = (i & 1024) != 0 ? divTabs.getExtensions() : list4;
        DivFocus divFocusQ = (i & 2048) != 0 ? divTabs.q() : divFocus;
        List listY = (i & 4096) != 0 ? divTabs.y() : list5;
        Expression expression15 = (i & 8192) != 0 ? divTabs.n : expression6;
        DivSize height = (i & 16384) != 0 ? divTabs.getHeight() : divSize;
        String id = (i & 32768) != 0 ? divTabs.getId() : str;
        DivSize divSize3 = height;
        List list13 = (i & 65536) != 0 ? divTabs.q : list6;
        return divTabs.C(divAccessibilityR, expressionG, expressionO, expressionP, listA, background, divBorderB, expressionB, listK, expression14, extensions, divFocusQ, listY, expression15, divSize3, id, list13, (i & 131072) != 0 ? divTabs.v() : divLayoutProvider, (i & 262144) != 0 ? divTabs.d() : divEdgeInsets, (i & 524288) != 0 ? divTabs.t() : divEdgeInsets2, (i & 1048576) != 0 ? divTabs.u : expression7, (i & 2097152) != 0 ? divTabs.f() : expression8, (i & 4194304) != 0 ? divTabs.e() : expression9, (i & 8388608) != 0 ? divTabs.u() : list7, (i & 16777216) != 0 ? divTabs.y : expression10, (i & 33554432) != 0 ? divTabs.z : expression11, (i & 67108864) != 0 ? divTabs.A : divEdgeInsets3, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divTabs.B : expression12, (i & 268435456) != 0 ? divTabs.C : tabTitleDelimiter, (i & 536870912) != 0 ? divTabs.D : tabTitleStyle, (i & 1073741824) != 0 ? divTabs.E : divEdgeInsets4, (i & Integer.MIN_VALUE) != 0 ? divTabs.h() : list8, (i2 & 1) != 0 ? divTabs.m() : divTransform, (i2 & 2) != 0 ? divTabs.j() : divChangeTransition, (i2 & 4) != 0 ? divTabs.z() : divAppearanceTransition, (i2 & 8) != 0 ? divTabs.i() : divAppearanceTransition2, (i2 & 16) != 0 ? divTabs.n() : list9, (i2 & 32) != 0 ? divTabs.w() : list10, (i2 & 64) != 0 ? divTabs.c() : list11, (i2 & 128) != 0 ? divTabs.getVisibility() : expression13, (i2 & 256) != 0 ? divTabs.x() : divVisibilityAction, (i2 & 512) != 0 ? divTabs.a() : list12, (i2 & 1024) != 0 ? divTabs.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.e;
    }

    @Override
    public DivBorder B() {
        return this.g;
    }

    public final DivTabs C(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, Expression expression5, List list4, DivFocus divFocus, List list5, Expression expression6, DivSize divSize, String str, List list6, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2, Expression expression7, Expression expression8, Expression expression9, List list7, Expression expression10, Expression expression11, DivEdgeInsets divEdgeInsets3, Expression expression12, TabTitleDelimiter tabTitleDelimiter, TabTitleStyle tabTitleStyle, DivEdgeInsets divEdgeInsets4, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression13, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression5, "dynamicHeight");
        y45.j(expression6, "hasSeparator");
        y45.j(divSize, "height");
        y45.j(list6, "items");
        y45.j(expression7, "restrictParentScroll");
        y45.j(expression10, "selectedTab");
        y45.j(expression11, "separatorColor");
        y45.j(divEdgeInsets3, "separatorPaddings");
        y45.j(expression12, "switchTabsByContentSwipeEnabled");
        y45.j(divEdgeInsets4, "titlePaddings");
        y45.j(expression13, "visibility");
        y45.j(divSize2, "width");
        return new DivTabs(divAccessibility, expression, expression2, expression3, list, list2, divBorder, expression4, list3, expression5, list4, divFocus, list5, expression6, divSize, str, list6, divLayoutProvider, divEdgeInsets, divEdgeInsets2, expression7, expression8, expression9, list7, expression10, expression11, divEdgeInsets3, expression12, tabTitleDelimiter, tabTitleStyle, divEdgeInsets4, list8, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list9, list10, list11, expression13, divVisibilityAction, list12, divSize2);
    }

    public final boolean E(DivTabs divTabs, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean z;
        boolean z2;
        boolean zA2;
        boolean z3;
        boolean z4;
        boolean zA3;
        boolean z5;
        boolean z6;
        boolean zA4;
        boolean zA5;
        boolean zA6;
        boolean z7;
        boolean zA7;
        boolean zA8;
        boolean z8;
        boolean zA9;
        boolean zA10;
        boolean zA11;
        boolean zA12;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean zG;
        boolean z12;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divTabs == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divTabs.r(), oj3Var, oj3Var2);
        } else {
            zA = divTabs.r() == null;
        }
        if (!zA) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divTabs.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divTabs.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divTabs.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divTabs.A();
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
            z = divTabs.A() == null;
        }
        if (!z) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divTabs.getBackground();
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
            z2 = divTabs.getBackground() == null;
        }
        if (!z2) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA2 = divBorderB.a(divTabs.B(), oj3Var, oj3Var2);
        } else {
            zA2 = divTabs.B() == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divTabs.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divTabs.k();
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
            z3 = divTabs.k() == null;
        }
        if (!z3 || ((Boolean) this.j.b(oj3Var)).booleanValue() != ((Boolean) divTabs.j.b(oj3Var2)).booleanValue()) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divTabs.getExtensions();
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
            z4 = divTabs.getExtensions() == null;
        }
        if (!z4) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA3 = divFocusQ.a(divTabs.q(), oj3Var, oj3Var2);
        } else {
            zA3 = divTabs.q() == null;
        }
        if (!zA3) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divTabs.y();
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
            z5 = divTabs.y() == null;
        }
        if (!z5 || ((Boolean) this.n.b(oj3Var)).booleanValue() != ((Boolean) divTabs.n.b(oj3Var2)).booleanValue() || !getHeight().a(divTabs.getHeight(), oj3Var, oj3Var2) || !y45.e(getId(), divTabs.getId())) {
            return false;
        }
        List list = this.q;
        List list2 = divTabs.q;
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
                if (!((Item) next6).c((Item) list2.get(i11), oj3Var, oj3Var2)) {
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
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA4 = divLayoutProviderV.a(divTabs.v(), oj3Var, oj3Var2);
        } else {
            zA4 = divTabs.v() == null;
        }
        if (!zA4) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA5 = divEdgeInsetsD.a(divTabs.d(), oj3Var, oj3Var2);
        } else {
            zA5 = divTabs.d() == null;
        }
        if (!zA5) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA6 = divEdgeInsetsT.a(divTabs.t(), oj3Var, oj3Var2);
        } else {
            zA6 = divTabs.t() == null;
        }
        if (!zA6 || ((Boolean) this.u.b(oj3Var)).booleanValue() != ((Boolean) divTabs.u.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expressionF = f();
        String str = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divTabs.f();
        if (!y45.e(str, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divTabs.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divTabs.u();
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
            z7 = divTabs.u() == null;
        }
        if (!z7 || ((Number) this.y.b(oj3Var)).longValue() != ((Number) divTabs.y.b(oj3Var2)).longValue() || ((Number) this.z.b(oj3Var)).intValue() != ((Number) divTabs.z.b(oj3Var2)).intValue() || !this.A.a(divTabs.A, oj3Var, oj3Var2) || ((Boolean) this.B.b(oj3Var)).booleanValue() != ((Boolean) divTabs.B.b(oj3Var2)).booleanValue()) {
            return false;
        }
        TabTitleDelimiter tabTitleDelimiter = this.C;
        if (tabTitleDelimiter != null) {
            zA7 = tabTitleDelimiter.a(divTabs.C, oj3Var, oj3Var2);
        } else {
            zA7 = divTabs.C == null;
        }
        if (!zA7) {
            return false;
        }
        TabTitleStyle tabTitleStyle = this.D;
        if (tabTitleStyle != null) {
            zA8 = tabTitleStyle.a(divTabs.D, oj3Var, oj3Var2);
        } else {
            zA8 = divTabs.D == null;
        }
        if (!zA8 || !this.E.a(divTabs.E, oj3Var, oj3Var2)) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divTabs.h();
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
            z8 = divTabs.h() == null;
        }
        if (!z8) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA9 = divTransformM.a(divTabs.m(), oj3Var, oj3Var2);
        } else {
            zA9 = divTabs.m() == null;
        }
        if (!zA9) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA10 = divChangeTransitionJ.a(divTabs.j(), oj3Var, oj3Var2);
        } else {
            zA10 = divTabs.j() == null;
        }
        if (!zA10) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA11 = divAppearanceTransitionZ.a(divTabs.z(), oj3Var, oj3Var2);
        } else {
            zA11 = divTabs.z() == null;
        }
        if (!zA11) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA12 = divAppearanceTransitionI.a(divTabs.i(), oj3Var, oj3Var2);
        } else {
            zA12 = divTabs.i() == null;
        }
        if (!zA12) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divTabs.n();
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
            z9 = divTabs.n() == null;
        }
        if (!z9) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divTabs.w();
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
            z10 = divTabs.w() == null;
        }
        if (!z10) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divTabs.c();
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
            z11 = divTabs.c() == null;
        }
        if (!z11 || getVisibility().b(oj3Var) != divTabs.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divTabs.x(), oj3Var, oj3Var2);
        } else {
            zG = divTabs.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divTabs.a();
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
            z12 = divTabs.a() == null;
        }
        return z12 && getWidth().a(divTabs.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.P;
    }

    @Override
    public Expression b() {
        return this.h;
    }

    @Override
    public List c() {
        return this.M;
    }

    @Override
    public DivEdgeInsets d() {
        return this.s;
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
        return this.k;
    }

    @Override
    public DivSize getHeight() {
        return this.o;
    }

    @Override
    public String getId() {
        return this.p;
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
        Integer num = this.S;
        if (num != null) {
            return num.intValue();
        }
        int iL = l();
        Iterator it = this.q.iterator();
        int iHash = 0;
        while (it.hasNext()) {
            iHash += ((Item) it.next()).hash();
        }
        int i = iL + iHash;
        this.S = Integer.valueOf(i);
        return i;
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
        return this.i;
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
        Integer num = this.R;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivTabs.class).hashCode();
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
        int iHashCode5 = iHashCode4 + iHash3 + this.j.hashCode();
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
        int i3 = iHashCode5 + iHash4;
        DivFocus divFocusQ = q();
        int iHash13 = i3 + (divFocusQ != null ? divFocusQ.hash() : 0);
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
        int iHashCode6 = iHash13 + iHash5 + this.n.hashCode() + getHeight().hash();
        String id = getId();
        int iHashCode7 = iHashCode6 + (id != null ? id.hashCode() : 0);
        DivLayoutProvider divLayoutProviderV = v();
        int iHash14 = iHashCode7 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash15 = iHash14 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0);
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash16 = iHash15 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0) + this.u.hashCode();
        Expression expressionF = f();
        int iHashCode8 = iHash16 + (expressionF != null ? expressionF.hashCode() : 0);
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
        int iHashCode10 = iHashCode9 + iHash6 + this.y.hashCode() + this.z.hashCode() + this.A.hash() + this.B.hashCode();
        TabTitleDelimiter tabTitleDelimiter = this.C;
        int iHash17 = iHashCode10 + (tabTitleDelimiter != null ? tabTitleDelimiter.hash() : 0);
        TabTitleStyle tabTitleStyle = this.D;
        int iHash18 = iHash17 + (tabTitleStyle != null ? tabTitleStyle.hash() : 0) + this.E.hash();
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
        int i4 = iHash18 + iHash7;
        DivTransform divTransformM = m();
        int iHash19 = i4 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash20 = iHash19 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash21 = iHash20 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash22 = iHash21 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode11 = iHash22 + (listN != null ? listN.hashCode() : 0);
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
        int i5 = iHashCode11 + iHash8;
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
        int iHashCode12 = i5 + iHash9 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash23 = iHashCode12 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it10 = listA2.iterator();
            while (it10.hasNext()) {
                iHash10 += ((DivVisibilityAction) it10.next()).hash();
            }
        }
        int iHash24 = iHash23 + iHash10 + getWidth().hash();
        this.R = Integer.valueOf(iHash24);
        return iHash24;
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
        return this.c;
    }

    @Override
    public Expression p() {
        return this.d;
    }

    @Override
    public DivFocus q() {
        return this.l;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivTabsJsonParser.b) ml0.a().O7().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.t;
    }

    @Override
    public List u() {
        return this.x;
    }

    @Override
    public DivLayoutProvider v() {
        return this.r;
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
        return this.m;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.I;
    }

    public static final class TabTitleStyle implements d65, ko4 {
        public static final Expression A;
        public static final Expression B;
        public static final Expression C;
        public static final Expression D;
        public static final Expression E;
        public static final Expression F;
        public static final DivEdgeInsets G;
        public static final s74 H;
        public static final a v = new a(null);
        public static final Expression w;
        public static final Expression x;
        public static final Expression y;
        public static final Expression z;
        public final Expression a;
        public final Expression b;
        public final Expression c;
        public final Expression d;
        public final Expression e;
        public final Expression f;
        public final Expression g;
        public final DivCornersRadius h;
        public final Expression i;
        public final Expression j;
        public final Expression k;
        public final Expression l;
        public final Expression m;
        public final Expression n;
        public final Expression o;
        public final Expression p;
        public final Expression q;
        public final Expression r;
        public final Expression s;
        public final DivEdgeInsets t;
        public Integer u;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "SLIDE", "FADE", "NONE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public enum AnimationType {
            SLIDE("slide"),
            FADE(SettingFragment.SHAKE_ITEM_MUSIC_FADE),
            NONE("none");

            private final String value;

            public static final Companion INSTANCE = new Companion(null);
            public static final e74 TO_STRING = new e74() {
                @Override
                public final String invoke(DivTabs.TabTitleStyle.AnimationType animationType) {
                    y45.j(animationType, ES6Iterator.VALUE_PROPERTY);
                    return DivTabs.TabTitleStyle.AnimationType.INSTANCE.b(animationType);
                }
            };
            public static final e74 FROM_STRING = new e74() {
                @Override
                public final DivTabs.TabTitleStyle.AnimationType invoke(String str) {
                    y45.j(str, ES6Iterator.VALUE_PROPERTY);
                    return DivTabs.TabTitleStyle.AnimationType.INSTANCE.a(str);
                }
            };

            public static final class Companion {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final AnimationType a(String str) {
                    y45.j(str, ES6Iterator.VALUE_PROPERTY);
                    AnimationType animationType = AnimationType.SLIDE;
                    if (y45.e(str, animationType.value)) {
                        return animationType;
                    }
                    AnimationType animationType2 = AnimationType.FADE;
                    if (y45.e(str, animationType2.value)) {
                        return animationType2;
                    }
                    AnimationType animationType3 = AnimationType.NONE;
                    if (y45.e(str, animationType3.value)) {
                        return animationType3;
                    }
                    return null;
                }

                public final String b(AnimationType animationType) {
                    y45.j(animationType, "obj");
                    return animationType.value;
                }

                public Companion() {
                }
            }

            AnimationType(String str) {
                this.value = str;
            }
        }

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final TabTitleStyle a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((DivTabsTabTitleStyleJsonParser.b) ml0.a().U7().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        static {
            Expression.a aVar = Expression.a;
            w = aVar.a(-9120);
            x = aVar.a(-872415232);
            y = aVar.a(300L);
            z = aVar.a(AnimationType.SLIDE);
            A = aVar.a(12L);
            B = aVar.a(DivSizeUnit.SP);
            C = aVar.a(DivFontWeight.REGULAR);
            D = aVar.a(Integer.MIN_VALUE);
            E = aVar.a(0L);
            F = aVar.a(Double.valueOf(0.0d));
            G = new DivEdgeInsets(aVar.a(6L), null, aVar.a(8L), aVar.a(8L), null, aVar.a(6L), null, 82, null);
            H = new s74() {
                @Override
                public final DivTabs.TabTitleStyle invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return DivTabs.TabTitleStyle.v.a(hx7Var, jSONObject);
                }
            };
        }

        public TabTitleStyle(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Expression expression6, Expression expression7, DivCornersRadius divCornersRadius, Expression expression8, Expression expression9, Expression expression10, Expression expression11, Expression expression12, Expression expression13, Expression expression14, Expression expression15, Expression expression16, Expression expression17, Expression expression18, DivEdgeInsets divEdgeInsets) {
            y45.j(expression, "activeBackgroundColor");
            y45.j(expression4, "activeTextColor");
            y45.j(expression5, "animationDuration");
            y45.j(expression6, "animationType");
            y45.j(expression9, TtmlNode.ATTR_TTS_FONT_SIZE);
            y45.j(expression10, "fontSizeUnit");
            y45.j(expression11, TtmlNode.ATTR_TTS_FONT_WEIGHT);
            y45.j(expression15, "inactiveTextColor");
            y45.j(expression16, "itemSpacing");
            y45.j(expression17, "letterSpacing");
            y45.j(divEdgeInsets, "paddings");
            this.a = expression;
            this.b = expression2;
            this.c = expression3;
            this.d = expression4;
            this.e = expression5;
            this.f = expression6;
            this.g = expression7;
            this.h = divCornersRadius;
            this.i = expression8;
            this.j = expression9;
            this.k = expression10;
            this.l = expression11;
            this.m = expression12;
            this.n = expression13;
            this.o = expression14;
            this.p = expression15;
            this.q = expression16;
            this.r = expression17;
            this.s = expression18;
            this.t = divEdgeInsets;
        }

        public final boolean a(TabTitleStyle tabTitleStyle, oj3 oj3Var, oj3 oj3Var2) {
            boolean zA;
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (tabTitleStyle == null || ((Number) this.a.b(oj3Var)).intValue() != ((Number) tabTitleStyle.a.b(oj3Var2)).intValue()) {
                return false;
            }
            Expression expression = this.b;
            JSONObject jSONObject = expression != null ? (JSONObject) expression.b(oj3Var) : null;
            Expression expression2 = tabTitleStyle.b;
            if (!y45.e(jSONObject, expression2 != null ? (JSONObject) expression2.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression3 = this.c;
            DivFontWeight divFontWeight = expression3 != null ? (DivFontWeight) expression3.b(oj3Var) : null;
            Expression expression4 = tabTitleStyle.c;
            if (divFontWeight != (expression4 != null ? (DivFontWeight) expression4.b(oj3Var2) : null) || ((Number) this.d.b(oj3Var)).intValue() != ((Number) tabTitleStyle.d.b(oj3Var2)).intValue() || ((Number) this.e.b(oj3Var)).longValue() != ((Number) tabTitleStyle.e.b(oj3Var2)).longValue() || this.f.b(oj3Var) != tabTitleStyle.f.b(oj3Var2)) {
                return false;
            }
            Expression expression5 = this.g;
            Long l = expression5 != null ? (Long) expression5.b(oj3Var) : null;
            Expression expression6 = tabTitleStyle.g;
            if (!y45.e(l, expression6 != null ? (Long) expression6.b(oj3Var2) : null)) {
                return false;
            }
            DivCornersRadius divCornersRadius = this.h;
            if (divCornersRadius != null) {
                zA = divCornersRadius.a(tabTitleStyle.h, oj3Var, oj3Var2);
            } else {
                zA = tabTitleStyle.h == null;
            }
            if (!zA) {
                return false;
            }
            Expression expression7 = this.i;
            String str = expression7 != null ? (String) expression7.b(oj3Var) : null;
            Expression expression8 = tabTitleStyle.i;
            if (!y45.e(str, expression8 != null ? (String) expression8.b(oj3Var2) : null) || ((Number) this.j.b(oj3Var)).longValue() != ((Number) tabTitleStyle.j.b(oj3Var2)).longValue() || this.k.b(oj3Var) != tabTitleStyle.k.b(oj3Var2) || this.l.b(oj3Var) != tabTitleStyle.l.b(oj3Var2)) {
                return false;
            }
            Expression expression9 = this.m;
            Integer num = expression9 != null ? (Integer) expression9.b(oj3Var) : null;
            Expression expression10 = tabTitleStyle.m;
            if (!y45.e(num, expression10 != null ? (Integer) expression10.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression11 = this.n;
            JSONObject jSONObject2 = expression11 != null ? (JSONObject) expression11.b(oj3Var) : null;
            Expression expression12 = tabTitleStyle.n;
            if (!y45.e(jSONObject2, expression12 != null ? (JSONObject) expression12.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression13 = this.o;
            DivFontWeight divFontWeight2 = expression13 != null ? (DivFontWeight) expression13.b(oj3Var) : null;
            Expression expression14 = tabTitleStyle.o;
            if (divFontWeight2 != (expression14 != null ? (DivFontWeight) expression14.b(oj3Var2) : null) || ((Number) this.p.b(oj3Var)).intValue() != ((Number) tabTitleStyle.p.b(oj3Var2)).intValue() || ((Number) this.q.b(oj3Var)).longValue() != ((Number) tabTitleStyle.q.b(oj3Var2)).longValue()) {
                return false;
            }
            if (!(((Number) this.r.b(oj3Var)).doubleValue() == ((Number) tabTitleStyle.r.b(oj3Var2)).doubleValue())) {
                return false;
            }
            Expression expression15 = this.s;
            Long l2 = expression15 != null ? (Long) expression15.b(oj3Var) : null;
            Expression expression16 = tabTitleStyle.s;
            return y45.e(l2, expression16 != null ? (Long) expression16.b(oj3Var2) : null) && this.t.a(tabTitleStyle.t, oj3Var, oj3Var2);
        }

        @Override
        public int hash() {
            Integer num = this.u;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(TabTitleStyle.class).hashCode() + this.a.hashCode();
            Expression expression = this.b;
            int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
            Expression expression2 = this.c;
            int iHashCode3 = iHashCode2 + (expression2 != null ? expression2.hashCode() : 0) + this.d.hashCode() + this.e.hashCode() + this.f.hashCode();
            Expression expression3 = this.g;
            int iHashCode4 = iHashCode3 + (expression3 != null ? expression3.hashCode() : 0);
            DivCornersRadius divCornersRadius = this.h;
            int iHash = iHashCode4 + (divCornersRadius != null ? divCornersRadius.hash() : 0);
            Expression expression4 = this.i;
            int iHashCode5 = iHash + (expression4 != null ? expression4.hashCode() : 0) + this.j.hashCode() + this.k.hashCode() + this.l.hashCode();
            Expression expression5 = this.m;
            int iHashCode6 = iHashCode5 + (expression5 != null ? expression5.hashCode() : 0);
            Expression expression6 = this.n;
            int iHashCode7 = iHashCode6 + (expression6 != null ? expression6.hashCode() : 0);
            Expression expression7 = this.o;
            int iHashCode8 = iHashCode7 + (expression7 != null ? expression7.hashCode() : 0) + this.p.hashCode() + this.q.hashCode() + this.r.hashCode();
            Expression expression8 = this.s;
            int iHashCode9 = iHashCode8 + (expression8 != null ? expression8.hashCode() : 0) + this.t.hash();
            this.u = Integer.valueOf(iHashCode9);
            return iHashCode9;
        }

        @Override
        public JSONObject s() {
            return ((DivTabsTabTitleStyleJsonParser.b) ml0.a().U7().getValue()).b(ml0.b(), this);
        }

        public TabTitleStyle(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Expression expression6, Expression expression7, DivCornersRadius divCornersRadius, Expression expression8, Expression expression9, Expression expression10, Expression expression11, Expression expression12, Expression expression13, Expression expression14, Expression expression15, Expression expression16, Expression expression17, Expression expression18, DivEdgeInsets divEdgeInsets, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? w : expression, (i & 2) != 0 ? null : expression2, (i & 4) != 0 ? null : expression3, (i & 8) != 0 ? x : expression4, (i & 16) != 0 ? y : expression5, (i & 32) != 0 ? z : expression6, (i & 64) != 0 ? null : expression7, (i & 128) != 0 ? null : divCornersRadius, (i & 256) != 0 ? null : expression8, (i & 512) != 0 ? A : expression9, (i & 1024) != 0 ? B : expression10, (i & 2048) != 0 ? C : expression11, (i & 4096) != 0 ? null : expression12, (i & 8192) != 0 ? null : expression13, (i & 16384) != 0 ? null : expression14, (i & 32768) != 0 ? D : expression15, (i & 65536) != 0 ? E : expression16, (i & 131072) != 0 ? F : expression17, (i & 262144) != 0 ? null : expression18, (i & 524288) != 0 ? G : divEdgeInsets);
        }
    }
}
