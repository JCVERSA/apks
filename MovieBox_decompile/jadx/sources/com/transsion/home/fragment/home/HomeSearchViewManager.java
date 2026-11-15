package com.transsion.home.fragment.home;

import android.content.Context;
import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextSwitcher;
import android.widget.ViewSwitcher;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import com.tn.lib.view.GradientLinePagerIndicator;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.CustomPagerTitleView;
import com.transsion.home.R$layout;
import com.transsion.home.bean.AppTab;
import com.transsion.home.bean.HomeTabItem;
import com.transsion.home.bean.HotSearchKeyWord;
import com.transsion.home.bean.HotSubjectEntity;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.view.CustomTabAdView;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.usercenterapi.UpdateResultEvent;
import com.transsion.version.update.UpdateManager;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import net.lucode.hackware.magicindicator.R$id;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;

public final class HomeSearchViewManager {

    private final qk.p f43941a;

    private final HomeFragment f43942b;

    private t f43943c;

    private Context f43944d;

    private final ArrayList f43945e;

    private int f43946f;

    private String f43947g;

    private CommonNavigator f43948h;

    private a f43949i;

    private boolean f43950j;

    private ConstraintLayout.b f43951k;

    private n0 f43952l;

    private final Handler f43953m;

    private final class a extends xy.a {

        private AppTab f43954b;

        public static final class C0602a extends com.transsion.baseui.util.f {

            final HomeSearchViewManager f43956e;

            final int f43957f;

            C0602a(HomeSearchViewManager homeSearchViewManager, int i10) {
                this.f43956e = homeSearchViewManager;
                this.f43957f = i10;
            }

            @Override
            public void c(View view) {
            }

            @Override
            public void d(View view) {
                this.f43956e.f43941a.f69831s.setCurrentItem(this.f43957f, false);
                this.f43956e.f43941a.f69823k.onPageScrolled(this.f43957f, 0.0f, 0);
            }
        }

        public static final class b extends com.transsion.baseui.util.f {

            final HomeSearchViewManager f43958e;

            final int f43959f;

            b(HomeSearchViewManager homeSearchViewManager, int i10) {
                this.f43958e = homeSearchViewManager;
                this.f43959f = i10;
            }

            @Override
            public void c(View view) {
            }

            @Override
            public void d(View view) {
                this.f43958e.f43941a.f69831s.setCurrentItem(this.f43959f, false);
                this.f43958e.f43941a.f69823k.onPageScrolled(this.f43959f, 0.0f, 0);
            }
        }

        public a(AppTab appTab) {
            this.f43954b = appTab;
        }

        @Override
        public int a() {
            List<HomeTabItem> homeTabs;
            AppTab appTab = this.f43954b;
            if (appTab == null || (homeTabs = appTab.getHomeTabs()) == null) {
                return 1;
            }
            return homeTabs.size();
        }

        @Override
        public xy.c b(Context context) {
            Intrinsics.h(context, "context");
            Context context2 = HomeSearchViewManager.this.f43944d;
            if (context2 == null) {
                Intrinsics.y("context");
                context2 = null;
            }
            GradientLinePagerIndicator gradientLinePagerIndicator = new GradientLinePagerIndicator(context2);
            gradientLinePagerIndicator.setMode(2);
            gradientLinePagerIndicator.setLineHeight(com.blankj.utilcode.util.i.e(3.0f));
            gradientLinePagerIndicator.setLineWidth(com.blankj.utilcode.util.i.e(24.0f));
            gradientLinePagerIndicator.setRoundRadius(com.blankj.utilcode.util.i.e(1.5f));
            gradientLinePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            gradientLinePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            int color = androidx.core.content.b.getColor(context, R$color.transparent);
            gradientLinePagerIndicator.setColors(color, color, color);
            return gradientLinePagerIndicator;
        }

