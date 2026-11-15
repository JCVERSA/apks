package com.transsion.sniffer_load.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.p004lifecycle.Observer;
import androidx.viewpager.widget.ViewPager;
import com.alibaba.android.arouter.launcher.ARouter;
import com.tencent.mmkv.MMKV;
import com.transsion.cloud.updownload.fragment.TransferManagerFragment;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.RtlPageAdapter;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.widgets.NotificationView;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.viewmodel.BookmarksViewModelNew;
import com.transsion.sniffer_load.viewmodel.DownloadMainViewModel;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.BadgeView;
import com.transsion.widgets.CustomTabLayout;
import com.transsion.widgets.RtlViewPager;
import com.transsion.widgetslib.widget.OSIconTextView;
import defpackage.a64;
import defpackage.az5;
import defpackage.dz5;
import defpackage.e16;
import defpackage.ea7;
import defpackage.f5;
import defpackage.h27;
import defpackage.kt1;
import defpackage.mf7;
import defpackage.p06;
import defpackage.pp3;
import defpackage.s16;
import defpackage.vz6;
import defpackage.ydc;
import defpackage.zz0;
import java.util.ArrayList;
import java.util.List;

public class DownloadMainFragmentNew extends PlayBaseFragment implements View.OnClickListener {
    public Runnable C;
    public PopupWindow D;
    public CustomTabLayout l;
    public RtlViewPager m;
    public RtlPageAdapter n;
    public List o;
    public String[] p;
    public DownloadMainViewModel q;
    public NotificationView r;
    public TextView s;
    public OSIconTextView t;
    public DownloadBookmarkFragment u;
    public BookmarksViewModelNew v;
    public boolean w;
    public BadgeView x;
    public boolean y;
    public Boolean z = Boolean.FALSE;
    public boolean A = false;
    public boolean B = false;

    public class AnonymousClass3 implements vz6 {
        public AnonymousClass3() {
        }

        public void b() {
            DownloadMainFragmentNew.this.r.setVisibility(0);
            dz5.b(0, "vd_dl_net_show");
        }

