package com.transsion.sniffer_load.fragment;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.WindowInfoViewModel;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.sniffer_load.DownloadGuideActivity;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.adapter.GuideImageViewPagerAdapter;
import com.transsion.utils.BaseConstant;
import com.transsion.widgetslib.view.OSBigButton;
import defpackage.olb;
import defpackage.p06;
import defpackage.r06;
import defpackage.woc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DownloadGuideFragment extends BaseFragment implements View.OnClickListener {
    public static final Integer[] G = {Integer.valueOf(R.drawable.ic_download_image_fold_1), Integer.valueOf(R.drawable.ic_download_image_fold_2), Integer.valueOf(R.drawable.ic_download_image_fold_3)};
    public static final Integer[] H = {Integer.valueOf(R.drawable.ic_download_image_open1), Integer.valueOf(R.drawable.ic_download_image_open2), Integer.valueOf(R.drawable.ic_download_image_open3)};
    public static final Integer[] I = {Integer.valueOf(R.drawable.ic_download_image_tablet_1), Integer.valueOf(R.drawable.ic_download_image_tablet_2), Integer.valueOf(R.drawable.ic_download_image_tablet_3)};
    public LinearLayout.LayoutParams A;
    public LinearLayout.LayoutParams B;
    public LinearLayout.LayoutParams C;
    public MainViewModel D;
    public ViewPager2 l;
    public LinearLayout m;
    public LinearLayout n;
    public GuideImageViewPagerAdapter o;
    public boolean p;
    public TextView s;
    public TextView t;
    public Button u;
    public LinearLayout.LayoutParams y;
    public LinearLayout.LayoutParams z;
    public List q = new ArrayList();
    public int r = 0;
    public boolean v = false;
    public boolean w = false;
    public Boolean x = null;
    public final Observer E = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.lambda$new$0((Boolean) obj);
        }
    };
    public ViewPager2.OnPageChangeCallback F = new a();

    public class a extends ViewPager2.OnPageChangeCallback {
        public a() {
        }

        @Override
        public void onPageSelected(int i) {
            super.onPageSelected(i);
            DownloadGuideFragment.this.m.getChildAt(DownloadGuideFragment.this.r).setSelected(false);
            DownloadGuideFragment.this.m.getChildAt(i).setSelected(true);
            DownloadGuideFragment.this.r = i;
            r06.a(((BaseFragment) DownloadGuideFragment.this).mScreenType, DownloadGuideFragment.this.r + 1);
            if (i == 0) {
                DownloadGuideFragment.this.u.setText(R.string.download_guide_button_1);
                DownloadGuideFragment.this.s.setText(R.string.download_search_hint);
                return;
            }
            if (i == 1) {
                DownloadGuideFragment.this.u.setText(R.string.download_guide_button_1);
                DownloadGuideFragment.this.s.setText(R.string.download_guide_hint_2_a);
            } else if (i == 2) {
                DownloadGuideFragment.this.u.setText(R.string.go_download);
                DownloadGuideFragment.this.s.setText(R.string.download_guide_hint_3);
            } else {
                if (i != 3) {
                    return;
                }
                DownloadGuideFragment.this.u.setText(R.string.go_download);
                DownloadGuideFragment.this.s.setText(R.string.download_guide_hint_4);
            }
        }
    }

    private void addBottomBarShowStateObserver() {
        MainViewModel mainViewModel = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.D = mainViewModel;
        mainViewModel.g.observe(getViewLifecycleOwner(), this.E);
        notifyVideoBarShowStateChange(Boolean.TRUE.equals(this.D.g.getValue()));
    }

    public static DownloadGuideFragment f0(Bundle bundle) {
        DownloadGuideFragment downloadGuideFragment = new DownloadGuideFragment();
        downloadGuideFragment.setArguments(bundle);
        return downloadGuideFragment;
    }

    public void lambda$new$0(Boolean bool) {
        notifyVideoBarShowStateChange(Boolean.TRUE.equals(bool));
    }

    public final void Y() {
        int i;
        if (this.n == null || this.mContext == null) {
            return;
        }
        if (this.w && d0()) {
            i = 60;
        } else {
            i = (this.w && isFoldScreen()) ? 20 : 0;
        }
        int iD = com.transsion.utils.a.d(this.mContext, i);
        if (this.n.getPaddingBottom() != iD) {
            LinearLayout linearLayout = this.n;
            linearLayout.setPadding(linearLayout.getPaddingStart(), this.n.getPaddingTop(), this.n.getPaddingEnd(), iD);
        }
    }

    public final void Z() {
        float f;
        View view;
        float f2;
        if (this.u == null) {
            return;
        }
        try {
            BaseConstant.SCREEN_TYPE screen_type = this.mScreenType;
            boolean z = screen_type == BaseConstant.SCREEN_TYPE.FOLD;
            boolean z2 = screen_type == BaseConstant.SCREEN_TYPE.TABLE;
            boolean z3 = getResources().getConfiguration().orientation == 2;
            boolean zD0 = d0();
            float f3 = 0.0f;
            if (z2 && this.p && (view = getView()) != null) {
                int iD = com.transsion.utils.a.d(this.mContext, 108.0f);
                if (!z3 || c0()) {
                    f2 = 0.0f;
                } else {
                    if (!olb.l0()) {
                        iD = -iD;
                    }
                    f2 = iD;
                }
                view.setTranslationX(f2);
            }
            if (this.p) {
                b0(I);
            } else {
                b0(z ? G : H);
            }
            if (z) {
                this.B.setMarginEnd(com.transsion.utils.a.d(this.mContext, 24.0f));
                this.B.topMargin = com.transsion.utils.a.d(this.mContext, 16.0f);
                this.y.width = com.transsion.utils.a.d(this.mContext, 216.0f);
                this.C.topMargin = com.transsion.utils.a.d(this.mContext, 38.0f);
                this.y.topMargin = com.transsion.utils.a.d(this.mContext, zD0 ? 0.0f : 25.0f);
                LinearLayout.LayoutParams layoutParams = this.y;
                Context context = this.mContext;
                if (!zD0) {
                    f3 = 50.0f;
                }
                layoutParams.bottomMargin = com.transsion.utils.a.d(context, f3);
                this.z.topMargin = com.transsion.utils.a.d(this.mContext, 50.0f);
            } else {
                if (z2 && this.p) {
                    Button button = this.u;
                    if (button instanceof OSBigButton) {
                        ((OSBigButton) button).setMinButtonHeightDp(46);
                    }
                    this.B.setMarginEnd(com.transsion.utils.a.d(this.mContext, z3 ? 49.0f : 24.0f));
                    this.B.topMargin = com.transsion.utils.a.d(this.mContext, z3 ? 20.0f : 54.0f);
                    this.y.width = com.transsion.utils.a.d(this.mContext, z3 ? 246.0f : 141.0f);
                    this.y.height = com.transsion.utils.a.d(this.mContext, 44.0f);
                    this.y.topMargin = com.transsion.utils.a.d(this.mContext, 0.0f);
                    LinearLayout.LayoutParams layoutParams2 = this.y;
                    Context context2 = this.mContext;
                    if (zD0) {
                        f = 0.0f;
                    } else {
                        f = z3 ? 172 : TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL;
                    }
                    layoutParams2.bottomMargin = com.transsion.utils.a.d(context2, f);
                    LinearLayout.LayoutParams layoutParams3 = this.C;
                    Context context3 = this.mContext;
                    if (!z3) {
                        f3 = 13.0f;
                    }
                    layoutParams3.topMargin = com.transsion.utils.a.d(context3, f3);
                    this.z.topMargin = com.transsion.utils.a.d(this.mContext, 45.0f);
                } else {
                    this.B.setMarginEnd(com.transsion.utils.a.d(this.mContext, z3 ? 49.0f : 24.0f));
                    this.B.topMargin = com.transsion.utils.a.d(this.mContext, z3 ? 20.0f : 54.0f);
                    this.y.width = com.transsion.utils.a.d(this.mContext, z3 ? 352.0f : 306.0f);
                    this.y.topMargin = com.transsion.utils.a.d(this.mContext, 0.0f);
                    this.y.bottomMargin = com.transsion.utils.a.d(this.mContext, (z3 || zD0) ? 0.0f : 70.0f);
                    LinearLayout.LayoutParams layoutParams4 = this.C;
                    Context context4 = this.mContext;
                    if (!z3) {
                        f3 = 13.0f;
                    }
                    layoutParams4.topMargin = com.transsion.utils.a.d(context4, f3);
                    this.z.topMargin = com.transsion.utils.a.d(this.mContext, 45.0f);
                }
            }
            this.A.topMargin = com.transsion.utils.a.d(this.mContext, 11.0f);
            this.l.setLayoutParams(this.C);
            this.t.setLayoutParams(this.B);
            this.m.setLayoutParams(this.z);
            this.s.setLayoutParams(this.A);
            this.u.setLayoutParams(this.y);
            Y();
        } catch (Exception e) {
            Log.e("DownloadGuideFragment", "initGuideLayoutRes " + e);
        }
    }

    public void a0() {
        int itemCount = this.o.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            ImageView imageView = new ImageView(this.mContext);
            imageView.setImageResource(R.drawable.ic_page_dot);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(com.transsion.utils.a.d(this.mContext, 16.0f), com.transsion.utils.a.d(this.mContext, 16.0f));
            this.q.add(imageView);
            this.m.addView(imageView, layoutParams);
        }
    }

    public void b0(Integer[] numArr) {
        ViewPager2 viewPager2 = this.l;
        if (viewPager2 != null) {
            viewPager2.unregisterOnPageChangeCallback(this.F);
        }
        this.o = new GuideImageViewPagerAdapter();
        this.o.d(Arrays.asList(numArr));
        this.l.setAdapter(this.o);
        this.l.registerOnPageChangeCallback(this.F);
        int i = this.r;
        if (i <= 0 || i >= this.o.getItemCount()) {
            return;
        }
        this.l.setCurrentItem(this.r, false);
    }

    public boolean c0() {
        return this.mActivity instanceof DownloadGuideActivity;
    }

    public final boolean d0() {
        boolean z = this.mActivity != null && this.mActivity.isInSplitScreen(false);
        BaseActivity baseActivity = this.mActivity;
        return z || (baseActivity != null && baseActivity.isInMultiWindowMode());
    }

    public final void e0(woc wocVar) {
        boolean z = wocVar != null && wocVar.c;
        Boolean bool = this.x;
        if (bool != null && bool.booleanValue() == z) {
            Y();
        } else {
            this.x = Boolean.valueOf(z);
            Z();
        }
    }

    public final void g0() {
        WindowInfoViewModel windowInfoViewModel;
        if (this.mActivity == null || (windowInfoViewModel = this.mActivity.mWindowInfoViewModel) == null) {
            return;
        }
        windowInfoViewModel.a.observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.e0((woc) obj);
            }
        });
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            r06.c(screen_type, "guide_dl_lp_show");
        }
    }

    public void notifyVideoBarShowStateChange(boolean z) {
        Log.d("DownloadGuideFragment", "notifyVideoBarShowStateChange :" + z);
        this.w = z;
        Y();
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.tv_skip) {
            this.mActivity.onBackPressed();
            p06.o(this.r + 1);
        } else if (id == R.id.btn_guide) {
            int currentItem = this.l.getCurrentItem() + 1;
            p06.p(this.r + 1);
            if (currentItem >= this.o.getItemCount()) {
                if (this.v) {
                    this.mActivity.finish();
                    RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(0).withParam(new RouterBean.RouterData(3, 1)).build(), this.mContext, true);
                } else {
                    this.mActivity.onBackPressed();
                }
            }
            this.l.setCurrentItem(currentItem);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Z();
        this.l.post(new Runnable() {
            @Override
            public void run() {
                DownloadGuideFragment.this.l.setCurrentItem(DownloadGuideFragment.this.r, false);
            }
        });
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.p = com.transsion.utils.a.A();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.l.unregisterOnPageChangeCallback(this.F);
        LiveEventBus liveEventBusB = LiveEventBus.b();
        Boolean bool = Boolean.FALSE;
        liveEventBusB.c("skip_download_guide", bool);
        LiveEventBus.b().c("show_full_screen_guide", bool);
        MainViewModel mainViewModel = this.D;
        if (mainViewModel != null) {
            mainViewModel.g.removeObserver(this.E);
        }
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        Z();
    }

    @Override
    public int onLayoutId() {
        return com.transsion.utils.a.A() ? R.layout.fragment_download_guide_tablet : R.layout.fragment_download_guide;
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        Z();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        this.l = (ViewPager2) view.findViewById(R.id.vp_guide_image);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_page_dots);
        this.m = linearLayout;
        linearLayout.setOnClickListener(this);
        TextView textView = (TextView) view.findViewById(R.id.tv_skip);
        this.t = textView;
        textView.setOnClickListener(this);
        this.s = (TextView) view.findViewById(R.id.tv_guide_hint);
        this.u = (Button) view.findViewById(R.id.btn_guide);
        this.n = (LinearLayout) view.findViewById(R.id.guide_layout);
        this.y = (LinearLayout.LayoutParams) this.u.getLayoutParams();
        this.z = (LinearLayout.LayoutParams) this.m.getLayoutParams();
        this.B = (LinearLayout.LayoutParams) this.t.getLayoutParams();
        this.y = (LinearLayout.LayoutParams) this.u.getLayoutParams();
        this.C = (LinearLayout.LayoutParams) this.l.getLayoutParams();
        this.A = (LinearLayout.LayoutParams) this.s.getLayoutParams();
        this.u.setOnClickListener(this);
        Z();
        a0();
        addBottomBarShowStateObserver();
        g0();
        LiveEventBus.b().c("show_full_screen_guide", Boolean.TRUE);
        this.l.setCurrentItem(this.o.getItemCount() - 1, false);
        this.l.setCurrentItem(0, false);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.v = arguments.getBoolean("need_guide");
        }
    }

    @Override
    public BaseFragment setBaseActivity(BaseActivity baseActivity) {
        return super.setBaseActivity(baseActivity);
    }
}
