package com.transsion.magicmovie.fragments;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.android.arouter.launcher.ARouter;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.audio.fragments.AudioMainFragment;
import com.transsion.cloud.fragment.CloudFragment;
import com.transsion.data.Repository;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicmovie.R;
import com.transsion.magicmovie.activity.VideoPlayerMainActivity;
import com.transsion.magicmovie.fragments.PlayerMainFragment;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.fragments.VideoMainFragment;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.PagerAdapter2;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlaceholderFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.tranquestion.VishaQuestionnaireManager;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.widgets.SearchFileView;
import com.transsion.sniffer_load.DownloadGuideActivity;
import com.transsion.sniffer_load.fragment.DownloadMainFragmentNew;
import com.transsion.tools.fragments.ToolsFragment;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.BubbleTextView;
import com.transsion.widgetslib.util.search.SearchAnimManager;
import defpackage.adc;
import defpackage.c06;
import defpackage.d39;
import defpackage.dz5;
import defpackage.f5;
import defpackage.h27;
import defpackage.o06;
import defpackage.p06;
import defpackage.pp3;
import defpackage.rcc;
import defpackage.se;
import defpackage.ua8;
import defpackage.w6c;
import defpackage.ydc;
import defpackage.zz0;
import java.util.ArrayList;
import java.util.List;

public class PlayerMainFragment extends BaseFragment {
    public static int V;
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public long G;
    public com.transsion.sniffer_load.a I;
    public Runnable L;
    public int N;
    public String O;
    public PagerAdapter2.a P;
    public boolean R;
    public ViewPager2 l;
    public PagerAdapter2 m;
    public List o;
    public View p;
    public SearchFileView q;
    public SearchFileView.f r;
    public int s;
    public boolean t;
    public boolean u;
    public View v;
    public MainViewModel y;
    public boolean z;
    public int n = 0;
    public int w = 3;
    public int x = 2;
    public boolean H = false;
    public boolean J = false;
    public boolean K = false;
    public int M = -1;
    public int Q = 0;
    public final PlayBaseFragment.e S = new PlayBaseFragment.e() {
        @Override
        public final void a(int i) {
            this.a.V0(i);
        }
    };
    public final PlayBaseFragment.d T = new a();
    public ViewPager2.OnPageChangeCallback U = new d();

    public class a implements PlayBaseFragment.d {
        public a() {
        }

        @Override
        public void a(boolean z) {
            PlayerMainFragment.this.A = z;
            PlayerMainFragment.this.a1();
        }

        @Override
        public void b(ArrayList arrayList, boolean z, boolean z2) {
            ((BaseFragment) PlayerMainFragment.this).mActivity.selectItems(arrayList, z, z2);
        }

        @Override
        public void c(boolean z, int i) {
            ((BaseFragment) PlayerMainFragment.this).mActivity.enterCloudUploadEditMode(z, i);
        }

        @Override
        public void d(boolean z, int i, boolean z2) {
            PlayerMainFragment.this.A = z;
            PlayerMainFragment.this.s = i;
            PlayerMainFragment.this.t = z2;
            ((BaseFragment) PlayerMainFragment.this).mActivity.enterEditMode(z, i, z2);
            PlayerMainFragment.this.a1();
        }
    }

    public class b implements SearchFileView.f {
        public b() {
        }

        @Override
        public void b() {
            PlayerMainFragment.this.y.a.setValue(Boolean.FALSE);
        }

        @Override
        public void c(MediaItem mediaItem) {
            o06.e(o06.f);
            PlayerMainFragment.this.o1(mediaItem, 2);
        }

        @Override
        public void d(MediaItem mediaItem) {
            PlayerMainFragment.this.n1((AudioItem) mediaItem);
        }
    }

    public class c implements PagerAdapter2.a {
        public final List a;

        public c(List list) {
            this.a = list;
        }

        @Override
        public BaseFragment create(int i) {
            BaseFragment baseFragmentCreate = ((e) this.a.get(i)).create();
            if (i >= 0 && i < PlayerMainFragment.this.o.size()) {
                PlayerMainFragment.this.o.set(i, baseFragmentCreate);
            }
            return baseFragmentCreate;
        }

