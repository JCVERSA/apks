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

public final class DivContainer implements d65, ko4, og2 {
    public static final a c0 = new a(null);
    public static final DivAnimation d0;
    public static final Expression e0;
    public static final Expression f0;
    public static final Expression g0;
    public static final Expression h0;
    public static final Expression i0;
    public static final DivSize.d j0;
    public static final Expression k0;
    public static final Expression l0;
    public static final Expression m0;
    public static final DivSize.c n0;
    public static final s74 o0;
    public final List A;
    public final Expression B;
    public final DivLayoutProvider C;
    public final Separator D;
    public final List E;
    public final DivEdgeInsets F;
    public final Expression G;
    public final DivEdgeInsets H;
    public final List I;
    public final List J;
    public final Expression K;
    public final Expression L;
    public final List M;
    public final Separator N;
    public final List O;
    public final DivTransform P;
    public final DivChangeTransition Q;
    public final DivAppearanceTransition R;
    public final DivAppearanceTransition S;
    public final List T;
    public final List U;
    public final List V;
    public final Expression W;
    public final DivVisibilityAction X;
    public final List Y;
    public final DivSize Z;
    public final DivAccessibility a;
    public Integer a0;
    public final DivAction b;
    public Integer b0;
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
    public final Expression p;
    public final List q;
    public final List r;
    public final List s;
    public final DivFocus t;
    public final List u;
    public final DivSize v;
    public final List w;
    public final List x;
    public final String y;
    public final DivCollectionItemBuilder z;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivContainer$LayoutMode;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "NO_WRAP", "WRAP", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum LayoutMode {
        NO_WRAP("no_wrap"),
        WRAP("wrap");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivContainer.LayoutMode layoutMode) {
                y45.j(layoutMode, ES6Iterator.VALUE_PROPERTY);
                return DivContainer.LayoutMode.INSTANCE.b(layoutMode);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivContainer.LayoutMode invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivContainer.LayoutMode.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final LayoutMode a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                LayoutMode layoutMode = LayoutMode.NO_WRAP;
                if (y45.e(str, layoutMode.value)) {
                    return layoutMode;
                }
                LayoutMode layoutMode2 = LayoutMode.WRAP;
                if (y45.e(str, layoutMode2.value)) {
                    return layoutMode2;
                }
                return null;
            }

            public final String b(LayoutMode layoutMode) {
                y45.j(layoutMode, "obj");
                return layoutMode.value;
            }