        @Override
        public xy.d c(Context context, int i10) {
            List<HomeTabItem> homeTabs;
            HomeTabItem homeTabItem;
            List<HomeTabItem> homeTabs2;
            List<HomeTabItem> homeTabs3;
            HomeTabItem homeTabItem2;
            AppTab appTab = this.f43954b;
            String name = null;
            homeTabItem = null;
            HomeTabItem homeTabItem3 = null;
            name = null;
            name = null;
            if (((appTab == null || (homeTabs3 = appTab.getHomeTabs()) == null || (homeTabItem2 = homeTabs3.get(i10)) == null) ? null : homeTabItem2.getNameImage()) != null) {
                Context context2 = HomeSearchViewManager.this.f43944d;
                if (context2 == null) {
                    Intrinsics.y("context");
                    context2 = null;
                }
                CustomTabAdView customTabAdView = new CustomTabAdView(context2);
                customTabAdView.setOnClickListener(new C0602a(HomeSearchViewManager.this, i10));
                AppTab appTab2 = this.f43954b;
                if (appTab2 != null && (homeTabs2 = appTab2.getHomeTabs()) != null) {
                    homeTabItem3 = homeTabs2.get(i10);
                }
                customTabAdView.showData(homeTabItem3);
                return customTabAdView;
            }
            int iA = com.blankj.utilcode.util.a0.a(10.0f);
            Context context3 = HomeSearchViewManager.this.f43944d;
            if (context3 == null) {
                Intrinsics.y("context");
                context3 = null;
            }
            CustomPagerTitleView customPagerTitleView = new CustomPagerTitleView(context3, 17, iA);
            HomeSearchViewManager homeSearchViewManager = HomeSearchViewManager.this;
            AppTab appTab3 = this.f43954b;
            if (appTab3 != null && (homeTabs = appTab3.getHomeTabs()) != null && (homeTabItem = homeTabs.get(i10)) != null) {
                name = homeTabItem.getName();
            }
            customPagerTitleView.setText(name);
            customPagerTitleView.setTextSize(16.0f);
            customPagerTitleView.setOnClickListener(new b(homeSearchViewManager, i10));
            return customPagerTitleView;
        }

        public final void h(AppTab appTab) {
            this.f43954b = appTab;
            e();
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f43960a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f43960a = function;
        }

        @Override
        public final Function a() {
            return this.f43960a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f43960a.invoke(obj);
        }
    }