        @Override
        public void onConnect(int i) {
            if (((BaseFragment) DownloadMainFragmentNew.this).mActivity != null) {
                ((BaseFragment) DownloadMainFragmentNew.this).mActivity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        DownloadMainFragmentNew.this.r.setVisibility(8);
                    }
                });
            }
        }

        @Override
        public void onDisconnect() {
            if (((BaseFragment) DownloadMainFragmentNew.this).mActivity != null) {
                ((BaseFragment) DownloadMainFragmentNew.this).mActivity.runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.b();
                    }
                });
            }
        }
    }

    public class a implements PlayBaseFragment.d {
        public a() {
        }

        @Override
        public void a(boolean z) {
            DownloadMainFragmentNew.this.s.setText(z ? R.string.download_bookmark_operate_finish : R.string.download_bookmark_operate);
        }

        @Override
        public void b(ArrayList arrayList, boolean z, boolean z2) {
        }

        @Override
        public void d(boolean z, int i, boolean z2) {
        }
    }

    public class b implements ViewPager.OnPageChangeListener {
        public b() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override
        public void onPageSelected(int i) {
            if (DownloadMainFragmentNew.this.v == null) {
                return;
            }
            List list = (List) DownloadMainFragmentNew.this.v.i().getValue();
            DownloadMainFragmentNew.this.Z0(i == 1 && list != null && list.size() > 0);
        }
    }

    public class c implements Observer {
        public c() {
        }

        @Override
        public void onChanged(Boolean bool) {
            DownloadMainFragmentNew.this.B = bool != null && bool.booleanValue();
            if (DownloadMainFragmentNew.this.B) {
                DownloadMainFragmentNew.this.E0();
            }
        }
    }

    private void G0() {
        DownloadMainViewModel downloadMainViewModel = (DownloadMainViewModel) getViewModelByFragment(DownloadMainViewModel.class);
        this.q = downloadMainViewModel;
        downloadMainViewModel.f(this.mActivity);
        if (J0()) {
            this.q.g(this.mActivity);
        }
        BookmarksViewModelNew bookmarksViewModelNew = (BookmarksViewModelNew) getViewModelByFragment(BookmarksViewModelNew.class);
        this.v = bookmarksViewModelNew;
        bookmarksViewModelNew.i().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.L0((List) obj);
            }
        });
    }

    private void H0() {
        LiveEventBus.b().d("skip_download_guide").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.M0((Boolean) obj);
            }
        });
        LiveEventBus.b().d("show_full_screen_guide").observe(this, new c());
    }

    private void I0(View view) {
        OSIconTextView oSIconTextView = (OSIconTextView) view.findViewById(R.id.iv_download_guide);
        this.t = (OSIconTextView) view.findViewById(R.id.iv_cloud_guide);
        oSIconTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.N0(view2);
            }
        });
        ((OSIconTextView) view.findViewById(R.id.iv_download_manager)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.O0(view2);
            }
        });
        this.t.setVisibility(J0() ? 0 : 8);
        this.t.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.P0(view2);
            }
        });
    }

    public void O0(View view) {
        this.A = true;
        stopEdit();
        a64.n((TransferManagerFragment) TransferManagerFragment.j0("dl_download_cl", 0, false, true).setBaseActivity((BaseActivity) getActivity()), true, true);
        p06.d0("dl_brower_rp_vlist_check_cl");
        s16.c(GlobalDownloadManger.B().h(), "下载首页");
        p06.f0(null, "dl_download_cl", 9324L);
    }

    public void Q0(View view) {
        if (this.u.s0()) {
            this.u.E0(false);
        } else {
            this.u.E0(true);
        }
    }

    public void S0() {
        if (isAdded()) {
            G0();
        }
    }

    private void Y0(final int i) {
        requireActivity().runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.U0(i);
            }
        });
    }

    public final void E0() {
        Runnable runnable;
        OSIconTextView oSIconTextView = this.t;
        if (oSIconTextView != null && (runnable = this.C) != null) {
            oSIconTextView.removeCallbacks(runnable);
        }
        PopupWindow popupWindow = this.D;
        if (popupWindow != null) {
            try {
                if (popupWindow.isShowing()) {
                    this.D.dismiss();
                }
            } catch (Exception unused) {
            } finally {
                this.D = null;
            }
        }
    }

    public void F0(View view) {
        NotificationView notificationView = (NotificationView) view.findViewById(R.id.notify_view);
        this.r = notificationView;
        if (MainApp.w == 0) {
            notificationView.setVisibility(0);
            dz5.b(0, "vd_dl_net_show");
        } else {
            notificationView.setVisibility(8);
        }
        this.r.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.K0(view2);
            }
        });
        MainApp.d("visha_DownloadMainFragmentNew", new AnonymousClass3());
    }

    public boolean J0() {
        return !pp3.w && zz0.d();
    }

    public final void K0(View view) {
        f5.c(new Intent("android.settings.SETTINGS"), this.mContext);
        dz5.b(0, "vd_dl_net_set_cl");
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0014  */
    public final void L0(List list) {
        boolean z;
        RtlViewPager rtlViewPager;
        if (list != null && list.size() > 0 && (rtlViewPager = this.m) != null) {
            z = rtlViewPager.getCurrentItem() == 1;
        }
        Z0(z);
    }

    public final void M0(Boolean bool) {
        if (bool.booleanValue()) {
            a64.n((DownloadGuideFragment) new DownloadGuideFragment().setBaseActivity((BaseActivity) getActivity()), true, true);
            p06.f0(null, "guide_dl_popup_check_cl", 9324L);
        }
    }

    public final void N0(View view) {
        this.A = true;
        E0();
        stopEdit();
        a64.n((DownloadGuideFragment) new DownloadGuideFragment().setBaseActivity((BaseActivity) getActivity()), true, true);
        p06.f0(null, "dl_guide_cl", 9324L);
    }

    public final void P0(View view) {
        BaseFragment baseFragment;
        if (kt1.c("refreshCloudDataWithDelay", 1000L) && (baseFragment = (BaseFragment) ARouter.getInstance().build(VishaRouterTable.PATH_PAGE_CLOUD_FRAGMENT).navigation()) != null) {
            baseFragment.setBaseActivity(this.mActivity);
            a64.n(baseFragment, true, true);
            az5.b();
        }
    }

    public final void R0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        CustomTabLayout customTabLayout = this.l;
        customTabLayout.selectTab(customTabLayout.getTabAt(this.m.getCurrentItem()));
    }

    public final void T0(int i) {
        MainApp.x = i;
        Y0(i);
    }

    public final void U0(int i) {
        BadgeView badgeView = this.x;
        if (badgeView == null) {
            return;
        }
        if (i <= 0) {
            badgeView.setVisibility(8);
            return;
        }
        badgeView.setNum(i);
        this.x.setVisibility(0);
        this.x.requestLayout();
    }

    public final void V0() {
        if (this.B || this.A || getContext() == null || this.t == null || !isResumed() || !isVisible()) {
            return;
        }
        this.D = ea7.q(this.t, getResources().getString(R.string.visha_upload_video_to_cloud), 8388693, 0, -com.transsion.utils.a.d(this.mContext, 6.0f));
        MMKV.p().y("mmkv_key_show_cloud_tip", false);
    }

    public final boolean W0(View view, View view2) {
        view.setHapticFeedbackEnabled(!RouterUtils.jumpToPrivacyRoomOnLongClick(this.mContext, 1, 4));
        return true;
    }

    public final boolean X0(View view) {
        return RouterUtils.jumpToPrivacyRoomOnLongClick(this.mContext, 1, 4);
    }

    public final void Z0(boolean z) {
        DownloadBookmarkFragment downloadBookmarkFragment;
        if (!z && this.s.getVisibility() == 0 && (downloadBookmarkFragment = this.u) != null) {
            downloadBookmarkFragment.E0(false);
        }
        this.s.setVisibility(z ? 0 : 4);
    }

    public final void a1() {
        OSIconTextView oSIconTextView;
        if (ydc.e() || this.B || !MMKV.p().e("mmkv_key_show_cloud_tip", true) || (oSIconTextView = this.t) == null || oSIconTextView.getVisibility() != 0) {
            return;
        }
        E0();
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.V0();
            }
        };
        this.C = runnable;
        this.t.postDelayed(runnable, 200L);
        az5.d();
    }

    public void b1(boolean z) {
    }

    public final void c1(View view) {
        if (view == null) {
            return;
        }
        View viewFindViewById = view.findViewById(R.id.tv_title);
        final View viewFindViewById2 = view.findViewById(R.id.iv_logo);
        View viewFindViewById3 = view.findViewById(R.id.tv_logo_text);
        View viewFindViewById4 = view.findViewById(R.id.title_bar_back);
        boolean z = pp3.c;
        boolean z2 = viewFindViewById4 != null && viewFindViewById4.getVisibility() == 0;
        boolean z3 = this.mScreenType == BaseConstant.SCREEN_TYPE.FOLD && !z;
        boolean z4 = z && !z2;
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility((!z2 && (z || z3)) ? 8 : 0);
        }
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility((!z2 && z3) ? 0 : 8);
        }
        if (viewFindViewById3 != null) {
            viewFindViewById3.setVisibility(z4 ? 0 : 8);
        }
        if (viewFindViewById2 != null && pp3.p) {
            viewFindViewById2.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public final boolean onLongClick(View view2) {
                    return this.b.W0(viewFindViewById2, view2);
                }
            });
        }
        if (viewFindViewById3 == null || !pp3.p) {
            return;
        }
        viewFindViewById3.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public final boolean onLongClick(View view2) {
                return this.b.X0(view2);
            }
        });
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1116) {
            Y0(((Integer) objArr[0]).intValue());
        }
    }

    @Override
    public void markPointVisiable(boolean z) {
        if (this.mAttach && z) {
            Log.i("visha_DownloadMainFragmentNew", "markDownloadMainPageShow");
            e16.f();
            a1();
        }
    }

    @Override
    public void onClick(View view) {
        super.onClick(view);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.w = arguments.getBoolean("support_theme_background", false);
        }
        h27.c().b(this, 1116);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        h27.c().f(this, 1116);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        E0();
        GlobalDownloadManger.B().i("visha_DownloadMainFragmentNew");
        h27.c().f(this, 1060);
        MainApp.s("visha_DownloadMainFragmentNew");
        List list = this.o;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (Fragment fragment : this.o) {
            if (fragment instanceof PlayBaseFragment) {
                ((PlayBaseFragment) fragment).setEditModeListener(null);
            }
        }
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        c1(getView());
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_download_main_new;
    }

    @Override
    public void onResume() {
        super.onResume();
        c1(getView());
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
        DownloadBookmarkFragment downloadBookmarkFragment = this.u;
        if (downloadBookmarkFragment != null && downloadBookmarkFragment.isVisible() && this.u.s0()) {
            this.u.E0(false);
        }
        List list = this.o;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (Fragment fragment : this.o) {
            if (fragment instanceof BaseFragment) {
                ((BaseFragment) fragment).onSelectInViewPage();
            }
        }
    }

    @Override
    public void onUnSelectInViewPage() {
        super.onUnSelectInViewPage();
        List list = this.o;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (Fragment fragment : this.o) {
            if (fragment instanceof BaseFragment) {
                BaseFragment baseFragment = (BaseFragment) fragment;
                if (baseFragment.mIsVisibleToUser) {
                    baseFragment.onUnSelectInViewPage();
                }
            }
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (pp3.x(getApplicationContext())) {
            int iG = pp3.g(this.mContext);
            int iH = pp3.h(this.mContext);
            Log.i("visha_DownloadMainFragmentNew", "onViewCreated mWaterFallLeftEdgeSize " + iG + " mWaterFallRightEdgeSize " + iH + " mIsSupportThemeBg: " + this.w);
            view.setPadding(iG, 0, iH, 0);
        }
        this.l = (CustomTabLayout) view.findViewById(R.id.tab_download_main);
        this.m = (RtlViewPager) view.findViewById(R.id.viewpager_download_main);
        TextView textView = (TextView) view.findViewById(R.id.iv_bookmark_edit);
        this.s = textView;
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.Q0(view2);
            }
        });
        this.l.setupWithViewPager(this.m);
        this.l.isFirstLevelTab(true);
        this.l.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.b.R0(view2, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        preloadLayout(this.m, R.layout.fragment_download_recommend);
        ArrayList arrayList = new ArrayList();
        this.o = arrayList;
        arrayList.add(new DownloadRecommendFragment());
        DownloadBookmarkFragment downloadBookmarkFragment = new DownloadBookmarkFragment();
        this.u = downloadBookmarkFragment;
        downloadBookmarkFragment.setEditModeListener(new a());
        this.o.add(this.u);
        this.p = getResources().getStringArray(R.array.download_main_tabs);
        RtlPageAdapter rtlPageAdapter = new RtlPageAdapter(getChildFragmentManager(), this.o, this.p);
        this.n = rtlPageAdapter;
        this.m.setAdapter(rtlPageAdapter);
        this.m.addOnPageChangeListener(new b());
        I0(view);
        F0(view);
        c1(view);
        H0();
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.b.S0();
            }
        });
        this.x = (BadgeView) view.findViewById(R.id.bv_count);
        GlobalDownloadManger.B().v("visha_DownloadMainFragmentNew", new mf7() {
            @Override
            public final void a(int i) {
                this.a.T0(i);
            }
        });
        h27.c().b(this, 1060);
        Y0(GlobalDownloadManger.B().h());
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        DownloadBookmarkFragment downloadBookmarkFragment;
        super.setUserVisibleHint(z);
        if (z && (downloadBookmarkFragment = this.u) != null && downloadBookmarkFragment.isVisible() && this.u.s0()) {
            this.u.E0(false);
        }
    }

    @Override
    public void showSelectedTab(int i) {
        super.showSelectedTab(i);
        if (i == 0) {
            a64.n(TransferManagerFragment.j0("dl_download_cl", 1, false, true), true, true);
        }
    }

    public void stopEdit() {
        if (this.y) {
            b1(false);
        }
    }
}
