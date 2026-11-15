package com.transsion.home.adapter.suboperate.provider;

import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.ViewPager2;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baseui.widget.OperateScrollableHost;
import com.transsion.gslb.Utils;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.suboperate.adapter.SubHorizontalViewPagerAdapter;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

public final class SubHorizontalBannerProvider extends BaseItemProvider implements androidx.p009lifecycle.f {

    private final int f43349e;

    private final BaseHomeSubFragment f43350f;

    private final Set f43351g;

    private Handler f43352h;

    private ViewPager2 f43353i;

    private int f43354j;

    private long f43355k;

    private View f43356l;

    private boolean f43357m;

    private t1 f43358n;

    private OperateItem f43359o;

    private SubHorizontalViewPagerAdapter f43360p;

    private final Runnable f43361q;

    public static final class a extends ViewPager2.OnPageChangeCallback {

        final OperateItem f43362a;

        final SubHorizontalBannerProvider f43363b;

        a(OperateItem operateItem, SubHorizontalBannerProvider subHorizontalBannerProvider) {
            this.f43362a = operateItem;
            this.f43363b = subHorizontalBannerProvider;
        }

        @Override
        public void onPageSelected(int i10) {
            List<BannerData> banners;
            BannerData bannerData;
            Image image;
            String averageHueLight;
            List<BannerData> banners2;
            BannerBean banner = this.f43362a.getBanner();
            if (banner != null ? Intrinsics.c(banner.getAutoPlay(), Boolean.TRUE) : false) {
                Handler handler = this.f43363b.f43352h;
                if (handler != null) {
                    handler.removeCallbacks(this.f43363b.f43361q);
                }
                Handler handler2 = this.f43363b.f43352h;
                if (handler2 != null) {
                    handler2.postDelayed(this.f43363b.f43361q, this.f43363b.f43355k);
                }
            }
            this.f43363b.f43354j = i10;
            BannerBean banner2 = this.f43362a.getBanner();
            int size = i10 % ((banner2 == null || (banners2 = banner2.getBanners()) == null) ? 1 : banners2.size());
            BannerBean banner3 = this.f43362a.getBanner();
            if (banner3 != null && (banners = banner3.getBanners()) != null && (bannerData = banners.get(size)) != null && (image = bannerData.getImage()) != null && (averageHueLight = image.getAverageHueLight()) != null) {
                SubHorizontalBannerProvider subHorizontalBannerProvider = this.f43363b;
                View view = null;
                GradientDrawable gradientDrawableC = sk.a.c(StringsKt.Q(averageHueLight, Utils.SEPARATOR, "#ff", false, 4, null), StringsKt.Q(averageHueLight, Utils.SEPARATOR, "#00", false, 4, null), null, 4, null);
                View view2 = subHorizontalBannerProvider.f43356l;
                if (view2 == null) {
                    Intrinsics.y("bgColorView");
                } else {
                    view = view2;
                }
                view.setBackground(gradientDrawableC);
            }
            this.f43363b.L(this.f43362a, size);
        }
    }

    public SubHorizontalBannerProvider(int i10, BaseHomeSubFragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f43349e = i10;
        this.f43350f = fragment;
        this.f43351g = new LinkedHashSet();
        this.f43354j = -1;
        this.f43355k = 5000L;
        this.f43361q = new Runnable() {
            @Override
            public final void run() {
                SubHorizontalBannerProvider.M(this.f43477a);
            }
        };
    }

    private final void H() {
        Handler handler = this.f43352h;
        if (handler != null) {
            handler.postDelayed(this.f43361q, this.f43355k);
        }
    }

    private final boolean J(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return this.f43351g.add(str);
    }