        @Override
        public int getCount() {
            return this.a.size();
        }
    }

    public class d extends ViewPager2.OnPageChangeCallback {
        public d() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            FragmentActivity activity = PlayerMainFragment.this.getActivity();
            dz5.a = activity instanceof VideoPlayerMainActivity ? !((VideoPlayerMainActivity) activity).mFromGuide ? 1 : 0 : 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageSelected(int i) {
            BaseFragment baseFragmentG0;
            Integer num;
            PlayerMainFragment.this.n = i;
            if (PlayerMainFragment.this.m != null) {
                PlayerMainFragment.this.m.t(i);
            }
            if (((BaseFragment) PlayerMainFragment.this).mActivity instanceof VideoPlayerMainActivity) {
                ((VideoPlayerMainActivity) ((BaseFragment) PlayerMainFragment.this).mActivity).onMainTabSelected(i);
            }
            Repository repository = Repository.INSTANCE;
            if (repository.mainTab != i) {
                repository.mainTab = i;
            }
            if (PlayerMainFragment.this.y != null && ((num = (Integer) PlayerMainFragment.this.y.b.getValue()) == null || num.intValue() != i)) {
                PlayerMainFragment.this.y.b.setValue(Integer.valueOf(i));
            }
            if (PlayerMainFragment.this.n == PlayerMainFragment.this.w && PlayerMainFragment.this.u) {
                PlayerMainFragment playerMainFragment = PlayerMainFragment.this;
                if (!playerMainFragment.H) {
                    playerMainFragment.j1();
                }
            }
            if (PlayerMainFragment.this.z) {
                ((BaseFragment) PlayerMainFragment.this).mActivity.changeBackgroundForOnlineVideo(i == PlayerMainFragment.this.x, i);
                if (i == PlayerMainFragment.this.x) {
                    PlayerMainFragment.this.I0();
                }
            }
            PlayerMainFragment.this.d1(i);
            BaseFragment baseFragmentG1 = PlayerMainFragment.this.G0(i);
            if (baseFragmentG1 != null) {
                baseFragmentG1.onSelectInViewPage();
                for (int i2 = 0; i2 < PlayerMainFragment.this.H0(); i2++) {
                    if (i != i2 && (baseFragmentG0 = PlayerMainFragment.this.G0(i2)) != null && baseFragmentG0.mIsSelectByViewPager) {
                        baseFragmentG0.onUnSelectInViewPage();
                    }
                }
            }
        }
    }

    public interface e {
        BaseFragment create();
    }

    public BaseFragment G0(int i) {
        BaseFragment baseFragmentU;
        BaseFragment baseFragment;
        if (i >= 0 && i < H0()) {
            List list = this.o;
            if (list != null && i < list.size() && (baseFragment = (BaseFragment) this.o.get(i)) != null) {
                return baseFragment;
            }
            PagerAdapter2 pagerAdapter2 = this.m;
            if (pagerAdapter2 != null && (baseFragmentU = pagerAdapter2.u(i)) != null) {
                List list2 = this.o;
                if (list2 != null && i < list2.size()) {
                    this.o.set(i, baseFragmentU);
                }
                return baseFragmentU;
            }
        }
        return null;
    }

    private void K0() {
        PagerAdapter2 pagerAdapter2 = new PagerAdapter2(getChildFragmentManager(), this.mActivity.getLifecycle());
        this.m = pagerAdapter2;
        pagerAdapter2.v(this.P);
        int iH0 = H0();
        if (iH0 > 1) {
            this.l.setOffscreenPageLimit(iH0 - 1);
        }
        rcc.c(this.l, this.m, this.U, new Runnable() {
            @Override
            public final void run() {
                this.b.U0();
            }
        });
        g1(Repository.INSTANCE.mainTab, false, getFromSource(), false);
        int currentItem = this.l.getCurrentItem();
        PagerAdapter2 pagerAdapter3 = this.m;
        if (pagerAdapter3 != null) {
            pagerAdapter3.t(currentItem);
        }
        BaseActivity baseActivity = this.mActivity;
        if (!this.z && currentItem >= this.x) {
            currentItem--;
        }
        baseActivity.changeTabOperationBarItem(currentItem);
        if (!isAdded() || getResources() == null) {
            return;
        }
        this.Q = getResources().getConfiguration().orientation;
    }

