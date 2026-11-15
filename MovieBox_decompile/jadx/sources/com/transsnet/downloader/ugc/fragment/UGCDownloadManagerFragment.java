package com.transsnet.downloader.ugc.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.fragment.ad.AppDownloadAdFragment;
import com.transsnet.downloader.fragment.ad.TopCardAdFragment;
import com.transsnet.downloader.ugc.widget.UGCDownloadMainTabTitleView;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.downloader.viewmodel.LocalFileViewModel;
import com.transsnet.downloader.viewmodel.TransferReceivedViewModel;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.transsnet.flow.event.sync.event.DownloadRefreshEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0004J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u0017\u0010'\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\bH\u0016¢\u0006\u0004\b'\u0010\u000bJ\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*R\u0014\u0010-\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b+\u0010,R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u00100\u001a\u0004\b6\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u00100\u001a\u0004\b;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001c\u0010E\u001a\b\u0018\u00010BR\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010K\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010HR\u001a\u0010O\u001a\b\u0012\u0004\u0012\u00020\f0L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010S\u001a\u00020P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010W\u001a\u00020T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010Z\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010Y¨\u0006["}, d2 = {"Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lbx/o0;", "<init>", "()V", "", "A0", "initViewModel", "", "hasDownloading", "B0", "(Z)V", "", "p0", "()Ljava/lang/String;", "u0", "n0", "l0", "initViewPager", "t0", "initAd", "k0", "Landroid/view/LayoutInflater;", "inflater", "r0", "(Landroid/view/LayoutInflater;)Lbx/o0;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initListener", "lazyLoadData", TmcConstants.NAVIGATION_ON_START, "onResume", "hidden", "onHiddenChanged", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "a", "Ljava/lang/String;", "TAG", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "m0", "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "downloadViewModel", "Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", "c", "q0", "()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", "transferViewModel", "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "o0", "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", "localFileViewModel", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "e", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "commonNavigator", "Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;", "f", "Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$a;", "commonNavigatorAdapter", "Landroidx/fragment/app/Fragment;", "g", "Landroidx/fragment/app/Fragment;", "topCardAdFragment", "h", "appDownloadAdFragment", "", "i", "Ljava/util/List;", "tabs", "", "j", "I", "savedTabIndex", "", CampaignEx.JSON_KEY_AD_K, "J", "pageLoadStartTime", "l", "Z", "isFirstStart", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCDownloadManagerFragment extends BaseFragment<bx.o0> {

    private ORCommonNavigator commonNavigator;

    private a commonNavigatorAdapter;

    private Fragment topCardAdFragment;

    private Fragment appDownloadAdFragment;

    private int savedTabIndex;

    private long pageLoadStartTime;

    private final String TAG = "UGCDownloadManager";

    private final Lazy downloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(DownloadViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy transferViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(TransferReceivedViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy localFileViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(LocalFileViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final List tabs = new ArrayList();

    private boolean isFirstStart = true;

    public final class a extends qj.a {

        private final ViewPager2 f57474b;

        private final List f57475c;

        final UGCDownloadManagerFragment f57476d;

        public a(UGCDownloadManagerFragment uGCDownloadManagerFragment, ViewPager2 viewPager2, List tabList) {
            Intrinsics.h(tabList, "tabList");
            this.f57476d = uGCDownloadManagerFragment;
            this.f57474b = viewPager2;
            this.f57475c = tabList;
        }

        public static final void j(a aVar, int i10, View view) {
            ViewPager2 viewPager2 = aVar.f57474b;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(i10, true);
            }
        }

        @Override
        public int a() {
            return this.f57475c.size();
        }

        @Override
        public xy.c b(Context context) {
            Intrinsics.h(context, "context");
            if (this.f57475c.size() == 1) {
                LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
                linePagerIndicator.setColors(0);
                return linePagerIndicator;
            }
            LinePagerIndicator linePagerIndicator2 = new LinePagerIndicator(context);
            linePagerIndicator2.setMode(2);
            linePagerIndicator2.setLineHeight(lj.a.b(2));
            linePagerIndicator2.setLineWidth(lj.a.b(97));
            linePagerIndicator2.setStartInterpolator(new AccelerateInterpolator());
            linePagerIndicator2.setEndInterpolator(new DecelerateInterpolator(2.0f));
            linePagerIndicator2.setColors(-1, -1, -1);
            return linePagerIndicator2;
        }

        @Override
        public xy.d c(Context context, final int i10) {
            Intrinsics.h(context, "context");
            UGCDownloadMainTabTitleView uGCDownloadMainTabTitleView = new UGCDownloadMainTabTitleView(context);
            uGCDownloadMainTabTitleView.setText((CharSequence) this.f57475c.get(i10));
            uGCDownloadMainTabTitleView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UGCDownloadManagerFragment.a.j(this.f57583a, i10, view);
                }
            });
            return uGCDownloadMainTabTitleView;
        }

        public final void k(List newTabs) {
            Intrinsics.h(newTabs, "newTabs");
            this.f57475c.clear();
            this.f57475c.addAll(newTabs);
            e();
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i10);
            bx.o0 mViewBinding = UGCDownloadManagerFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f16195f) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i10);
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i10, f10, i11);
            bx.o0 mViewBinding = UGCDownloadManagerFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f16195f) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i10, f10, i11);
        }

        @Override
        public void onPageSelected(int i10) {
            MagicIndicator magicIndicator;
            super.onPageSelected(i10);
            bx.o0 mViewBinding = UGCDownloadManagerFragment.this.getMViewBinding();
            if (mViewBinding != null && (magicIndicator = mViewBinding.f16195f) != null) {
                magicIndicator.onPageSelected(i10);
            }
            UGCDownloadManagerFragment.this.savedTabIndex = i10;
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f57478a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57478a = function;
        }

        @Override
        public final Function a() {
            return this.f57478a;
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
            this.f57478a.invoke(obj);
        }
    }

    public static final class d extends FragmentStateAdapter {

        final boolean f57480b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(boolean z10) {
            super(UGCDownloadManagerFragment.this);
            this.f57480b = z10;
        }

        @Override
        public Fragment createFragment(int i10) {
            if (this.f57480b && i10 == 0) {
                return UGCDownloadingListFragment.INSTANCE.a();
            }
            qi.b logViewConfig = UGCDownloadManagerFragment.this.getLogViewConfig();
            if (logViewConfig == null || !logViewConfig.i()) {
                qi.b logViewConfig2 = UGCDownloadManagerFragment.this.getLogViewConfig();
                if (logViewConfig2 != null) {
                    logViewConfig2.k(true);
                }
                UGCDownloadManagerFragment.this.k0();
            }
            String strP0 = UGCDownloadManagerFragment.this.p0();
            return ij.o.f62115a.i() ? UGCDownloadedAppFragment.INSTANCE.a(strP0) : UGCDownloadedTabFragment.INSTANCE.a(strP0);
        }

        @Override
        public int getItemCount() {
            return UGCDownloadManagerFragment.this.tabs.size();
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005e  */
    private final void A0() {
        String strD0;
        Object next;
        ViewPager2 viewPager2;
        bx.o0 mViewBinding = getMViewBinding();
        boolean zC = Intrinsics.c(CollectionsKt.l0(this.tabs, (mViewBinding == null || (viewPager2 = mViewBinding.f16197h) == null) ? 0 : viewPager2.getCurrentItem()), Utils.a().getString(R$string.str_downloading_title));
        if (zC) {
            strD0 = null;
        } else {
            List listY0 = getChildFragmentManager().y0();
            Intrinsics.g(listY0, "getFragments(...)");
            Iterator it = listY0.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((Fragment) next) instanceof UGCDownloadedTabFragment));
            UGCDownloadedTabFragment uGCDownloadedTabFragment = next instanceof UGCDownloadedTabFragment ? (UGCDownloadedTabFragment) next : null;
            if (uGCDownloadedTabFragment != null) {
                strD0 = uGCDownloadedTabFragment.D0();
            } else {
                strD0 = null;
            }
        }
        Navigator.x(TheRouter.c("/download/ugc_my_downloads").F("main_tab_index", !zC ? 1 : 0).K("sub_tab_title", strD0), requireContext(), null, 2, null);
    }

    private final void B0(boolean hasDownloading) {
        MagicIndicator magicIndicator;
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        ViewPager2 viewPager4;
        LinearLayout linearLayout;
        ArrayList arrayList = new ArrayList();
        if (hasDownloading) {
            String string = Utils.a().getString(R$string.str_downloading_title);
            Intrinsics.g(string, "getString(...)");
            arrayList.add(string);
        }
        bx.o0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (linearLayout = mViewBinding.f16194e) != null) {
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (hasDownloading) {
                marginLayoutParams.topMargin = 0;
                marginLayoutParams.height = lj.a.b(36);
            } else {
                marginLayoutParams.topMargin = lj.a.b(8);
                marginLayoutParams.height = lj.a.b(20);
            }
            linearLayout.setLayoutParams(marginLayoutParams);
        }
        String string2 = Utils.a().getString(R$string.str_downloaded_title);
        Intrinsics.g(string2, "getString(...)");
        arrayList.add(string2);
        if (Intrinsics.c(this.tabs, arrayList)) {
            return;
        }
        bx.o0 mViewBinding2 = getMViewBinding();
        this.savedTabIndex = (mViewBinding2 == null || (viewPager4 = mViewBinding2.f16197h) == null) ? 0 : viewPager4.getCurrentItem();
        this.tabs.clear();
        this.tabs.addAll(arrayList);
        a aVar = this.commonNavigatorAdapter;
        if (aVar != null) {
            aVar.k(arrayList);
        }
        bx.o0 mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (viewPager3 = mViewBinding3.f16197h) != null) {
            viewPager3.setAdapter(new d(hasDownloading));
        }
        int iL = RangesKt.l(this.savedTabIndex, 0, this.tabs.size() - 1);
        bx.o0 mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (viewPager2 = mViewBinding4.f16197h) != null) {
            viewPager2.setCurrentItem(iL, false);
        }
        bx.o0 mViewBinding5 = getMViewBinding();
        if (mViewBinding5 == null || (magicIndicator = mViewBinding5.f16195f) == null) {
            return;
        }
        magicIndicator.onPageSelected(iL);
    }

    private final void initAd() {
        if (ij.o.f62115a.g() || ij.g.f62108a.b()) {
            return;
        }
        Fragment fragmentK0 = getChildFragmentManager().k0("TopCardAdFragment");
        this.topCardAdFragment = fragmentK0;
        if (fragmentK0 == null) {
            this.topCardAdFragment = new TopCardAdFragment();
        }
        Fragment fragment = this.topCardAdFragment;
        if (fragment != null) {
            ij.m mVar = ij.m.f62113a;
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            ij.m.b(mVar, childFragmentManager, R$id.flTopCardAd, fragment, false, null, 24, null);
        }
        Fragment fragmentK1 = getChildFragmentManager().k0("AppDownloadAdFragment");
        this.appDownloadAdFragment = fragmentK1;
        if (fragmentK1 == null) {
            this.appDownloadAdFragment = new AppDownloadAdFragment();
        }
        Fragment fragment2 = this.appDownloadAdFragment;
        if (fragment2 != null) {
            ij.m mVar2 = ij.m.f62113a;
            FragmentManager childFragmentManager2 = getChildFragmentManager();
            Intrinsics.g(childFragmentManager2, "getChildFragmentManager(...)");
            ij.m.b(mVar2, childFragmentManager2, R$id.flAppDownloadAd, fragment2, false, null, 24, null);
        }
    }

    private final void initViewModel() {
        m0().Q().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCDownloadManagerFragment.z0(this.f57572a, (List) obj);
            }
        }));
    }

    private final void initViewPager() {
        ViewPager2 viewPager2;
        bx.o0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (viewPager2 = mViewBinding.f16197h) == null) {
            return;
        }
        viewPager2.registerOnPageChangeCallback(new b());
        viewPager2.setUserInputEnabled(true);
    }

    public final void k0() {
        HashMap mapG;
        if (this.pageLoadStartTime > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.pageLoadStartTime;
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
                return;
            }
        }
    }

    private final void l0() {
        ViewPager2 viewPager2;
        bx.o0 mViewBinding = getMViewBinding();
        this.savedTabIndex = (mViewBinding == null || (viewPager2 = mViewBinding.f16197h) == null) ? 0 : viewPager2.getCurrentItem();
        m0().H();
        TransferReceivedViewModel.i(q0(), false, 1, null);
        LocalFileViewModel.k(o0(), false, 1, null);
    }

    private final DownloadViewModel m0() {
        return (DownloadViewModel) this.downloadViewModel.getValue();
    }

    private final void n0() {
        m0().P();
    }

    private final LocalFileViewModel o0() {
        return (LocalFileViewModel) this.localFileViewModel.getValue();
    }

    public final String p0() {
        Object next;
        if (this.savedTabIndex <= 0 && (this.tabs.size() != 1 || this.savedTabIndex != 0)) {
            return null;
        }
        List listY0 = getChildFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        Iterator it = listY0.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((Fragment) next) instanceof UGCDownloadedTabFragment));
        UGCDownloadedTabFragment uGCDownloadedTabFragment = next instanceof UGCDownloadedTabFragment ? (UGCDownloadedTabFragment) next : null;
        if (uGCDownloadedTabFragment != null) {
            return uGCDownloadedTabFragment.D0();
        }
        return null;
    }

    private final TransferReceivedViewModel q0() {
        return (TransferReceivedViewModel) this.transferViewModel.getValue();
    }

    public static final void s0(UGCDownloadManagerFragment uGCDownloadManagerFragment, View view) {
        uGCDownloadManagerFragment.A0();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void t0() {
        MagicIndicator magicIndicator;
        bx.o0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (magicIndicator = mViewBinding.f16195f) == null) {
            return;
        }
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(requireContext());
        oRCommonNavigator.setFollowTouch(true);
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "init tabs: " + this.tabs, false, 4, null);
        bx.o0 mViewBinding2 = getMViewBinding();
        a aVar = new a(this, mViewBinding2 != null ? mViewBinding2.f16197h : null, this.tabs);
        this.commonNavigatorAdapter = aVar;
        oRCommonNavigator.setAdapter(aVar);
        this.commonNavigator = oRCommonNavigator;
        magicIndicator.setNavigator(oRCommonNavigator);
        magicIndicator.onPageSelected(0);
    }

    private final void u0() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCDownloadManagerFragment.v0(this.f57573a, (DownloadRefreshEvent) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = DownloadRefreshEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, kotlinx.coroutines.y0.c().r(), false, function1);
        Function1 function2 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCDownloadManagerFragment.w0(this.f57575a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = AddToDownloadEvent.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, kotlinx.coroutines.y0.c().r(), false, function2);
        Function1 function3 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCDownloadManagerFragment.x0(this.f57577a, (au.e) obj);
            }
        };
        FlowEventBus flowEventBus3 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name3 = au.e.class.getName();
        Intrinsics.g(name3, "getName(...)");
        flowEventBus3.observeEvent(this, name3, state, kotlinx.coroutines.y0.c().r(), false, function3);
    }

    public static final Unit v0(UGCDownloadManagerFragment uGCDownloadManagerFragment, DownloadRefreshEvent value) {
        Intrinsics.h(value, "value");
        String resourceId = value.getResourceId();
        if (resourceId == null || resourceId.length() == 0) {
            uGCDownloadManagerFragment.m0().H();
        }
        return Unit.f64096a;
    }

    public static final Unit w0(UGCDownloadManagerFragment uGCDownloadManagerFragment, AddToDownloadEvent value) {
        Intrinsics.h(value, "value");
        if (uGCDownloadManagerFragment.tabs.size() == 1 && uGCDownloadManagerFragment.isVisible() && value.getAdd()) {
            uGCDownloadManagerFragment.n0();
        }
        return Unit.f64096a;
    }

    public static final Unit x0(final UGCDownloadManagerFragment uGCDownloadManagerFragment, au.e value) {
        Intrinsics.h(value, "value");
        wf.a.f74274a.c(TransferBottomToolsView.TAG, "TransferFinishEvent， 有传输完成，刷新页面", true);
        uGCDownloadManagerFragment.m0().r0(value.a(), new Function0() {
            @Override
            public final Object invoke() {
                return UGCDownloadManagerFragment.y0(this.f57581a);
            }
        });
        return Unit.f64096a;
    }

    public static final Unit y0(UGCDownloadManagerFragment uGCDownloadManagerFragment) {
        TransferReceivedViewModel.i(uGCDownloadManagerFragment.q0(), false, 1, null);
        uGCDownloadManagerFragment.m0().d0().q(Boolean.TRUE);
        return Unit.f64096a;
    }

    public static final Unit z0(UGCDownloadManagerFragment uGCDownloadManagerFragment, List list) {
        List list2 = list;
        uGCDownloadManagerFragment.B0(!(list2 == null || list2.isEmpty()));
        return Unit.f64096a;
    }

    @Override
    public void initListener() {
        AppCompatTextView appCompatTextView;
        bx.o0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatTextView = mViewBinding.f16196g) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCDownloadManagerFragment.s0(this.f57579a, view);
            }
        });
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        initAd();
        initViewPager();
        t0();
        initViewModel();
        u0();
        l0();
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("/download/ugc_download", false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.pageLoadStartTime = System.currentTimeMillis();
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!hidden) {
            Fragment fragment = this.topCardAdFragment;
            TopCardAdFragment topCardAdFragment = fragment instanceof TopCardAdFragment ? (TopCardAdFragment) fragment : null;
            if (topCardAdFragment != null) {
                topCardAdFragment.k0();
            }
            Fragment fragment2 = this.appDownloadAdFragment;
            AppDownloadAdFragment appDownloadAdFragment = fragment2 instanceof AppDownloadAdFragment ? (AppDownloadAdFragment) fragment2 : null;
            if (appDownloadAdFragment != null) {
                appDownloadAdFragment.o0();
            }
            l0();
        }
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
    }

    @Override
    public void onStart() {
        super.onStart();
        if (isVisible()) {
            if (this.isFirstStart) {
                this.isFirstStart = false;
            } else {
                l0();
            }
        }
    }

    @Override
    public bx.o0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.o0 o0VarC = bx.o0.c(inflater);
        Intrinsics.g(o0VarC, "inflate(...)");
        return o0VarC;
    }
}
