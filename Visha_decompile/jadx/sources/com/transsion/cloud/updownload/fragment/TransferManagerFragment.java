package com.transsion.cloud.updownload.fragment;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.alibaba.android.arouter.launcher.ARouter;
import com.blankj.utilcode.util.LogUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.magicvideo.fragments.VideosBaseFragment;
import com.transsion.moduleservice.IBtDownloadService;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.RtlPageAdapter;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.BubbleTextView;
import com.transsion.widgets.CustomTabLayout;
import com.transsion.widgets.CustomViewPager;
import defpackage.a64;
import defpackage.cz5;
import defpackage.hb0;
import defpackage.r06;
import defpackage.t08;
import defpackage.zz0;
import java.util.ArrayList;
import java.util.List;

public class TransferManagerFragment extends BaseFragment {
    public boolean A;
    public ConstraintLayout C;
    public boolean E;
    public boolean F;
    public FrameLayout G;
    public View l;
    public String[] m;
    public RtlPageAdapter n;
    public List o;
    public CustomViewPager p;
    public CustomTabLayout q;
    public TextView r;
    public TextView s;
    public View t;
    public View u;
    public String v;
    public BubbleTextView w;
    public View x;
    public CheckBox y;
    public boolean z;
    public String B = "0";
    public int D = 0;
    public ViewPager.OnPageChangeListener H = new a();
    public final PlayBaseFragment.d I = new b();

    public class a implements ViewPager.OnPageChangeListener {
        public a() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override
        public void onPageSelected(int i) {
            TransferManagerFragment.this.D = i;
        }
    }

    public class b implements PlayBaseFragment.d {
        public b() {
        }

        @Override
        public void a(boolean z) {
            TransferManagerFragment.this.m0(z);
        }

        @Override
        public void b(ArrayList arrayList, boolean z, boolean z2) {
            int size = arrayList.size();
            TransferManagerFragment.this.y.setChecked(z);
            if (size == 0) {
                TransferManagerFragment.this.r.setText(TransferManagerFragment.this.getString(R.string.none_select));
            } else {
                TransferManagerFragment.this.r.setText(TransferManagerFragment.this.getString(size > 1 ? R.string.items : R.string.item, Integer.valueOf(size)));
            }
        }

        @Override
        public void d(boolean z, int i, boolean z2) {
        }
    }

    public void d0(View view) {
        this.mActivity.onBackPressed();
    }

    public void e0(View view) {
        String stringExtra;
        Bundle bundle = new Bundle();
        if (getActivity().getIntent() != null) {
            stringExtra = getActivity().getIntent().getStringExtra("from");
            String stringExtra2 = getActivity().getIntent().getStringExtra("web_start_url");
            if (!TextUtils.isEmpty(stringExtra2)) {
                Intent intent = new Intent();
                intent.putExtra("web_start_url", stringExtra2);
                getActivity().setResult(1243, intent);
            }
        } else {
            stringExtra = null;
        }
        bundle.putString("from", stringExtra);
        BaseFragment baseFragment = (BaseFragment) ARouter.getInstance().build(VishaRouterTable.PATH_SERVICE_TOOLS_SETTINGFRAGEMENT).navigation();
        if (baseFragment != null) {
            baseFragment.setArguments(bundle);
            baseFragment.setBaseActivity(this.mActivity);
            a64.n(baseFragment, true, true);
        }
        cz5.e("cloud_transfer_setting_cl");
    }

    private void i0() {
        r06.b(this.mScreenType, "dl_manager_show", this.B);
    }

    public static TransferManagerFragment j0(String str, int i, boolean z, boolean z2) {
        TransferManagerFragment transferManagerFragment = new TransferManagerFragment();
        Bundle bundle = new Bundle();
        bundle.putString("from", str);
        bundle.putInt("go_download", i);
        bundle.putBoolean("need_scroll", z);
        bundle.putBoolean("support_theme_background", z2);
        transferManagerFragment.setArguments(bundle);
        return transferManagerFragment;
    }

    private void updateBackIcon(boolean z) {
        View view = this.t;
        if (view instanceof TextView) {
            ((TextView) view).setText(z ? R.string.os_close : R.string.os_back);
            this.t.setContentDescription(getString(z ? R.string.talkback_close : R.string.talkback_back));
        }
    }

    public int X() {
        return this.D;
    }

    public final BaseFragment Y(int i) {
        List list = this.o;
        if (list == null || list.isEmpty() || i < 0 || i >= this.o.size()) {
            return null;
        }
        return (BaseFragment) this.o.get(i);
    }

