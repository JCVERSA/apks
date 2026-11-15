package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import com.yandex.div.core.view2.divs.widgets.DivCustomWrapper;
import com.yandex.div.core.view2.divs.widgets.DivFrameLayout;
import com.yandex.div.core.view2.divs.widgets.DivGifImageView;
import com.yandex.div.core.view2.divs.widgets.DivGridLayout;
import com.yandex.div.core.view2.divs.widgets.DivImageView;
import com.yandex.div.core.view2.divs.widgets.DivLineHeightTextView;
import com.yandex.div.core.view2.divs.widgets.DivLinearLayout;
import com.yandex.div.core.view2.divs.widgets.DivPagerIndicatorView;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div.core.view2.divs.widgets.DivRecyclerView;
import com.yandex.div.core.view2.divs.widgets.DivSelectView;
import com.yandex.div.core.view2.divs.widgets.DivSeparatorView;
import com.yandex.div.core.view2.divs.widgets.DivSliderView;
import com.yandex.div.core.view2.divs.widgets.DivStateLayout;
import com.yandex.div.core.view2.divs.widgets.DivSwitchView;
import com.yandex.div.core.view2.divs.widgets.DivTabsLayout;
import com.yandex.div.core.view2.divs.widgets.DivVideoView;
import com.yandex.div.core.view2.divs.widgets.DivWrapLayout;
import java.util.Iterator;

public abstract class wv2 {
    public static final void a(vv2 vv2Var, View view) {
        y45.j(vv2Var, "<this>");
        y45.j(view, "view");
        if (view instanceof DivWrapLayout) {
            Iterator it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it.hasNext()) {
                a(vv2Var, (View) it.next());
            }
            vv2Var.t((DivWrapLayout) view);
            return;
        }
        if (view instanceof DivFrameLayout) {
            Iterator it2 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it2.hasNext()) {
                a(vv2Var, (View) it2.next());
            }
            vv2Var.d((DivFrameLayout) view);
            return;
        }
        if (view instanceof DivGridLayout) {
            Iterator it3 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it3.hasNext()) {
                a(vv2Var, (View) it3.next());
            }
            vv2Var.f((DivGridLayout) view);
            return;
        }
        if (view instanceof DivLinearLayout) {
            Iterator it4 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it4.hasNext()) {
                a(vv2Var, (View) it4.next());
            }
            vv2Var.i((DivLinearLayout) view);
            return;
        }
        if (view instanceof DivPagerView) {
            Iterator it5 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it5.hasNext()) {
                a(vv2Var, (View) it5.next());
            }
            vv2Var.k((DivPagerView) view);
            return;
        }
        if (view instanceof DivRecyclerView) {
            Iterator it6 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it6.hasNext()) {
                a(vv2Var, (View) it6.next());
            }
            vv2Var.l((DivRecyclerView) view);
            return;
        }
        if (view instanceof DivStateLayout) {
            Iterator it7 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it7.hasNext()) {
                a(vv2Var, (View) it7.next());
            }
            vv2Var.p((DivStateLayout) view);
            return;
        }
        if (view instanceof DivTabsLayout) {
            Iterator it8 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it8.hasNext()) {
                a(vv2Var, (View) it8.next());
            }
            vv2Var.r((DivTabsLayout) view);
            return;
        }
        if (view instanceof DivCustomWrapper) {
            Iterator it9 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it9.hasNext()) {
                a(vv2Var, (View) it9.next());
            }
            vv2Var.c((DivCustomWrapper) view);
            return;
        }
        if (view instanceof DivSeparatorView) {
            vv2Var.n((DivSeparatorView) view);
            return;
        }
        if (view instanceof DivGifImageView) {
            vv2Var.e((DivGifImageView) view);
            return;
        }
        if (view instanceof DivImageView) {
            vv2Var.g((DivImageView) view);
            return;
        }
        if (view instanceof DivLineHeightTextView) {
            vv2Var.h((DivLineHeightTextView) view);
            return;
        }
        if (view instanceof DivPagerIndicatorView) {
            vv2Var.j((DivPagerIndicatorView) view);
            return;
        }
        if (view instanceof DivSliderView) {
            vv2Var.o((DivSliderView) view);
            return;
        }
        if (view instanceof DivSelectView) {
            vv2Var.m((DivSelectView) view);
            return;
        }
        if (view instanceof DivVideoView) {
            vv2Var.s((DivVideoView) view);
            return;
        }
        if (view instanceof DivSwitchView) {
            vv2Var.q((DivSwitchView) view);
            return;
        }
        if (view instanceof ViewGroup) {
            Iterator it10 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it10.hasNext()) {
                a(vv2Var, (View) it10.next());
            }
        }
        vv2Var.b(view);
    }
}