    public static void S0(int i) {
        h27.c().e(1101, Integer.valueOf(i));
    }

    public final void C0() {
        ViewPager2 viewPager2;
        PagerAdapter2 pagerAdapter2 = this.m;
        if (pagerAdapter2 == null || (viewPager2 = this.l) == null) {
            return;
        }
        pagerAdapter2.t(viewPager2.getCurrentItem());
    }

    public final void D0() {
        int i = this.M;
        if (i >= 0) {
            int i2 = this.N;
            String str = this.O;
            this.M = -1;
            k1(i, i2, str);
        }
    }

    public final void E0() {
        ArrayList arrayList = new ArrayList();
        Log.i("PlayerMainFragment", "buildMainTabFactory isOSVersionPackage:" + ydc.e() + ",isSupportCloudDisk:" + zz0.d());
        arrayList.add(new e() {
            @Override
            public final BaseFragment create() {
                return this.a.M0();
            }
        });
        arrayList.add(new e() {
            @Override
            public final BaseFragment create() {
                return this.a.N0();
            }
        });
        arrayList.add(new e() {
            @Override
            public final BaseFragment create() {
                return this.a.O0();
            }
        });
        if (pp3.w && zz0.d()) {
            arrayList.add(new e() {
                @Override
                public final BaseFragment create() {
                    return this.a.P0();
                }
            });
        } else if (pp3.k) {
            arrayList.add(new e() {
                @Override
                public final BaseFragment create() {
                    return this.a.Q0();
                }
            });
        }
        arrayList.add(new e() {
            @Override
            public final BaseFragment create() {
                return this.a.R0();
            }
        });
        this.o = new ArrayList(arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            this.o.add(null);
        }
        this.P = new c(arrayList);
    }

    public int F0() {
        ViewPager2 viewPager2 = this.l;
        if (viewPager2 == null) {
            return 0;
        }
        return viewPager2.getCurrentItem();
    }

