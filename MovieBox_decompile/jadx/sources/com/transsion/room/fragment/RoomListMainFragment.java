package com.transsion.room.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.room.R$string;
import com.transsion.room.view.RoomListMainTabTitleView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.WrapPagerIndicator;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001d0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lcom/transsion/room/fragment/RoomListMainFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lfp/s;", "<init>", "()V", "", "initViewPager", "e0", "Landroid/view/LayoutInflater;", "inflater", "f0", "(Landroid/view/LayoutInflater;)Lfp/s;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "a", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "vpAdapter", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "commonNavigator", "", "c", "I", "selectTabIndex", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isSelectRoom", "", "e", "[Ljava/lang/Integer;", "tabs", "f", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoomListMainFragment extends BaseFragment<fp.s> {

    public static final Companion INSTANCE = new Companion(null);

    private FragmentStateAdapter vpAdapter;

    private ORCommonNavigator commonNavigator;

    private int selectTabIndex;

    private boolean isSelectRoom;

    private final Integer[] tabs = {Integer.valueOf(R$string.Your_rooms), Integer.valueOf(R$string.Room_list)};

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomListMainFragment a(boolean z10, int i10) {
            RoomListMainFragment roomListMainFragment = new RoomListMainFragment();
            roomListMainFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("is_select_room", Boolean.valueOf(z10)), TuplesKt.a("index", Integer.valueOf(i10))));
            return roomListMainFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends qj.a {
        b() {
        }

        public static final void j(RoomListMainFragment roomListMainFragment, int i10, View view) {
            ViewPager2 viewPager2;
            fp.s mViewBinding = roomListMainFragment.getMViewBinding();
            if (mViewBinding == null || (viewPager2 = mViewBinding.f60438f) == null) {
                return;
            }
            viewPager2.setCurrentItem(i10, true);
        }

        @Override
        public int a() {
            return RoomListMainFragment.this.tabs.length;
        }

        @Override
        public xy.c b(Context context) {
            Intrinsics.h(context, "context");
            WrapPagerIndicator wrapPagerIndicator = new WrapPagerIndicator(context);
            int iA = com.blankj.utilcode.util.a0.a(3.0f);
            wrapPagerIndicator.setRoundRadius(iA * 2.0f);
            int i10 = -iA;
            wrapPagerIndicator.setVerticalPadding(i10);
            wrapPagerIndicator.setHorizontalPadding(i10);
            wrapPagerIndicator.setFillColor(androidx.core.content.b.getColor(context, R$color.bg_01));
            return wrapPagerIndicator;
        }

        @Override
        public xy.d c(Context context, final int i10) {
            Intrinsics.h(context, "context");
            RoomListMainTabTitleView roomListMainTabTitleView = new RoomListMainTabTitleView(context);
            final RoomListMainFragment roomListMainFragment = RoomListMainFragment.this;
            roomListMainTabTitleView.setTextById(roomListMainFragment.tabs[i10].intValue());
            roomListMainTabTitleView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomListMainFragment.b.j(roomListMainFragment, i10, view);
                }
            });
            return roomListMainTabTitleView;
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i10);
            fp.s mViewBinding = RoomListMainFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f60437e) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i10);
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i10, f10, i11);
            fp.s mViewBinding = RoomListMainFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f60437e) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i10, f10, i11);
        }

        @Override
        public void onPageSelected(int i10) {
            MagicIndicator magicIndicator;
            super.onPageSelected(i10);
            fp.s mViewBinding = RoomListMainFragment.this.getMViewBinding();
            if (mViewBinding != null && (magicIndicator = mViewBinding.f60437e) != null) {
                magicIndicator.onPageSelected(i10);
            }
            RoomListMainFragment.this.selectTabIndex = i10;
        }
    }

    public static final class d extends FragmentStateAdapter {
        d() {
            super(RoomListMainFragment.this);
        }

        @Override
        public Fragment createFragment(int i10) {
            return i10 == 0 ? RoomMyListFragment.INSTANCE.a(RoomListMainFragment.this.isSelectRoom, null) : RoomFilterListFragment.INSTANCE.a(RoomListMainFragment.this.isSelectRoom);
        }

        @Override
        public int getItemCount() {
            return RoomListMainFragment.this.tabs.length;
        }
    }

    private final void e0() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        MagicIndicator magicIndicator;
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(requireContext());
        oRCommonNavigator.setAdapter(new b());
        this.commonNavigator = oRCommonNavigator;
        fp.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (magicIndicator = mViewBinding.f60437e) != null) {
            magicIndicator.setNavigator(this.commonNavigator);
        }
        fp.s mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (viewPager3 = mViewBinding2.f60438f) != null) {
            viewPager3.registerOnPageChangeCallback(new c());
        }
        fp.s mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (viewPager2 = mViewBinding3.f60438f) == null) {
            return;
        }
        viewPager2.setCurrentItem(this.selectTabIndex, false);
    }

    public static final void g0(RoomListMainFragment roomListMainFragment, View view) {
        FragmentActivity activity = roomListMainFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void initViewPager() {
        ViewPager2 viewPager2;
        this.vpAdapter = new d();
        fp.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (viewPager2 = mViewBinding.f60438f) != null) {
            viewPager2.setAdapter(this.vpAdapter);
        }
        e0();
    }

    @Override
    public fp.s getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fp.s sVarC = fp.s.c(inflater);
        Intrinsics.g(sVarC, "inflate(...)");
        return sVarC;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        AppCompatImageView appCompatImageView;
        ImageView imageView;
        Intrinsics.h(view, "view");
        fp.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (imageView = mViewBinding.f60436d) != null) {
            uf.c.e(imageView);
        }
        fp.s mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f60435c) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    RoomListMainFragment.g0(this.f49593a, view2);
                }
            });
        }
        initViewPager();
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.selectTabIndex = arguments != null ? arguments.getInt("index") : 0;
        Bundle arguments2 = getArguments();
        this.isSelectRoom = arguments2 != null ? arguments2.getBoolean("is_select_room") : false;
        ImmersionBar.with(this).statusBarDarkFont(!ij.y.f62128a.a()).init();
    }
}
