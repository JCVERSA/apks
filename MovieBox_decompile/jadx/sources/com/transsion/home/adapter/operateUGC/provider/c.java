package com.transsion.home.adapter.operateUGC.provider;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewTreeObserver;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.view.indicator.BannerIndicator;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.OperateScrollableHost;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.operateUGC.adapter.BannerUGCAdapter;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class c extends BaseItemProvider implements androidx.p009lifecycle.f {

    private final int f43153e;

    private final BaseHomeSubFragment f43154f;

    private final Set f43155g;

    private Handler f43156h;

    private ViewPager2 f43157i;

    private BannerIndicator f43158j;

    private int f43159k;

    private long f43160l;

    private boolean f43161m;

    private final Runnable f43162n;

    public static final class a extends ViewPager2.OnPageChangeCallback {

        final OperateItem f43163a;

        final c f43164b;

        final List f43165c;

        a(OperateItem operateItem, c cVar, List list) {
            this.f43163a = operateItem;
            this.f43164b = cVar;
            this.f43165c = list;
        }

        @Override
        public void onPageSelected(int i10) {
            BannerBean banner = this.f43163a.getBanner();
            if (banner != null ? Intrinsics.c(banner.getAutoPlay(), Boolean.TRUE) : false) {
                Handler handler = this.f43164b.f43156h;
                if (handler != null) {
                    handler.removeCallbacks(this.f43164b.f43162n);
                }
                Handler handler2 = this.f43164b.f43156h;
                if (handler2 != null) {
                    handler2.postDelayed(this.f43164b.f43162n, this.f43164b.f43160l);
                }
            }
            this.f43164b.f43159k = i10;
            BannerIndicator bannerIndicator = this.f43164b.f43158j;
            if (bannerIndicator == null) {
                Intrinsics.y("circleIndicator");
                bannerIndicator = null;
            }
            bannerIndicator.onPageSelected(i10 % this.f43165c.size());
        }
    }

    public static final class b implements ViewTreeObserver.OnPreDrawListener {

        final BaseViewHolder f43166a;

        b(BaseViewHolder baseViewHolder) {
            this.f43166a = baseViewHolder;
        }

        @Override
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver = this.f43166a.itemView.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            AppStartReport.f52508a.e(new AppStartDotState(AppStartDotState.TRENDING_END, 0L, 2, null));
            return true;
        }
    }

    public c(int i10, BaseHomeSubFragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f43153e = i10;
        this.f43154f = fragment;
        this.f43155g = new LinkedHashSet();
        this.f43159k = -1;
        this.f43160l = 5000L;
        this.f43162n = new Runnable() {
            @Override
            public final void run() {
                c.J(this.f43149a);
            }
        };
    }

    private final void F() {
        Handler handler = this.f43156h;
        if (handler != null) {
            handler.postDelayed(this.f43162n, this.f43160l);
        }
    }

    public static final void H(c cVar) {
        BannerIndicator bannerIndicator = cVar.f43158j;
        if (bannerIndicator == null) {
            Intrinsics.y("circleIndicator");
            bannerIndicator = null;
        }
        bannerIndicator.requestLayout();
    }

    public static final void J(c cVar) {
        if (!cVar.f43154f.isVisible()) {
            if (cVar.f43154f.isAdded()) {
                cVar.F();
                return;
            }
            return;
        }
        ViewPager2 viewPager2 = cVar.f43157i;
        if (viewPager2 == null) {
            Intrinsics.y("viewPager2");
            viewPager2 = null;
        }
        ViewPager2 viewPager3 = cVar.f43157i;
        if (viewPager3 == null) {
            Intrinsics.y("viewPager2");
            viewPager3 = null;
        }
        int currentItem = viewPager3.getCurrentItem() + 1;
        ViewPager2 viewPager4 = cVar.f43157i;
        if (viewPager4 == null) {
            Intrinsics.y("viewPager2");
            viewPager4 = null;
        }
        RecyclerView.Adapter adapter = viewPager4.getAdapter();
        Integer numValueOf = adapter != null ? Integer.valueOf(adapter.getItemCount()) : null;
        Intrinsics.e(numValueOf);
        viewPager2.setCurrentItem(currentItem % numValueOf.intValue());
    }

    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        List<BannerData> arrayList;
        String interval;
        Integer numV;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        this.f43157i = (ViewPager2) helper.itemView.findViewById(R$id.provider_ugc_banner_view_pager);
        ((OperateScrollableHost) helper.itemView.findViewById(R$id.provider_ugc_banner_view_scroll_helper)).interceptAllEvent(true);
        this.f43158j = (BannerIndicator) helper.itemView.findViewById(R$id.provider_ugc_banner_view_pager_indicator);
        BannerBean banner = item.getBanner();
        if (banner == null || (arrayList = banner.getBanners()) == null) {
            arrayList = new ArrayList<>();
        }
        ViewPager2 viewPager2 = this.f43157i;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            Intrinsics.y("viewPager2");
            viewPager2 = null;
        }
        viewPager2.setAdapter(new BannerUGCAdapter(arrayList, this.f43153e, this, item));
        if (arrayList.isEmpty()) {
            return;
        }
        Handler handler = this.f43156h;
        if (handler != null) {
            handler.removeCallbacks(this.f43162n);
        }
        this.f43156h = new Handler(Looper.getMainLooper());
        ViewPager2 viewPager4 = this.f43157i;
        if (viewPager4 == null) {
            Intrinsics.y("viewPager2");
            viewPager4 = null;
        }
        viewPager4.registerOnPageChangeCallback(new a(item, this, arrayList));
        BannerIndicator bannerIndicator = this.f43158j;
        if (bannerIndicator == null) {
            Intrinsics.y("circleIndicator");
            bannerIndicator = null;
        }
        com.tn.lib.view.indicator.a indicatorConfig = bannerIndicator.getIndicatorConfig();
        indicatorConfig.s(-1);
        indicatorConfig.q(androidx.core.content.b.getColor(k(), R$color.white_20));
        indicatorConfig.r(com.blankj.utilcode.util.a0.a(4.0f));
        indicatorConfig.t(com.blankj.utilcode.util.a0.a(8.0f));
        indicatorConfig.o(com.blankj.utilcode.util.a0.a(4.0f));
        indicatorConfig.n(arrayList.size());
        BannerIndicator bannerIndicator2 = this.f43158j;
        if (bannerIndicator2 == null) {
            Intrinsics.y("circleIndicator");
            bannerIndicator2 = null;
        }
        bannerIndicator2.post(new Runnable() {
            @Override
            public final void run() {
                c.H(this.f43144a);
            }
        });
        BannerBean banner2 = item.getBanner();
        long jIntValue = ((long) ((banner2 == null || (interval = banner2.getInterval()) == null || (numV = StringsKt.v(interval)) == null) ? 0 : numV.intValue())) * 1000;
        if (jIntValue <= 0) {
            jIntValue = this.f43160l;
        }
        this.f43160l = jIntValue;
        int size = this.f43159k;
        if (size < 0) {
            size = 1073741823 - (1073741823 % arrayList.size());
        }
        ViewPager2 viewPager5 = this.f43157i;
        if (viewPager5 == null) {
            Intrinsics.y("viewPager2");
        } else {
            viewPager3 = viewPager5;
        }
        viewPager3.setCurrentItem(size, false);
    }

    public final boolean I(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return this.f43155g.add(str);
    }

    @Override
    public int l() {
        return PostItemType.UGC_BANNER.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_ugc_item_banner;
    }

    @Override
    public void onCreate(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override
    public void onDestroy(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override
    public void onPause(androidx.p009lifecycle.u owner) {
        Handler handler;
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.c(this, owner);
        if (!this.f43161m || (handler = this.f43156h) == null) {
            return;
        }
        handler.removeCallbacks(this.f43162n);
    }

    @Override
    public void onResume(androidx.p009lifecycle.u owner) {
        Handler handler;
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.d(this, owner);
        if (!this.f43161m || (handler = this.f43156h) == null) {
            return;
        }
        handler.postDelayed(this.f43162n, this.f43160l);
    }

    @Override
    public void onStart(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.e(this, uVar);
    }

    @Override
    public void onStop(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.f(this, uVar);
    }

    @Override
    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.t(holder);
        this.f43161m = true;
        Handler handler = this.f43156h;
        if (handler != null) {
            handler.postDelayed(this.f43162n, this.f43160l);
        }
        holder.itemView.getViewTreeObserver().addOnPreDrawListener(new b(holder));
    }

    @Override
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        this.f43161m = false;
        Handler handler = this.f43156h;
        if (handler != null) {
            handler.removeCallbacks(this.f43162n);
        }
    }
}