    private final void K() {
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.f43349e), true)) {
            this.f43358n = kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new SubHorizontalBannerProvider$registerCourse$1(this, null), 3, null);
        }
    }

    public final void L(OperateItem operateItem, int i10) {
        List<BannerData> banners;
        BannerBean banner = operateItem.getBanner();
        BannerData bannerData = (banner == null || (banners = banner.getBanners()) == null) ? null : banners.get(i10);
        if (J(bannerData != null ? bannerData.getSubjectId() : null)) {
            HashMap map = new HashMap();
            map.put("event_type", "browse_banner");
            map.put("sequence", String.valueOf(i10));
            map.put("tabId", String.valueOf(this.f43349e));
            if (bannerData != null) {
                sk.b.b(bannerData, map);
            }
            sk.b.a(operateItem, map);
            com.transsion.baselib.helper.a.f42121a.e(SubTabFragment.INSTANCE.a(this.f43349e), map);
        }
    }

    public static final void M(SubHorizontalBannerProvider subHorizontalBannerProvider) {
        if (!subHorizontalBannerProvider.f43350f.isVisible()) {
            if (subHorizontalBannerProvider.f43350f.isAdded()) {
                subHorizontalBannerProvider.H();
                return;
            }
            return;
        }
        ViewPager2 viewPager2 = subHorizontalBannerProvider.f43353i;
        if (viewPager2 == null) {
            Intrinsics.y("viewPager2");
            viewPager2 = null;
        }
        ViewPager2 viewPager3 = subHorizontalBannerProvider.f43353i;
        if (viewPager3 == null) {
            Intrinsics.y("viewPager2");
            viewPager3 = null;
        }
        int currentItem = viewPager3.getCurrentItem() + 1;
        ViewPager2 viewPager4 = subHorizontalBannerProvider.f43353i;
        if (viewPager4 == null) {
            Intrinsics.y("viewPager2");
            viewPager4 = null;
        }
        RecyclerView.Adapter adapter = viewPager4.getAdapter();
        Integer numValueOf = adapter != null ? Integer.valueOf(adapter.getItemCount()) : null;
        Intrinsics.e(numValueOf);
        viewPager2.setCurrentItem(currentItem % numValueOf.intValue());
    }

    private final void N() {
        t1 t1Var = this.f43358n;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f43358n = null;
    }

    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        List<BannerData> arrayList;
        String interval;
        Integer numV;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        this.f43353i = (ViewPager2) helper.getView(R$id.sub_operation_horizontal_view_pager);
        this.f43356l = helper.getView(R$id.sub_operation_banner_bg);
        int iMin = Math.min(com.blankj.utilcode.util.y.e(), com.blankj.utilcode.util.y.c()) - com.blankj.utilcode.util.a0.a(112.0f);
        int i10 = (int) ((iMin * 9.0f) / 16);
        ViewPager2 viewPager2 = this.f43353i;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            Intrinsics.y("viewPager2");
            viewPager2 = null;
        }
        viewPager2.getLayoutParams().height = i10;
        ((OperateScrollableHost) helper.getView(R$id.sub_operation_view_scroll_helper)).interceptAllEvent(true);
        int iH0 = this.f43350f.h0();
        helper.getView(R$id.sub_operation_banner_space).getLayoutParams().height = iH0;
        View view = this.f43356l;
        if (view == null) {
            Intrinsics.y("bgColorView");
            view = null;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewPager2 viewPager4 = this.f43353i;
        if (viewPager4 == null) {
            Intrinsics.y("viewPager2");
            viewPager4 = null;
        }
        layoutParams.height = iH0 + viewPager4.getLayoutParams().height;
        BannerBean banner = item.getBanner();
        if (banner == null || (arrayList = banner.getBanners()) == null) {
            arrayList = new ArrayList<>();
        }
        ViewPager2 viewPager5 = this.f43353i;
        if (viewPager5 == null) {
            Intrinsics.y("viewPager2");
            viewPager5 = null;
        }
        viewPager5.setPageTransformer(new CompositePageTransformer());
        ViewPager2 viewPager6 = this.f43353i;
        if (viewPager6 == null) {
            Intrinsics.y("viewPager2");
            viewPager6 = null;
        }
        viewPager6.setOffscreenPageLimit(3);
        ViewPager2 viewPager7 = this.f43353i;
        if (viewPager7 == null) {
            Intrinsics.y("viewPager2");
            viewPager7 = null;
        }
        viewPager7.setAdapter(new SubHorizontalViewPagerAdapter(arrayList, this.f43349e, item, iMin, i10));
        if (arrayList.isEmpty()) {
            return;
        }
        Handler handler = this.f43352h;
        if (handler != null) {
            handler.removeCallbacks(this.f43361q);
        }
        this.f43352h = new Handler(Looper.getMainLooper());
        ViewPager2 viewPager8 = this.f43353i;
        if (viewPager8 == null) {
            Intrinsics.y("viewPager2");
            viewPager8 = null;
        }
        viewPager8.registerOnPageChangeCallback(new a(item, this));
        BannerBean banner2 = item.getBanner();
        long jIntValue = ((long) ((banner2 == null || (interval = banner2.getInterval()) == null || (numV = StringsKt.v(interval)) == null) ? 0 : numV.intValue())) * 1000;
        if (jIntValue <= 0) {
            jIntValue = this.f43355k;
        }
        this.f43355k = jIntValue;
        int size = this.f43354j;
        if (size < 0) {
            size = 1073741823 - (1073741823 % arrayList.size());
        }
        ViewPager2 viewPager9 = this.f43353i;
        if (viewPager9 == null) {
            Intrinsics.y("viewPager2");
            viewPager9 = null;
        }
        viewPager9.setCurrentItem(size, false);
        ViewPager2 viewPager10 = this.f43353i;
        if (viewPager10 == null) {
            Intrinsics.y("viewPager2");
        } else {
            viewPager3 = viewPager10;
        }
        RecyclerView.Adapter adapter = viewPager3.getAdapter();
        Intrinsics.f(adapter, "null cannot be cast to non-null type com.transsion.home.adapter.suboperate.adapter.SubHorizontalViewPagerAdapter");
        this.f43360p = (SubHorizontalViewPagerAdapter) adapter;
        this.f43359o = item;
    }

    @Override
    public int l() {
        return PostItemType.HORIZONTAL_BANNER.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_sub_operation_horizontal_banner;
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
        if (!this.f43357m || (handler = this.f43352h) == null) {
            return;
        }
        handler.removeCallbacks(this.f43361q);
    }

    @Override
    public void onResume(androidx.p009lifecycle.u owner) {
        Handler handler;
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.d(this, owner);
        if (!this.f43357m || (handler = this.f43352h) == null) {
            return;
        }
        handler.postDelayed(this.f43361q, this.f43355k);
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
        this.f43357m = true;
        Handler handler = this.f43352h;
        if (handler != null) {
            handler.postDelayed(this.f43361q, this.f43355k);
        }
        K();
    }

    @Override
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        this.f43357m = false;
        Handler handler = this.f43352h;
        if (handler != null) {
            handler.removeCallbacks(this.f43361q);
        }
        N();
    }
}
