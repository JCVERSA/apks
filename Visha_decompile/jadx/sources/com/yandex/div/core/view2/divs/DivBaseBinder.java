package com.yandex.div.core.view2.divs;

import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import com.yandex.div.R;
import com.yandex.div.core.tooltip.DivTooltipController;
import com.yandex.div.core.util.DivDataExtensionsKt;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivAccessibilityBinder;
import com.yandex.div.core.view2.animations.DivTransitionHandler;
import com.yandex.div.core.view2.divs.DivBaseBinder;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivAccessibility;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivData;
import com.yandex.div2.DivFocus;
import com.yandex.div2.DivLayoutProvider;
import com.yandex.div2.DivSize;
import com.yandex.div2.DivVisibility;
import com.yandex.div2.DivWrapContentSize;
import defpackage.ae5;
import defpackage.bob;
import defpackage.e74;
import defpackage.eg2;
import defpackage.g1a;
import defpackage.hb0;
import defpackage.lj2;
import defpackage.mk2;
import defpackage.og2;
import defpackage.oj3;
import defpackage.qc2;
import defpackage.qj3;
import defpackage.sj3;
import defpackage.tv2;
import defpackage.uj3;
import defpackage.ut2;
import defpackage.vr8;
import defpackage.wt2;
import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;