    public HomeSearchViewManager(qk.p mViewBinding, HomeFragment mFragment) {
        Intrinsics.h(mViewBinding, "mViewBinding");
        Intrinsics.h(mFragment, "mFragment");
        this.f43941a = mViewBinding;
        this.f43942b = mFragment;
        this.f43945e = new ArrayList();
        this.f43952l = o0.a(y0.b());
        this.f43953m = new Handler(Looper.getMainLooper(), new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return HomeSearchViewManager.H(this.f43999a, message);
            }
        });
    }

    private final void A(List list) {
        this.f43941a.f69828p.setTextWithString("");
        this.f43945e.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            HotSearchKeyWord hotSearchKeyWord = (HotSearchKeyWord) it.next();
            ArrayList arrayList = this.f43945e;
            String title = hotSearchKeyWord.getTitle();
            if (title == null) {
                title = "";
            }
            arrayList.add(title);
        }
        TextSwitcher textSwitcher = this.f43941a.f69825m;
        if (textSwitcher.getChildCount() == 0) {
            textSwitcher.setFactory(new ViewSwitcher.ViewFactory() {
                @Override
                public final View makeView() {
                    return HomeSearchViewManager.B(this.f43967a);
                }
            });
        }
        int i10 = this.f43946f;
        if (i10 >= 0 && i10 < this.f43945e.size()) {
            String str = (String) this.f43945e.get(this.f43946f);
            this.f43947g = str;
            textSwitcher.setText(str);
        }
        textSwitcher.setInAnimation(q());
        textSwitcher.setOutAnimation(J());
        N(this, false, 1, null);
    }

    public static final View B(HomeSearchViewManager homeSearchViewManager) {
        return LayoutInflater.from(homeSearchViewManager.f43942b.requireContext()).inflate(R$layout.view_text, (ViewGroup) null);
    }

    private final void E(boolean z10) {
        String str;
        com.transsion.home.view.g.f44435a.b(false);
        gj.b bVar = (gj.b) gj.a.f61068a.a(gj.b.class);
        if (z10) {
            if (bVar != null) {
                String str2 = this.f43947g;
                String str3 = str2 == null ? "" : str2;
                str = str2 != null ? str2 : "";
                ArrayList arrayList = this.f43945e;
                Context contextRequireContext = this.f43942b.requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                bVar.a(str3, str, arrayList, contextRequireContext);
            }
        } else if (bVar != null) {
            String str4 = this.f43947g;
            str = str4 != null ? str4 : "";
            ArrayList arrayList2 = this.f43945e;
            Context contextRequireContext2 = this.f43942b.requireContext();
            Intrinsics.g(contextRequireContext2, "requireContext(...)");
            bVar.b(str, arrayList2, contextRequireContext2);
        }
        K(z10);
    }

    static void F(HomeSearchViewManager homeSearchViewManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        homeSearchViewManager.E(z10);
    }

    public static final boolean H(HomeSearchViewManager homeSearchViewManager, Message it) {
        String str;
        Intrinsics.h(it, "it");
        if (it.what == 100) {
            homeSearchViewManager.f43946f++;
            if (homeSearchViewManager.f43945e.isEmpty()) {
                str = "";
            } else {
                ArrayList arrayList = homeSearchViewManager.f43945e;
                str = (String) arrayList.get(homeSearchViewManager.f43946f % arrayList.size());
            }
            homeSearchViewManager.f43947g = str;
            homeSearchViewManager.f43941a.f69825m.setText(str);
            N(homeSearchViewManager, false, 1, null);
        }
        return true;
    }

    private final AnimationSet J() {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, -1.0f);
        translateAnimation.setDuration(1000L);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(1000L);
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    private final void K(boolean z10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", z10 ? "search_button" : "search");
        String str = this.f43947g;
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("hot_search_word", str);
        com.transsion.baselib.helper.a.f42121a.i(SubTabFragment.INSTANCE.a(HomeTabId.INSTANCE.g()), linkedHashMap);
    }

    public static void N(HomeSearchViewManager homeSearchViewManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        homeSearchViewManager.M(z10);
    }

    private final void m(boolean z10) {
        LinearLayout linearLayout;
        CommonNavigator commonNavigator = this.f43948h;
        if (commonNavigator != null) {
            int color = androidx.core.content.b.getColor(commonNavigator.getContext(), R$color.common_white);
            int color2 = androidx.core.content.b.getColor(commonNavigator.getContext(), R$color.transparent);
            LinearLayout linearLayout2 = (LinearLayout) commonNavigator.findViewById(R$id.title_container);
            int childCount = linearLayout2.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = linearLayout2.getChildAt(i10);
                if (childAt instanceof CustomPagerTitleView) {
                    CustomPagerTitleView customPagerTitleView = (CustomPagerTitleView) childAt;
                    customPagerTitleView.setNormalColor(androidx.core.content.b.getColor(linearLayout2.getContext(), R$color.white_60));
                    customPagerTitleView.setSelectedColor(color);
                    if (i10 == this.f43942b.getMSelectTabIndex()) {
                        customPagerTitleView.setTextColor(color);
                    } else {
                        customPagerTitleView.setTextColor(androidx.core.content.b.getColor(linearLayout2.getContext(), R$color.white_60));
                    }
                    ViewGroup.LayoutParams layoutParams = customPagerTitleView.getLayoutParams();
                    Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                    layoutParams2.width = -2;
                    layoutParams2.height = -1;
                    customPagerTitleView.setLayoutParams(layoutParams2);
                } else if (childAt instanceof CustomTabAdView) {
                    CustomTabAdView customTabAdView = (CustomTabAdView) childAt;
                    customTabAdView.changeTextColor(androidx.core.content.b.getColor(linearLayout2.getContext(), R$color.white_60), androidx.core.content.b.getColor(linearLayout2.getContext(), R$color.common_white));
                    if (i10 == this.f43942b.getMSelectTabIndex()) {
                        customTabAdView.setTextColor(color);
                    } else {
                        customTabAdView.setTextColor(androidx.core.content.b.getColor(linearLayout2.getContext(), R$color.white_60));
                    }
                }
            }
            CommonNavigator commonNavigator2 = this.f43948h;
            if (commonNavigator2 == null || (linearLayout = (LinearLayout) commonNavigator2.findViewById(R$id.indicator_container)) == null) {
                return;
            }
            int childCount2 = linearLayout.getChildCount();
            for (int i11 = 0; i11 < childCount2; i11++) {
                View childAt2 = linearLayout.getChildAt(i11);
                if (childAt2 instanceof GradientLinePagerIndicator) {
                    ((GradientLinePagerIndicator) childAt2).setColors(color2, color2, color2);
                }
            }
        }
    }

    private final void o() {
        if (!UpdateManager.f55354f.a().g()) {
            this.f43941a.f69821i.setVisibility(8);
        } else {
            this.f43941a.f69821i.setVisibility(0);
            this.f43941a.f69821i.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    HomeSearchViewManager.p(this.f43965a, view);
                }
            });
        }
    }

    public static final void p(HomeSearchViewManager homeSearchViewManager, View view) {
        kotlinx.coroutines.k.d(homeSearchViewManager.f43952l, null, null, new HomeSearchViewManager$handleUpdateIcon$1$1(homeSearchViewManager, null), 3, null);
    }

    private final AnimationSet q() {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
        translateAnimation.setDuration(1000L);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(1000L);
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    private final void r() {
        Intent intent;
        this.f43941a.f69828p.setLocalChangeListener(new Function0() {
            @Override
            public final Object invoke() {
                return HomeSearchViewManager.s();
            }
        });
        FragmentActivity activity = this.f43942b.getActivity();
        boolean booleanExtra = false;
        if (activity != null && (intent = activity.getIntent()) != null) {
            booleanExtra = intent.getBooleanExtra("extra_language_activity_restart", false);
        }
        if (booleanExtra) {
            PreloadTrendingData.f44531n.a().z();
        }
    }

    public static final Unit s() {
        PreloadTrendingData.f44531n.a().z();
        return Unit.f64096a;
    }

    private final void t() {
        this.f43941a.f69830r.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                HomeSearchViewManager.u(this.f44000a, view);
            }
        });
        this.f43941a.f69829q.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                HomeSearchViewManager.v(this.f44001a, view);
            }
        });
        this.f43941a.f69819g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                HomeSearchViewManager.w(view);
            }
        });
        r();
        PreloadTrendingData.f44531n.a().H().j(this.f43942b, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HomeSearchViewManager.x(this.f43961a, (HotSubjectEntity) obj);
            }
        }));
        HomeFragment homeFragment = this.f43942b;
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HomeSearchViewManager.y(this.f43963a, (UpdateResultEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = UpdateResultEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(homeFragment, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
    }

    public static final void u(HomeSearchViewManager homeSearchViewManager, View view) {
        F(homeSearchViewManager, false, 1, null);
    }

    public static final void v(HomeSearchViewManager homeSearchViewManager, View view) {
        homeSearchViewManager.E(true);
    }

    public static final void w(View view) {
    }

    public static final Unit x(HomeSearchViewManager homeSearchViewManager, HotSubjectEntity hotSubjectEntity) {
        List<HotSearchKeyWord> everyoneSearch;
        if (hotSubjectEntity != null && (everyoneSearch = hotSubjectEntity.getEveryoneSearch()) != null) {
            homeSearchViewManager.A(everyoneSearch);
        }
        return Unit.f64096a;
    }

    public static final Unit y(HomeSearchViewManager homeSearchViewManager, UpdateResultEvent it) {
        Intrinsics.h(it, "it");
        homeSearchViewManager.o();
        return Unit.f64096a;
    }

    private final void z(AppTab appTab) {
        Context context = this.f43944d;
        if (context == null) {
            Intrinsics.y("context");
            context = null;
        }
        this.f43948h = new CommonNavigator(context);
        a aVar = new a(appTab);
        this.f43949i = aVar;
        CommonNavigator commonNavigator = this.f43948h;
        if (commonNavigator != null) {
            commonNavigator.setAdapter(aVar);
        }
        this.f43941a.f69823k.setNavigator(this.f43948h);
    }

    public final void C(AppTab appTab) {
        Object objM453constructorimpl;
        this.f43944d = this.f43942b.requireContext();
        ViewGroup.LayoutParams layoutParams = this.f43941a.f69830r.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).topMargin = com.blankj.utilcode.util.a0.a(4.0f) + com.blankj.utilcode.util.d.c();
        this.f43941a.f69830r.setLayoutParams(bVar);
        this.f43951k = bVar;
        o();
        z(appTab);
        t();
        try {
            Result.Companion companion = Result.INSTANCE;
            t tVar = new t();
            this.f43943c = tVar;
            FrameLayout flGameCenter = this.f43941a.f69815c;
            Intrinsics.g(flGameCenter, "flGameCenter");
            FrameLayout flPhoneCenter = this.f43941a.f69816d;
            Intrinsics.g(flPhoneCenter, "flPhoneCenter");
            AppCompatImageView ivMbLogo = this.f43941a.f69819g;
            Intrinsics.g(ivMbLogo, "ivMbLogo");
            tVar.b(flGameCenter, flPhoneCenter, ivMbLogo, androidx.p009lifecycle.v.a(this.f43942b));
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.l(wf.a.f74274a, "zxb_icon", "HomeSearchViewManager --> initGameCenter() --> it --> " + thM456exceptionOrNullimpl, false, 4, null);
        }
        AppCompatImageView ivNovelEnter = this.f43941a.f69820h;
        Intrinsics.g(ivNovelEnter, "ivNovelEnter");
        new v(ivNovelEnter);
    }

    public final boolean D() {
        return this.f43950j;
    }

    public final void G() {
        t tVar = this.f43943c;
        if (tVar != null) {
            tVar.c();
        }
    }

    public final void I(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        if (this.f43945e.isEmpty()) {
            PreloadTrendingData.f44531n.a().G();
        }
    }

    public final void L() {
        this.f43953m.removeCallbacksAndMessages(null);
    }

    public final void M(boolean z10) {
        if (this.f43945e.size() <= 0) {
            return;
        }
        if (this.f43946f >= this.f43945e.size()) {
            this.f43946f %= this.f43945e.size();
        }
        if (z10) {
            L();
            this.f43953m.sendEmptyMessageDelayed(100, 500L);
        } else {
            L();
            this.f43953m.sendEmptyMessageDelayed(100, 5000L);
        }
    }

    public final void O(AppTab appTab) {
        Intrinsics.h(appTab, "appTab");
        a aVar = this.f43949i;
        if (aVar != null) {
            aVar.h(appTab);
        }
        if (this.f43950j) {
            m(true);
        }
    }

    public final void l(boolean z10) {
        this.f43950j = z10;
        m(z10);
    }

    public final void n() {
        t tVar = this.f43943c;
        if (tVar != null) {
            tVar.a();
        }
    }
}