    public final void Z(View view) {
        final IBtDownloadService service = IBtDownloadService.ServiceInstance.getService();
        if (service == null) {
            LogUtils.m("visha_cloud_TransferManagerFragment", "get bt download service failed");
            return;
        }
        if (MMKV.p().e("mmkv_key_magnet_init", false) || GlobalDownloadManger.d) {
            FrameLayout frameLayout = (FrameLayout) view.findViewById(com.transsion.sniffer_load.R.id.fl_bt_enter);
            this.G = frameLayout;
            frameLayout.setVisibility(0);
            this.x = view.findViewById(com.transsion.sniffer_load.R.id.iv_bt_tag);
            ImageView imageView = (ImageView) view.findViewById(com.transsion.sniffer_load.R.id.iv_bt);
            imageView.setImageResource(com.transsion.sniffer_load.R.drawable.ic_bt_enter);
            hb0.markTrackSingle("vd_dl_manager_bt_show", "type", Integer.valueOf(MMKV.p().e("show_bt_guide", false) ? 1 : 0));
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.c0(service, view2);
                }
            });
            boolean z = MMKV.p().e("show_bt_guide", true) && service.hasTaskRunning();
            this.w.setVisibility(z ? 0 : 8);
            if (z) {
                this.w.measure(0, 0);
                this.w.setTriangleOffset((this.w.getMeasuredWidth() + com.transsion.utils.a.d(this.mContext, 12.0f)) - com.transsion.utils.a.d(this.mContext, 80.0f));
            }
        }
    }

    public final void a0() {
    }

    public void b0(View view) {
        this.r = (TextView) view.findViewById(com.transsion.sniffer_load.R.id.title_bar_title);
        String string = getResources().getString(zz0.d() ? R.string.visha_transfer_management : R.string.download_manager);
        this.v = string;
        this.r.setText(string);
        View viewFindViewById = view.findViewById(com.transsion.sniffer_load.R.id.title_bar_back);
        this.t = viewFindViewById;
        viewFindViewById.setContentDescription(getString(R.string.talkback_back));
        this.t.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.d0(view2);
            }
        });
        View viewFindViewById2 = view.findViewById(com.transsion.sniffer_load.R.id.iv_setting);
        this.u = viewFindViewById2;
        viewFindViewById2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.e0(view2);
            }
        });
        this.u.setContentDescription(getString(R.string.talkback_settings));
        this.u.setVisibility(0);
    }

    public final void c0(IBtDownloadService iBtDownloadService, View view) {
        iBtDownloadService.gotoTorrentDownloadActivity(this.mContext);
        hb0.markTrackSingle("vd_dl_manager_bt_cl", "type", Integer.valueOf(MMKV.p().e("show_bt_guide", false) ? 1 : 0));
        if (this.w.getVisibility() == 0) {
            MMKV.p().y("show_bt_guide", false);
        }
    }

    public final void g0(View view) {
        BaseFragment baseFragmentY = Y(this.p.getCurrentItem());
        if (baseFragmentY instanceof PlayBaseFragment) {
            ((PlayBaseFragment) baseFragmentY).selectAll(this.y.isChecked());
        }
    }

    public final void h0(boolean z, View view) {
        if (z) {
            m0(false);
        } else {
            this.mActivity.onBackPressed();
        }
    }

    public void f0() {
        CustomViewPager customViewPager;
        if (!this.E || (customViewPager = this.p) == null) {
            return;
        }
        customViewPager.setCurrentItem(1, true);
    }

    public final void l0() {
        this.o = new ArrayList();
        if (zz0.d()) {
            TransmitMainFragment transmitMainFragment = (TransmitMainFragment) TransmitMainFragment.u1(this.A, true).setBaseActivity(this.mActivity);
            transmitMainFragment.setEditModeListener(this.I);
            transmitMainFragment.setDragAnimationView(this.C);
            if (this.D == 0) {
                transmitMainFragment.x1(this.F);
            }
            this.o.add(transmitMainFragment);
        }
        TransmitMainFragment transmitMainFragment2 = (TransmitMainFragment) TransmitMainFragment.u1(this.A, false).setBaseActivity(this.mActivity);
        transmitMainFragment2.setEditModeListener(this.I);
        transmitMainFragment2.setDragAnimationView(this.C);
        if (this.D == 1) {
            transmitMainFragment2.x1(this.F);
        }
        this.o.add(transmitMainFragment2);
        this.m = getResources().getStringArray(com.transsion.sniffer_load.R.array.kt_menu);
        RtlPageAdapter rtlPageAdapter = new RtlPageAdapter(getChildFragmentManager(), this.o, this.m);
        this.n = rtlPageAdapter;
        this.p.setOffscreenPageLimit(rtlPageAdapter.getCount());
        this.p.setAdapter(this.n);
        this.q.setupWithViewPager(this.p);
        this.q.isFirstLevelTab(true);
        this.p.addOnPageChangeListener(this.H);
        this.p.setCurrentItem(this.D);
        this.p.post(new Runnable() {
            @Override
            public final void run() {
                this.b.f0();
            }
        });
    }

    public void m0(final boolean z) {
        Log.i("visha_cloud_TransferManagerFragment", "startEditMode: enter = " + z);
        this.z = z;
        ((MainViewModel) getViewModelByActivity(MainViewModel.class)).d.setValue(Boolean.valueOf(z));
        this.p.setCanScroll(z ^ true);
        this.q.setTabChildEnable(!z);
        this.q.setVisibility((z || !zz0.d()) ? 8 : 0);
        this.u.setVisibility(z ? 8 : 0);
        this.y.setVisibility(z ? 0 : 8);
        FrameLayout frameLayout = this.G;
        if (frameLayout != null) {
            frameLayout.setVisibility(z ? 8 : 0);
        }
        if (!z) {
            BaseFragment baseFragmentY = Y(this.p.getCurrentItem());
            if (baseFragmentY instanceof PlayBaseFragment) {
                ((PlayBaseFragment) baseFragmentY).editMode(false);
            }
            this.r.setText(this.v);
        }
        this.y.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.g0(view);
            }
        });
        if (this.t != null) {
            updateBackIcon(z);
            this.t.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.h0(z, view);
                }
            });
        }
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(screen_type, "dl_manager_show");
        }
    }

    public void n0(int i, boolean z) {
        if (!zz0.d()) {
            i = 0;
        }
        if (z && this.o != null && this.p != null) {
            try {
                Log.i("visha_cloud_TransferManagerFragment", "switchItem reset");
                m0(false);
                BaseFragment baseFragmentY = Y(this.p.getCurrentItem());
                if (baseFragmentY instanceof VideosBaseFragment) {
                    ((VideosBaseFragment) baseFragmentY).editMode(false);
                }
            } catch (Exception e) {
                Log.e("visha_cloud_TransferManagerFragment", "switchItem " + e);
            }
        }
        CustomViewPager customViewPager = this.p;
        if (customViewPager != null) {
            customViewPager.setCurrentItem(i, false);
        }
    }

    public void o0() {
        boolean zC = t08.c(this.mActivity);
        CustomTabLayout customTabLayout = this.q;
        int i = 8;
        if (customTabLayout != null) {
            customTabLayout.setVisibility((zC && zz0.d()) ? 0 : 8);
        }
        CustomViewPager customViewPager = this.p;
        if (customViewPager != null) {
            customViewPager.setVisibility(zC ? 0 : 8);
        }
        View view = this.u;
        if (view != null) {
            if (zC && !this.z) {
                i = 0;
            }
            view.setVisibility(i);
        }
    }

    @Override
    public boolean onBackPressed() {
        if (!this.z) {
            return super.onBackPressed();
        }
        m0(false);
        return true;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.B = arguments.getString("from", "0");
            this.D = arguments.getInt("go_download");
            if (!zz0.d()) {
                this.D = 0;
            }
            this.E = arguments.getBoolean("need_scroll");
            this.F = arguments.getBoolean("go_transfer_working", false);
            LogUtils.v("mNeedStartWorkingFragment: " + this.F);
            this.A = arguments.getBoolean("support_theme_background", true);
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.l = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.l = null;
        for (Fragment fragment : this.o) {
            if (fragment instanceof PlayBaseFragment) {
                PlayBaseFragment playBaseFragment = (PlayBaseFragment) fragment;
                playBaseFragment.setEditModeListener(null);
                playBaseFragment.setDragAnimationView(null);
            }
        }
        List list = this.o;
        if (list != null) {
            list.clear();
        }
        CustomViewPager customViewPager = this.p;
        if (customViewPager != null) {
            customViewPager.setAdapter(null);
            this.p.removeOnPageChangeListener(this.H);
        }
    }

    @Override
    public int onLayoutId() {
        return com.transsion.sniffer_load.R.layout.fragment_download_manager;
    }

    @Override
    public void onResume() {
        super.onResume();
        View view = this.x;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.A) {
            backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(com.transsion.sniffer_load.R.dimen.video_main_activity_fragment_top_padding));
        }
        this.C = (ConstraintLayout) view.findViewById(com.transsion.sniffer_load.R.id.cl_drag_animation_view);
        this.p = (CustomViewPager) view.findViewById(com.transsion.sniffer_load.R.id.viewpager);
        this.q = (CustomTabLayout) view.findViewById(com.transsion.sniffer_load.R.id.tab_layout);
        this.y = (CheckBox) view.findViewById(com.transsion.sniffer_load.R.id.title_bar_checkBox);
        this.s = (TextView) view.findViewById(com.transsion.sniffer_load.R.id.tv_size_info);
        this.w = (BubbleTextView) view.findViewById(com.transsion.sniffer_load.R.id.bt_guide_bubble);
        this.s.setVisibility(8);
        if (!zz0.d()) {
            this.q.setVisibility(8);
        }
        b0(view);
        l0();
        i0();
        a0();
        Z(view);
    }

    @Override
    public BaseFragment setBaseActivity(BaseActivity baseActivity) {
        return super.setBaseActivity(baseActivity);
    }
}
