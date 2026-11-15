package com.yandex.div2;

import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
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

public final class DivPager implements d65, ko4, og2 {
    public static final a T = new a(null);
    public static final Expression U;
    public static final Expression V;
    public static final Expression W;
    public static final DivSize.d X;
    public static final Expression Y;
    public static final DivFixedSize Z;
    public static final Expression a0;
    public static final Expression b0;
    public static final Expression c0;
    public static final Expression d0;
    public static final DivSize.c e0;
    public static final s74 f0;
    public final Expression A;
    public final Expression B;
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
    public Integer S;
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
    public final List l;
    public final DivFocus m;
    public final List n;
    public final DivSize o;
    public final String p;
    public final Expression q;
    public final DivCollectionItemBuilder r;
    public final DivFixedSize s;
    public final List t;
    public final DivPagerLayoutMode u;
    public final DivLayoutProvider v;
    public final DivEdgeInsets w;
    public final Expression x;
    public final DivEdgeInsets y;
    public final DivPageTransformation z;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/yandex/div2/DivPager$ItemAlignment;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "START", "CENTER", "END", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum ItemAlignment {
        START(TtmlNode.START),
        CENTER(TtmlNode.CENTER),
        END(TtmlNode.END);

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivPager.ItemAlignment itemAlignment) {
                y45.j(itemAlignment, ES6Iterator.VALUE_PROPERTY);
                return DivPager.ItemAlignment.INSTANCE.b(itemAlignment);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivPager.ItemAlignment invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivPager.ItemAlignment.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final ItemAlignment a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                ItemAlignment itemAlignment = ItemAlignment.START;
                if (y45.e(str, itemAlignment.value)) {
                    return itemAlignment;
                }
                ItemAlignment itemAlignment2 = ItemAlignment.CENTER;
                if (y45.e(str, itemAlignment2.value)) {
                    return itemAlignment2;
                }
                ItemAlignment itemAlignment3 = ItemAlignment.END;
                if (y45.e(str, itemAlignment3.value)) {
                    return itemAlignment3;
                }
                return null;
            }

            public final String b(ItemAlignment itemAlignment) {
                y45.j(itemAlignment, "obj");
                return itemAlignment.value;
            }

