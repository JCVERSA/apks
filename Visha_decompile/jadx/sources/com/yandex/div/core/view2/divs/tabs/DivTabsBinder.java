package com.yandex.div.core.view2.divs.tabs;

import android.content.Context;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.drawable.DrawableKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.R;
import com.yandex.div.core.expression.local.DivRuntimeVisitor;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.DivVisibilityActionTracker;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.core.view2.divs.DivBaseBinder;
import com.yandex.div.core.view2.divs.tabs.DivTabsBinder;
import com.yandex.div.core.view2.divs.widgets.DivTabsLayout;
import com.yandex.div.internal.widget.tabs.BaseIndicatorTabLayout;
import com.yandex.div.internal.widget.tabs.TabItemLayout;
import com.yandex.div.internal.widget.tabs.TabTitlesLayoutView;
import com.yandex.div.internal.widget.tabs.ViewPagerFixedSizeLayout;
import com.yandex.div.internal.widget.tabs.c;
import com.yandex.div.internal.widget.tabs.d;
import com.yandex.div.internal.widget.tabs.e;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivCornersRadius;
import com.yandex.div2.DivEdgeInsets;
import com.yandex.div2.DivFixedSize;
import com.yandex.div2.DivSizeUnit;
import com.yandex.div2.DivTabs;
import defpackage.ae5;
import defpackage.c74;
import defpackage.cdc;
import defpackage.dq0;
import defpackage.e74;
import defpackage.ei2;
import defpackage.fda;
import defpackage.gd2;
import defpackage.hcc;
import defpackage.i81;
import defpackage.jn5;
import defpackage.oj3;
import defpackage.oj8;
import defpackage.ok2;
import defpackage.ow7;
import defpackage.pfb;
import defpackage.pr2;
import defpackage.qc2;
import defpackage.qj3;
import defpackage.rda;
import defpackage.rg2;
import defpackage.u15;
import defpackage.vr8;
import defpackage.wk2;
import defpackage.wu2;
import defpackage.wv7;
import defpackage.xi;
import defpackage.y45;
import defpackage.yp2;
import defpackage.z71;
import defpackage.zfb;
import defpackage.zn2;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class DivTabsBinder extends wu2 {
    public static final a p = new a(null);
    public static final DivTabs.TabTitleStyle q = new DivTabs.TabTitleStyle(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1048575, null);
    public final DivBaseBinder b;
    public final DivViewCreator c;
    public final oj8 d;
    public final cdc e;
    public final fda f;
    public final DivActionBinder g;
    public final gd2 h;
    public final wk2 i;
    public final DivVisibilityActionTracker j;
    public final zn2 k;
    public final Context l;
    public final DivRuntimeVisitor m;
    public final rda n;
    public Long o;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[DivTabs.TabTitleStyle.AnimationType.values().length];
            try {
                iArr[DivTabs.TabTitleStyle.AnimationType.SLIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivTabs.TabTitleStyle.AnimationType.FADE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivTabs.TabTitleStyle.AnimationType.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final class c extends ok2 {
        public final TabTitlesLayoutView b;
        public final int c;
        public final int d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(TabTitlesLayoutView tabTitlesLayoutView, int i, int i2, Div2View div2View) {
            super(div2View);
            this.b = tabTitlesLayoutView;
            this.c = i;
            this.d = i2;
        }

        @Override
        public void a() {
            super.a();
            this.b.setTabDelimiter(null, 0, 0);
        }

        @Override
        public void b(dq0 dq0Var) {
            y45.j(dq0Var, "cachedBitmap");
            super.b(dq0Var);
            this.b.setTabDelimiter(dq0Var.a(), this.c, this.d);
        }

        @Override
        public void c(PictureDrawable pictureDrawable) {
            y45.j(pictureDrawable, "pictureDrawable");
            super.c(pictureDrawable);
            this.b.setTabDelimiter(DrawableKt.toBitmap$default(pictureDrawable, 0, 0, null, 7, null), this.c, this.d);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivTabsBinder(DivBaseBinder divBaseBinder, DivViewCreator divViewCreator, oj8 oj8Var, cdc cdcVar, fda fdaVar, DivActionBinder divActionBinder, gd2 gd2Var, wk2 wk2Var, DivVisibilityActionTracker divVisibilityActionTracker, zn2 zn2Var, Context context, DivRuntimeVisitor divRuntimeVisitor, rda rdaVar) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(divViewCreator, "viewCreator");
        y45.j(oj8Var, "divBinder");
        y45.j(cdcVar, "viewPool");
        y45.j(fdaVar, "textStyleProvider");
        y45.j(divActionBinder, "actionBinder");
        y45.j(gd2Var, "div2Logger");
        y45.j(wk2Var, "imageLoader");
        y45.j(divVisibilityActionTracker, "visibilityActionTracker");
        y45.j(zn2Var, "divPatchCache");
        y45.j(context, "context");
        y45.j(divRuntimeVisitor, "runtimeVisitor");
        y45.j(rdaVar, "tabsStateCache");
        this.b = divBaseBinder;
        this.c = divViewCreator;
        this.d = oj8Var;
        this.e = cdcVar;
        this.f = fdaVar;
        this.g = divActionBinder;
        this.h = gd2Var;
        this.i = wk2Var;
        this.j = divVisibilityActionTracker;
        this.k = zn2Var;
        this.l = context;
        this.m = divRuntimeVisitor;
        this.n = rdaVar;
        cdcVar.c("DIV2.TAB_HEADER_VIEW", new TabTitlesLayoutView.c(context), 12);
        cdcVar.c("DIV2.TAB_ITEM_VIEW", new hcc() {
            @Override
            public final View a() {
                return DivTabsBinder.j(this.a);
            }
        }, 2);
    }

    public static final float B(Expression expression, oj3 oj3Var, DisplayMetrics displayMetrics) {
        return BaseDivViewExtensionsKt.K((Long) expression.b(oj3Var), displayMetrics);
    }

    public static final TabItemLayout j(DivTabsBinder divTabsBinder) {
        y45.j(divTabsBinder, "this$0");
        return new TabItemLayout(divTabsBinder.l, null, 2, null);
    }

    public static final void t(DivTabsBinder divTabsBinder, com.yandex.div.core.view2.a aVar) {
        y45.j(divTabsBinder, "this$0");
        y45.j(aVar, "$bindingContext");
        divTabsBinder.h.w(aVar.a());
    }

    public static final List v(List list) {
        y45.j(list, "$list");
        return list;
    }

    public static final void w(DivTabsBinder divTabsBinder, com.yandex.div.core.view2.a aVar, DivTabs divTabs, DivTabsLayout divTabsLayout, rg2 rg2Var, DivStatePath divStatePath, final List list, int i) {
        pr2 pr2VarZ = divTabsBinder.z(aVar, divTabs, divTabsLayout, rg2Var, divStatePath);
        pr2VarZ.K(new com.yandex.div.internal.widget.tabs.b.g() {
            @Override
            public final List a() {
                return DivTabsBinder.x(list);
            }
        }, i);
        divTabsLayout.setDivTabsAdapter(pr2VarZ);
    }

    public static final List x(List list) {
        y45.j(list, "$list");
        return list;
    }

    public final float[] A(DivTabs.TabTitleStyle tabTitleStyle, DisplayMetrics displayMetrics, oj3 oj3Var) {
        float fB;
        Expression expression;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        Expression expression5 = tabTitleStyle.g;
        if (expression5 != null) {
            fB = B(expression5, oj3Var, displayMetrics);
        } else {
            fB = tabTitleStyle.h == null ? -1.0f : 0.0f;
        }
        DivCornersRadius divCornersRadius = tabTitleStyle.h;
        float fB2 = (divCornersRadius == null || (expression4 = divCornersRadius.c) == null) ? fB : B(expression4, oj3Var, displayMetrics);
        DivCornersRadius divCornersRadius2 = tabTitleStyle.h;
        float fB3 = (divCornersRadius2 == null || (expression3 = divCornersRadius2.d) == null) ? fB : B(expression3, oj3Var, displayMetrics);
        DivCornersRadius divCornersRadius3 = tabTitleStyle.h;
        float fB4 = (divCornersRadius3 == null || (expression2 = divCornersRadius3.a) == null) ? fB : B(expression2, oj3Var, displayMetrics);
        DivCornersRadius divCornersRadius4 = tabTitleStyle.h;
        if (divCornersRadius4 != null && (expression = divCornersRadius4.b) != null) {
            fB = B(expression, oj3Var, displayMetrics);
        }
        return new float[]{fB2, fB2, fB3, fB3, fB, fB, fB4, fB4};
    }

    public final Set C(int i, boolean z) {
        return z ? new LinkedHashSet() : i81.f1(new u15(0, i));
    }

    public final com.yandex.div.internal.widget.tabs.b.i D() {
        return new com.yandex.div.internal.widget.tabs.b.i(R.id.base_tabbed_title_container_scroller, R.id.div_tabs_pager_container, R.id.div_tabs_container_helper, true, false, "DIV2.TAB_HEADER_VIEW", "DIV2.TAB_ITEM_VIEW");
    }

    public final void E(final DivTabsLayout divTabsLayout, final oj3 oj3Var, final DivTabs.TabTitleDelimiter tabTitleDelimiter, final com.yandex.div.core.view2.a aVar) {
        if (tabTitleDelimiter == null) {
            return;
        }
        q(divTabsLayout.getTitleLayout(), oj3Var, tabTitleDelimiter, aVar);
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m251invoke(obj);
                return zfb.a;
            }

            public final void m251invoke(Object obj) {
                this.this$0.q(divTabsLayout.getTitleLayout(), oj3Var, tabTitleDelimiter, aVar);
            }
        };
        tabTitleDelimiter.c.b.e(oj3Var, e74Var);
        tabTitleDelimiter.c.a.e(oj3Var, e74Var);
        tabTitleDelimiter.a.b.e(oj3Var, e74Var);
        tabTitleDelimiter.a.a.e(oj3Var, e74Var);
        tabTitleDelimiter.b.e(oj3Var, e74Var);
    }

    public final void F(final TabTitlesLayoutView tabTitlesLayoutView, final DivTabs divTabs, final oj3 oj3Var) {
        DivEdgeInsets divEdgeInsets;
        Expression expression;
        DivEdgeInsets divEdgeInsets2;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m252invoke(obj);
                return zfb.a;
            }

            public final void m252invoke(Object obj) {
                DivTabs.TabTitleStyle tabTitleStyle = divTabs.D;
                if (tabTitleStyle == null) {
                    tabTitleStyle = DivTabsBinder.q;
                }
                DivEdgeInsets divEdgeInsets3 = tabTitleStyle.t;
                DivEdgeInsets divEdgeInsets4 = divTabs.E;
                Expression expression5 = tabTitleStyle.s;
                long jLongValue = (expression5 != null ? ((Number) expression5.b(oj3Var)).longValue() : (long) (((Number) tabTitleStyle.j.b(oj3Var)).floatValue() * 1.3f)) + ((Number) divEdgeInsets3.f.b(oj3Var)).longValue() + ((Number) divEdgeInsets3.a.b(oj3Var)).longValue() + ((Number) divEdgeInsets4.f.b(oj3Var)).longValue() + ((Number) divEdgeInsets4.a.b(oj3Var)).longValue();
                DisplayMetrics displayMetrics = tabTitlesLayoutView.getResources().getDisplayMetrics();
                ViewGroup.LayoutParams layoutParams = tabTitlesLayoutView.getLayoutParams();
                Long lValueOf = Long.valueOf(jLongValue);
                y45.i(displayMetrics, "metrics");
                layoutParams.height = BaseDivViewExtensionsKt.s0(lValueOf, displayMetrics);
            }
        };
        qc2 qc2VarE = null;
        e74Var.invoke(null);
        qj3 qj3VarA = vr8.a(tabTitlesLayoutView);
        DivTabs.TabTitleStyle tabTitleStyle = divTabs.D;
        qj3VarA.addSubscription((tabTitleStyle == null || (expression4 = tabTitleStyle.s) == null) ? null : expression4.e(oj3Var, e74Var));
        DivTabs.TabTitleStyle tabTitleStyle2 = divTabs.D;
        qj3VarA.addSubscription((tabTitleStyle2 == null || (expression3 = tabTitleStyle2.j) == null) ? null : expression3.e(oj3Var, e74Var));
        DivTabs.TabTitleStyle tabTitleStyle3 = divTabs.D;
        qj3VarA.addSubscription((tabTitleStyle3 == null || (divEdgeInsets2 = tabTitleStyle3.t) == null || (expression2 = divEdgeInsets2.f) == null) ? null : expression2.e(oj3Var, e74Var));
        DivTabs.TabTitleStyle tabTitleStyle4 = divTabs.D;
        if (tabTitleStyle4 != null && (divEdgeInsets = tabTitleStyle4.t) != null && (expression = divEdgeInsets.a) != null) {
            qc2VarE = expression.e(oj3Var, e74Var);
        }
        qj3VarA.addSubscription(qc2VarE);
        qj3VarA.addSubscription(divTabs.E.f.e(oj3Var, e74Var));
        qj3VarA.addSubscription(divTabs.E.a.e(oj3Var, e74Var));
    }

    public final void G(final DivTabsLayout divTabsLayout, final oj3 oj3Var, final DivTabs.TabTitleStyle tabTitleStyle) {
        Expression expression;
        Expression expression2;
        Expression expression3;
        DivCornersRadius divCornersRadius;
        Expression expression4;
        DivCornersRadius divCornersRadius2;
        Expression expression5;
        DivCornersRadius divCornersRadius3;
        Expression expression6;
        DivCornersRadius divCornersRadius4;
        Expression expression7;
        Expression expression8;
        Expression expression9;
        Expression expression10;
        Expression expression11;
        Expression expression12;
        r(divTabsLayout.getTitleLayout(), oj3Var, tabTitleStyle == null ? q : tabTitleStyle);
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m253invoke(obj);
                return zfb.a;
            }

            public final void m253invoke(Object obj) {
                DivTabsBinder divTabsBinder = this.this$0;
                TabTitlesLayoutView<?> titleLayout = divTabsLayout.getTitleLayout();
                oj3 oj3Var2 = oj3Var;
                DivTabs.TabTitleStyle tabTitleStyle2 = tabTitleStyle;
                if (tabTitleStyle2 == null) {
                    tabTitleStyle2 = DivTabsBinder.q;
                }
                divTabsBinder.r(titleLayout, oj3Var2, tabTitleStyle2);
            }
        };
        if (tabTitleStyle != null && (expression12 = tabTitleStyle.d) != null) {
            expression12.e(oj3Var, e74Var);
        }
        if (tabTitleStyle != null && (expression11 = tabTitleStyle.a) != null) {
            expression11.e(oj3Var, e74Var);
        }
        if (tabTitleStyle != null && (expression10 = tabTitleStyle.p) != null) {
            expression10.e(oj3Var, e74Var);
        }
        if (tabTitleStyle != null && (expression9 = tabTitleStyle.m) != null) {
            expression9.e(oj3Var, e74Var);
        }
        if (tabTitleStyle != null && (expression8 = tabTitleStyle.g) != null) {
            expression8.e(oj3Var, e74Var);
        }
        if (tabTitleStyle != null && (divCornersRadius4 = tabTitleStyle.h) != null && (expression7 = divCornersRadius4.c) != null) {
            expression7.e(oj3Var, e74Var);
        }
        if (tabTitleStyle != null && (divCornersRadius3 = tabTitleStyle.h) != null && (expression6 = divCornersRadius3.d) != null) {
            expression6.e(oj3Var, e74Var);
        }
        if (tabTitleStyle != null && (divCornersRadius2 = tabTitleStyle.h) != null && (expression5 = divCornersRadius2.b) != null) {
            expression5.e(oj3Var, e74Var);
        }
        if (tabTitleStyle != null && (divCornersRadius = tabTitleStyle.h) != null && (expression4 = divCornersRadius.a) != null) {
            expression4.e(oj3Var, e74Var);
        }
        if (tabTitleStyle != null && (expression3 = tabTitleStyle.q) != null) {
            expression3.e(oj3Var, e74Var);
        }
        if (tabTitleStyle != null && (expression2 = tabTitleStyle.f) != null) {
            expression2.e(oj3Var, e74Var);
        }
        if (tabTitleStyle == null || (expression = tabTitleStyle.e) == null) {
            return;
        }
        expression.e(oj3Var, e74Var);
    }

    public final void q(TabTitlesLayoutView tabTitlesLayoutView, oj3 oj3Var, DivTabs.TabTitleDelimiter tabTitleDelimiter, com.yandex.div.core.view2.a aVar) {
        DisplayMetrics displayMetrics = tabTitlesLayoutView.getResources().getDisplayMetrics();
        DivFixedSize divFixedSize = tabTitleDelimiter.c;
        long jLongValue = ((Number) divFixedSize.b.b(oj3Var)).longValue();
        DivSizeUnit divSizeUnit = (DivSizeUnit) divFixedSize.a.b(oj3Var);
        y45.i(displayMetrics, "metrics");
        int iF0 = BaseDivViewExtensionsKt.F0(jLongValue, divSizeUnit, displayMetrics);
        DivFixedSize divFixedSize2 = tabTitleDelimiter.a;
        jn5 jn5VarLoadImage = this.i.loadImage(((Uri) tabTitleDelimiter.b.b(oj3Var)).toString(), new c(tabTitlesLayoutView, iF0, BaseDivViewExtensionsKt.F0(((Number) divFixedSize2.b.b(oj3Var)).longValue(), (DivSizeUnit) divFixedSize2.a.b(oj3Var), displayMetrics), aVar.a()));
        y45.i(jn5VarLoadImage, "TabTitlesLayoutView<*>.a…}\n            }\n        )");
        aVar.a().addLoadReference(jn5VarLoadImage, tabTitlesLayoutView);
    }

    public final void r(TabTitlesLayoutView tabTitlesLayoutView, oj3 oj3Var, DivTabs.TabTitleStyle tabTitleStyle) {
        BaseIndicatorTabLayout.AnimationType animationType;
        int iIntValue = ((Number) tabTitleStyle.d.b(oj3Var)).intValue();
        int iIntValue2 = ((Number) tabTitleStyle.a.b(oj3Var)).intValue();
        int iIntValue3 = ((Number) tabTitleStyle.p.b(oj3Var)).intValue();
        Expression expression = tabTitleStyle.m;
        tabTitlesLayoutView.setTabColors(iIntValue, iIntValue2, iIntValue3, expression != null ? ((Number) expression.b(oj3Var)).intValue() : 0);
        DisplayMetrics displayMetrics = tabTitlesLayoutView.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "metrics");
        tabTitlesLayoutView.setTabIndicatorCornersRadii(A(tabTitleStyle, displayMetrics, oj3Var));
        tabTitlesLayoutView.setTabItemSpacing(BaseDivViewExtensionsKt.K((Long) tabTitleStyle.q.b(oj3Var), displayMetrics));
        int i = b.a[((DivTabs.TabTitleStyle.AnimationType) tabTitleStyle.f.b(oj3Var)).ordinal()];
        if (i == 1) {
            animationType = BaseIndicatorTabLayout.AnimationType.SLIDE;
        } else if (i == 2) {
            animationType = BaseIndicatorTabLayout.AnimationType.FADE;
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            animationType = BaseIndicatorTabLayout.AnimationType.NONE;
        }
        tabTitlesLayoutView.setAnimationType(animationType);
        tabTitlesLayoutView.setAnimationDuration(((Number) tabTitleStyle.e.b(oj3Var)).longValue());
        tabTitlesLayoutView.setTabTitleStyle(tabTitleStyle);
    }

    @Override
    public void a(final DivTabsLayout divTabsLayout, final com.yandex.div.core.view2.a aVar, final DivTabs divTabs, DivTabs divTabs2) {
        y45.j(divTabsLayout, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divTabs, TtmlNode.TAG_DIV);
        final oj3 oj3VarB = aVar.b();
        divTabsLayout.setClipToPadding(false);
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m248invoke(obj);
                return zfb.a;
            }

            public final void m248invoke(Object obj) {
                BaseDivViewExtensionsKt.w(divTabsLayout.getTitleLayout(), divTabs.E, oj3VarB);
            }
        };
        e74Var.invoke(null);
        divTabsLayout.addSubscription(divTabs.E.c.e(oj3VarB, e74Var));
        divTabsLayout.addSubscription(divTabs.E.d.e(oj3VarB, e74Var));
        divTabsLayout.addSubscription(divTabs.E.f.e(oj3VarB, e74Var));
        divTabsLayout.addSubscription(divTabs.E.a.e(oj3VarB, e74Var));
        F(divTabsLayout.getTitleLayout(), divTabs, oj3VarB);
        G(divTabsLayout, oj3VarB, divTabs.D);
        E(divTabsLayout, oj3VarB, divTabs.C, aVar);
        divTabsLayout.getPagerLayout().setClipToPadding(false);
        DivTabsBinderKt.e(divTabs.A, oj3VarB, divTabsLayout, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m247invoke(obj);
                return zfb.a;
            }

            public final void m247invoke(Object obj) {
                BaseDivViewExtensionsKt.r(divTabsLayout.getDivider(), divTabs.A, oj3VarB);
            }
        });
        divTabsLayout.addSubscription(divTabs.z.f(oj3VarB, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return zfb.a;
            }

            public final void invoke(int i) {
                divTabsLayout.getDivider().setBackgroundColor(i);
            }
        }));
        divTabsLayout.addSubscription(divTabs.n.f(oj3VarB, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z) {
                divTabsLayout.getDivider().setVisibility(z ? 0 : 8);
            }
        }));
        divTabsLayout.getTitleLayout().setOnScrollChangedListener(new TabTitlesLayoutView.b() {
            @Override
            public final void a() {
                DivTabsBinder.t(this.a, aVar);
            }
        });
        divTabsLayout.getTitleLayout().setFocusTracker(aVar.a().getInputFocusTracker());
        divTabsLayout.addSubscription(divTabs.u.f(oj3VarB, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z) {
                divTabsLayout.getViewPager().setOnInterceptTouchEventListener(z ? ow7.a : null);
            }
        }));
    }

    public final void u(final DivStatePath divStatePath, final com.yandex.div.core.view2.a aVar, final DivTabsLayout divTabsLayout, DivTabs divTabs, final DivTabs divTabs2, final rg2 rg2Var, qj3 qj3Var) {
        int i;
        Long l;
        final oj3 oj3VarB = aVar.b();
        List<DivTabs.Item> list = divTabs2.q;
        final ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (DivTabs.Item item : list) {
            DisplayMetrics displayMetrics = divTabsLayout.getResources().getDisplayMetrics();
            y45.i(displayMetrics, "view.resources.displayMetrics");
            arrayList.add(new yp2(item, displayMetrics, oj3VarB));
        }
        pr2 pr2VarJ = DivTabsBinderKt.j(divTabsLayout.getDivTabsAdapter(), divTabs2, oj3VarB);
        if (pr2VarJ != null) {
            pr2VarJ.J(aVar);
            pr2VarJ.L(divStatePath);
            pr2VarJ.F().d(divTabs2);
            pr2VarJ.D().c(divTabs2);
            if (divTabs == divTabs2) {
                pr2VarJ.I();
            } else {
                pr2VarJ.v(new com.yandex.div.internal.widget.tabs.b.g() {
                    @Override
                    public final List a() {
                        return DivTabsBinder.v(arrayList);
                    }
                }, oj3VarB, qj3Var);
            }
        } else {
            long jLongValue = ((Number) divTabs2.y.b(oj3VarB)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            w(this, aVar, divTabs2, divTabsLayout, rg2Var, divStatePath, arrayList, i);
        }
        DivTabsBinderKt.f(divTabs2.q, oj3VarB, qj3Var, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m249invoke(obj);
                return zfb.a;
            }

            public final void m249invoke(Object obj) {
                pr2 divTabsAdapter = divTabsLayout.getDivTabsAdapter();
                if (divTabsAdapter != null) {
                    divTabsAdapter.I();
                }
            }
        });
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).longValue());
                return zfb.a;
            }

            public final void invoke(long j2) {
                wv7 wv7VarG;
                int i2;
                this.this$0.o = Long.valueOf(j2);
                pr2 divTabsAdapter = divTabsLayout.getDivTabsAdapter();
                if (divTabsAdapter == null || (wv7VarG = divTabsAdapter.G()) == null) {
                    return;
                }
                long j3 = j2 >> 31;
                if (j3 == 0 || j3 == -1) {
                    i2 = (int) j2;
                } else {
                    ae5 ae5Var2 = ae5.a;
                    if (xi.o()) {
                        xi.i("Unable convert '" + j2 + "' to Int");
                    }
                    i2 = j2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                }
                if (wv7VarG.a() != i2) {
                    wv7VarG.b(i2);
                }
            }
        };
        qj3Var.addSubscription(divTabs2.j.e(oj3VarB, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z) {
                int iA;
                wv7 wv7VarG;
                pr2 divTabsAdapter = divTabsLayout.getDivTabsAdapter();
                if (divTabsAdapter == null || divTabsAdapter.H() != z) {
                    DivTabsBinder divTabsBinder = this;
                    a aVar2 = aVar;
                    DivTabs divTabs3 = divTabs2;
                    DivTabsLayout divTabsLayout2 = divTabsLayout;
                    rg2 rg2Var2 = rg2Var;
                    DivStatePath divStatePath2 = divStatePath;
                    List<yp2> list2 = arrayList;
                    pr2 divTabsAdapter2 = divTabsLayout2.getDivTabsAdapter();
                    if (divTabsAdapter2 == null || (wv7VarG = divTabsAdapter2.G()) == null) {
                        long jLongValue2 = ((Number) divTabs2.y.b(oj3VarB)).longValue();
                        long j2 = jLongValue2 >> 31;
                        if (j2 == 0 || j2 == -1) {
                            iA = (int) jLongValue2;
                        } else {
                            ae5 ae5Var2 = ae5.a;
                            if (xi.o()) {
                                xi.i("Unable convert '" + jLongValue2 + "' to Int");
                            }
                            iA = jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                        }
                    } else {
                        iA = wv7VarG.a();
                    }
                    DivTabsBinder.w(divTabsBinder, aVar2, divTabs3, divTabsLayout2, rg2Var2, divStatePath2, list2, iA);
                }
            }
        }));
        qj3Var.addSubscription(divTabs2.y.e(oj3VarB, e74Var));
        Div2View div2ViewA = aVar.a();
        boolean z = y45.e(div2ViewA.getPrevDataTag(), ei2.b) || y45.e(div2ViewA.getDataTag(), div2ViewA.getPrevDataTag());
        long jLongValue2 = ((Number) divTabs2.y.b(oj3VarB)).longValue();
        if (!z || (l = this.o) == null || l.longValue() != jLongValue2) {
            e74Var.invoke(Long.valueOf(jLongValue2));
        }
        qj3Var.addSubscription(divTabs2.B.f(oj3VarB, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z2) {
                pr2 divTabsAdapter = divTabsLayout.getDivTabsAdapter();
                if (divTabsAdapter != null) {
                    divTabsAdapter.w(this.C(divTabs2.q.size() - 1, z2));
                }
            }
        }));
    }

    public void y(com.yandex.div.core.view2.a aVar, DivTabsLayout divTabsLayout, Div.p pVar, DivStatePath divStatePath) {
        Div.p pVarZ;
        y45.j(aVar, "context");
        y45.j(divTabsLayout, "view");
        y45.j(pVar, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        Div.p div = divTabsLayout.getDiv();
        if (div == pVar) {
            pr2 divTabsAdapter = divTabsLayout.getDivTabsAdapter();
            if (divTabsAdapter != null && (pVarZ = divTabsAdapter.z(aVar.b(), pVar)) != null) {
                divTabsLayout.setDiv(pVarZ);
                return;
            }
        } else {
            this.b.N(aVar, divTabsLayout, pVar, div);
            a(divTabsLayout, aVar, pVar.c(), div != null ? div.c() : null);
        }
        DivTabs divTabsC = div != null ? div.c() : null;
        DivTabs divTabsC2 = pVar.c();
        Object obj = this.d.get();
        y45.i(obj, "divBinder.get()");
        u(divStatePath, aVar, divTabsLayout, divTabsC, divTabsC2, (rg2) obj, divTabsLayout);
    }

    public final pr2 z(com.yandex.div.core.view2.a aVar, DivTabs divTabs, DivTabsLayout divTabsLayout, rg2 rg2Var, DivStatePath divStatePath) {
        final DivTabsEventManager divTabsEventManager = new DivTabsEventManager(aVar, this.g, this.h, this.j, divTabsLayout, divTabs);
        boolean zBooleanValue = ((Boolean) divTabs.j.b(aVar.b())).booleanValue();
        d dVar = zBooleanValue ? new d() {
            @Override
            public final ViewPagerFixedSizeLayout.a a(ViewGroup viewGroup, d.b bVar, d.a aVar2) {
                return new c(viewGroup, bVar, aVar2);
            }
        } : new d() {
            @Override
            public final ViewPagerFixedSizeLayout.a a(ViewGroup viewGroup, d.b bVar, d.a aVar2) {
                return new e(viewGroup, bVar, aVar2);
            }
        };
        int currentItem = divTabsLayout.getViewPager().getCurrentItem();
        final int currentItem2 = divTabsLayout.getViewPager().getCurrentItem();
        if (currentItem2 == currentItem) {
            pfb.a.e(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m250invoke();
                    return zfb.a;
                }

                public final void m250invoke() {
                    divTabsEventManager.c(currentItem2);
                }
            });
        }
        return new pr2(this.e, divTabsLayout, D(), dVar, zBooleanValue, aVar, this.f, this.c, rg2Var, divTabsEventManager, new DivTabsActiveStateTracker(aVar, divStatePath, this.h, this.n, this.m, divTabs), divStatePath, this.k);
    }
}