public final class DivBaseBinder {
    public final DivBackgroundBinder a;
    public final DivTooltipController b;
    public final lj2 c;
    public final DivAccessibilityBinder d;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivVisibility.values().length];
            try {
                iArr[DivVisibility.VISIBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivVisibility.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivVisibility.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public DivBaseBinder(DivBackgroundBinder divBackgroundBinder, DivTooltipController divTooltipController, lj2 lj2Var, DivAccessibilityBinder divAccessibilityBinder) {
        y45.j(divBackgroundBinder, "divBackgroundBinder");
        y45.j(divTooltipController, "tooltipController");
        y45.j(lj2Var, "divFocusBinder");
        y45.j(divAccessibilityBinder, "divAccessibilityBinder");
        this.a = divBackgroundBinder;
        this.b = divTooltipController;
        this.c = lj2Var;
        this.d = divAccessibilityBinder;
    }

    public static final void H(View view, DivBaseBinder divBaseBinder, Div2View div2View, String str, DivLayoutProviderVariablesHolder divLayoutProviderVariablesHolder, com.yandex.div.core.view2.a aVar, String str2, View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        y45.j(view, "$this_bindLayoutProvider");
        y45.j(divBaseBinder, "this$0");
        y45.j(div2View, "$divView");
        y45.j(divLayoutProviderVariablesHolder, "$variablesHolder");
        y45.j(aVar, "$bindingContext");
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "metrics");
        divBaseBinder.T(div2View, displayMetrics, str, divLayoutProviderVariablesHolder, i, i3, i5, i7, aVar.b());
        divBaseBinder.T(div2View, displayMetrics, str2, divLayoutProviderVariablesHolder, i2, i4, i6, i8, aVar.b());
    }

    public static final boolean I(DivLayoutProviderVariablesHolder divLayoutProviderVariablesHolder, Div2View div2View) {
        y45.j(divLayoutProviderVariablesHolder, "$variablesHolder");
        y45.j(div2View, "$divView");
        divLayoutProviderVariablesHolder.z();
        for (Map.Entry<oj3, Map<String, Integer>> entry : div2View.getLayoutSizes$div_release().entrySet()) {
            oj3 key = entry.getKey();
            for (Map.Entry<String, Integer> entry2 : entry.getValue().entrySet()) {
                bob.a.d(div2View, entry2.getKey(), String.valueOf(entry2.getValue().intValue()), key);
            }
        }
        div2View.getLayoutSizes$div_release().clear();
        return true;
    }

    public static void x(DivBaseBinder divBaseBinder, View view, com.yandex.div.core.view2.a aVar, og2 og2Var, og2 og2Var2, qj3 qj3Var, Drawable drawable, int i, Object obj) {
        if ((i & 16) != 0) {
            drawable = null;
        }
        divBaseBinder.w(view, aVar, og2Var, og2Var2, qj3Var, drawable);
    }

    public final void A(View view, com.yandex.div.core.view2.a aVar, List list, List list2) {
        this.c.e(view, aVar, list, list2);
    }

    public final void B(final View view, final og2 og2Var, og2 og2Var2, final oj3 oj3Var, qj3 qj3Var) {
        if (DivDataExtensionsKt.r(og2Var.getHeight(), og2Var2 != null ? og2Var2.getHeight() : null)) {
            return;
        }
        BaseDivViewExtensionsKt.m(view, og2Var, oj3Var);
        BaseDivViewExtensionsKt.y(view, BaseDivViewExtensionsKt.h0(og2Var.getHeight(), oj3Var));
        BaseDivViewExtensionsKt.u(view, S(og2Var.getHeight()), oj3Var);
        BaseDivViewExtensionsKt.s(view, R(og2Var.getHeight()), oj3Var);
        if (DivDataExtensionsKt.L(og2Var.getHeight())) {
            return;
        }
        sj3.n(qj3Var, og2Var.getHeight(), oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m164invoke(obj);
                return zfb.a;
            }

            public final void m164invoke(Object obj) {
                y45.j(obj, "it");
                BaseDivViewExtensionsKt.m(view, og2Var, oj3Var);
                BaseDivViewExtensionsKt.y(view, BaseDivViewExtensionsKt.h0(og2Var.getHeight(), oj3Var));
                BaseDivViewExtensionsKt.u(view, this.S(og2Var.getHeight()), oj3Var);
                BaseDivViewExtensionsKt.s(view, this.R(og2Var.getHeight()), oj3Var);
            }
        });
    }

    public final void C(View view, Div2View div2View, og2 og2Var, og2 og2Var2) {
        if (y45.e(og2Var.getId(), og2Var2 != null ? og2Var2.getId() : null)) {
            return;
        }
        BaseDivViewExtensionsKt.o(view, og2Var.getId(), div2View.getViewComponent().i().a(og2Var.getId()));
    }

    public final void D(Div2View div2View, View view, String str) {
        y45.j(div2View, "divView");
        y45.j(view, TypedValues.AttributesType.S_TARGET);
        BaseDivViewExtensionsKt.o(view, str, str == null ? -1 : div2View.getViewComponent().i().a(str));
    }

    public final void E(View view, og2 og2Var, og2 og2Var2, oj3 oj3Var, qj3 qj3Var) {
        if (view.getLayoutParams() == null) {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("LayoutParams should be initialized before view binding");
            }
            view.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        }
        P(view, og2Var, og2Var2, oj3Var, qj3Var);
        B(view, og2Var, og2Var2, oj3Var, qj3Var);
        J(view, og2Var, og2Var2, oj3Var, qj3Var);
        u(view, og2Var, og2Var2, oj3Var, qj3Var);
    }

    public final void F(View view, og2 og2Var, og2 og2Var2, oj3 oj3Var, qj3 qj3Var) {
        y45.j(view, TypedValues.AttributesType.S_TARGET);
        y45.j(og2Var, "newDiv");
        y45.j(oj3Var, "resolver");
        y45.j(qj3Var, "subscriber");
        E(view, og2Var, og2Var2, oj3Var, qj3Var);
    }

    public final void G(final View view, final com.yandex.div.core.view2.a aVar, og2 og2Var, og2 og2Var2) {
        DivLayoutProvider divLayoutProviderV;
        DivLayoutProvider divLayoutProviderV2;
        DivLayoutProvider divLayoutProviderV3;
        final Div2View div2ViewA = aVar.a();
        DivData divData = div2ViewA.getDivData();
        if (divData == null || (divLayoutProviderV = og2Var.v()) == null) {
            return;
        }
        if (g1a.F(divLayoutProviderV.b, (og2Var2 == null || (divLayoutProviderV3 = og2Var2.v()) == null) ? null : divLayoutProviderV3.b, false, 2, null)) {
            if (g1a.F(divLayoutProviderV.a, (og2Var2 == null || (divLayoutProviderV2 = og2Var2.v()) == null) ? null : divLayoutProviderV2.a, false, 2, null)) {
                return;
            }
        }
        if ((og2Var2 != null ? og2Var2.v() : null) != null) {
            Q(view);
        }
        final String str = divLayoutProviderV.b;
        final String str2 = divLayoutProviderV.a;
        if ((str == null || str.length() == 0) && (str2 == null || str2.length() == 0)) {
            eg2.e(div2ViewA, new Throwable("Neither width_variable_name nor height_variable_name found."));
            return;
        }
        DivLayoutProviderVariablesHolder divLayoutProviderVariablesHolder = div2ViewA.getVariablesHolders$div_release().get(divData);
        if (divLayoutProviderVariablesHolder == null) {
            divLayoutProviderVariablesHolder = new DivLayoutProviderVariablesHolder();
            divLayoutProviderVariablesHolder.D(divData, aVar);
            div2ViewA.getVariablesHolders$div_release().put(divData, divLayoutProviderVariablesHolder);
        }
        final DivLayoutProviderVariablesHolder divLayoutProviderVariablesHolder2 = divLayoutProviderVariablesHolder;
        View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                DivBaseBinder.H(view, this, div2ViewA, str, divLayoutProviderVariablesHolder2, aVar, str2, view2, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        if (view.getWidth() > 0 || view.getHeight() > 0) {
            onLayoutChangeListener.onLayoutChange(view, view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), 0, 0, 0, 0);
        }
        view.addOnLayoutChangeListener(onLayoutChangeListener);
        view.setTag(R.id.div_layout_provider_listener_id, onLayoutChangeListener);
        if (div2ViewA.getClearVariablesListener() != null) {
            return;
        }
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public final boolean onPreDraw() {
                return DivBaseBinder.I(divLayoutProviderVariablesHolder2, div2ViewA);
            }
        };
        div2ViewA.setClearVariablesListener$div_release(onPreDrawListener);
        div2ViewA.getViewTreeObserver().addOnPreDrawListener(onPreDrawListener);
    }

    public final void J(final View view, final og2 og2Var, og2 og2Var2, final oj3 oj3Var, qj3 qj3Var) {
        if (DivDataExtensionsKt.g(og2Var.d(), og2Var2 != null ? og2Var2.d() : null)) {
            return;
        }
        BaseDivViewExtensionsKt.r(view, og2Var.d(), oj3Var);
        if (DivDataExtensionsKt.A(og2Var.d())) {
            return;
        }
        sj3.f(qj3Var, og2Var.d(), oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m165invoke(obj);
                return zfb.a;
            }

            public final void m165invoke(Object obj) {
                y45.j(obj, "it");
                BaseDivViewExtensionsKt.r(view, og2Var.d(), oj3Var);
            }
        });
    }

    public final void K(final View view, Div2View div2View, og2 og2Var, og2 og2Var2, oj3 oj3Var, qj3 qj3Var) {
        DivFocus divFocusQ;
        DivFocus.NextFocusIds nextFocusIds;
        DivFocus.NextFocusIds nextFocusIds2;
        DivFocus divFocusQ2;
        DivFocus.NextFocusIds nextFocusIds3;
        DivFocus.NextFocusIds nextFocusIds4;
        DivFocus divFocusQ3;
        DivFocus.NextFocusIds nextFocusIds5;
        DivFocus.NextFocusIds nextFocusIds6;
        DivFocus divFocusQ4;
        DivFocus.NextFocusIds nextFocusIds7;
        DivFocus.NextFocusIds nextFocusIds8;
        DivFocus divFocusQ5;
        DivFocus.NextFocusIds nextFocusIds9;
        DivFocus.NextFocusIds nextFocusIds10;
        final tv2 tv2VarI = div2View.getViewComponent().i();
        DivFocus divFocusQ6 = og2Var.q();
        Expression expression = (divFocusQ6 == null || (nextFocusIds10 = divFocusQ6.c) == null) ? null : nextFocusIds10.b;
        if (!uj3.b(expression, (og2Var2 == null || (divFocusQ5 = og2Var2.q()) == null || (nextFocusIds9 = divFocusQ5.c) == null) ? null : nextFocusIds9.b)) {
            String str = expression != null ? (String) expression.b(oj3Var) : null;
            view.setNextFocusForwardId(tv2VarI.a(str));
            view.setAccessibilityTraversalBefore(tv2VarI.a(str));
            if (!uj3.f(expression)) {
                qj3Var.addSubscription(expression != null ? expression.e(oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((String) obj);
                        return zfb.a;
                    }

                    public final void invoke(String str2) {
                        y45.j(str2, TtmlNode.ATTR_ID);
                        view.setNextFocusForwardId(tv2VarI.a(str2));
                        view.setAccessibilityTraversalBefore(tv2VarI.a(str2));
                    }
                }) : null);
            }
        }
        DivFocus divFocusQ7 = og2Var.q();
        Expression expression2 = (divFocusQ7 == null || (nextFocusIds8 = divFocusQ7.c) == null) ? null : nextFocusIds8.c;
        if (!uj3.b(expression2, (og2Var2 == null || (divFocusQ4 = og2Var2.q()) == null || (nextFocusIds7 = divFocusQ4.c) == null) ? null : nextFocusIds7.c)) {
            view.setNextFocusLeftId(tv2VarI.a(expression2 != null ? (String) expression2.b(oj3Var) : null));
            if (!uj3.f(expression2)) {
                qj3Var.addSubscription(expression2 != null ? expression2.e(oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((String) obj);
                        return zfb.a;
                    }

                    public final void invoke(String str2) {
                        y45.j(str2, TtmlNode.ATTR_ID);
                        view.setNextFocusLeftId(tv2VarI.a(str2));
                    }
                }) : null);
            }
        }
        DivFocus divFocusQ8 = og2Var.q();
        Expression expression3 = (divFocusQ8 == null || (nextFocusIds6 = divFocusQ8.c) == null) ? null : nextFocusIds6.d;
        if (!uj3.b(expression3, (og2Var2 == null || (divFocusQ3 = og2Var2.q()) == null || (nextFocusIds5 = divFocusQ3.c) == null) ? null : nextFocusIds5.d)) {
            view.setNextFocusRightId(tv2VarI.a(expression3 != null ? (String) expression3.b(oj3Var) : null));
            if (!uj3.f(expression3)) {
                qj3Var.addSubscription(expression3 != null ? expression3.e(oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((String) obj);
                        return zfb.a;
                    }

                    public final void invoke(String str2) {
                        y45.j(str2, TtmlNode.ATTR_ID);
                        view.setNextFocusRightId(tv2VarI.a(str2));
                    }
                }) : null);
            }
        }
        DivFocus divFocusQ9 = og2Var.q();
        Expression expression4 = (divFocusQ9 == null || (nextFocusIds4 = divFocusQ9.c) == null) ? null : nextFocusIds4.e;
        if (!uj3.b(expression4, (og2Var2 == null || (divFocusQ2 = og2Var2.q()) == null || (nextFocusIds3 = divFocusQ2.c) == null) ? null : nextFocusIds3.e)) {
            view.setNextFocusUpId(tv2VarI.a(expression4 != null ? (String) expression4.b(oj3Var) : null));
            if (!uj3.f(expression4)) {
                qj3Var.addSubscription(expression4 != null ? expression4.e(oj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((String) obj);
                        return zfb.a;
                    }

                    public final void invoke(String str2) {
                        y45.j(str2, TtmlNode.ATTR_ID);
                        view.setNextFocusUpId(tv2VarI.a(str2));
                    }
                }) : null);
            }
        }
        DivFocus divFocusQ10 = og2Var.q();
        Expression expression5 = (divFocusQ10 == null || (nextFocusIds2 = divFocusQ10.c) == null) ? null : nextFocusIds2.a;
        if (uj3.b(expression5, (og2Var2 == null || (divFocusQ = og2Var2.q()) == null || (nextFocusIds = divFocusQ.c) == null) ? null : nextFocusIds.a)) {
            return;
        }
        view.setNextFocusDownId(tv2VarI.a(expression5 != null ? (String) expression5.b(oj3Var) : null));
        if (uj3.f(expression5)) {
            return;
        }
        qj3Var.addSubscription(expression5 != null ? expression5.e(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((String) obj);
                return zfb.a;
            }

            public final void invoke(String str2) {
                y45.j(str2, TtmlNode.ATTR_ID);
                view.setNextFocusDownId(tv2VarI.a(str2));
            }
        }) : null);
    }

    public final void L(final View view, final og2 og2Var, og2 og2Var2, final oj3 oj3Var, qj3 qj3Var) {
        if (view instanceof DivPagerView) {
            return;
        }
        if (DivDataExtensionsKt.g(og2Var.t(), og2Var2 != null ? og2Var2.t() : null)) {
            return;
        }
        BaseDivViewExtensionsKt.w(view, og2Var.t(), oj3Var);
        if (DivDataExtensionsKt.A(og2Var.t())) {
            return;
        }
        sj3.f(qj3Var, og2Var.t(), oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m166invoke(obj);
                return zfb.a;
            }

            public final void m166invoke(Object obj) {
                y45.j(obj, "it");
                BaseDivViewExtensionsKt.w(view, og2Var.t(), oj3Var);
            }
        });
    }

    public final void M(final View view, final og2 og2Var, og2 og2Var2, final oj3 oj3Var, qj3 qj3Var) {
        if (DivDataExtensionsKt.t(og2Var.m(), og2Var2 != null ? og2Var2.m() : null)) {
            return;
        }
        BaseDivViewExtensionsKt.x(view, og2Var.m(), oj3Var);
        if (DivDataExtensionsKt.N(og2Var.m())) {
            return;
        }
        sj3.p(qj3Var, og2Var.m(), oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m167invoke(obj);
                return zfb.a;
            }

            public final void m167invoke(Object obj) {
                y45.j(obj, "it");
                BaseDivViewExtensionsKt.x(view, og2Var.m(), oj3Var);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void N(com.yandex.div.core.view2.a aVar, View view, Div div, Div div2) {
        y45.j(aVar, "context");
        y45.j(view, "view");
        y45.j(div, TtmlNode.TAG_DIV);
        mk2 mk2Var = (mk2) view;
        mk2Var.closeAllSubscription();
        mk2Var.setDiv(div);
        mk2Var.setBindingContext(aVar);
        o(view, aVar, div.b(), div2 != null ? div2.b() : null);
    }

    public final void O(final View view, final Div2View div2View, final og2 og2Var, og2 og2Var2, final oj3 oj3Var, qj3 qj3Var) {
        if (uj3.b(og2Var.getVisibility(), og2Var2 != null ? og2Var2.getVisibility() : null)) {
            return;
        }
        n(view, div2View, og2Var, oj3Var, og2Var2 == null);
        if (uj3.d(og2Var.getVisibility())) {
            return;
        }
        qj3Var.addSubscription(og2Var.getVisibility().e(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((DivVisibility) obj);
                return zfb.a;
            }

            public final void invoke(DivVisibility divVisibility) {
                y45.j(divVisibility, "it");
                this.this$0.n(view, div2View, og2Var, oj3Var, false);
            }
        }));
    }

    public final void P(final View view, final og2 og2Var, og2 og2Var2, final oj3 oj3Var, qj3 qj3Var) {
        if (DivDataExtensionsKt.r(og2Var.getWidth(), og2Var2 != null ? og2Var2.getWidth() : null)) {
            return;
        }
        BaseDivViewExtensionsKt.z(view, og2Var, oj3Var);
        BaseDivViewExtensionsKt.n(view, BaseDivViewExtensionsKt.h0(og2Var.getWidth(), oj3Var));
        BaseDivViewExtensionsKt.v(view, S(og2Var.getWidth()), oj3Var);
        BaseDivViewExtensionsKt.t(view, R(og2Var.getWidth()), oj3Var);
        if (DivDataExtensionsKt.L(og2Var.getWidth())) {
            return;
        }
        sj3.n(qj3Var, og2Var.getWidth(), oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m168invoke(obj);
                return zfb.a;
            }

            public final void m168invoke(Object obj) {
                y45.j(obj, "it");
                BaseDivViewExtensionsKt.z(view, og2Var, oj3Var);
                BaseDivViewExtensionsKt.n(view, BaseDivViewExtensionsKt.h0(og2Var.getWidth(), oj3Var));
                BaseDivViewExtensionsKt.v(view, this.S(og2Var.getWidth()), oj3Var);
                BaseDivViewExtensionsKt.t(view, this.R(og2Var.getWidth()), oj3Var);
            }
        });
    }

    public final void Q(View view) {
        Object tag = view.getTag(R.id.div_layout_provider_listener_id);
        view.removeOnLayoutChangeListener(tag instanceof View.OnLayoutChangeListener ? (View.OnLayoutChangeListener) tag : null);
    }

    public final DivWrapContentSize.ConstraintSize R(DivSize divSize) {
        DivWrapContentSize divWrapContentSizeC;
        DivSize.d dVar = divSize instanceof DivSize.d ? (DivSize.d) divSize : null;
        if (dVar == null || (divWrapContentSizeC = dVar.c()) == null) {
            return null;
        }
        return divWrapContentSizeC.b;
    }

    public final DivWrapContentSize.ConstraintSize S(DivSize divSize) {
        DivWrapContentSize divWrapContentSizeC;
        DivSize.d dVar = divSize instanceof DivSize.d ? (DivSize.d) divSize : null;
        if (dVar == null || (divWrapContentSizeC = dVar.c()) == null) {
            return null;
        }
        return divWrapContentSizeC.c;
    }

    public final void T(Div2View div2View, DisplayMetrics displayMetrics, String str, DivLayoutProviderVariablesHolder divLayoutProviderVariablesHolder, int i, int i2, int i3, int i4, oj3 oj3Var) {
        int i5;
        if (str == null || str.length() == 0 || (i5 = i2 - i) == i4 - i3) {
            return;
        }
        if (divLayoutProviderVariablesHolder.A(str)) {
            eg2.e(div2View, new Throwable("Size subscriber affects original view size. Relayout was prevented."));
            return;
        }
        Map<oj3, Map<String, Integer>> layoutSizes$div_release = div2View.getLayoutSizes$div_release();
        Map<String, Integer> linkedHashMap = layoutSizes$div_release.get(oj3Var);
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap<>();
            layoutSizes$div_release.put(oj3Var, linkedHashMap);
        }
        linkedHashMap.put(str, Integer.valueOf(BaseDivViewExtensionsKt.m0(Integer.valueOf(i5), displayMetrics)));
    }

    public final void j(View view, String str, String str2) {
        if (str == null) {
            str = str2;
        } else if (str2 != null) {
            str = str + '\n' + str2;
        }
        view.setContentDescription(str);
    }

    public final void k(View view, Div2View div2View, og2 og2Var, DivAccessibility.Mode mode) {
        this.d.c(view, div2View, mode, og2Var);
    }

    public final void l(View view, String str) {
        ViewCompat.setStateDescription(view, str);
    }

    public final void m(View view, og2 og2Var) {
        view.setFocusable(og2Var.q() != null);
    }

    public final void n(View view, Div2View div2View, og2 og2Var, oj3 oj3Var, boolean z) {
        int i;
        DivTransitionHandler divTransitionHandler = div2View.getDivTransitionHandler();
        int i2 = a.a[((DivVisibility) og2Var.getVisibility().b(oj3Var)).ordinal()];
        if (i2 == 1) {
            i = 0;
        } else if (i2 == 2) {
            i = 4;
        } else {
            if (i2 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            i = 8;
        }
        if (i != 0) {
            view.clearAnimation();
        }
        int visibility = view.getVisibility();
        List listN = og2Var.n();
        Transition transitionE = null;
        if (listN == null || wt2.g(listN)) {
            DivTransitionHandler.a.C0284a c0284aF = divTransitionHandler.f(view);
            if (c0284aF != null) {
                visibility = c0284aF.b();
            }
            ut2 ut2VarC = div2View.getViewComponent().c();
            if ((visibility == 4 || visibility == 8) && i == 0) {
                transitionE = ut2VarC.e(og2Var.z(), 1, oj3Var);
            } else if ((i == 4 || i == 8) && visibility == 0 && !z) {
                transitionE = ut2VarC.e(og2Var.i(), 2, oj3Var);
            } else if (c0284aF != null) {
                TransitionManager.endTransitions(div2View);
            }
            if (transitionE != null) {
                transitionE.addTarget(view);
            }
        }
        if (transitionE != null) {
            divTransitionHandler.i(transitionE, view, new DivTransitionHandler.a.C0284a(i));
        } else {
            view.setVisibility(i);
        }
        div2View.trackChildrenVisibility();
    }

    public final void o(View view, com.yandex.div.core.view2.a aVar, og2 og2Var, og2 og2Var2) {
        oj3 oj3VarB = aVar.b();
        Div2View div2ViewA = aVar.a();
        qj3 qj3VarA = vr8.a(view);
        view.setDefaultFocusHighlightEnabled(false);
        C(view, div2ViewA, og2Var, og2Var2);
        E(view, og2Var, og2Var2, oj3VarB, qj3VarA);
        G(view, aVar, og2Var, og2Var2);
        p(view, div2ViewA, og2Var, og2Var2, oj3VarB, qj3VarA);
        v(view, og2Var, og2Var2, oj3VarB, qj3VarA);
        x(this, view, aVar, og2Var, og2Var2, qj3VarA, null, 16, null);
        z(view, aVar, og2Var);
        L(view, og2Var, og2Var2, oj3VarB, qj3VarA);
        K(view, div2ViewA, og2Var, og2Var2, oj3VarB, qj3VarA);
        DivFocus divFocusQ = og2Var.q();
        List list = divFocusQ != null ? divFocusQ.e : null;
        DivFocus divFocusQ2 = og2Var.q();
        A(view, aVar, list, divFocusQ2 != null ? divFocusQ2.d : null);
        O(view, div2ViewA, og2Var, og2Var2, oj3VarB, qj3VarA);
        M(view, og2Var, og2Var2, oj3VarB, qj3VarA);
        List listH = og2Var.h();
        if (listH != null) {
            this.b.o(view, listH);
        }
        if (this.d.f()) {
            return;
        }
        m(view, og2Var);
    }

    public final void p(View view, Div2View div2View, og2 og2Var, og2 og2Var2, oj3 oj3Var, qj3 qj3Var) {
        if (og2Var.r() == null) {
            if ((og2Var2 != null ? og2Var2.r() : null) == null) {
                k(view, div2View, og2Var, null);
                this.d.d(view, og2Var, DivAccessibility.Type.AUTO, oj3Var);
                return;
            }
        }
        t(view, og2Var, og2Var2, oj3Var);
        q(view, og2Var, og2Var2, oj3Var, qj3Var);
        r(view, div2View, og2Var, oj3Var, qj3Var);
        s(view, og2Var, og2Var2, oj3Var, qj3Var);
    }

    public final void q(final View view, final og2 og2Var, og2 og2Var2, final oj3 oj3Var, qj3 qj3Var) {
        Expression expression;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        DivAccessibility divAccessibilityR;
        DivAccessibility divAccessibilityR2;
        DivAccessibility divAccessibilityR3 = og2Var.r();
        qc2 qc2VarE = null;
        if (uj3.b(divAccessibilityR3 != null ? divAccessibilityR3.a : null, (og2Var2 == null || (divAccessibilityR2 = og2Var2.r()) == null) ? null : divAccessibilityR2.a)) {
            DivAccessibility divAccessibilityR4 = og2Var.r();
            if (uj3.b(divAccessibilityR4 != null ? divAccessibilityR4.b : null, (og2Var2 == null || (divAccessibilityR = og2Var2.r()) == null) ? null : divAccessibilityR.b)) {
                return;
            }
        }
        DivAccessibility divAccessibilityR5 = og2Var.r();
        String str = (divAccessibilityR5 == null || (expression4 = divAccessibilityR5.a) == null) ? null : (String) expression4.b(oj3Var);
        DivAccessibility divAccessibilityR6 = og2Var.r();
        j(view, str, (divAccessibilityR6 == null || (expression3 = divAccessibilityR6.b) == null) ? null : (String) expression3.b(oj3Var));
        DivAccessibility divAccessibilityR7 = og2Var.r();
        if (uj3.f(divAccessibilityR7 != null ? divAccessibilityR7.a : null)) {
            DivAccessibility divAccessibilityR8 = og2Var.r();
            if (uj3.f(divAccessibilityR8 != null ? divAccessibilityR8.b : null)) {
                return;
            }
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m162invoke(obj);
                return zfb.a;
            }

            public final void m162invoke(Object obj) {
                Expression expression5;
                Expression expression6;
                y45.j(obj, "<anonymous parameter 0>");
                DivBaseBinder divBaseBinder = this.this$0;
                View view2 = view;
                DivAccessibility divAccessibilityR9 = og2Var.r();
                String str2 = null;
                String str3 = (divAccessibilityR9 == null || (expression6 = divAccessibilityR9.a) == null) ? null : (String) expression6.b(oj3Var);
                DivAccessibility divAccessibilityR10 = og2Var.r();
                if (divAccessibilityR10 != null && (expression5 = divAccessibilityR10.b) != null) {
                    str2 = (String) expression5.b(oj3Var);
                }
                divBaseBinder.j(view2, str3, str2);
            }
        };
        DivAccessibility divAccessibilityR9 = og2Var.r();
        qj3Var.addSubscription((divAccessibilityR9 == null || (expression2 = divAccessibilityR9.a) == null) ? null : expression2.e(oj3Var, e74Var));
        DivAccessibility divAccessibilityR10 = og2Var.r();
        if (divAccessibilityR10 != null && (expression = divAccessibilityR10.b) != null) {
            qc2VarE = expression.e(oj3Var, e74Var);
        }
        qj3Var.addSubscription(qc2VarE);
    }

    public final void r(final View view, final Div2View div2View, final og2 og2Var, final oj3 oj3Var, qj3 qj3Var) {
        Expression expression;
        Expression expression2;
        DivAccessibility divAccessibilityR = og2Var.r();
        qc2 qc2VarE = null;
        k(view, div2View, og2Var, (divAccessibilityR == null || (expression2 = divAccessibilityR.d) == null) ? null : (DivAccessibility.Mode) expression2.b(oj3Var));
        DivAccessibility divAccessibilityR2 = og2Var.r();
        if (uj3.f(divAccessibilityR2 != null ? divAccessibilityR2.d : null)) {
            return;
        }
        DivAccessibility divAccessibilityR3 = og2Var.r();
        if (divAccessibilityR3 != null && (expression = divAccessibilityR3.d) != null) {
            qc2VarE = expression.e(oj3Var, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((DivAccessibility.Mode) obj);
                    return zfb.a;
                }

                public final void invoke(DivAccessibility.Mode mode) {
                    DivAccessibility.Type type;
                    y45.j(mode, hb0.KEY_NAME_MODE);
                    this.this$0.k(view, div2View, og2Var, mode);
                    DivAccessibility divAccessibilityR4 = og2Var.r();
                    if (divAccessibilityR4 == null || (type = divAccessibilityR4.g) == null) {
                        type = DivAccessibility.Type.AUTO;
                    }
                    if (type == DivAccessibility.Type.AUTO) {
                        this.this$0.d.d(view, og2Var, type, oj3Var);
                    }
                }
            });
        }
        qj3Var.addSubscription(qc2VarE);
    }

    public final void s(final View view, og2 og2Var, og2 og2Var2, oj3 oj3Var, qj3 qj3Var) {
        Expression expression;
        Expression expression2;
        DivAccessibility divAccessibilityR;
        DivAccessibility divAccessibilityR2 = og2Var.r();
        qc2 qc2VarE = null;
        if (uj3.b(divAccessibilityR2 != null ? divAccessibilityR2.f : null, (og2Var2 == null || (divAccessibilityR = og2Var2.r()) == null) ? null : divAccessibilityR.f)) {
            return;
        }
        DivAccessibility divAccessibilityR3 = og2Var.r();
        l(view, (divAccessibilityR3 == null || (expression2 = divAccessibilityR3.f) == null) ? null : (String) expression2.b(oj3Var));
        DivAccessibility divAccessibilityR4 = og2Var.r();
        if (uj3.f(divAccessibilityR4 != null ? divAccessibilityR4.f : null)) {
            return;
        }
        DivAccessibility divAccessibilityR5 = og2Var.r();
        if (divAccessibilityR5 != null && (expression = divAccessibilityR5.f) != null) {
            qc2VarE = expression.e(oj3Var, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((String) obj);
                    return zfb.a;
                }

                public final void invoke(String str) {
                    y45.j(str, "stateDescription");
                    this.this$0.l(view, str);
                }
            });
        }
        qj3Var.addSubscription(qc2VarE);
    }

    public final void t(View view, og2 og2Var, og2 og2Var2, oj3 oj3Var) {
        DivAccessibility.Type type;
        if (og2Var2 != null) {
            DivAccessibility divAccessibilityR = og2Var.r();
            DivAccessibility.Type type2 = divAccessibilityR != null ? divAccessibilityR.g : null;
            DivAccessibility divAccessibilityR2 = og2Var2.r();
            if (type2 == (divAccessibilityR2 != null ? divAccessibilityR2.g : null)) {
                return;
            }
        }
        DivAccessibilityBinder divAccessibilityBinder = this.d;
        DivAccessibility divAccessibilityR3 = og2Var.r();
        if (divAccessibilityR3 == null || (type = divAccessibilityR3.g) == null) {
            type = DivAccessibility.Type.AUTO;
        }
        divAccessibilityBinder.d(view, og2Var, type, oj3Var);
    }

    public final void u(final View view, final og2 og2Var, og2 og2Var2, final oj3 oj3Var, qj3 qj3Var) {
        if (uj3.b(og2Var.g(), og2Var2 != null ? og2Var2.g() : null)) {
            if (uj3.b(og2Var.o(), og2Var2 != null ? og2Var2.o() : null)) {
                return;
            }
        }
        Expression expressionG = og2Var.g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionO = og2Var.o();
        BaseDivViewExtensionsKt.d(view, divAlignmentHorizontal, expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null);
        if (uj3.f(og2Var.g()) && uj3.f(og2Var.o())) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m163invoke(obj);
                return zfb.a;
            }

            public final void m163invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                View view2 = view;
                Expression expressionG2 = og2Var.g();
                DivAlignmentHorizontal divAlignmentHorizontal2 = expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var) : null;
                Expression expressionO2 = og2Var.o();
                BaseDivViewExtensionsKt.d(view2, divAlignmentHorizontal2, expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var) : null);
            }
        };
        Expression expressionG2 = og2Var.g();
        qj3Var.addSubscription(expressionG2 != null ? expressionG2.e(oj3Var, e74Var) : null);
        Expression expressionO2 = og2Var.o();
        qj3Var.addSubscription(expressionO2 != null ? expressionO2.e(oj3Var, e74Var) : null);
    }

    public final void v(final View view, og2 og2Var, og2 og2Var2, oj3 oj3Var, qj3 qj3Var) {
        if (uj3.b(og2Var.p(), og2Var2 != null ? og2Var2.p() : null)) {
            return;
        }
        BaseDivViewExtensionsKt.e(view, ((Number) og2Var.p().b(oj3Var)).doubleValue());
        if (uj3.d(og2Var.p())) {
            return;
        }
        qj3Var.addSubscription(og2Var.p().e(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).doubleValue());
                return zfb.a;
            }

            public final void invoke(double d) {
                BaseDivViewExtensionsKt.e(view, d);
            }
        }));
    }

    public final void w(View view, com.yandex.div.core.view2.a aVar, og2 og2Var, og2 og2Var2, qj3 qj3Var, Drawable drawable) {
        DivFocus divFocusQ;
        DivBackgroundBinder divBackgroundBinder = this.a;
        List background = og2Var.getBackground();
        List list = null;
        List background2 = og2Var2 != null ? og2Var2.getBackground() : null;
        DivFocus divFocusQ2 = og2Var.q();
        List list2 = divFocusQ2 != null ? divFocusQ2.a : null;
        if (og2Var2 != null && (divFocusQ = og2Var2.q()) != null) {
            list = divFocusQ.a;
        }
        divBackgroundBinder.f(aVar, view, background, background2, list2, list, qj3Var, drawable);
    }

    public final void y(com.yandex.div.core.view2.a aVar, View view, og2 og2Var, og2 og2Var2, qj3 qj3Var, Drawable drawable) {
        y45.j(aVar, "context");
        y45.j(view, TypedValues.AttributesType.S_TARGET);
        y45.j(og2Var, "newDiv");
        y45.j(qj3Var, "subscriber");
        w(view, aVar, og2Var, og2Var2, qj3Var, drawable);
        L(view, og2Var, og2Var2, aVar.b(), qj3Var);
    }

    public final void z(View view, com.yandex.div.core.view2.a aVar, og2 og2Var) {
        lj2 lj2Var = this.c;
        DivFocus divFocusQ = og2Var.q();
        lj2Var.d(view, aVar, divFocusQ != null ? divFocusQ.b : null, og2Var.B());
    }
}
