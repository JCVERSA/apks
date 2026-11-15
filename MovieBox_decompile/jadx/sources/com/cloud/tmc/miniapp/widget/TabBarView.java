package com.cloud.tmc.miniapp.widget;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.proxy.ToastProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.ui.TabBar;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.miniapp.R;
import com.google.android.material.tabs.TabLayout;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public final class TabBarView extends RelativeLayout implements TabBar {
    public final Lazy OooO00o;
    public final Lazy OooO0O0;
    public MiniAppConfigModel.TabBarBean OooO0OO;

    public static final class OooO00o implements TabLayout.OnTabSelectedListener {
        public final void OooO00o(TabLayout.Tab tab, String str) {
            if (FastClickUtil.isFastDoubleClick() || tab == null) {
                return;
            }
            View customView = tab.getCustomView();
            Intrinsics.f(customView, "null cannot be cast to non-null type com.cloud.tmc.miniapp.widget.TabBarItemView");
            com.cloud.tmc.miniapp.widget.OooO0OO oooO0OO = (com.cloud.tmc.miniapp.widget.OooO0OO) customView;
            Page page = oooO0OO.getPage();
            if (page != null) {
                MiniAppConfigModel.TabBarBean.ListBean tabBarList = oooO0OO.getTabBarList();
                String str2 = tabBarList != null ? tabBarList.pagePath : null;
                if (str2 == null || str2.length() == 0) {
                    return;
                }
                App app = page.getApp();
                if (app != null) {
                    app.putRouteType(str2, "switchTab");
                }
                App app2 = page.getApp();
                if (app2 != null) {
                    app2.putStringValue(TmcConstants.KEY_SWITCH_TAB_FROM_SCENE, str);
                }
                App app3 = page.getApp();
                if (app3 != null) {
                    App app4 = page.getApp();
                    Bundle startParams = app4 != null ? app4.getStartParams() : null;
                    App app5 = page.getApp();
                    app3.switchTab(str2, startParams, app5 != null ? app5.getSceneParams() : null);
                }
            }
        }

        @Override
        public void onTabReselected(TabLayout.Tab tab) {
            TmcLogger.d("[TabBarView]: onTabReselected:" + (tab != null ? Integer.valueOf(tab.getPosition()) : null) + ", from:" + tab);
            OooO00o(tab, TmcConstants.KEY_FROM_TAB_RESELECTED);
        }

        @Override
        public void onTabSelected(TabLayout.Tab tab) {
            TmcLogger.d("[TabBarView]: onTabSelected:" + (tab != null ? Integer.valueOf(tab.getPosition()) : null) + ", from::" + tab);
            OooO00o(tab, TmcConstants.KEY_FROM_TAB_SELECTED);
        }

        @Override
        public void onTabUnselected(TabLayout.Tab tab) {
            TmcLogger.d("[TabBarView]: onTabUnselected:" + (tab != null ? Integer.valueOf(tab.getPosition()) : null) + ", from::" + tab);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<TabLayout> {
        public OooO0O0() {
            super(0);
        }

        @Override
        public Object invoke() {
            return (TabLayout) TabBarView.this.findViewById(R.id.tab_navigation);
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<View> {
        public OooO0OO() {
            super(0);
        }

        @Override
        public Object invoke() {
            return TabBarView.this.findViewById(R.id.view_line_top);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.OooO00o = LazyKt.b(new OooO0O0());
        this.OooO0O0 = LazyKt.b(new OooO0OO());
        LayoutInflater.from(context).inflate(R.layout.layout_mini_tab_bar, this);
        setGravity(80);
        getTabLayout().setTabRippleColorResource(R.color.mini_color_transparent);
        getTabLayout().setTabGravity(0);
        getTabLayout().setTabMode(1);
        getTabLayout().addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new OooO00o());
    }

    public static final void OooO00o(TabBarView this$0, ValueAnimator it) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(it, "it");
        Object animatedValue = it.getAnimatedValue();
        if (Intrinsics.b(animatedValue instanceof Float ? (Float) animatedValue : null, this$0.getHeight())) {
            ViewExtKt.toGone(this$0);
        }
    }

    private final TabLayout getTabLayout() {
        Object value = this.OooO00o.getValue();
        Intrinsics.g(value, "<get-tabLayout>(...)");
        return (TabLayout) value;
    }

    private final View getViewLineTop() {
        Object value = this.OooO0O0.getValue();
        Intrinsics.g(value, "<get-viewLineTop>(...)");
        return (View) value;
    }

    @Override
    public boolean hideTabBar(boolean z10) {
        if (getTranslationY() == getHeight()) {
            return true;
        }
        if (z10) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationY", 0.0f, getHeight());
            objectAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TabBarView.OooO00o(this.f23250a, valueAnimator);
                }
            });
            objectAnimatorOfFloat.setDuration(500L);
            objectAnimatorOfFloat.start();
        } else {
            setTranslationY(getHeight());
            ViewExtKt.toGone(this);
        }
        return true;
    }

    @Override
    public boolean isShow() {
        return ViewExtKt.getVisible(this) && getTranslationY() == 0.0f;
    }

    @Override
    public boolean removeTabBarBadge(int i10) {
        if (!OooO00o(i10)) {
            return false;
        }
        TabLayout.Tab tabAt = getTabLayout().getTabAt(i10);
        Unit unit = null;
        View customView = tabAt != null ? tabAt.getCustomView() : null;
        com.cloud.tmc.miniapp.widget.OooO0OO oooO0OO = customView instanceof com.cloud.tmc.miniapp.widget.OooO0OO ? (com.cloud.tmc.miniapp.widget.OooO0OO) customView : null;
        if (oooO0OO != null) {
            oooO0OO.OooO00o();
            unit = Unit.f64096a;
        }
        return unit != null;
    }

    @Override
    public boolean setTabBarBadge(int i10, String str) {
        if (!OooO00o(i10)) {
            return false;
        }
        TabLayout.Tab tabAt = getTabLayout().getTabAt(i10);
        Unit unit = null;
        View customView = tabAt != null ? tabAt.getCustomView() : null;
        com.cloud.tmc.miniapp.widget.OooO0OO oooO0OO = customView instanceof com.cloud.tmc.miniapp.widget.OooO0OO ? (com.cloud.tmc.miniapp.widget.OooO0OO) customView : null;
        if (oooO0OO != null) {
            oooO0OO.setTabBarBadge(str);
            unit = Unit.f64096a;
        }
        return unit != null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x003d A[PHI: r3
      0x003d: PHI (r3v3 java.lang.String) = (r3v1 java.lang.String), (r3v4 java.lang.String) binds: [B:28:0x004d, B:20:0x003a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:45:0x0070 A[Catch: Exception -> 0x0062, TRY_LEAVE, TryCatch #0 {Exception -> 0x0062, blocks: (B:34:0x0059, B:36:0x005d, B:43:0x006a, B:45:0x0070), top: B:58:0x0059 }] */
    @Override
    public boolean setTabBarStyle(String str, String str2, String str3, String str4) {
        String color;
        int tabCount = getTabLayout().getTabCount();
        int i10 = 0;
        while (true) {
            String str5 = "";
            if (i10 >= tabCount) {
                break;
            }
            TabLayout.Tab tabAt = getTabLayout().getTabAt(i10);
            View customView = tabAt != null ? tabAt.getCustomView() : null;
            com.cloud.tmc.miniapp.widget.OooO0OO oooO0OO = customView instanceof com.cloud.tmc.miniapp.widget.OooO0OO ? (com.cloud.tmc.miniapp.widget.OooO0OO) customView : null;
            if (oooO0OO != null) {
                if (oooO0OO.getTabSelected()) {
                    if (str2 == null) {
                        MiniAppConfigModel.TabBarBean tabBarConfig = oooO0OO.getTabBarConfig();
                        color = tabBarConfig != null ? tabBarConfig.getSelectedColor() : null;
                        if (color != null) {
                            str5 = color;
                        }
                    } else {
                        str5 = str2;
                    }
                } else if (str == null) {
                    MiniAppConfigModel.TabBarBean tabBarConfig2 = oooO0OO.getTabBarConfig();
                    color = tabBarConfig2 != null ? tabBarConfig2.getColor() : null;
                    if (color != null) {
                        str5 = color;
                    }
                } else {
                    str5 = str;
                }
                oooO0OO.OooO00o(str5);
            }
            i10++;
        }
        if (str3 == null) {
            try {
                MiniAppConfigModel.TabBarBean tabBarBean = this.OooO0OO;
                String backgroundColor = tabBarBean != null ? tabBarBean.getBackgroundColor() : null;
                str3 = backgroundColor == null ? "" : backgroundColor;
                if (str3.length() > 0) {
                    getTabLayout().setBackgroundColor(Color.parseColor(str3));
                }
            } catch (Exception e10) {
                TmcLogger.e("[TabBarView]: set tab background color error", e10);
            }
        } else if (str3.length() > 0) {
            getTabLayout().setBackgroundColor(Color.parseColor(str3));
        }
        View viewLineTop = getViewLineTop();
        if (str4 == null) {
            MiniAppConfigModel.TabBarBean tabBarBean2 = this.OooO0OO;
            str4 = tabBarBean2 != null ? tabBarBean2.getBorderStyle() : null;
            if (str4 == null) {
                str4 = "";
            }
        }
        viewLineTop.setBackgroundColor(OooO00o(str4));
        return true;
    }

    @Override
    public void setTabs(MiniAppConfigModel.TabBarBean tabBarBean, Page page, String commonresId) {
        Intrinsics.h(commonresId, "commonresId");
        if (Intrinsics.c(this.OooO0OO, tabBarBean)) {
            TmcLogger.e("[TabBarView]: same config, setTabs return.");
            return;
        }
        this.OooO0OO = tabBarBean;
        getTabLayout().removeAllTabs();
        if (tabBarBean != null) {
            if (tabBarBean.tabBarCustom()) {
                ((ToastProxy) TmcProxy.get(ToastProxy.class)).toast("Tab bar view does not support customization");
                TmcLogger.e("[TabBarView]: Tab bar view does not support customization");
                return;
            }
            if (tabBarBean.tabBarPositionIsTop()) {
                ((ToastProxy) TmcProxy.get(ToastProxy.class)).toast("Tab bar view does not support top position");
                TmcLogger.e("[TabBarView]: Tab bar view does not support top position");
                return;
            }
            List<MiniAppConfigModel.TabBarBean.ListBean> list = tabBarBean.list;
            if (list == null) {
                ((ToastProxy) TmcProxy.get(ToastProxy.class)).toast("Tab bar view tabs is not null");
                TmcLogger.e("[TabBarView]: Tab bar view is not null");
                return;
            }
            int size = list.size();
            if (2 > size || size >= 6) {
                ((ToastProxy) TmcProxy.get(ToastProxy.class)).toast("Tab bar view numbers is between 2 and 5");
                TmcLogger.e("[TabBarView]: Tab bar view is between 2 and 5");
                return;
            }
            for (MiniAppConfigModel.TabBarBean.ListBean listBean : list) {
                Context context = getContext();
                Intrinsics.g(context, "context");
                String pagePath = null;
                com.cloud.tmc.miniapp.widget.OooO0OO oooO0OO = new com.cloud.tmc.miniapp.widget.OooO0OO(context, null);
                oooO0OO.setCommonresId(commonresId);
                oooO0OO.OooO00o(tabBarBean, listBean, page);
                TabLayout tabLayout = getTabLayout();
                TabLayout.Tab customView = getTabLayout().newTab().setCustomView(oooO0OO);
                customView.setTag(listBean.pagePath);
                String str = listBean.pagePath;
                if (page != null) {
                    pagePath = page.getPagePath();
                }
                tabLayout.addTab(customView, Intrinsics.c(str, pagePath));
            }
            String backgroundColor = tabBarBean.getBackgroundColor();
            if (backgroundColor != null) {
                try {
                    if (backgroundColor.length() > 0) {
                        getTabLayout().setBackgroundColor(Color.parseColor(backgroundColor));
                    }
                } catch (Exception e10) {
                    TmcLogger.e("[TabBarView]: set tab background color error", e10);
                }
            }
            getViewLineTop().setBackgroundColor(OooO00o(tabBarBean.getBorderStyle()));
        }
    }

    @Override
    public boolean setUnreadIconVisible(int i10, boolean z10) {
        if (!OooO00o(i10)) {
            return false;
        }
        TabLayout.Tab tabAt = getTabLayout().getTabAt(i10);
        Unit unit = null;
        View customView = tabAt != null ? tabAt.getCustomView() : null;
        com.cloud.tmc.miniapp.widget.OooO0OO oooO0OO = customView instanceof com.cloud.tmc.miniapp.widget.OooO0OO ? (com.cloud.tmc.miniapp.widget.OooO0OO) customView : null;
        if (oooO0OO != null) {
            oooO0OO.setUnreadIconVisible(z10);
            unit = Unit.f64096a;
        }
        return unit != null;
    }

    @Override
    public boolean setUnreadVisible(int i10, boolean z10) {
        if (!OooO00o(i10)) {
            return false;
        }
        TabLayout.Tab tabAt = getTabLayout().getTabAt(i10);
        Unit unit = null;
        View customView = tabAt != null ? tabAt.getCustomView() : null;
        com.cloud.tmc.miniapp.widget.OooO0OO oooO0OO = customView instanceof com.cloud.tmc.miniapp.widget.OooO0OO ? (com.cloud.tmc.miniapp.widget.OooO0OO) customView : null;
        if (oooO0OO != null) {
            oooO0OO.setUnreadVisible(z10);
            unit = Unit.f64096a;
        }
        return unit != null;
    }

    @Override
    public boolean showTabBar(boolean z10) {
        ViewExtKt.toVisible(this);
        if (getTranslationY() == 0.0f) {
            return true;
        }
        if (z10) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationY", getHeight(), 0.0f);
            objectAnimatorOfFloat.setDuration(500L);
            objectAnimatorOfFloat.start();
        } else {
            setTranslationY(0.0f);
        }
        return true;
    }

    @Override
    public void showTabBarUnreadIcon(int i10, String iconPath, Page page, Function1<? super Boolean, Unit> function1) {
        Intrinsics.h(iconPath, "iconPath");
        Intrinsics.h(page, "page");
        if (!OooO00o(i10)) {
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        TabLayout.Tab tabAt = getTabLayout().getTabAt(i10);
        View customView = tabAt != null ? tabAt.getCustomView() : null;
        com.cloud.tmc.miniapp.widget.OooO0OO oooO0OO = customView instanceof com.cloud.tmc.miniapp.widget.OooO0OO ? (com.cloud.tmc.miniapp.widget.OooO0OO) customView : null;
        if (oooO0OO != null) {
            Intrinsics.h(iconPath, "iconPath");
            Intrinsics.h(page, "page");
            App app = page.getApp();
            oooO0OO.OooO00o(iconPath, app != null ? app.getAppId() : null, new OooO0o(function1, oooO0OO));
        }
    }

    @Override
    public void switchCurrentTab(String str) {
        TabLayout.Tab tabAt;
        int tabCount = getTabLayout().getTabCount();
        for (int i10 = 0; i10 < tabCount; i10++) {
            TabLayout.Tab tabAt2 = getTabLayout().getTabAt(i10);
            if (Intrinsics.c(tabAt2 != null ? tabAt2.getTag() : null, str)) {
                TabLayout tabLayout = getTabLayout();
                if (tabLayout.getTabCount() <= i10 || (tabAt = tabLayout.getTabAt(i10)) == null) {
                    return;
                }
                tabAt.select();
                return;
            }
        }
    }

    @Override
    public boolean updateAllTabs(List<MiniAppConfigModel.TabBarBean.ListBean> tabs, Page page) {
        Intrinsics.h(tabs, "tabs");
        Intrinsics.h(page, "page");
        if (!ViewExtKt.getVisible(this)) {
            TmcLogger.d("TabBarView", "tab not is visible");
            return false;
        }
        if (tabs.size() != getTabLayout().getTabCount()) {
            TmcLogger.d("TabBarView", "tab size mismatch with tab count");
            return false;
        }
        int tabCount = getTabLayout().getTabCount();
        for (int i10 = 0; i10 < tabCount; i10++) {
            updateTabItem(i10, tabs.get(i10), page);
        }
        return true;
    }

    @Override
    public boolean updateTabItem(int i10, MiniAppConfigModel.TabBarBean.ListBean tab, Page page) {
        TabLayout.Tab tabAt;
        Intrinsics.h(tab, "tab");
        Intrinsics.h(page, "page");
        if (!OooO00o(i10) || (tabAt = getTabLayout().getTabAt(i10)) == null) {
            return false;
        }
        View customView = tabAt.getCustomView();
        Intrinsics.f(customView, "null cannot be cast to non-null type com.cloud.tmc.miniapp.widget.TabBarItemView");
        ((com.cloud.tmc.miniapp.widget.OooO0OO) customView).OooO00o(tab, page);
        return true;
    }

    public final boolean OooO00o(int i10) {
        if (!ViewExtKt.getVisible(this)) {
            TmcLogger.d("TabBarView", "tab not is visible");
            return false;
        }
        if (i10 >= 0 && i10 < getTabLayout().getTabCount()) {
            return true;
        }
        TmcLogger.d("TabBarView", "index out of tab count");
        return false;
    }

    public final int OooO00o(String str) {
        if (Intrinsics.c(str, "white")) {
            return androidx.core.content.b.getColor(getContext(), R.color.default_tab_bar_title_white_color);
        }
        if (Intrinsics.c(str, "black")) {
            return androidx.core.content.b.getColor(getContext(), R.color.default_tab_bar_title_black_color);
        }
        try {
            return Color.parseColor(str);
        } catch (Throwable th2) {
            TmcLogger.e("TabBarView", "Invalid border style", th2);
            return 0;
        }
    }

    public final void setCommonresId(String str) {
    }
}