            public Companion() {
            }
        }

        ItemAlignment(String str) {
            this.value = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivPager$Orientation;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "HORIZONTAL", "VERTICAL", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Orientation {
        HORIZONTAL("horizontal"),
        VERTICAL("vertical");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivPager.Orientation orientation) {
                y45.j(orientation, ES6Iterator.VALUE_PROPERTY);
                return DivPager.Orientation.INSTANCE.b(orientation);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivPager.Orientation invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivPager.Orientation.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Orientation a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Orientation orientation = Orientation.HORIZONTAL;
                if (y45.e(str, orientation.value)) {
                    return orientation;
                }
                Orientation orientation2 = Orientation.VERTICAL;
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

        public final DivPager a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivPagerJsonParser.b) ml0.a().w5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        U = aVar.a(Double.valueOf(1.0d));
        V = aVar.a(ItemAlignment.START);
        W = aVar.a(0L);
        X = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        Boolean bool = Boolean.FALSE;
        Y = aVar.a(bool);
        int i = 1;
        Z = new DivFixedSize(null == true ? 1 : 0, aVar.a(0L), i, null == true ? 1 : 0);
        a0 = aVar.a(Orientation.HORIZONTAL);
        b0 = aVar.a(bool);
        c0 = aVar.a(ItemAlignment.CENTER);
        d0 = aVar.a(DivVisibility.VISIBLE);
        e0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, i, null == true ? 1 : 0));
        f0 = new s74() {
            @Override
            public final DivPager invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivPager.T.a(hx7Var, jSONObject);
            }
        };
    }

    public DivPager(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression7, DivCollectionItemBuilder divCollectionItemBuilder, DivFixedSize divFixedSize, List list6, DivPagerLayoutMode divPagerLayoutMode, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression8, DivEdgeInsets divEdgeInsets2, DivPageTransformation divPageTransformation, Expression expression9, Expression expression10, Expression expression11, Expression expression12, List list7, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression13, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression5, "crossAxisAlignment");
        y45.j(expression6, "defaultItem");
        y45.j(divSize, "height");
        y45.j(expression7, "infiniteScroll");
        y45.j(divFixedSize, "itemSpacing");
        y45.j(divPagerLayoutMode, "layoutMode");
        y45.j(expression8, "orientation");
        y45.j(expression9, "restrictParentScroll");
        y45.j(expression12, "scrollAxisAlignment");
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
        this.i = expression5;
        this.j = expression6;
        this.k = list3;
        this.l = list4;
        this.m = divFocus;
        this.n = list5;
        this.o = divSize;
        this.p = str;
        this.q = expression7;
        this.r = divCollectionItemBuilder;
        this.s = divFixedSize;
        this.t = list6;
        this.u = divPagerLayoutMode;
        this.v = divLayoutProvider;
        this.w = divEdgeInsets;
        this.x = expression8;
        this.y = divEdgeInsets2;
        this.z = divPageTransformation;
        this.A = expression9;
        this.B = expression10;
        this.C = expression11;
        this.D = expression12;
        this.E = list7;
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

    public static DivPager D(DivPager divPager, DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression7, DivCollectionItemBuilder divCollectionItemBuilder, DivFixedSize divFixedSize, List list6, DivPagerLayoutMode divPagerLayoutMode, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression8, DivEdgeInsets divEdgeInsets2, DivPageTransformation divPageTransformation, Expression expression9, Expression expression10, Expression expression11, Expression expression12, List list7, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression13, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divPager.r() : divAccessibility;
        Expression expressionG = (i & 2) != 0 ? divPager.g() : expression;
        Expression expressionO = (i & 4) != 0 ? divPager.o() : expression2;
        Expression expressionP = (i & 8) != 0 ? divPager.p() : expression3;
        List listA = (i & 16) != 0 ? divPager.A() : list;
        List background = (i & 32) != 0 ? divPager.getBackground() : list2;
        DivBorder divBorderB = (i & 64) != 0 ? divPager.B() : divBorder;
        Expression expressionB = (i & 128) != 0 ? divPager.b() : expression4;
        Expression expression14 = (i & 256) != 0 ? divPager.i : expression5;
        Expression expression15 = (i & 512) != 0 ? divPager.j : expression6;
        List listK = (i & 1024) != 0 ? divPager.k() : list3;
        List extensions = (i & 2048) != 0 ? divPager.getExtensions() : list4;
        DivFocus divFocusQ = (i & 4096) != 0 ? divPager.q() : divFocus;
        List listY = (i & 8192) != 0 ? divPager.y() : list5;
        DivSize height = (i & 16384) != 0 ? divPager.getHeight() : divSize;
        String id = (i & 32768) != 0 ? divPager.getId() : str;
        DivSize divSize3 = height;
        Expression expression16 = (i & 65536) != 0 ? divPager.q : expression7;
        DivCollectionItemBuilder divCollectionItemBuilder2 = (i & 131072) != 0 ? divPager.r : divCollectionItemBuilder;
        DivFixedSize divFixedSize2 = (i & 262144) != 0 ? divPager.s : divFixedSize;
        List list13 = (i & 524288) != 0 ? divPager.t : list6;
        DivPagerLayoutMode divPagerLayoutMode2 = (i & 1048576) != 0 ? divPager.u : divPagerLayoutMode;
        DivLayoutProvider divLayoutProviderV = (i & 2097152) != 0 ? divPager.v() : divLayoutProvider;
        DivEdgeInsets divEdgeInsetsD = (i & 4194304) != 0 ? divPager.d() : divEdgeInsets;
        DivPagerLayoutMode divPagerLayoutMode3 = divPagerLayoutMode2;
        Expression expression17 = (i & 8388608) != 0 ? divPager.x : expression8;
        return divPager.C(divAccessibilityR, expressionG, expressionO, expressionP, listA, background, divBorderB, expressionB, expression14, expression15, listK, extensions, divFocusQ, listY, divSize3, id, expression16, divCollectionItemBuilder2, divFixedSize2, list13, divPagerLayoutMode3, divLayoutProviderV, divEdgeInsetsD, expression17, (i & 16777216) != 0 ? divPager.t() : divEdgeInsets2, (i & 33554432) != 0 ? divPager.z : divPageTransformation, (i & 67108864) != 0 ? divPager.A : expression9, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divPager.f() : expression10, (i & 268435456) != 0 ? divPager.e() : expression11, (i & 536870912) != 0 ? divPager.D : expression12, (i & 1073741824) != 0 ? divPager.u() : list7, (i & Integer.MIN_VALUE) != 0 ? divPager.h() : list8, (i2 & 1) != 0 ? divPager.m() : divTransform, (i2 & 2) != 0 ? divPager.j() : divChangeTransition, (i2 & 4) != 0 ? divPager.z() : divAppearanceTransition, (i2 & 8) != 0 ? divPager.i() : divAppearanceTransition2, (i2 & 16) != 0 ? divPager.n() : list9, (i2 & 32) != 0 ? divPager.w() : list10, (i2 & 64) != 0 ? divPager.c() : list11, (i2 & 128) != 0 ? divPager.getVisibility() : expression13, (i2 & 256) != 0 ? divPager.x() : divVisibilityAction, (i2 & 512) != 0 ? divPager.a() : list12, (i2 & 1024) != 0 ? divPager.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.e;
    }

    @Override
    public DivBorder B() {
        return this.g;
    }

    public final DivPager C(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression7, DivCollectionItemBuilder divCollectionItemBuilder, DivFixedSize divFixedSize, List list6, DivPagerLayoutMode divPagerLayoutMode, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression8, DivEdgeInsets divEdgeInsets2, DivPageTransformation divPageTransformation, Expression expression9, Expression expression10, Expression expression11, Expression expression12, List list7, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression13, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression5, "crossAxisAlignment");
        y45.j(expression6, "defaultItem");
        y45.j(divSize, "height");
        y45.j(expression7, "infiniteScroll");
        y45.j(divFixedSize, "itemSpacing");
        y45.j(divPagerLayoutMode, "layoutMode");
        y45.j(expression8, "orientation");
        y45.j(expression9, "restrictParentScroll");
        y45.j(expression12, "scrollAxisAlignment");
        y45.j(expression13, "visibility");
        y45.j(divSize2, "width");
        return new DivPager(divAccessibility, expression, expression2, expression3, list, list2, divBorder, expression4, expression5, expression6, list3, list4, divFocus, list5, divSize, str, expression7, divCollectionItemBuilder, divFixedSize, list6, divPagerLayoutMode, divLayoutProvider, divEdgeInsets, expression8, divEdgeInsets2, divPageTransformation, expression9, expression10, expression11, expression12, list7, list8, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list9, list10, list11, expression13, divVisibilityAction, list12, divSize2);
    }

    public final boolean E(DivPager divPager, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean z;
        boolean z2;
        boolean zA2;
        boolean z3;
        boolean z4;
        boolean zA3;
        boolean z5;
        boolean zA4;
        boolean z6;
        boolean zA5;
        boolean zA6;
        boolean zA7;
        boolean zA8;
        boolean z7;
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
        if (divPager == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divPager.r(), oj3Var, oj3Var2);
        } else {
            zA = divPager.r() == null;
        }
        if (!zA) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divPager.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divPager.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divPager.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divPager.A();
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
            z = divPager.A() == null;
        }
        if (!z) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divPager.getBackground();
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
            z2 = divPager.getBackground() == null;
        }
        if (!z2) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA2 = divBorderB.a(divPager.B(), oj3Var, oj3Var2);
        } else {
            zA2 = divPager.B() == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divPager.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null) || this.i.b(oj3Var) != divPager.i.b(oj3Var2) || ((Number) this.j.b(oj3Var)).longValue() != ((Number) divPager.j.b(oj3Var2)).longValue()) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divPager.k();
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
            z3 = divPager.k() == null;
        }
        if (!z3) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divPager.getExtensions();
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
            z4 = divPager.getExtensions() == null;
        }
        if (!z4) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA3 = divFocusQ.a(divPager.q(), oj3Var, oj3Var2);
        } else {
            zA3 = divPager.q() == null;
        }
        if (!zA3) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divPager.y();
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
            z5 = divPager.y() == null;
        }
        if (!z5 || !getHeight().a(divPager.getHeight(), oj3Var, oj3Var2) || !y45.e(getId(), divPager.getId()) || ((Boolean) this.q.b(oj3Var)).booleanValue() != ((Boolean) divPager.q.b(oj3Var2)).booleanValue()) {
            return false;
        }
        DivCollectionItemBuilder divCollectionItemBuilder = this.r;
        if (divCollectionItemBuilder != null) {
            zA4 = divCollectionItemBuilder.a(divPager.r, oj3Var, oj3Var2);
        } else {
            zA4 = divPager.r == null;
        }
        if (!zA4 || !this.s.a(divPager.s, oj3Var, oj3Var2)) {
            return false;
        }
        List list = this.t;
        if (list != null) {
            List list2 = divPager.t;
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
                        if (((Div) next6).a((Div) list2.get(i11), oj3Var, oj3Var2)) {
                            i11 = i12;
                        }
                    }
                }
            }
        } else {
            z6 = divPager.t == null;
        }
        if (!z6 || !this.u.a(divPager.u, oj3Var, oj3Var2)) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA5 = divLayoutProviderV.a(divPager.v(), oj3Var, oj3Var2);
        } else {
            zA5 = divPager.v() == null;
        }
        if (!zA5) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA6 = divEdgeInsetsD.a(divPager.d(), oj3Var, oj3Var2);
        } else {
            zA6 = divPager.d() == null;
        }
        if (!zA6 || this.x.b(oj3Var) != divPager.x.b(oj3Var2)) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA7 = divEdgeInsetsT.a(divPager.t(), oj3Var, oj3Var2);
        } else {
            zA7 = divPager.t() == null;
        }
        if (!zA7) {
            return false;
        }
        DivPageTransformation divPageTransformation = this.z;
        if (divPageTransformation != null) {
            zA8 = divPageTransformation.a(divPager.z, oj3Var, oj3Var2);
        } else {
            zA8 = divPager.z == null;
        }
        if (!zA8 || ((Boolean) this.A.b(oj3Var)).booleanValue() != ((Boolean) divPager.A.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expressionF = f();
        String str = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divPager.f();
        if (!y45.e(str, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divPager.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null) || this.D.b(oj3Var) != divPager.D.b(oj3Var2)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divPager.u();
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
            z7 = divPager.u() == null;
        }
        if (!z7) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divPager.h();
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
            z8 = divPager.h() == null;
        }
        if (!z8) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA9 = divTransformM.a(divPager.m(), oj3Var, oj3Var2);
        } else {
            zA9 = divPager.m() == null;
        }
        if (!zA9) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA10 = divChangeTransitionJ.a(divPager.j(), oj3Var, oj3Var2);
        } else {
            zA10 = divPager.j() == null;
        }
        if (!zA10) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA11 = divAppearanceTransitionZ.a(divPager.z(), oj3Var, oj3Var2);
        } else {
            zA11 = divPager.z() == null;
        }
        if (!zA11) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA12 = divAppearanceTransitionI.a(divPager.i(), oj3Var, oj3Var2);
        } else {
            zA12 = divPager.i() == null;
        }
        if (!zA12) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divPager.n();
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
            z9 = divPager.n() == null;
        }
        if (!z9) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divPager.w();
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
            z10 = divPager.w() == null;
        }
        if (!z10) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divPager.c();
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
            z11 = divPager.c() == null;
        }
        if (!z11 || getVisibility().b(oj3Var) != divPager.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divPager.x(), oj3Var, oj3Var2);
        } else {
            zG = divPager.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divPager.a();
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
            z12 = divPager.a() == null;
        }
        return z12 && getWidth().a(divPager.getWidth(), oj3Var, oj3Var2);
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
        return this.w;
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
        return this.b;
    }

    @Override
    public List getBackground() {
        return this.f;
    }

    @Override
    public List getExtensions() {
        return this.l;
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
        List list = this.t;
        int iHash = 0;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iHash += ((Div) it.next()).hash();
            }
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
        Integer num = this.R;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivPager.class).hashCode();
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
        int iHashCode4 = iHash12 + (expressionB != null ? expressionB.hashCode() : 0) + this.i.hashCode() + this.j.hashCode();
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
        int iHashCode5 = iHash14 + (id != null ? id.hashCode() : 0) + this.q.hashCode();
        DivCollectionItemBuilder divCollectionItemBuilder = this.r;
        int iHash15 = iHashCode5 + (divCollectionItemBuilder != null ? divCollectionItemBuilder.hash() : 0) + this.s.hash() + this.u.hash();
        DivLayoutProvider divLayoutProviderV = v();
        int iHash16 = iHash15 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash17 = iHash16 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0) + this.x.hashCode();
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash18 = iHash17 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        DivPageTransformation divPageTransformation = this.z;
        int iHash19 = iHash18 + (divPageTransformation != null ? divPageTransformation.hash() : 0) + this.A.hashCode();
        Expression expressionF = f();
        int iHashCode6 = iHash19 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode7 = iHashCode6 + (expressionE != null ? expressionE.hashCode() : 0) + this.D.hashCode();
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
        int i5 = iHashCode7 + iHash6;
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
        int i6 = i5 + iHash7;
        DivTransform divTransformM = m();
        int iHash20 = i6 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash21 = iHash20 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash22 = iHash21 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash23 = iHash22 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode8 = iHash23 + (listN != null ? listN.hashCode() : 0);
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
        int i7 = iHashCode8 + iHash8;
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
        int iHashCode9 = i7 + iHash9 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash24 = iHashCode9 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it10 = listA2.iterator();
            while (it10.hasNext()) {
                iHash10 += ((DivVisibilityAction) it10.next()).hash();
            }
        }
        int iHash25 = iHash24 + iHash10 + getWidth().hash();
        this.R = Integer.valueOf(iHash25);
        return iHash25;
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
        return this.m;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivPagerJsonParser.b) ml0.a().w5().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.y;
    }

    @Override
    public List u() {
        return this.E;
    }

    @Override
    public DivLayoutProvider v() {
        return this.v;
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
        return this.n;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.I;
    }
}
