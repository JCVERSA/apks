package com.yandex.div.internal.widget.tabs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;
import com.yandex.div.core.view2.divs.tabs.DivTabsBinderKt;
import com.yandex.div2.DivTabs;
import defpackage.bu2;
import defpackage.cdc;
import defpackage.gk8;
import defpackage.hcc;
import defpackage.oj3;
import defpackage.qj3;
import java.util.List;

public class TabTitlesLayoutView<ACTION> extends BaseIndicatorTabLayout implements com.yandex.div.internal.widget.tabs.b.InterfaceC0305b {
    public com.yandex.div.internal.widget.tabs.b.InterfaceC0305b.a J;
    public List K;
    public final gk8 L;
    public cdc M;
    public String N;
    public DivTabs.TabTitleStyle O;
    public b P;
    public boolean Q;

    public class a implements BaseIndicatorTabLayout.b {
        public a() {
        }

        @Override
        public void a(BaseIndicatorTabLayout.e eVar) {
            if (TabTitlesLayoutView.this.J == null) {
                return;
            }
            int iF = eVar.f();
            if (TabTitlesLayoutView.this.K != null) {
                com.yandex.div.internal.widget.tabs.b.g.a aVar = (com.yandex.div.internal.widget.tabs.b.g.a) TabTitlesLayoutView.this.K.get(iF);
                Object objB = aVar == null ? null : aVar.b();
                if (objB != null) {
                    TabTitlesLayoutView.this.J.a(objB, iF);
                }
            }
        }

        @Override
        public void b(BaseIndicatorTabLayout.e eVar) {
        }

        @Override
        public void c(BaseIndicatorTabLayout.e eVar) {
            if (TabTitlesLayoutView.this.J == null) {
                return;
            }
            TabTitlesLayoutView.this.J.b(eVar.f(), false);
        }
    }

    public interface b {
        void a();
    }

    public static class c implements hcc {
        public final Context a;

        public c(Context context) {
            this.a = context;
        }

        @Override
        public TabView a() {
            return new TabView(this.a);
        }
    }

    public TabTitlesLayoutView(Context context) {
        this(context, null, 0);
    }

    public final void G(TabView tabView, oj3 oj3Var, qj3 qj3Var) {
        DivTabs.TabTitleStyle tabTitleStyle = this.O;
        if (tabTitleStyle == null) {
            return;
        }
        DivTabsBinderKt.g(tabView, tabTitleStyle, oj3Var, qj3Var);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (motionEvent.getAction() == 0) {
            this.Q = true;
        }
        return zDispatchTouchEvent;
    }

    @Override
    public void fixScrollPosition(int i) {
        selectTab(i);
    }

    @Override
    @Nullable
    public ViewPager.OnPageChangeListener getCustomPageChangeListener() {
        BaseIndicatorTabLayout.TabLayoutOnPageChangeListener pageChangeListener = getPageChangeListener();
        pageChangeListener.a();
        return pageChangeListener;
    }

    @Override
    public void manuallyScroll(int i) {
        selectTab(i);
    }

    @Override
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        b bVar = this.P;
        if (bVar == null || !this.Q) {
            return;
        }
        bVar.a();
        this.Q = false;
    }

    @Override
    public TabView q(Context context) {
        return (TabView) this.M.a(this.N);
    }

    public void resetScroll() {
        scrollTo(0, 0);
        manuallyScroll(0);
    }

    @Override
    public void setData(@NonNull List<? extends com.yandex.div.internal.widget.tabs.b.g.a> list, int i, @NonNull oj3 oj3Var, @NonNull qj3 qj3Var) {
        this.K = list;
        removeAllTabs();
        int size = list.size();
        if (i < 0 || i >= size) {
            i = 0;
        }
        int i2 = 0;
        while (i2 < size) {
            BaseIndicatorTabLayout.e eVarL = newTab().l(list.get(i2).getTitle());
            G(eVarL.g(), oj3Var, qj3Var);
            addTab(eVarL, i2 == i);
            i2++;
        }
    }

    @Override
    public void setHost(@NonNull com.yandex.div.internal.widget.tabs.b.InterfaceC0305b.a aVar) {
        this.J = aVar;
    }

    @Override
    public void setIntermediateState(int i, float f) {
    }

    public void setOnScrollChangedListener(@Nullable b bVar) {
        this.P = bVar;
    }

    public void setTabColors(@ColorInt int i, @ColorInt int i2, @ColorInt int i3, @ColorInt int i4) {
        setTabTextColors(i3, i);
        setSelectedTabIndicatorColor(i2);
        setTabBackgroundColor(i4);
    }

    public void setTabTitleStyle(@Nullable DivTabs.TabTitleStyle tabTitleStyle) {
        this.O = tabTitleStyle;
    }

    @Override
    public void setTypefaceProvider(@NonNull bu2 bu2Var) {
        bindTypefaceProvider(bu2Var);
    }

    @Override
    public void setViewPool(@NonNull cdc cdcVar, @NonNull String str) {
        this.M = cdcVar;
        this.N = str;
    }

    public TabTitlesLayoutView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TabTitlesLayoutView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Q = false;
        setTabMode(0);
        setTabIndicatorHeight(0);
        setOnTabSelectedListener(new a());
        gk8 gk8Var = new gk8();
        this.L = gk8Var;
        gk8Var.c("TabTitlesLayoutView.TAB_HEADER", new c(getContext()), 0);
        this.M = gk8Var;
        this.N = "TabTitlesLayoutView.TAB_HEADER";
    }
}
