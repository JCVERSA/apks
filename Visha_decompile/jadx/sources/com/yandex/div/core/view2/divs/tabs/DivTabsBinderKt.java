package com.yandex.div.core.view2.divs.tabs;

import android.util.DisplayMetrics;
import com.yandex.div.core.font.DivTypefaceType;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.internal.widget.tabs.TabView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivEdgeInsets;
import com.yandex.div2.DivFontWeight;
import com.yandex.div2.DivSize;
import com.yandex.div2.DivSizeUnit;
import com.yandex.div2.DivTabs;
import defpackage.ae5;
import defpackage.e74;
import defpackage.oj3;
import defpackage.pr2;
import defpackage.qc2;
import defpackage.qj3;
import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public abstract class DivTabsBinderKt {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivFontWeight.values().length];
            try {
                iArr[DivFontWeight.MEDIUM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivFontWeight.REGULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivFontWeight.LIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DivFontWeight.BOLD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public static final void e(DivEdgeInsets divEdgeInsets, oj3 oj3Var, qj3 qj3Var, e74 e74Var) {
        qj3Var.addSubscription(divEdgeInsets.c.e(oj3Var, e74Var));
        qj3Var.addSubscription(divEdgeInsets.d.e(oj3Var, e74Var));
        qj3Var.addSubscription(divEdgeInsets.f.e(oj3Var, e74Var));
        qj3Var.addSubscription(divEdgeInsets.a.e(oj3Var, e74Var));
        e74Var.invoke(null);
    }

    public static final void f(List list, oj3 oj3Var, qj3 qj3Var, e74 e74Var) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DivSize height = ((DivTabs.Item) it.next()).a.b().getHeight();
            if (height instanceof DivSize.b) {
                DivSize.b bVar = (DivSize.b) height;
                qj3Var.addSubscription(bVar.c().a.e(oj3Var, e74Var));
                qj3Var.addSubscription(bVar.c().b.e(oj3Var, e74Var));
            }
        }
    }

    public static final void g(final TabView tabView, final DivTabs.TabTitleStyle tabTitleStyle, final oj3 oj3Var, qj3 qj3Var) {
        qc2 qc2VarE;
        y45.j(tabView, "<this>");
        y45.j(tabTitleStyle, "style");
        y45.j(oj3Var, "resolver");
        y45.j(qj3Var, "subscriber");
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m254invoke(obj);
                return zfb.a;
            }

            public final void m254invoke(Object obj) {
                int i;
                long jLongValue = ((Number) tabTitleStyle.j.b(oj3Var)).longValue();
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
                BaseDivViewExtensionsKt.k(tabView, i, (DivSizeUnit) tabTitleStyle.k.b(oj3Var));
                BaseDivViewExtensionsKt.p(tabView, ((Number) tabTitleStyle.r.b(oj3Var)).doubleValue(), i);
                TabView tabView2 = tabView;
                Expression expression = tabTitleStyle.s;
                BaseDivViewExtensionsKt.q(tabView2, expression != null ? (Long) expression.b(oj3Var) : null, (DivSizeUnit) tabTitleStyle.k.b(oj3Var));
            }
        };
        qj3Var.addSubscription(tabTitleStyle.j.e(oj3Var, e74Var));
        qj3Var.addSubscription(tabTitleStyle.k.e(oj3Var, e74Var));
        Expression expression = tabTitleStyle.s;
        if (expression != null && (qc2VarE = expression.e(oj3Var, e74Var)) != null) {
            qj3Var.addSubscription(qc2VarE);
        }
        e74Var.invoke(null);
        final DivEdgeInsets divEdgeInsets = tabTitleStyle.t;
        final DisplayMetrics displayMetrics = tabView.getResources().getDisplayMetrics();
        e74 e74Var2 = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m255invoke(obj);
                return zfb.a;
            }

            public final void m255invoke(Object obj) {
                DivEdgeInsets divEdgeInsets2 = divEdgeInsets;
                Expression expression2 = divEdgeInsets2.e;
                if (expression2 == null && divEdgeInsets2.b == null) {
                    TabView tabView2 = tabView;
                    Long l = (Long) divEdgeInsets2.c.b(oj3Var);
                    DisplayMetrics displayMetrics2 = displayMetrics;
                    y45.i(displayMetrics2, "metrics");
                    int iK = BaseDivViewExtensionsKt.K(l, displayMetrics2);
                    Long l2 = (Long) divEdgeInsets.f.b(oj3Var);
                    DisplayMetrics displayMetrics3 = displayMetrics;
                    y45.i(displayMetrics3, "metrics");
                    int iK2 = BaseDivViewExtensionsKt.K(l2, displayMetrics3);
                    Long l3 = (Long) divEdgeInsets.d.b(oj3Var);
                    DisplayMetrics displayMetrics4 = displayMetrics;
                    y45.i(displayMetrics4, "metrics");
                    int iK3 = BaseDivViewExtensionsKt.K(l3, displayMetrics4);
                    Long l4 = (Long) divEdgeInsets.a.b(oj3Var);
                    DisplayMetrics displayMetrics5 = displayMetrics;
                    y45.i(displayMetrics5, "metrics");
                    tabView2.setTabPadding(iK, iK2, iK3, BaseDivViewExtensionsKt.K(l4, displayMetrics5));
                    return;
                }
                TabView tabView3 = tabView;
                Long l5 = expression2 != null ? (Long) expression2.b(oj3Var) : null;
                DisplayMetrics displayMetrics6 = displayMetrics;
                y45.i(displayMetrics6, "metrics");
                int iK4 = BaseDivViewExtensionsKt.K(l5, displayMetrics6);
                Long l6 = (Long) divEdgeInsets.f.b(oj3Var);
                DisplayMetrics displayMetrics7 = displayMetrics;
                y45.i(displayMetrics7, "metrics");
                int iK5 = BaseDivViewExtensionsKt.K(l6, displayMetrics7);
                Expression expression3 = divEdgeInsets.b;
                Long l7 = expression3 != null ? (Long) expression3.b(oj3Var) : null;
                DisplayMetrics displayMetrics8 = displayMetrics;
                y45.i(displayMetrics8, "metrics");
                int iK6 = BaseDivViewExtensionsKt.K(l7, displayMetrics8);
                Long l8 = (Long) divEdgeInsets.a.b(oj3Var);
                DisplayMetrics displayMetrics9 = displayMetrics;
                y45.i(displayMetrics9, "metrics");
                tabView3.setTabPadding(iK4, iK5, iK6, BaseDivViewExtensionsKt.K(l8, displayMetrics9));
            }
        };
        qj3Var.addSubscription(divEdgeInsets.f.e(oj3Var, e74Var2));
        qj3Var.addSubscription(divEdgeInsets.a.e(oj3Var, e74Var2));
        Expression expression2 = divEdgeInsets.e;
        if (expression2 == null && divEdgeInsets.b == null) {
            qj3Var.addSubscription(divEdgeInsets.c.e(oj3Var, e74Var2));
            qj3Var.addSubscription(divEdgeInsets.d.e(oj3Var, e74Var2));
        } else {
            qj3Var.addSubscription(expression2 != null ? expression2.e(oj3Var, e74Var2) : null);
            Expression expression3 = divEdgeInsets.b;
            qj3Var.addSubscription(expression3 != null ? expression3.e(oj3Var, e74Var2) : null);
        }
        e74Var2.invoke(null);
        Expression expression4 = tabTitleStyle.o;
        if (expression4 == null) {
            expression4 = tabTitleStyle.l;
        }
        h(expression4, qj3Var, oj3Var, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((DivFontWeight) obj);
                return zfb.a;
            }

            public final void invoke(DivFontWeight divFontWeight) {
                y45.j(divFontWeight, "divFontWeight");
                tabView.setInactiveTypefaceType(DivTabsBinderKt.i(divFontWeight));
            }
        });
        Expression expression5 = tabTitleStyle.c;
        if (expression5 == null) {
            expression5 = tabTitleStyle.l;
        }
        h(expression5, qj3Var, oj3Var, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((DivFontWeight) obj);
                return zfb.a;
            }

            public final void invoke(DivFontWeight divFontWeight) {
                y45.j(divFontWeight, "divFontWeight");
                tabView.setActiveTypefaceType(DivTabsBinderKt.i(divFontWeight));
            }
        });
    }

    public static final void h(Expression expression, qj3 qj3Var, oj3 oj3Var, e74 e74Var) {
        qj3Var.addSubscription(expression.f(oj3Var, e74Var));
    }

    public static final DivTypefaceType i(DivFontWeight divFontWeight) {
        int i = a.a[divFontWeight.ordinal()];
        if (i == 1) {
            return DivTypefaceType.MEDIUM;
        }
        if (i == 2) {
            return DivTypefaceType.REGULAR;
        }
        if (i == 3) {
            return DivTypefaceType.LIGHT;
        }
        if (i == 4) {
            return DivTypefaceType.BOLD;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final pr2 j(pr2 pr2Var, DivTabs divTabs, oj3 oj3Var) {
        if (pr2Var != null && pr2Var.H() == ((Boolean) divTabs.j.b(oj3Var)).booleanValue()) {
            return pr2Var;
        }
        return null;
    }
}