    public final int H0() {
        PagerAdapter2.a aVar = this.P;
        if (aVar != null) {
            return aVar.getCount();
        }
        List list = this.o;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public void I0() {
        View view = this.v;
        if (view != null) {
            this.C = false;
            view.setVisibility(8);
            w6c.r(this.mContext, "need_online_guide", false);
        }
    }

    public void J0() {
        if (pp3.b) {
            return;
        }
        if (!this.D) {
            View view = this.v;
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        if (this.v == null) {
            this.v = ((ViewStub) this.p.findViewById(R.id.download_bubble_guide)).inflate();
        }
        this.v.setVisibility(4);
        final BubbleTextView bubbleTextView = (BubbleTextView) this.v.findViewById(R.id.tv_bubble);
        bubbleTextView.setText(R.string.online_bubble_guide);
        bubbleTextView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public boolean onPreDraw() {
                bubbleTextView.getViewTreeObserver().removeOnPreDrawListener(this);
                if (!PlayerMainFragment.this.isAdded()) {
                    return false;
                }
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) bubbleTextView.getLayoutParams();
                int width = bubbleTextView.getWidth();
                if (width == 0) {
                    return true;
                }
                int iA = d39.a(PlayerMainFragment.this.requireContext(), 10.0f);
                int width2 = (((View) bubbleTextView.getParent()).getWidth() - iA) - iA;
                LogUtils.j("PlayerMainFragment", "padding:" + iA, "total:" + width2, "x:5", "marginstart:" + PlayerMainFragment.V, "w:" + width);
                PlayerMainFragment.V = 0;
                PlayerMainFragment.this.v.setBackgroundResource(R.color.transparent);
                layoutParams.setMarginStart(PlayerMainFragment.V);
                bubbleTextView.setLayoutParams(layoutParams);
                PlayerMainFragment.this.v.setVisibility(0);
                ThreadUtils.o().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        PlayerMainFragment.this.I0();
                    }
                }, 5000L);
                return true;
            }
        });
        this.C = true;
        p06.f0(null, "dl_bubble_show", 9324L);
    }

    public boolean L0() {
        SearchFileView searchFileView = this.q;
        if ((searchFileView != null && searchFileView.getVisibility() == 0) || this.A || this.B || this.K) {
            return false;
        }
        if (this.l == null || H0() == 0) {
            return true;
        }
        BaseFragment baseFragmentG0 = G0(this.l.getCurrentItem());
        return baseFragmentG0 == null || !baseFragmentG0.peekConsumeBack();
    }

    public final BaseFragment M0() {
        BaseFragment baseActivity = new VideoMainFragment().setBaseActivity(this.mActivity);
        VideoMainFragment videoMainFragment = (VideoMainFragment) baseActivity;
        videoMainFragment.setSearchListener(this.S);
        videoMainFragment.setEditModeListener(this.T);
        return baseActivity;
    }

    public final BaseFragment N0() {
        BaseFragment baseActivity = new AudioMainFragment().setBaseActivity(this.mActivity);
        AudioMainFragment audioMainFragment = (AudioMainFragment) baseActivity;
        audioMainFragment.setSearchListener(this.S);
        audioMainFragment.setEditModeListener(this.T);
        baseActivity.setMenuShowListener(this.mMenuShowListener);
        return baseActivity;
    }

    public final BaseFragment O0() {
        BaseFragment baseFragment = (BaseFragment) ARouter.getInstance().build(VishaRouterTable.PATH_PAGE_FRAGMENT_ONLINE_HOME).navigation();
        return (baseFragment == null || !this.z) ? new PlaceholderFragment().setBaseActivity(this.mActivity) : baseFragment.setBaseActivity(this.mActivity);
    }

    public final BaseFragment P0() {
        se.b().post(new Runnable() {
            @Override
            public final void run() {
                te.c();
            }
        });
        BaseFragment baseActivity = new CloudFragment().setBaseActivity(this.mActivity);
        PlayBaseFragment playBaseFragment = (PlayBaseFragment) baseActivity;
        playBaseFragment.setSearchListener(this.S);
        playBaseFragment.setEditModeListener(this.T);
        BaseActivity baseActivity2 = this.mActivity;
        if (baseActivity2 instanceof VideoPlayerMainActivity) {
            ((VideoPlayerMainActivity) baseActivity2).checkFootOperationBar();
        }
        return baseActivity;
    }

    public final BaseFragment Q0() {
        BaseFragment baseActivity = new DownloadMainFragmentNew().setBaseActivity(this.mActivity);
        ((PlayBaseFragment) baseActivity).setEditModeListener(this.T);
        return baseActivity;
    }

    public final BaseFragment R0() {
        return new ToolsFragment().setBaseActivity(this.mActivity);
    }

    public final void T0() {
        this.l.setOffscreenPageLimit(this.m.getItemCount());
        C0();
    }

    public final void U0() {
        ViewPager2 viewPager2;
        PagerAdapter2 pagerAdapter2 = this.m;
        if (pagerAdapter2 == null || (viewPager2 = this.l) == null) {
            return;
        }
        pagerAdapter2.t(viewPager2.getCurrentItem());
    }

    public final void V0(int i) {
        this.y.a.setValue(Boolean.TRUE);
        p1(i);
        p06.J(i);
    }

    public final void W0() {
        if (isAdded()) {
            if (getResources() != null) {
                this.Q = getResources().getConfiguration().orientation;
            }
            C0();
            e1();
        }
    }

    public final void X0(int i) {
        String str;
        if (i == 0) {
            str = "vd_video_tab_cl";
        } else if (i == 1) {
            str = "vd_audio_tab_cl";
        } else if (i != 3) {
            str = i != 4 ? "" : "vd_more_tab_cl";
        } else {
            str = "vd_download_tab_cl";
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        p06.f0(null, str, 9324L);
    }

    public final void Y0(int i, boolean z) {
        if (TextUtils.isEmpty(i != 2 ? "" : "vd_ott_cl")) {
            return;
        }
        c06.l(z ? 2 : 1);
    }

    public final boolean Z0() {
        if (!isAdded() || getResources() == null) {
            return this.R;
        }
        return this.R || getResources().getConfiguration().orientation != this.Q;
    }

    public final void a1() {
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity != null) {
            baseActivity.onBackNavigationStateChanged();
        }
    }

    public void b1() {
        h27.c().e(1114, new Object[0]);
    }

    public void c1(int i) {
        Log.e("PlayerMainFragment", "onFootOptBarClickListener index：" + i);
        if (this.n != i) {
            X0(i);
        }
        ViewPager2 viewPager2 = this.l;
        if (viewPager2 != null) {
            if (viewPager2.getCurrentItem() != i) {
                g1(i, false, "tabcl", true);
            } else if (i >= 0 && i < H0()) {
                if (System.currentTimeMillis() - this.G <= 300) {
                    BaseFragment baseFragmentG0 = G0(i);
                    if (baseFragmentG0 != null) {
                        baseFragmentG0.refresh();
                    }
                    Y0(i, true);
                } else {
                    BaseFragment baseFragmentG1 = G0(i);
                    if (baseFragmentG1 != null) {
                        baseFragmentG1.scrollToTop();
                    }
                    Y0(i, false);
                }
            }
        }
        this.G = System.currentTimeMillis();
    }

    public final void d1(int i) {
        BaseFragment baseFragmentG0 = G0(i);
        if (baseFragmentG0 != null) {
            if (baseFragmentG0 instanceof VideoMainFragment) {
                VishaQuestionnaireManager.c().k(getActivity(), baseFragmentG0.getClass().getSimpleName());
            } else {
                VishaQuestionnaireManager.c().j(getActivity(), baseFragmentG0.getClass().getSimpleName());
            }
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        int i2;
        PagerAdapter2 pagerAdapter2;
        super.didReceivedNotification(i, objArr);
        if (i == 1059) {
            h27.c().e(1060, Boolean.valueOf(this.u));
            LiveEventBus.b().c("go_download_tab", Boolean.TRUE);
            return;
        }
        if (i == 1064) {
            this.l.setCurrentItem(0, true);
            this.mActivity.changeTabOperationBarItem(0);
            k1(0, 0, "");
            return;
        }
        if (i == 1097) {
            this.l.setCurrentItem(1, true);
            this.mActivity.changeTabOperationBarItem(0);
            k1(1, 1, "");
            return;
        }
        if (i == 1100) {
            final int iIntValue = ((Integer) objArr[0]).intValue();
            if (iIntValue != 0 && this.o != null) {
                BaseFragment baseFragmentG0 = G0(0);
                this.l.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        PlayerMainFragment.S0(iIntValue);
                    }
                }, (baseFragmentG0 == null || !baseFragmentG0.isAdded()) ? 1000L : 0L);
            }
            if (iIntValue == 18) {
                i2 = 1;
            } else {
                i2 = iIntValue == 29 ? 7 : 0;
            }
            this.l.setCurrentItem(1, false);
            this.mActivity.changeTabOperationBarItem(0);
            k1(1, i2, "widget_audio_tab");
            return;
        }
        if (i == 1128) {
            this.K = false;
            a1();
            return;
        }
        if (i == 1142) {
            this.B = ((Boolean) objArr[0]).booleanValue();
            return;
        }
        if (i != 1143 || this.l == null || (pagerAdapter2 = this.m) == null || pagerAdapter2.getItemCount() <= 0 || this.J) {
            return;
        }
        this.J = true;
        ThreadUtils.o().post(new Runnable() {
            @Override
            public final void run() {
                this.b.T0();
            }
        });
    }

    public final void e1() {
        BaseFragment baseFragmentG0;
        ViewPager2 viewPager2 = this.l;
        if (viewPager2 == null || (baseFragmentG0 = G0(viewPager2.getCurrentItem())) == null) {
            return;
        }
        baseFragmentG0.realignNestedViewPagersIfNeeded();
    }

    public void f1() {
        if (this.B) {
            ViewPager2 viewPager2 = this.l;
            BaseFragment baseFragmentG0 = viewPager2 != null ? G0(viewPager2.getCurrentItem()) : null;
            if (baseFragmentG0 instanceof PlayBaseFragment) {
                ((PlayBaseFragment) baseFragmentG0).startDragMode(false, this.s, this.t);
            }
            this.B = false;
            a1();
        }
    }

    public void g1(int i, boolean z, String str, boolean z2) {
        if (this.P == null && this.o == null) {
            return;
        }
        Log.d("PlayerMainFragment", "setCurrentItem: index = " + i);
        if (i < 0 || i >= H0()) {
            return;
        }
        BaseFragment baseFragmentG0 = G0(i);
        if (baseFragmentG0 != null) {
            baseFragmentG0.setFromSource(str);
        }
        ViewPager2 viewPager2 = this.l;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(i, z);
        }
    }

    public final void h1() {
        if (isAdded() && this.l != null && this.P == null) {
            E0();
            K0();
            D0();
        }
    }

    public final boolean i1() {
        return com.transsion.utils.a.D(this.mContext) || this.mScreenType == BaseConstant.SCREEN_TYPE.TABLE;
    }

    public void j1() {
        if (this.H || ydc.b) {
            return;
        }
        this.u = false;
        w6c.r(this.mContext, "need_download_guide", false);
        if (this.E) {
            f5.c(new Intent(this.mActivity, (Class<?>) DownloadGuideActivity.class), this.mActivity);
            return;
        }
        com.transsion.sniffer_load.a aVar = new com.transsion.sniffer_load.a();
        this.I = aVar;
        aVar.b(this.mContext);
    }

    public void k1(int i, int i2, String str) {
        if (i == this.x && !this.z) {
            i = this.w;
        }
        this.E = true;
        if (this.P == null) {
            this.M = i;
            this.N = i2;
            this.O = str;
            return;
        }
        if (i < 0 || i >= H0()) {
            i = 0;
        }
        g1(i, false, str, false);
        this.mActivity.changeTabOperationBarItem((this.z || i <= this.x) ? i : i - 1);
        BaseFragment baseFragmentG0 = G0(i);
        if (baseFragmentG0 != null) {
            baseFragmentG0.showSelectedTab(i2);
        }
    }

    public final void l1() {
        if (this.l == null || isHidden()) {
            this.R = true;
            return;
        }
        if (this.l.getVisibility() != 0) {
            this.l.setVisibility(0);
        }
        adc.s(this.l, this.l.getWidth(), new ua8(this));
    }

    public final void m1() {
        if (this.l == null || isHidden()) {
            this.R = true;
            return;
        }
        if (this.l.getVisibility() != 0) {
            this.l.setVisibility(0);
        }
        adc.u(this.l, new ua8(this));
    }

    public final void n1(AudioItem audioItem) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioDataConvertToPlayAudioData.listFlag = 21;
            playAudioDataConvertToPlayAudioData.autoPlay = true;
        }
        LiveEventBus.b().c("launch_audio_player_activity_from_audio_list", playAudioDataConvertToPlayAudioData);
    }

    @Override
    public boolean needAnimation() {
        return (SearchAnimManager.getInstance().x() || this.K) ? false : true;
    }

    public final void o1(MediaItem mediaItem, int i) {
        if (mediaItem == null) {
            return;
        }
        PlayVideoData playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(mediaItem);
        if (mediaItem.isPlayComplete) {
            playVideoDataConvertToPlayVideoData.playPosition = 0L;
        }
        playVideoDataConvertToPlayVideoData.setShowPicInPic(true);
        playVideoDataConvertToPlayVideoData.setNeedRecordVideoStates(true);
        playVideoDataConvertToPlayVideoData.setForceResetPlay(true);
        playVideoDataConvertToPlayVideoData.listFlag = i;
        if (VideoPlayManager.X().x0() && this.mActivity.isAlertWindowPermissionGranted()) {
            VideoPlayManager.X().o2(playVideoDataConvertToPlayVideoData);
        } else {
            VideoPlayerActivityInner.G2(playVideoDataConvertToPlayVideoData);
        }
    }

    @Override
    public boolean onBackPressed() {
        BaseFragment baseFragmentG0;
        SearchFileView searchFileView = this.q;
        if (searchFileView != null && searchFileView.getVisibility() == 0) {
            this.q.setVisibility(8);
            a1();
            return true;
        }
        if (!this.A) {
            if (this.B) {
                f1();
                return true;
            }
            ViewPager2 viewPager2 = this.l;
            if (viewPager2 == null || (baseFragmentG0 = G0(viewPager2.getCurrentItem())) == null || !baseFragmentG0.onBackPressed()) {
                return super.onBackPressed();
            }
            a1();
            return true;
        }
        ViewPager2 viewPager3 = this.l;
        BaseFragment baseFragmentG1 = viewPager3 != null ? G0(viewPager3.getCurrentItem()) : null;
        if (baseFragmentG1 != null) {
            if (pp3.k && this.l.getCurrentItem() == this.w && (baseFragmentG1 instanceof DownloadMainFragmentNew)) {
                ((DownloadMainFragmentNew) baseFragmentG1).stopEdit();
            } else if (baseFragmentG1 instanceof CloudFragment) {
                ((CloudFragment) baseFragmentG1).stopEdit();
            } else {
                BaseActivity baseActivity = this.mActivity;
                if (baseActivity != null) {
                    baseActivity.enterEditMode(false);
                }
                if (baseFragmentG1 instanceof PlayBaseFragment) {
                    ((PlayBaseFragment) baseFragmentG1).startEditMode(false, this.s, this.t);
                }
            }
        }
        a1();
        return true;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        com.transsion.sniffer_load.a aVar = this.I;
        if (aVar != null && aVar.a() != null) {
            this.I.a().g(configuration);
        }
        if (i1()) {
            if (isResumed() && !isHidden()) {
                l1();
            } else {
                this.Q = 0;
                this.R = true;
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogUtils.j("PlayerMainFragment", "onCreate");
        this.mContext.getTheme().resolveAttribute(R.attr.OsBgPrimary, new TypedValue(), true);
        this.y = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        this.z = w6c.c(this.mContext, w6c.a, false);
        this.u = w6c.c(this.mContext, "need_download_guide", true);
        this.D = w6c.c(this.mContext, "need_online_guide", true);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.p = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroyView() {
        Runnable runnable;
        super.onDestroyView();
        this.p = null;
        ViewPager2 viewPager2 = this.l;
        if (viewPager2 != null && (runnable = this.L) != null) {
            viewPager2.removeCallbacks(runnable);
            this.L = null;
        }
        this.M = -1;
        SearchFileView searchFileView = this.q;
        if (searchFileView != null) {
            searchFileView.setSearchSelectCallBack(null);
            this.r = null;
            this.q.onDestroyView();
        }
        List list = this.o;
        if (list != null && !list.isEmpty()) {
            for (BaseFragment baseFragment : this.o) {
                if (baseFragment != null) {
                    if (baseFragment instanceof PlayBaseFragment) {
                        PlayBaseFragment playBaseFragment = (PlayBaseFragment) baseFragment;
                        playBaseFragment.setEditModeListener(null);
                        playBaseFragment.setSearchListener(null);
                    }
                    baseFragment.setMenuShowListener(null);
                }
            }
        }
        this.P = null;
        this.q = null;
        ViewPager2 viewPager3 = this.l;
        if (viewPager3 != null) {
            viewPager3.unregisterOnPageChangeCallback(this.U);
            this.l.setAdapter(null);
            this.l = null;
        }
        h27.c().f(this, 1059);
        h27.c().f(this, 1064);
        h27.c().f(this, 1097);
        h27.c().f(this, 1100);
        h27.c().f(this, 1142);
        h27.c().f(this, 1143);
    }

    @Override
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (H0() == 0 || this.l == null) {
            return;
        }
        if (this.F) {
            I0();
        }
        BaseFragment baseFragmentG0 = G0(this.l.getCurrentItem());
        if (baseFragmentG0 != null) {
            baseFragmentG0.setHiddenChanged(z);
        }
        this.y.c.setValue(Boolean.valueOf(!z));
        if (SearchAnimManager.getInstance().x()) {
            try {
                SearchAnimManager.getInstance().f();
            } catch (Exception e2) {
                Log.e("PlayerMainFragment", "SearchAnimManager exitSearch " + e2.getMessage());
            }
        }
        if (!z && i1() && Z0()) {
            this.R = false;
            this.l.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.m1();
                }
            });
        }
    }

    @Override
    public int onLayoutId() {
        return R.layout.player_fragment_main;
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        SearchFileView searchFileView = this.q;
        if (searchFileView != null) {
            searchFileView.multiWindowModeChanged(z);
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        if (this.F) {
            I0();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        SearchFileView searchFileView = this.q;
        if (searchFileView != null) {
            searchFileView.onResumed();
        }
        ViewPager2 viewPager2 = this.l;
        if (viewPager2 != null && viewPager2.getVisibility() != 0) {
            this.l.setVisibility(0);
        }
        if (i1() && Z0() && !isHidden()) {
            this.R = false;
            m1();
        }
    }

    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void onStop() {
        super.onStop();
        if (i1()) {
            this.R = true;
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        LogUtils.j("PlayerMainFragment", "onViewCreated");
        ViewPager2 viewPager2 = (ViewPager2) view.findViewById(R.id.show_content_pager);
        this.l = viewPager2;
        viewPager2.setUserInputEnabled(false);
        this.l.setOrientation(0);
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.h1();
            }
        };
        this.L = runnable;
        view.post(runnable);
        h27.c().b(this, 1059);
        h27.c().b(this, 1064);
        h27.c().b(this, 1097);
        h27.c().b(this, 1100);
        h27.c().b(this, 1142);
        h27.c().b(this, 1143);
        super.onViewCreatedEnd(view, bundle);
    }

    public void p1(int i) {
        if (i == 3 && getActivity() != null && (getActivity() instanceof VideoPlayerMainActivity)) {
            ((VideoPlayerMainActivity) getActivity()).showSearchFragment();
            this.K = true;
            a1();
            return;
        }
        SearchFileView searchFileView = this.q;
        if (searchFileView == null) {
            SearchFileView searchFileView2 = ((VideoPlayerMainActivity) getActivity()).getSearchFileView();
            this.q = searchFileView2;
            if (searchFileView2 != null) {
                searchFileView2.multiWindowModeChanged(this.mActivity.isInMultiWindowMode());
                this.q.setSearchType(i);
                if (this.r == null) {
                    this.r = new b();
                }
                this.q.setSearchSelectCallBack(this.r);
            }
        } else {
            searchFileView.setVisibility(0);
            this.q.setSearchType(i);
        }
        SearchFileView searchFileView3 = this.q;
        if (searchFileView3 != null) {
            searchFileView3.post(new Runnable() {
                @Override
                public void run() {
                    if (PlayerMainFragment.this.q != null) {
                        PlayerMainFragment.this.q.showOrHideKeyboard(true);
                    }
                }
            });
        }
        a1();
    }

    @Override
    public void refresh() {
        BaseFragment baseFragmentG0;
        if (this.l == null || H0() == 0 || (baseFragmentG0 = G0(this.l.getCurrentItem())) == null) {
            return;
        }
        baseFragmentG0.refresh();
    }

    @Override
    public void releaseWhenDestroy() {
        super.releaseWhenDestroy();
        PagerAdapter2 pagerAdapter2 = this.m;
        if (pagerAdapter2 != null) {
            pagerAdapter2.release();
            this.m = null;
        }
        this.P = null;
        List list = this.o;
        if (list != null) {
            list.clear();
        }
    }

    public void startEditMode(boolean z, int i, boolean z2) {
        View view;
        if (this.C && (view = this.v) != null) {
            view.setVisibility((z || pp3.b) ? 8 : 0);
        }
        BaseFragment baseFragmentG0 = G0(this.l.getCurrentItem());
        if (baseFragmentG0 instanceof PlayBaseFragment) {
            ((PlayBaseFragment) baseFragmentG0).startEditMode(z, i, z2);
        }
    }
}
