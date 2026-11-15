package com.transsion.room.fragment;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baseui.fragment.EmptyFragment;
import com.transsion.baseui.fragment.LazyFragment;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.moviedetailapi.bean.RoomTabItem;
import com.transsion.room.view.RoomHomeTabTitleView;
import com.transsion.room.viewmodel.RoomDetailViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f4.a;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\u0004\b\u0001\u0010\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004:\u00012B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0006J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0006J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u0006J\r\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001b\u0010\u0006J\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u001cH&¢\u0006\u0004\b\u001d\u0010\u001eJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001fH&¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\"H&¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u0004\u0018\u00010&2\u0006\u0010%\u001a\u00020\u0017H&¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u0017H&¢\u0006\u0004\b)\u0010*J-\u0010/\u001a\u00020\u00072\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00172\f\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00010\"H&¢\u0006\u0004\b/\u00100R\u001b\u00106\u001a\u0002018DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R(\u0010>\u001a\u0014\u0018\u00010;R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\"\u0010G\u001a\u00020\u00178\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010\u0019\"\u0004\bF\u0010*R\u001d\u0010L\u001a\u0004\u0018\u00010H8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\bI\u00103\u001a\u0004\bJ\u0010K¨\u0006M"}, d2 = {"Lcom/transsion/room/fragment/RoomBaseFragment;", "Lf4/a;", "T", "TabItem", "Lcom/transsion/baseui/fragment/LazyFragment;", "<init>", "()V", "", "l0", "lazyLoadData", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "isShowPageStateLayoutTitle", "initViewData", "initViewModel", "hidden", "onHiddenChanged", "(Z)V", "initViewPager", "", "o0", "()I", "n0", "s0", "Landroidx/viewpager2/widget/ViewPager2;", "z0", "()Landroidx/viewpager2/widget/ViewPager2;", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "u0", "()Lnet/lucode/hackware/magicindicator/MagicIndicator;", "", "y0", "()Ljava/util/List;", RequestParameters.POSITION, "Landroidx/fragment/app/Fragment;", "m0", "(I)Landroidx/fragment/app/Fragment;", "v0", "(I)V", "Lcom/transsion/room/view/RoomHomeTabTitleView;", "tabView", "index", "tabList", "x0", "(Lcom/transsion/room/view/RoomHomeTabTitleView;ILjava/util/List;)V", "Lcom/transsion/room/viewmodel/RoomDetailViewModel;", "a", "Lkotlin/Lazy;", "p0", "()Lcom/transsion/room/viewmodel/RoomDetailViewModel;", "mDetailViewModel", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "mCommonNavigator", "Lcom/transsion/room/fragment/RoomBaseFragment$a;", "c", "Lcom/transsion/room/fragment/RoomBaseFragment$a;", "mCommonNavigatorAdapter", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "mFragmentStateAdapter", "e", "I", "r0", "w0", "mSelectTabIndex", "Lio/b;", "f", "q0", "()Lio/b;", "mPostDetailApi", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class RoomBaseFragment<T extends f4.a, TabItem> extends LazyFragment<T> {

    private ORCommonNavigator mCommonNavigator;

    private a mCommonNavigatorAdapter;

    private FragmentStateAdapter mFragmentStateAdapter;

    private int mSelectTabIndex;

    private final Lazy mDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(RoomDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
        {
            super(0);
        }

        @Override
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() {
        {
            super(0);
        }

        @Override
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    private final Lazy mPostDetailApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomBaseFragment.t0();
        }
    });

    public final class a extends qj.a {

        private final ViewPager2 f49390b;

        private final List f49391c;

        final RoomBaseFragment f49392d;

        public a(RoomBaseFragment roomBaseFragment, ViewPager2 viewPager2, List tabList) {
            Intrinsics.h(tabList, "tabList");
            this.f49392d = roomBaseFragment;
            this.f49390b = viewPager2;
            this.f49391c = tabList;
        }

        private final LinearLayout.LayoutParams j() {
            return new LinearLayout.LayoutParams(-2, -1);
        }

        public static final void k(a aVar, int i10, View view) {
            ViewPager2 viewPager2 = aVar.f49390b;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(i10, true);
            }
        }

        @Override
        public int a() {
            return this.f49391c.size();
        }

        @Override
        public xy.c b(Context context) {
            Intrinsics.h(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setMode(2);
            linePagerIndicator.setLineHeight(com.blankj.utilcode.util.i.e(2.0f));
            linePagerIndicator.setLineWidth(com.blankj.utilcode.util.i.e(57.0f));
            linePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            linePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            linePagerIndicator.setColors(-1, -1, -1);
            return linePagerIndicator;
        }

        @Override
        public xy.d c(Context context, final int i10) {
            Intrinsics.h(context, "context");
            RoomHomeTabTitleView roomHomeTabTitleView = new RoomHomeTabTitleView(context);
            this.f49392d.x0(roomHomeTabTitleView, i10, this.f49391c);
            roomHomeTabTitleView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomBaseFragment.a.k(this.f49538a, i10, view);
                }
            });
            return roomHomeTabTitleView;
        }

        @Override
        public LinearLayout.LayoutParams h(Context context, int i10) {
            Intrinsics.h(context, "context");
            return j();
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            super.onPageScrollStateChanged(i10);
            MagicIndicator magicIndicatorU0 = RoomBaseFragment.this.u0();
            if (magicIndicatorU0 != null) {
                magicIndicatorU0.onPageScrollStateChanged(i10);
            }
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            super.onPageScrolled(i10, f10, i11);
            MagicIndicator magicIndicatorU0 = RoomBaseFragment.this.u0();
            if (magicIndicatorU0 != null) {
                magicIndicatorU0.onPageScrolled(i10, f10, i11);
            }
        }

        @Override
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            MagicIndicator magicIndicatorU0 = RoomBaseFragment.this.u0();
            if (magicIndicatorU0 != null) {
                magicIndicatorU0.onPageSelected(i10);
            }
            RoomBaseFragment.this.v0(i10);
            RoomBaseFragment.this.w0(i10);
        }
    }

    public static final class c extends FragmentStateAdapter {
        c() {
            super(RoomBaseFragment.this);
        }

        @Override
        public Fragment createFragment(int i10) {
            Fragment fragmentM0 = RoomBaseFragment.this.m0(i10);
            return fragmentM0 == null ? new EmptyFragment() : fragmentM0;
        }

        @Override
        public int getItemCount() {
            return RoomBaseFragment.this.getMTabs().size();
        }
    }

    private final void l0() {
        ViewPager2 viewPager2Z0 = z0();
        if (viewPager2Z0 != null) {
            viewPager2Z0.registerOnPageChangeCallback(new b());
        }
        ep.k kVar = ep.k.f59780a;
        if (kVar.f()) {
            this.mSelectTabIndex = o0();
            kVar.q(false);
        }
        ViewPager2 viewPager2Z1 = z0();
        if (viewPager2Z1 != null) {
            viewPager2Z1.setCurrentItem(this.mSelectTabIndex, false);
        }
    }

    public static final io.b t0() {
        return (io.b) TheRouter.d(io.b.class, new Object[0]);
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initViewData() {
        initViewPager();
        s0();
    }

    @Override
    public void initViewModel() {
    }

    public void initViewPager() {
        this.mFragmentStateAdapter = new c();
        ViewPager2 viewPager2Z0 = z0();
        if (viewPager2Z0 != null) {
            viewPager2Z0.setAdapter(this.mFragmentStateAdapter);
        }
        l0();
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override
    public void lazyLoadData() {
    }

    public abstract Fragment m0(int position);

    public final int n0() {
        Iterator it = getMTabs().iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            Object next = it.next();
            if ((next instanceof RoomTabItem) && Intrinsics.c(((RoomTabItem) next).getTabId(), "explore")) {
                break;
            }
            i10++;
        }
        Integer numValueOf = Integer.valueOf(i10);
        if (numValueOf.intValue() < 0) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }

    public final int o0() {
        for (Object obj : getMTabs()) {
            if ((obj instanceof RoomTabItem) && Intrinsics.c(((RoomTabItem) obj).getTabId(), "images")) {
                return getMTabs().indexOf(obj);
            }
        }
        return 0;
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
    }

    protected final RoomDetailViewModel p0() {
        return (RoomDetailViewModel) this.mDetailViewModel.getValue();
    }

    protected final io.b q0() {
        return (io.b) this.mPostDetailApi.getValue();
    }

    protected final int getMSelectTabIndex() {
        return this.mSelectTabIndex;
    }

    public void s0() {
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(requireContext());
        oRCommonNavigator.setFollowTouch(true);
        a aVar = new a(this, z0(), getMTabs());
        this.mCommonNavigatorAdapter = aVar;
        oRCommonNavigator.setAdapter(aVar);
        this.mCommonNavigator = oRCommonNavigator;
        MagicIndicator magicIndicatorU0 = u0();
        if (magicIndicatorU0 != null) {
            magicIndicatorU0.setNavigator(this.mCommonNavigator);
        }
        MagicIndicator magicIndicatorU1 = u0();
        if (magicIndicatorU1 != null) {
            magicIndicatorU1.onPageSelected(this.mSelectTabIndex);
        }
    }

    public abstract MagicIndicator u0();

    public abstract void v0(int position);

    protected final void w0(int i10) {
        this.mSelectTabIndex = i10;
    }

    public abstract void x0(RoomHomeTabTitleView tabView, int index, List tabList);

    public abstract List getMTabs();

    public abstract ViewPager2 z0();
}
