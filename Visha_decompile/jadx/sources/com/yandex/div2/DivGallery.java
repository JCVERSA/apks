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
import org.greenrobot.greendao.generator.Schema;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivGallery implements d65, ko4, og2 {
    public static final a T = new a(null);
    public static final Expression U;
    public static final Expression V;
    public static final Expression W;
    public static final DivSize.d X;
    public static final Expression Y;
    public static final Expression Z;
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
    public final Expression k;
    public final Expression l;
    public final List m;
    public final List n;
    public final DivFocus o;
    public final List p;
    public final DivSize q;
    public final String r;
    public final DivCollectionItemBuilder s;
    public final Expression t;
    public final List u;
    public final DivLayoutProvider v;
    public final DivEdgeInsets w;
    public final Expression x;
    public final DivEdgeInsets y;
    public final Expression z;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/yandex/div2/DivGallery$CrossContentAlignment;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "START", "CENTER", "END", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum CrossContentAlignment {
        START(TtmlNode.START),
        CENTER(TtmlNode.CENTER),
        END(TtmlNode.END);

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivGallery.CrossContentAlignment crossContentAlignment) {
                y45.j(crossContentAlignment, ES6Iterator.VALUE_PROPERTY);
                return DivGallery.CrossContentAlignment.INSTANCE.b(crossContentAlignment);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivGallery.CrossContentAlignment invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivGallery.CrossContentAlignment.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final CrossContentAlignment a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                CrossContentAlignment crossContentAlignment = CrossContentAlignment.START;
                if (y45.e(str, crossContentAlignment.value)) {
                    return crossContentAlignment;
                }
                CrossContentAlignment crossContentAlignment2 = CrossContentAlignment.CENTER;
                if (y45.e(str, crossContentAlignment2.value)) {
                    return crossContentAlignment2;
                }
                CrossContentAlignment crossContentAlignment3 = CrossContentAlignment.END;
                if (y45.e(str, crossContentAlignment3.value)) {
                    return crossContentAlignment3;
                }
                return null;
            }

            public final String b(CrossContentAlignment crossContentAlignment) {
                y45.j(crossContentAlignment, "obj");
                return crossContentAlignment.value;
            }

            public Companion() {
            }
        }

        CrossContentAlignment(String str) {
            this.value = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivGallery$Orientation;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "HORIZONTAL", "VERTICAL", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Orientation {
        HORIZONTAL("horizontal"),
        VERTICAL("vertical");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivGallery.Orientation orientation) {
                y45.j(orientation, ES6Iterator.VALUE_PROPERTY);
                return DivGallery.Orientation.INSTANCE.b(orientation);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivGallery.Orientation invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivGallery.Orientation.INSTANCE.a(str);
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

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivGallery$ScrollMode;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "PAGING", "DEFAULT", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum ScrollMode {
        PAGING("paging"),
        DEFAULT(Schema.DEFAULT_NAME);

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivGallery.ScrollMode scrollMode) {
                y45.j(scrollMode, ES6Iterator.VALUE_PROPERTY);
                return DivGallery.ScrollMode.INSTANCE.b(scrollMode);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivGallery.ScrollMode invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivGallery.ScrollMode.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final ScrollMode a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                ScrollMode scrollMode = ScrollMode.PAGING;
                if (y45.e(str, scrollMode.value)) {
                    return scrollMode;
                }
                ScrollMode scrollMode2 = ScrollMode.DEFAULT;
                if (y45.e(str, scrollMode2.value)) {
                    return scrollMode2;
                }
                return null;
            }

            public final String b(ScrollMode scrollMode) {
                y45.j(scrollMode, "obj");
                return scrollMode.value;
            }

            public Companion() {
            }
        }

        ScrollMode(String str) {
            this.value = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivGallery$Scrollbar;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "NONE", "AUTO", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Scrollbar {
        NONE("none"),
        AUTO(TtmlNode.TEXT_EMPHASIS_AUTO);

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivGallery.Scrollbar scrollbar) {
                y45.j(scrollbar, ES6Iterator.VALUE_PROPERTY);
                return DivGallery.Scrollbar.INSTANCE.b(scrollbar);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivGallery.Scrollbar invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivGallery.Scrollbar.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Scrollbar a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Scrollbar scrollbar = Scrollbar.NONE;
                if (y45.e(str, scrollbar.value)) {
                    return scrollbar;
                }
                Scrollbar scrollbar2 = Scrollbar.AUTO;
                if (y45.e(str, scrollbar2.value)) {
                    return scrollbar2;
                }
                return null;
            }

            public final String b(Scrollbar scrollbar) {
                y45.j(scrollbar, "obj");
                return scrollbar.value;
            }

            public Companion() {
            }
        }

        Scrollbar(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivGallery a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivGalleryJsonParser.b) ml0.a().I3().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        U = aVar.a(Double.valueOf(1.0d));
        V = aVar.a(CrossContentAlignment.START);
        W = aVar.a(0L);
        X = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        Y = aVar.a(8L);
        Z = aVar.a(Orientation.HORIZONTAL);
        a0 = aVar.a(Boolean.FALSE);
        b0 = aVar.a(ScrollMode.DEFAULT);
        c0 = aVar.a(Scrollbar.NONE);
        d0 = aVar.a(DivVisibility.VISIBLE);
        e0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        f0 = new s74() {
            @Override
            public final DivGallery invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivGallery.T.a(hx7Var, jSONObject);
            }
        };
    }

    public DivGallery(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, DivCollectionItemBuilder divCollectionItemBuilder, Expression expression9, List list6, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression10, DivEdgeInsets divEdgeInsets2, Expression expression11, Expression expression12, Expression expression13, Expression expression14, Expression expression15, List list7, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression16, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression6, "crossContentAlignment");
        y45.j(expression8, "defaultItem");
        y45.j(divSize, "height");
        y45.j(expression9, "itemSpacing");
        y45.j(expression10, "orientation");
        y45.j(expression11, "restrictParentScroll");
        y45.j(expression14, "scrollMode");
        y45.j(expression15, "scrollbar");
        y45.j(expression16, "visibility");
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
        this.k = expression7;
        this.l = expression8;
        this.m = list3;
        this.n = list4;
        this.o = divFocus;
        this.p = list5;
        this.q = divSize;
        this.r = str;
        this.s = divCollectionItemBuilder;
        this.t = expression9;
        this.u = list6;
        this.v = divLayoutProvider;
        this.w = divEdgeInsets;
        this.x = expression10;
        this.y = divEdgeInsets2;
        this.z = expression11;
        this.A = expression12;
        this.B = expression13;
        this.C = expression14;
        this.D = expression15;
        this.E = list7;
        this.F = list8;
        this.G = divTransform;
        this.H = divChangeTransition;
        this.I = divAppearanceTransition;
        this.J = divAppearanceTransition2;
        this.K = list9;
        this.L = list10;
        this.M = list11;
        this.N = expression16;
        this.O = divVisibilityAction;
        this.P = list12;
        this.Q = divSize2;
    }

    public static DivGallery D(DivGallery divGallery, DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, DivCollectionItemBuilder divCollectionItemBuilder, Expression expression9, List list6, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression10, DivEdgeInsets divEdgeInsets2, Expression expression11, Expression expression12, Expression expression13, Expression expression14, Expression expression15, List list7, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression16, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divGallery.r() : divAccessibility;
        Expression expressionG = (i & 2) != 0 ? divGallery.g() : expression;
        Expression expressionO = (i & 4) != 0 ? divGallery.o() : expression2;
        Expression expressionP = (i & 8) != 0 ? divGallery.p() : expression3;
        List listA = (i & 16) != 0 ? divGallery.A() : list;
        List background = (i & 32) != 0 ? divGallery.getBackground() : list2;
        DivBorder divBorderB = (i & 64) != 0 ? divGallery.B() : divBorder;
        Expression expression17 = (i & 128) != 0 ? divGallery.h : expression4;
        Expression expressionB = (i & 256) != 0 ? divGallery.b() : expression5;
        Expression expression18 = (i & 512) != 0 ? divGallery.j : expression6;
        Expression expression19 = (i & 1024) != 0 ? divGallery.k : expression7;
        Expression expression20 = (i & 2048) != 0 ? divGallery.l : expression8;
        List listK = (i & 4096) != 0 ? divGallery.k() : list3;
        List extensions = (i & 8192) != 0 ? divGallery.getExtensions() : list4;
        DivFocus divFocusQ = (i & 16384) != 0 ? divGallery.q() : divFocus;
        List listY = (i & 32768) != 0 ? divGallery.y() : list5;
        DivSize height = (i & 65536) != 0 ? divGallery.getHeight() : divSize;
        String id = (i & 131072) != 0 ? divGallery.getId() : str;
        DivFocus divFocus2 = divFocusQ;
        DivCollectionItemBuilder divCollectionItemBuilder2 = (i & 262144) != 0 ? divGallery.s : divCollectionItemBuilder;
        Expression expression21 = (i & 524288) != 0 ? divGallery.t : expression9;
        List list13 = (i & 1048576) != 0 ? divGallery.u : list6;
        DivLayoutProvider divLayoutProviderV = (i & 2097152) != 0 ? divGallery.v() : divLayoutProvider;
        DivEdgeInsets divEdgeInsetsD = (i & 4194304) != 0 ? divGallery.d() : divEdgeInsets;
        List list14 = list13;
        Expression expression22 = (i & 8388608) != 0 ? divGallery.x : expression10;
        return divGallery.C(divAccessibilityR, expressionG, expressionO, expressionP, listA, background, divBorderB, expression17, expressionB, expression18, expression19, expression20, listK, extensions, divFocus2, listY, height, id, divCollectionItemBuilder2, expression21, list14, divLayoutProviderV, divEdgeInsetsD, expression22, (i & 16777216) != 0 ? divGallery.t() : divEdgeInsets2, (i & 33554432) != 0 ? divGallery.z : expression11, (i & 67108864) != 0 ? divGallery.f() : expression12, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divGallery.e() : expression13, (i & 268435456) != 0 ? divGallery.C : expression14, (i & 536870912) != 0 ? divGallery.D : expression15, (i & 1073741824) != 0 ? divGallery.u() : list7, (i & Integer.MIN_VALUE) != 0 ? divGallery.h() : list8, (i2 & 1) != 0 ? divGallery.m() : divTransform, (i2 & 2) != 0 ? divGallery.j() : divChangeTransition, (i2 & 4) != 0 ? divGallery.z() : divAppearanceTransition, (i2 & 8) != 0 ? divGallery.i() : divAppearanceTransition2, (i2 & 16) != 0 ? divGallery.n() : list9, (i2 & 32) != 0 ? divGallery.w() : list10, (i2 & 64) != 0 ? divGallery.c() : list11, (i2 & 128) != 0 ? divGallery.getVisibility() : expression16, (i2 & 256) != 0 ? divGallery.x() : divVisibilityAction, (i2 & 512) != 0 ? divGallery.a() : list12, (i2 & 1024) != 0 ? divGallery.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.e;
    }

    @Override
    public DivBorder B() {
        return this.g;
    }

    public final DivGallery C(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, DivCollectionItemBuilder divCollectionItemBuilder, Expression expression9, List list6, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression10, DivEdgeInsets divEdgeInsets2, Expression expression11, Expression expression12, Expression expression13, Expression expression14, Expression expression15, List list7, List list8, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list9, List list10, List list11, Expression expression16, DivVisibilityAction divVisibilityAction, List list12, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression6, "crossContentAlignment");
        y45.j(expression8, "defaultItem");
        y45.j(divSize, "height");
        y45.j(expression9, "itemSpacing");
        y45.j(expression10, "orientation");
        y45.j(expression11, "restrictParentScroll");
        y45.j(expression14, "scrollMode");
        y45.j(expression15, "scrollbar");
        y45.j(expression16, "visibility");
        y45.j(divSize2, "width");
        return new DivGallery(divAccessibility, expression, expression2, expression3, list, list2, divBorder, expression4, expression5, expression6, expression7, expression8, list3, list4, divFocus, list5, divSize, str, divCollectionItemBuilder, expression9, list6, divLayoutProvider, divEdgeInsets, expression10, divEdgeInsets2, expression11, expression12, expression13, expression14, expression15, list7, list8, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list9, list10, list11, expression16, divVisibilityAction, list12, divSize2);
    }

    public final boolean E(DivGallery divGallery, oj3 oj3Var, oj3 oj3Var2) {
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
        boolean z7;
        boolean z8;
        boolean zA8;
        boolean zA9;
        boolean zA10;
        boolean zA11;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean zG;
        boolean z12;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divGallery == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divGallery.r(), oj3Var, oj3Var2);
        } else {
            zA = divGallery.r() == null;
        }
        if (!zA) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divGallery.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divGallery.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divGallery.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divGallery.A();
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
            z = divGallery.A() == null;
        }
        if (!z) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divGallery.getBackground();
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
            z2 = divGallery.getBackground() == null;
        }
        if (!z2) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA2 = divBorderB.a(divGallery.B(), oj3Var, oj3Var2);
        } else {
            zA2 = divGallery.B() == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expression = this.h;
        Long l = expression != null ? (Long) expression.b(oj3Var) : null;
        Expression expression2 = divGallery.h;
        if (!y45.e(l, expression2 != null ? (Long) expression2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionB = b();
        Long l2 = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divGallery.b();
        if (!y45.e(l2, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null) || this.j.b(oj3Var) != divGallery.j.b(oj3Var2)) {
            return false;
        }
        Expression expression3 = this.k;
        Long l3 = expression3 != null ? (Long) expression3.b(oj3Var) : null;
        Expression expression4 = divGallery.k;
        if (!y45.e(l3, expression4 != null ? (Long) expression4.b(oj3Var2) : null) || ((Number) this.l.b(oj3Var)).longValue() != ((Number) divGallery.l.b(oj3Var2)).longValue()) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divGallery.k();
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
            z3 = divGallery.k() == null;
        }
        if (!z3) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divGallery.getExtensions();
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
            z4 = divGallery.getExtensions() == null;
        }
        if (!z4) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA3 = divFocusQ.a(divGallery.q(), oj3Var, oj3Var2);
        } else {
            zA3 = divGallery.q() == null;
        }
        if (!zA3) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divGallery.y();
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
            z5 = divGallery.y() == null;
        }
        if (!z5 || !getHeight().a(divGallery.getHeight(), oj3Var, oj3Var2) || !y45.e(getId(), divGallery.getId())) {
            return false;
        }
        DivCollectionItemBuilder divCollectionItemBuilder = this.s;
        if (divCollectionItemBuilder != null) {
            zA4 = divCollectionItemBuilder.a(divGallery.s, oj3Var, oj3Var2);
        } else {
            zA4 = divGallery.s == null;
        }
        if (!zA4 || ((Number) this.t.b(oj3Var)).longValue() != ((Number) divGallery.t.b(oj3Var2)).longValue()) {
            return false;
        }
        List list = this.u;
        if (list != null) {
            List list2 = divGallery.u;
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
            z6 = divGallery.u == null;
        }
        if (!z6) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA5 = divLayoutProviderV.a(divGallery.v(), oj3Var, oj3Var2);
        } else {
            zA5 = divGallery.v() == null;
        }
        if (!zA5) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA6 = divEdgeInsetsD.a(divGallery.d(), oj3Var, oj3Var2);
        } else {
            zA6 = divGallery.d() == null;
        }
        if (!zA6 || this.x.b(oj3Var) != divGallery.x.b(oj3Var2)) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA7 = divEdgeInsetsT.a(divGallery.t(), oj3Var, oj3Var2);
        } else {
            zA7 = divGallery.t() == null;
        }
        if (!zA7 || ((Boolean) this.z.b(oj3Var)).booleanValue() != ((Boolean) divGallery.z.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expressionF = f();
        String str = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divGallery.f();
        if (!y45.e(str, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l4 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divGallery.e();
        if (!y45.e(l4, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null) || this.C.b(oj3Var) != divGallery.C.b(oj3Var2) || this.D.b(oj3Var) != divGallery.D.b(oj3Var2)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divGallery.u();
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
            z7 = divGallery.u() == null;
        }
        if (!z7) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divGallery.h();
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
            z8 = divGallery.h() == null;
        }
        if (!z8) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA8 = divTransformM.a(divGallery.m(), oj3Var, oj3Var2);
        } else {
            zA8 = divGallery.m() == null;
        }
        if (!zA8) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA9 = divChangeTransitionJ.a(divGallery.j(), oj3Var, oj3Var2);
        } else {
            zA9 = divGallery.j() == null;
        }
        if (!zA9) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA10 = divAppearanceTransitionZ.a(divGallery.z(), oj3Var, oj3Var2);
        } else {
            zA10 = divGallery.z() == null;
        }
        if (!zA10) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA11 = divAppearanceTransitionI.a(divGallery.i(), oj3Var, oj3Var2);
        } else {
            zA11 = divGallery.i() == null;
        }
        if (!zA11) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divGallery.n();
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
            z9 = divGallery.n() == null;
        }
        if (!z9) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divGallery.w();
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
            z10 = divGallery.w() == null;
        }
        if (!z10) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divGallery.c();
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
            z11 = divGallery.c() == null;
        }
        if (!z11 || getVisibility().b(oj3Var) != divGallery.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divGallery.x(), oj3Var, oj3Var2);
        } else {
            zG = divGallery.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divGallery.a();
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
            z12 = divGallery.a() == null;
        }
        return z12 && getWidth().a(divGallery.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.P;
    }

    @Override
    public Expression b() {
        return this.i;
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
        return this.B;
    }

    @Override
    public Expression f() {
        return this.A;
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
        List list = this.u;
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
        return this.m;
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
        int iHashCode = xq8.b(DivGallery.class).hashCode();
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
        Expression expression = this.h;
        int iHashCode4 = iHash12 + (expression != null ? expression.hashCode() : 0);
        Expression expressionB = b();
        int iHashCode5 = iHashCode4 + (expressionB != null ? expressionB.hashCode() : 0) + this.j.hashCode();
        Expression expression2 = this.k;
        int iHashCode6 = iHashCode5 + (expression2 != null ? expression2.hashCode() : 0) + this.l.hashCode();
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
        int i3 = iHashCode6 + iHash3;
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
        int iHashCode7 = iHash14 + (id != null ? id.hashCode() : 0);
        DivCollectionItemBuilder divCollectionItemBuilder = this.s;
        int iHash15 = iHashCode7 + (divCollectionItemBuilder != null ? divCollectionItemBuilder.hash() : 0) + this.t.hashCode();
        DivLayoutProvider divLayoutProviderV = v();
        int iHash16 = iHash15 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash17 = iHash16 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0) + this.x.hashCode();
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash18 = iHash17 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0) + this.z.hashCode();
        Expression expressionF = f();
        int iHashCode8 = iHash18 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode9 = iHashCode8 + (expressionE != null ? expressionE.hashCode() : 0) + this.C.hashCode() + this.D.hashCode();
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
        int iHash19 = i6 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash20 = iHash19 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash21 = iHash20 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash22 = iHash21 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode10 = iHash22 + (listN != null ? listN.hashCode() : 0);
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
        int i7 = iHashCode10 + iHash8;
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
        int iHashCode11 = i7 + iHash9 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash23 = iHashCode11 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
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
        return this.o;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivGalleryJsonParser.b) ml0.a().I3().getValue()).b(ml0.b(), this);
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
        return this.p;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.I;
    }
}