            public Companion() {
            }
        }

        LayoutMode(String str) {
            this.value = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/yandex/div2/DivContainer$Orientation;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "VERTICAL", "HORIZONTAL", "OVERLAP", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Orientation {
        VERTICAL("vertical"),
        HORIZONTAL("horizontal"),
        OVERLAP("overlap");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivContainer.Orientation orientation) {
                y45.j(orientation, ES6Iterator.VALUE_PROPERTY);
                return DivContainer.Orientation.INSTANCE.b(orientation);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivContainer.Orientation invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivContainer.Orientation.INSTANCE.a(str);
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
                Orientation orientation3 = Orientation.OVERLAP;
                if (y45.e(str, orientation3.value)) {
                    return orientation3;
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

    public static final class Separator implements d65, ko4 {
        public static final a g = new a(null);
        public static final Expression h;
        public static final Expression i;
        public static final Expression j;
        public static final s74 k;
        public final DivEdgeInsets a;
        public final Expression b;
        public final Expression c;
        public final Expression d;
        public final DivDrawable e;
        public Integer f;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Separator a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((p0.b) ml0.a().m2().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        static {
            Expression.a aVar = Expression.a;
            Boolean bool = Boolean.FALSE;
            h = aVar.a(bool);
            i = aVar.a(bool);
            j = aVar.a(Boolean.TRUE);
            k = new s74() {
                @Override
                public final DivContainer.Separator invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return DivContainer.Separator.g.a(hx7Var, jSONObject);
                }
            };
        }

        public Separator(DivEdgeInsets divEdgeInsets, Expression expression, Expression expression2, Expression expression3, DivDrawable divDrawable) {
            y45.j(expression, "showAtEnd");
            y45.j(expression2, "showAtStart");
            y45.j(expression3, "showBetween");
            y45.j(divDrawable, "style");
            this.a = divEdgeInsets;
            this.b = expression;
            this.c = expression2;
            this.d = expression3;
            this.e = divDrawable;
        }

        public final boolean a(Separator separator, oj3 oj3Var, oj3 oj3Var2) {
            boolean zA;
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (separator == null) {
                return false;
            }
            DivEdgeInsets divEdgeInsets = this.a;
            if (divEdgeInsets != null) {
                zA = divEdgeInsets.a(separator.a, oj3Var, oj3Var2);
            } else {
                zA = separator.a == null;
            }
            return zA && ((Boolean) this.b.b(oj3Var)).booleanValue() == ((Boolean) separator.b.b(oj3Var2)).booleanValue() && ((Boolean) this.c.b(oj3Var)).booleanValue() == ((Boolean) separator.c.b(oj3Var2)).booleanValue() && ((Boolean) this.d.b(oj3Var)).booleanValue() == ((Boolean) separator.d.b(oj3Var2)).booleanValue() && this.e.a(separator.e, oj3Var, oj3Var2);
        }

        @Override
        public int hash() {
            Integer num = this.f;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Separator.class).hashCode();
            DivEdgeInsets divEdgeInsets = this.a;
            int iHash = iHashCode + (divEdgeInsets != null ? divEdgeInsets.hash() : 0) + this.b.hashCode() + this.c.hashCode() + this.d.hashCode() + this.e.hash();
            this.f = Integer.valueOf(iHash);
            return iHash;
        }

        @Override
        public JSONObject s() {
            return ((p0.b) ml0.a().m2().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivContainer a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivContainerJsonParser.b) ml0.a().j2().getValue()).a(hx7Var, jSONObject);
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
        d0 = new DivAnimation(expressionA, expressionA2, null, null, expressionA3, null, null, aVar.a(dValueOf), 108, null);
        e0 = aVar.a(dValueOf);
        Boolean bool = Boolean.TRUE;
        f0 = aVar.a(bool);
        g0 = aVar.a(bool);
        h0 = aVar.a(DivContentAlignmentHorizontal.START);
        i0 = aVar.a(DivContentAlignmentVertical.TOP);
        j0 = new DivSize.d(new DivWrapContentSize(null, null, null == true ? 1 : 0, 7, null));
        k0 = aVar.a(LayoutMode.NO_WRAP);
        l0 = aVar.a(Orientation.VERTICAL);
        m0 = aVar.a(DivVisibility.VISIBLE);
        n0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        o0 = new s74() {
            @Override
            public final DivContainer invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivContainer.c0.a(hx7Var, jSONObject);
            }
        };
    }

    public DivContainer(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, DivAspect divAspect, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, List list4, List list5, List list6, DivFocus divFocus, List list7, DivSize divSize, List list8, List list9, String str, DivCollectionItemBuilder divCollectionItemBuilder, List list10, Expression expression9, DivLayoutProvider divLayoutProvider, Separator separator, List list11, DivEdgeInsets divEdgeInsets, Expression expression10, DivEdgeInsets divEdgeInsets2, List list12, List list13, Expression expression11, Expression expression12, List list14, Separator separator2, List list15, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list16, List list17, List list18, Expression expression13, DivVisibilityAction divVisibilityAction, List list19, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression4, "captureFocusOnAction");
        y45.j(expression5, "clipToBounds");
        y45.j(expression7, "contentAlignmentHorizontal");
        y45.j(expression8, "contentAlignmentVertical");
        y45.j(divSize, "height");
        y45.j(expression9, "layoutMode");
        y45.j(expression10, "orientation");
        y45.j(expression13, "visibility");
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
        this.p = expression8;
        this.q = list4;
        this.r = list5;
        this.s = list6;
        this.t = divFocus;
        this.u = list7;
        this.v = divSize;
        this.w = list8;
        this.x = list9;
        this.y = str;
        this.z = divCollectionItemBuilder;
        this.A = list10;
        this.B = expression9;
        this.C = divLayoutProvider;
        this.D = separator;
        this.E = list11;
        this.F = divEdgeInsets;
        this.G = expression10;
        this.H = divEdgeInsets2;
        this.I = list12;
        this.J = list13;
        this.K = expression11;
        this.L = expression12;
        this.M = list14;
        this.N = separator2;
        this.O = list15;
        this.P = divTransform;
        this.Q = divChangeTransition;
        this.R = divAppearanceTransition;
        this.S = divAppearanceTransition2;
        this.T = list16;
        this.U = list17;
        this.V = list18;
        this.W = expression13;
        this.X = divVisibilityAction;
        this.Y = list19;
        this.Z = divSize2;
    }

    public static DivContainer D(DivContainer divContainer, DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, DivAspect divAspect, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, List list4, List list5, List list6, DivFocus divFocus, List list7, DivSize divSize, List list8, List list9, String str, DivCollectionItemBuilder divCollectionItemBuilder, List list10, Expression expression9, DivLayoutProvider divLayoutProvider, Separator separator, List list11, DivEdgeInsets divEdgeInsets, Expression expression10, DivEdgeInsets divEdgeInsets2, List list12, List list13, Expression expression11, Expression expression12, List list14, Separator separator2, List list15, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list16, List list17, List list18, Expression expression13, DivVisibilityAction divVisibilityAction, List list19, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divContainer.r() : divAccessibility;
        DivAction divAction2 = (i & 2) != 0 ? divContainer.b : divAction;
        DivAnimation divAnimation2 = (i & 4) != 0 ? divContainer.c : divAnimation;
        List list20 = (i & 8) != 0 ? divContainer.d : list;
        Expression expressionG = (i & 16) != 0 ? divContainer.g() : expression;
        Expression expressionO = (i & 32) != 0 ? divContainer.o() : expression2;
        Expression expressionP = (i & 64) != 0 ? divContainer.p() : expression3;
        List listA = (i & 128) != 0 ? divContainer.A() : list2;
        DivAspect divAspect2 = (i & 256) != 0 ? divContainer.i : divAspect;
        List background = (i & 512) != 0 ? divContainer.getBackground() : list3;
        DivBorder divBorderB = (i & 1024) != 0 ? divContainer.B() : divBorder;
        Expression expression14 = (i & 2048) != 0 ? divContainer.l : expression4;
        Expression expression15 = (i & 4096) != 0 ? divContainer.m : expression5;
        Expression expressionB = (i & 8192) != 0 ? divContainer.b() : expression6;
        Expression expression16 = (i & 16384) != 0 ? divContainer.o : expression7;
        Expression expression17 = (i & 32768) != 0 ? divContainer.p : expression8;
        List listK = (i & 65536) != 0 ? divContainer.k() : list4;
        Expression expression18 = expression17;
        List list21 = (i & 131072) != 0 ? divContainer.r : list5;
        List extensions = (i & 262144) != 0 ? divContainer.getExtensions() : list6;
        DivFocus divFocusQ = (i & 524288) != 0 ? divContainer.q() : divFocus;
        List listY = (i & 1048576) != 0 ? divContainer.y() : list7;
        DivSize height = (i & 2097152) != 0 ? divContainer.getHeight() : divSize;
        List list22 = list21;
        List list23 = (i & 4194304) != 0 ? divContainer.w : list8;
        List list24 = (i & 8388608) != 0 ? divContainer.x : list9;
        String id = (i & 16777216) != 0 ? divContainer.getId() : str;
        List list25 = list24;
        DivCollectionItemBuilder divCollectionItemBuilder2 = (i & 33554432) != 0 ? divContainer.z : divCollectionItemBuilder;
        List list26 = (i & 67108864) != 0 ? divContainer.A : list10;
        Expression expression19 = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divContainer.B : expression9;
        DivLayoutProvider divLayoutProviderV = (i & 268435456) != 0 ? divContainer.v() : divLayoutProvider;
        Expression expression20 = expression19;
        Separator separator3 = (i & 536870912) != 0 ? divContainer.D : separator;
        List list27 = (i & 1073741824) != 0 ? divContainer.E : list11;
        DivEdgeInsets divEdgeInsetsD = (i & Integer.MIN_VALUE) != 0 ? divContainer.d() : divEdgeInsets;
        Expression expression21 = (i2 & 1) != 0 ? divContainer.G : expression10;
        return divContainer.C(divAccessibilityR, divAction2, divAnimation2, list20, expressionG, expressionO, expressionP, listA, divAspect2, background, divBorderB, expression14, expression15, expressionB, expression16, expression18, listK, list22, extensions, divFocusQ, listY, height, list23, list25, id, divCollectionItemBuilder2, list26, expression20, divLayoutProviderV, separator3, list27, divEdgeInsetsD, expression21, (i2 & 2) != 0 ? divContainer.t() : divEdgeInsets2, (i2 & 4) != 0 ? divContainer.I : list12, (i2 & 8) != 0 ? divContainer.J : list13, (i2 & 16) != 0 ? divContainer.f() : expression11, (i2 & 32) != 0 ? divContainer.e() : expression12, (i2 & 64) != 0 ? divContainer.u() : list14, (i2 & 128) != 0 ? divContainer.N : separator2, (i2 & 256) != 0 ? divContainer.h() : list15, (i2 & 512) != 0 ? divContainer.m() : divTransform, (i2 & 1024) != 0 ? divContainer.j() : divChangeTransition, (i2 & 2048) != 0 ? divContainer.z() : divAppearanceTransition, (i2 & 4096) != 0 ? divContainer.i() : divAppearanceTransition2, (i2 & 8192) != 0 ? divContainer.n() : list16, (i2 & 16384) != 0 ? divContainer.w() : list17, (i2 & 32768) != 0 ? divContainer.c() : list18, (i2 & 65536) != 0 ? divContainer.getVisibility() : expression13, (i2 & 131072) != 0 ? divContainer.x() : divVisibilityAction, (i2 & 262144) != 0 ? divContainer.a() : list19, (i2 & 524288) != 0 ? divContainer.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.h;
    }

    @Override
    public DivBorder B() {
        return this.k;
    }

    public final DivContainer C(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, DivAspect divAspect, List list3, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, List list4, List list5, List list6, DivFocus divFocus, List list7, DivSize divSize, List list8, List list9, String str, DivCollectionItemBuilder divCollectionItemBuilder, List list10, Expression expression9, DivLayoutProvider divLayoutProvider, Separator separator, List list11, DivEdgeInsets divEdgeInsets, Expression expression10, DivEdgeInsets divEdgeInsets2, List list12, List list13, Expression expression11, Expression expression12, List list14, Separator separator2, List list15, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list16, List list17, List list18, Expression expression13, DivVisibilityAction divVisibilityAction, List list19, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression4, "captureFocusOnAction");
        y45.j(expression5, "clipToBounds");
        y45.j(expression7, "contentAlignmentHorizontal");
        y45.j(expression8, "contentAlignmentVertical");
        y45.j(divSize, "height");
        y45.j(expression9, "layoutMode");
        y45.j(expression10, "orientation");
        y45.j(expression13, "visibility");
        y45.j(divSize2, "width");
        return new DivContainer(divAccessibility, divAction, divAnimation, list, expression, expression2, expression3, list2, divAspect, list3, divBorder, expression4, expression5, expression6, expression7, expression8, list4, list5, list6, divFocus, list7, divSize, list8, list9, str, divCollectionItemBuilder, list10, expression9, divLayoutProvider, separator, list11, divEdgeInsets, expression10, divEdgeInsets2, list12, list13, expression11, expression12, list14, separator2, list15, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list16, list17, list18, expression13, divVisibilityAction, list19, divSize2);
    }

    public final boolean E(DivContainer divContainer, oj3 oj3Var, oj3 oj3Var2) {
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
        boolean zA9;
        boolean zA10;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean zA11;
        boolean z15;
        boolean zA12;
        boolean zA13;
        boolean zA14;
        boolean zA15;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean zG;
        boolean z19;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divContainer == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divContainer.r(), oj3Var, oj3Var2);
        } else {
            zA = divContainer.r() == null;
        }
        if (!zA) {
            return false;
        }
        DivAction divAction = this.b;
        if (divAction != null) {
            zA2 = divAction.a(divContainer.b, oj3Var, oj3Var2);
        } else {
            zA2 = divContainer.b == null;
        }
        if (!zA2 || !this.c.a(divContainer.c, oj3Var, oj3Var2)) {
            return false;
        }
        List list = this.d;
        if (list != null) {
            List list2 = divContainer.d;
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
            z = divContainer.d == null;
        }
        if (!z) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divContainer.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divContainer.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divContainer.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divContainer.A();
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
            z2 = divContainer.A() == null;
        }
        if (!z2) {
            return false;
        }
        DivAspect divAspect = this.i;
        if (divAspect != null) {
            zA3 = divAspect.a(divContainer.i, oj3Var, oj3Var2);
        } else {
            zA3 = divContainer.i == null;
        }
        if (!zA3) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divContainer.getBackground();
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
            z3 = divContainer.getBackground() == null;
        }
        if (!z3) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA4 = divBorderB.a(divContainer.B(), oj3Var, oj3Var2);
        } else {
            zA4 = divContainer.B() == null;
        }
        if (!zA4 || ((Boolean) this.l.b(oj3Var)).booleanValue() != ((Boolean) divContainer.l.b(oj3Var2)).booleanValue() || ((Boolean) this.m.b(oj3Var)).booleanValue() != ((Boolean) divContainer.m.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divContainer.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null) || this.o.b(oj3Var) != divContainer.o.b(oj3Var2) || this.p.b(oj3Var) != divContainer.p.b(oj3Var2)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divContainer.k();
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
            z4 = divContainer.k() == null;
        }
        if (!z4) {
            return false;
        }
        List list3 = this.r;
        if (list3 != null) {
            List list4 = divContainer.r;
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
            z5 = divContainer.r == null;
        }
        if (!z5) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divContainer.getExtensions();
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
            z6 = divContainer.getExtensions() == null;
        }
        if (!z6) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA5 = divFocusQ.a(divContainer.q(), oj3Var, oj3Var2);
        } else {
            zA5 = divContainer.q() == null;
        }
        if (!zA5) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divContainer.y();
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
            z7 = divContainer.y() == null;
        }
        if (!z7 || !getHeight().a(divContainer.getHeight(), oj3Var, oj3Var2)) {
            return false;
        }
        List list5 = this.w;
        if (list5 != null) {
            List list6 = divContainer.w;
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
            z8 = divContainer.w == null;
        }
        if (!z8) {
            return false;
        }
        List list7 = this.x;
        if (list7 != null) {
            List list8 = divContainer.x;
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
            z9 = divContainer.x == null;
        }
        if (!z9 || !y45.e(getId(), divContainer.getId())) {
            return false;
        }
        DivCollectionItemBuilder divCollectionItemBuilder = this.z;
        if (divCollectionItemBuilder != null) {
            zA6 = divCollectionItemBuilder.a(divContainer.z, oj3Var, oj3Var2);
        } else {
            zA6 = divContainer.z == null;
        }
        if (!zA6) {
            return false;
        }
        List list9 = this.A;
        if (list9 != null) {
            List list10 = divContainer.A;
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
            z10 = divContainer.A == null;
        }
        if (!z10 || this.B.b(oj3Var) != divContainer.B.b(oj3Var2)) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA7 = divLayoutProviderV.a(divContainer.v(), oj3Var, oj3Var2);
        } else {
            zA7 = divContainer.v() == null;
        }
        if (!zA7) {
            return false;
        }
        Separator separator = this.D;
        if (separator != null) {
            zA8 = separator.a(divContainer.D, oj3Var, oj3Var2);
        } else {
            zA8 = divContainer.D == null;
        }
        if (!zA8) {
            return false;
        }
        List list11 = this.E;
        if (list11 != null) {
            List list12 = divContainer.E;
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
            z11 = divContainer.E == null;
        }
        if (!z11) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA9 = divEdgeInsetsD.a(divContainer.d(), oj3Var, oj3Var2);
        } else {
            zA9 = divContainer.d() == null;
        }
        if (!zA9 || this.G.b(oj3Var) != divContainer.G.b(oj3Var2)) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA10 = divEdgeInsetsT.a(divContainer.t(), oj3Var, oj3Var2);
        } else {
            zA10 = divContainer.t() == null;
        }
        if (!zA10) {
            return false;
        }
        List list13 = this.I;
        if (list13 != null) {
            List list14 = divContainer.I;
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
            z12 = divContainer.I == null;
        }
        if (!z12) {
            return false;
        }
        List list15 = this.J;
        if (list15 != null) {
            List list16 = divContainer.J;
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
            z13 = divContainer.J == null;
        }
        if (!z13) {
            return false;
        }
        Expression expressionF = f();
        String str = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divContainer.f();
        if (!y45.e(str, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divContainer.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divContainer.u();
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
            z14 = divContainer.u() == null;
        }
        if (!z14) {
            return false;
        }
        Separator separator2 = this.N;
        if (separator2 != null) {
            zA11 = separator2.a(divContainer.N, oj3Var, oj3Var2);
        } else {
            zA11 = divContainer.N == null;
        }
        if (!zA11) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divContainer.h();
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
            z15 = divContainer.h() == null;
        }
        if (!z15) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA12 = divTransformM.a(divContainer.m(), oj3Var, oj3Var2);
        } else {
            zA12 = divContainer.m() == null;
        }
        if (!zA12) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA13 = divChangeTransitionJ.a(divContainer.j(), oj3Var, oj3Var2);
        } else {
            zA13 = divContainer.j() == null;
        }
        if (!zA13) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA14 = divAppearanceTransitionZ.a(divContainer.z(), oj3Var, oj3Var2);
        } else {
            zA14 = divContainer.z() == null;
        }
        if (!zA14) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA15 = divAppearanceTransitionI.a(divContainer.i(), oj3Var, oj3Var2);
        } else {
            zA15 = divContainer.i() == null;
        }
        if (!zA15) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divContainer.n();
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
            z16 = divContainer.n() == null;
        }
        if (!z16) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divContainer.w();
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
            z17 = divContainer.w() == null;
        }
        if (!z17) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divContainer.c();
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
            z18 = divContainer.c() == null;
        }
        if (!z18 || getVisibility().b(oj3Var) != divContainer.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divContainer.x(), oj3Var, oj3Var2);
        } else {
            zG = divContainer.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divContainer.a();
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
            z19 = divContainer.a() == null;
        }
        return z19 && getWidth().a(divContainer.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.Y;
    }

    @Override
    public Expression b() {
        return this.n;
    }

    @Override
    public List c() {
        return this.V;
    }

    @Override
    public DivEdgeInsets d() {
        return this.F;
    }

    @Override
    public Expression e() {
        return this.L;
    }

    @Override
    public Expression f() {
        return this.K;
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
        return this.s;
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
        return this.W;
    }

    @Override
    public DivSize getWidth() {
        return this.Z;
    }

    @Override
    public List h() {
        return this.O;
    }

    @Override
    public int hash() {
        Integer num = this.b0;
        if (num != null) {
            return num.intValue();
        }
        int iL = l();
        List list = this.A;
        int iHash = 0;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iHash += ((Div) it.next()).hash();
            }
        }
        int i = iL + iHash;
        this.b0 = Integer.valueOf(i);
        return i;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.S;
    }

    @Override
    public DivChangeTransition j() {
        return this.Q;
    }

    @Override
    public List k() {
        return this.q;
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
        Integer num = this.a0;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivContainer.class).hashCode();
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
        int iHash21 = i3 + (divBorderB != null ? divBorderB.hash() : 0) + this.l.hashCode() + this.m.hashCode();
        Expression expressionB = b();
        int iHashCode4 = iHash21 + (expressionB != null ? expressionB.hashCode() : 0) + this.o.hashCode() + this.p.hashCode();
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
        int i7 = iHash23 + iHash8;
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
        int iHashCode5 = i8 + (id != null ? id.hashCode() : 0);
        DivCollectionItemBuilder divCollectionItemBuilder = this.z;
        int iHash24 = iHashCode5 + (divCollectionItemBuilder != null ? divCollectionItemBuilder.hash() : 0) + this.B.hashCode();
        DivLayoutProvider divLayoutProviderV = v();
        int iHash25 = iHash24 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        Separator separator = this.D;
        int iHash26 = iHash25 + (separator != null ? separator.hash() : 0);
        List list5 = this.E;
        if (list5 != null) {
            Iterator it10 = list5.iterator();
            iHash10 = 0;
            while (it10.hasNext()) {
                iHash10 += ((DivAction) it10.next()).hash();
            }
        } else {
            iHash10 = 0;
        }
        int i9 = iHash26 + iHash10;
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash27 = i9 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0) + this.G.hashCode();
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash28 = iHash27 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        List list6 = this.I;
        if (list6 != null) {
            Iterator it11 = list6.iterator();
            iHash11 = 0;
            while (it11.hasNext()) {
                iHash11 += ((DivAction) it11.next()).hash();
            }
        } else {
            iHash11 = 0;
        }
        int i10 = iHash28 + iHash11;
        List list7 = this.J;
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
        Separator separator2 = this.N;
        int iHash29 = i12 + (separator2 != null ? separator2.hash() : 0);
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
        int i13 = iHash29 + iHash14;
        DivTransform divTransformM = m();
        int iHash30 = i13 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash31 = iHash30 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash32 = iHash31 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash33 = iHash32 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode8 = iHash33 + (listN != null ? listN.hashCode() : 0);
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
        int iHash34 = iHashCode9 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it17 = listA2.iterator();
            while (it17.hasNext()) {
                iHash17 += ((DivVisibilityAction) it17.next()).hash();
            }
        }
        int iHash35 = iHash34 + iHash17 + getWidth().hash();
        this.a0 = Integer.valueOf(iHash35);
        return iHash35;
    }

    @Override
    public DivTransform m() {
        return this.P;
    }

    @Override
    public List n() {
        return this.T;
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
        return this.t;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivContainerJsonParser.b) ml0.a().j2().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.H;
    }

    @Override
    public List u() {
        return this.M;
    }

    @Override
    public DivLayoutProvider v() {
        return this.C;
    }

    @Override
    public List w() {
        return this.U;
    }

    @Override
    public DivVisibilityAction x() {
        return this.X;
    }

    @Override
    public List y() {
        return this.u;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.R;
    }
}
