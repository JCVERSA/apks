package com.transsion.magicvideo.fragments;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.AccelerateInterpolator;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.media3.common.C;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.appbar.AppBarLayout;
import com.tencent.mmkv.MMKV;
import com.transsion.WindowInfoViewModel;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.effectengine.bounceeffect.IOverScrollListener;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.adapter.TopHistoryAdapter;
import com.transsion.magicvideo.fragments.VideoMainFragment;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.adapter.RtlPageAdapter2;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.tranquestion.VishaQuestionnaireManager;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.playercommon.videomodel.VideoDataListModel;
import com.transsion.playercommon.videomodel.VideoPlayListModel;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.BubbleTextView;
import com.transsion.widgets.CustomTabLayoutNew;
import com.transsion.widgetslib.widget.OSIconTextView;
import defpackage.a64;
import defpackage.a9;
import defpackage.adc;
import defpackage.ea7;
import defpackage.f5;
import defpackage.ha1;
import defpackage.hb0;
import defpackage.i06;
import defpackage.ikc;
import defpackage.jsb;
import defpackage.k29;
import defpackage.kpb;
import defpackage.mc7;
import defpackage.o06;
import defpackage.p06;
import defpackage.pp3;
import defpackage.q16;
import defpackage.qha;
import defpackage.r06;
import defpackage.rcc;
import defpackage.t08;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.vha;
import defpackage.vmb;
import defpackage.w6c;
import defpackage.woc;
import defpackage.xdc;
import defpackage.ydc;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class VideoMainFragment extends PlayBaseFragment implements View.OnClickListener {
    public View A;
    public View B;
    public TextView C;
    public View D;
    public View E;
    public boolean F;
    public boolean G;
    public int H;
    public int I;
    public BubbleTextView J;
    public MainViewModel K;
    public View L;
    public View M;
    public View N;
    public View O;
    public View P;
    public int Q;
    public boolean S;
    public boolean T;
    public ConstraintLayout U;
    public ConstraintLayout V;
    public VideoDataListModel W;
    public boolean X;
    public AdItemBean Y;
    public Observer Z;
    public Observer a0;
    public Observer b0;
    public WindowInfoViewModel c0;
    public int d0;
    public int e0;
    public FrameLayout g0;
    public OSIconTextView h0;
    public ImageView i0;
    public FrameLayout j0;
    public OSIconTextView k0;
    public boolean l;
    public ImageView l0;
    public CustomTabLayoutNew m;
    public PopupWindow m0;
    public ViewPager2 n;
    public kpb n0;
    public RtlPageAdapter2 o;
    public boolean o0;
    public OSIconTextView p;
    public View q;
    public AnimatorSet q0;
    public ImageView r;
    public ImageView s;
    public String[] t;
    public boolean t0;
    public List u;
    public RecyclerView v;
    public VideoPlayListModel w;
    public TopHistoryAdapter y;
    public ImageView z;
    public final ArrayList x = new ArrayList();
    public int R = 0;
    public final float f0 = 30.0f;
    public final PlayBaseFragment.d p0 = new c();
    public ViewPager2.OnPageChangeCallback r0 = new f();
    public long s0 = 0;
    public final Runnable u0 = new Runnable() {
        @Override
        public final void run() {
            this.b.z1();
        }
    };
    public final Runnable v0 = new Runnable() {
        @Override
        public final void run() {
            this.b.A1();
        }
    };
    public final Runnable w0 = new Runnable() {
        @Override
        public void run() {
            VideoMainFragment.this.T1();
        }
    };
    public VideoPlayManager.d x0 = new g();

    public class a extends LinearLayoutManager {
        public a(Context context, int i, boolean z) {
            super(context, i, z);
        }

        @Override
        public boolean canScrollHorizontally() {
            return !VideoMainFragment.this.F;
        }
    }

    public class b extends RecyclerView.OnScrollListener {
        public b() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 1) {
                p06.d0("vd_history_slip");
            }
        }
    }

    public class c implements PlayBaseFragment.d {
        public c() {
        }

        @Override
        public void b(ArrayList arrayList, boolean z, boolean z2) {
            if (((PlayBaseFragment) VideoMainFragment.this).mEditModeListener != null) {
                ((PlayBaseFragment) VideoMainFragment.this).mEditModeListener.b(arrayList, z, z2);
            }
            int size = arrayList.size();
            ((PlayBaseFragment) VideoMainFragment.this).mAllCheckBox.setChecked(z);
            if (size == 0) {
                VideoMainFragment.this.C.setText(VideoMainFragment.this.getContext().getString(R.string.none_select));
                VideoMainFragment.this.C.setContentDescription(VideoMainFragment.this.getString(R.string.talkback_none_selected));
            } else {
                VideoMainFragment.this.C.setText(VideoMainFragment.this.getContext().getString(size > 1 ? R.string.items : R.string.item, Integer.valueOf(size)));
                VideoMainFragment.this.C.setContentDescription(VideoMainFragment.this.getString(R.string.talkback_item_selected, Integer.valueOf(size)));
            }
        }

        @Override
        public void d(final boolean z, final int i, boolean z2) {
            ThreadUtils.t(new Runnable() {
                @Override
                public final void run() {
                    this.b.f(z, i);
                }
            }, 50L);
        }

        public final void f(boolean z, int i) {
            VideoMainFragment.this.startEditMode(z, i, true);
        }
    }

    public class d extends AnimatorListenerAdapter {
        public final boolean b;
        public final Choreographer.FrameCallback c;

        public d(boolean z, Choreographer.FrameCallback frameCallback) {
            this.b = z;
            this.c = frameCallback;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            Choreographer.getInstance().removeFrameCallback(this.c);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            VideoMainFragment.this.Z1(this.b);
            Choreographer.getInstance().removeFrameCallback(this.c);
        }
    }

    public class e extends RecyclerView.SimpleOnItemTouchListener {
        public float b;
        public float c;

        public e() {
        }

        /* JADX WARN: Code duplicated, block: B:18:0x004b  */
        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            if (VideoMainFragment.this.F) {
                Log.d("VideoMainFragment", "onInterceptTouchEvent, in mEditMode");
            } else {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.b = motionEvent.getX();
                    this.c = motionEvent.getY();
                    VideoMainFragment.this.V1(true);
                } else if (action == 1) {
                    VideoMainFragment.this.V1(true);
                } else if (action == 2) {
                    float x = motionEvent.getX() - this.b;
                    float y = motionEvent.getY() - this.c;
                    if (Math.abs(y) > Math.abs(x) && Math.abs(y) > 30.0f) {
                        VideoMainFragment.this.V1(false);
                    }
                } else if (action == 3) {
                    VideoMainFragment.this.V1(true);
                }
            }
            return false;
        }
    }

    public class f extends ViewPager2.OnPageChangeCallback {
        public f() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            if (VideoMainFragment.this.H < i) {
                p06.Z(0, true);
            } else if (VideoMainFragment.this.H > i) {
                p06.Z(0, false);
            } else if (VideoMainFragment.this.I == 0 && i2 == 0) {
                p06.Z(1, i == 2);
            }
            VideoMainFragment.this.I = i2;
            VideoMainFragment.this.H = i;
        }

        @Override
        public void onPageSelected(int i) {
            List list;
            VideoMainFragment.this.o.t(i);
            VideoMainFragment.this.n.setOffscreenPageLimit(VideoMainFragment.this.o.getItemCount());
            if (((PlayBaseFragment) VideoMainFragment.this).showShuffleMap.containsKey(Integer.valueOf(i)) && ((Boolean) ((PlayBaseFragment) VideoMainFragment.this).showShuffleMap.get(Integer.valueOf(i))).booleanValue()) {
                VideoMainFragment.this.setShuffleBtnVisible(true, "video");
            } else {
                VideoMainFragment.this.setShuffleBtnVisible(false, "video");
            }
            VideoMainFragment videoMainFragment = VideoMainFragment.this;
            videoMainFragment.Q = i;
            List list2 = videoMainFragment.u;
            if (list2 != null) {
                int size = list2.size();
                VideoMainFragment videoMainFragment2 = VideoMainFragment.this;
                int i2 = videoMainFragment2.Q;
                if (size > i2 && videoMainFragment2.u.get(i2) != null) {
                    VideoMainFragment videoMainFragment3 = VideoMainFragment.this;
                    if (videoMainFragment3.u.get(videoMainFragment3.Q) instanceof VideosBaseFragment) {
                        VideoMainFragment videoMainFragment4 = VideoMainFragment.this;
                        ((VideosBaseFragment) videoMainFragment4.u.get(videoMainFragment4.Q)).J = true;
                        VideoMainFragment videoMainFragment5 = VideoMainFragment.this;
                        ((VideosBaseFragment) videoMainFragment5.u.get(videoMainFragment5.Q)).L0();
                    }
                }
            }
            if (i == 1) {
                MMKV.p().y("playListFarvoriteRedSpot", false);
                if (VideoMainFragment.this.t0) {
                    MMKV.p().y("redshots_recently_added", false);
                }
                VideoMainFragment.this.a2();
            }
            if (i >= 0 && (list = VideoMainFragment.this.u) != null && i < list.size() && VideoMainFragment.this.u.get(i) != null) {
                if (VideoMainFragment.this.u.get(i) != null && (VideoMainFragment.this.u.get(i) instanceof BaseFragment)) {
                    ((BaseFragment) VideoMainFragment.this.u.get(i)).onSelectInViewPage();
                    ((BaseFragment) VideoMainFragment.this.u.get(i)).onSelectTabViewPager();
                }
                for (int i3 = 0; i3 < VideoMainFragment.this.u.size(); i3++) {
                    if (i != i3) {
                        Fragment fragment = (Fragment) VideoMainFragment.this.u.get(i3);
                        if (fragment instanceof BaseFragment) {
                            BaseFragment baseFragment = (BaseFragment) fragment;
                            if (baseFragment.mIsSelectByViewPager || baseFragment.mIsVisibleToUser) {
                                baseFragment.onUnSelectInViewPage();
                                baseFragment.onUnSelectTabViewPager();
                            }
                        }
                    }
                }
            }
            VideoMainFragment.this.U1(true);
        }
    }

    public class g implements VideoPlayManager.d {
        public g() {
        }

        @Override
        public void onPlayerStateUpdate(int i) {
            if (i == 3) {
                VideoMainFragment.this.T1();
            } else {
                ThreadUtils.o().removeCallbacks(VideoMainFragment.this.w0);
            }
        }
    }

    public void D1(List list) {
        Log.d("VideoMainFragment", "VideoRecordLiveData onChanged " + list.size());
        postDelayLoadData();
    }

    public void E1(woc wocVar) {
        int i = this.d0;
        int i2 = this.e0;
        ConstraintLayout constraintLayout = this.V;
        if (constraintLayout != null) {
            constraintLayout.setPadding(i, 0, i2, 0);
        }
    }

    public void F1(View view) {
        c1();
        this.l0.setVisibility(8);
        w6c.r(this.mContext, "show_video_main_collect_point", false);
    }

    public void G1(View view) {
        e1();
        this.i0.setVisibility(8);
        w6c.r(this.mContext, "show_video_history_point", false);
    }

    public void L1() {
        ViewPager2 viewPager2;
        if (isAdded()) {
            RtlPageAdapter2 rtlPageAdapter2 = this.o;
            if (rtlPageAdapter2 != null && (viewPager2 = this.n) != null) {
                rtlPageAdapter2.t(viewPager2.getCurrentItem());
            }
            if (getResources() != null) {
                this.R = getResources().getConfiguration().orientation;
            }
        }
    }

    private void N1() {
        ImageView imageView;
        AdItemBean adItemBean;
        if (!this.mIsVisibleToUser || this.mIsHide || (imageView = this.r) == null || imageView.getVisibility() != 0 || (adItemBean = this.Y) == null) {
            return;
        }
        a9.b(adItemBean.getJumpLink(), this.Y.getId(), "vd_ad_icon_show");
    }

    private boolean P1() {
        if (!isAdded() || getResources() == null) {
            return this.S;
        }
        return this.S || getResources().getConfiguration().orientation != this.R;
    }

    public void T1() {
        MediaItem mediaItem;
        try {
            if (this.y == null || !VideoPlayManager.X().A0()) {
                return;
            }
            int iS = VideoPlayManager.X().S();
            Handler handlerO = ThreadUtils.o();
            handlerO.removeCallbacks(this.w0);
            handlerO.postDelayed(this.w0, 500L);
            MediaItem mediaItemR = VideoPlayManager.X().R();
            int i = 0;
            for (Object obj : this.x) {
                if ((obj instanceof MediaItem) && (mediaItem = (MediaItem) obj) != null && mediaItem.id == mediaItemR.id && mediaItem.data.equals(mediaItemR.data)) {
                    mediaItem.setPlayPosition(iS);
                    break;
                }
                i++;
            }
            this.y.notifyItemChanged(i, 1);
        } catch (Exception e2) {
            Log.e("VideoMainFragment", "runMusicProgressUpdate: " + e2.getMessage());
        }
    }

    public void V1(boolean z) {
        ViewPager2 viewPager2 = this.n;
        if (viewPager2 != null) {
            viewPager2.setUserInputEnabled(z && !this.F);
        }
    }

    private boolean X1() {
        return com.transsion.utils.a.D(this.mContext) || this.mScreenType == BaseConstant.SCREEN_TYPE.TABLE;
    }

    private boolean a1() {
        if (!isResumed() || isHidden() || this.n == null || this.o == null) {
            return false;
        }
        Fragment parentFragment = getParentFragment();
        return parentFragment == null || !parentFragment.isHidden();
    }

    private void b2() {
        adc.s(this.n, this.n.getWidth(), new jsb(this));
    }

    private void c2() {
        adc.u(this.n, new jsb(this));
    }

    private void e2() {
        if (this.Y == null || this.F) {
            this.r.setVisibility(8);
            return;
        }
        ImageView imageView = this.r;
        if (imageView != null) {
            imageView.setVisibility(qha.b(this.mContext) ? 0 : 8);
        }
        N1();
    }

    private void f2() {
        BaseActivity baseActivity = this.mActivity;
        boolean zIsHaveFilePermission = baseActivity instanceof BasePermissionActivity ? ((BasePermissionActivity) baseActivity).isHaveFilePermission() : t08.c(this.mContext);
        boolean z = zIsHaveFilePermission || t08.d(this.mContext);
        if (!zIsHaveFilePermission && !z) {
            f1();
        }
        View view = this.O;
        if (view != null) {
            view.setVisibility((zIsHaveFilePermission || z) ? 0 : 8);
        }
        View view2 = this.N;
        if (view2 != null) {
            view2.setVisibility((zIsHaveFilePermission || z) ? 0 : 8);
        }
        View view3 = this.L;
        if (view3 != null) {
            view3.setVisibility((zIsHaveFilePermission || z) ? 8 : 0);
        }
    }

    private void g1() {
        this.mBounceListener = new PlayBaseFragment.b() {
            @Override
            public final void a(IOverScrollDecor iOverScrollDecor) {
                this.a.nestedScroll(iOverScrollDecor);
            }
        };
        this.mOverScrollListener = new IOverScrollListener() {
            @Override
            public final void onOverScrollUpdated(float f2) {
                this.a.n1(f2);
            }
        };
        this.mSimpleOnItemTouchListener = new e();
        this.u = new ArrayList();
        VideosBaseFragment videosBaseFragment = (VideosBaseFragment) VideosFragment.F3(2).setBaseActivity((BaseActivity) getActivity());
        videosBaseFragment.setBounceListener(this.mBounceListener);
        videosBaseFragment.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        videosBaseFragment.setOverScrollListener(this.mOverScrollListener);
        videosBaseFragment.setEditModeListener(this.p0);
        videosBaseFragment.setDragAnimationView(this.U);
        videosBaseFragment.setAppBar(this.mAppBarLayout, this.mToolBarLayout);
        this.u.add(videosBaseFragment);
        VideosBaseFragment videosBaseFragment2 = (VideosBaseFragment) new VideoPlayListFoldersFragment().setBaseActivity((BaseActivity) getActivity());
        videosBaseFragment2.setBounceListener(this.mBounceListener);
        videosBaseFragment2.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        videosBaseFragment2.setOverScrollListener(this.mOverScrollListener);
        this.u.add(videosBaseFragment2);
        VideosBaseFragment videosBaseFragment3 = (VideosBaseFragment) new FoldersFragment().setBaseActivity((BaseActivity) getActivity());
        videosBaseFragment3.setBounceListener(this.mBounceListener);
        videosBaseFragment3.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        videosBaseFragment3.setOverScrollListener(this.mOverScrollListener);
        videosBaseFragment3.setAppBar(this.mAppBarLayout, this.mToolBarLayout);
        this.u.add(videosBaseFragment3);
        VideosBaseFragment videosBaseFragment4 = (VideosBaseFragment) new ShortVideosFragment().setBaseActivity((BaseActivity) getActivity());
        videosBaseFragment4.setBounceListener(this.mBounceListener);
        videosBaseFragment4.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        videosBaseFragment4.setOverScrollListener(this.mOverScrollListener);
        videosBaseFragment4.setEditModeListener(this.p0);
        videosBaseFragment4.setAppBar(this.mAppBarLayout, this.mToolBarLayout);
        this.u.add(videosBaseFragment4);
        this.o = new RtlPageAdapter2(this, this.u, this.t);
        this.n.setOffscreenPageLimit(4);
        rcc.c(this.n, this.o, this.r0, new Runnable() {
            @Override
            public final void run() {
                this.b.o1();
            }
        });
        if (isAdded() && getResources() != null) {
            this.R = getResources().getConfiguration().orientation;
        }
        OverScrollDecorHelper.setUpOverScroll(this.n);
        ThreadUtils.l().execute(new Runnable() {
            @Override
            public final void run() {
                this.b.q1();
            }
        });
    }

    private void j1() {
        String[] strArr = this.t;
        if (strArr != null) {
            this.m.setNames(Arrays.asList(strArr));
            this.m.setIcons(new ArrayList(Arrays.asList(Integer.valueOf(R.drawable.ic_media_tab_all), Integer.valueOf(R.drawable.ic_media_tab_play_list), Integer.valueOf(R.drawable.ic_media_tab_folder), Integer.valueOf(R.drawable.ic_media_tab_short_video), Integer.valueOf(R.drawable.ic_media_tab_whatsapp))));
        }
        this.m.setupWithViewPager(this.n);
        this.m.isFirstLevelTab(true);
        this.m.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.b.t1(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        a2();
    }

    private void k2() {
        TextView textView;
        if (this.D == null || (textView = this.C) == null) {
            return;
        }
        boolean z = (this.F || this.G || this.mScreenType != BaseConstant.SCREEN_TYPE.FOLD) ? false : true;
        textView.setVisibility(!z ? 0 : 8);
        if (pp3.c) {
            this.D.setVisibility(8);
            this.E.setVisibility(z ? 0 : 8);
        } else {
            this.D.setVisibility(z ? 0 : 8);
            this.E.setVisibility(8);
        }
        if (!this.F) {
            this.C.setText(getResources().getString(R.string.video));
        }
        boolean z2 = this.G || this.F;
        this.p.setVisibility(z2 ? 8 : 0);
        this.g0.setVisibility((z2 || MainApp.l) ? 8 : 0);
        ImageView imageView = this.s;
        if (imageView != null) {
            if (z2) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(MMKV.p().e("mmkv_key_show_music_theme_icon", true) ? 0 : 8);
            }
        }
        ViewGroup.LayoutParams layoutParams = this.P.getLayoutParams();
        layoutParams.width = com.transsion.utils.a.d(this.mContext, this.F ? 18.0f : 24.0f);
        this.P.setLayoutParams(layoutParams);
        e2();
        U1(!z2);
    }

    public static ArrayList u1(Integer num) {
        return new ArrayList(tpb.j0().O(false, Integer.MAX_VALUE, true));
    }

    public static String w1(BaseActivity baseActivity) {
        return tpb.j0().L();
    }

    public static void x1(String str) {
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        trackData.add("vd_format", str);
        bundle.putString("vd_format", str);
        p06.q0(trackData, bundle, "vd_video_file", 932460000064L);
    }

    public static void y1(Throwable th) {
    }

    public final void A1() {
        FrameLayout frameLayout;
        try {
            if (this.mIsVisibleToUser && !this.mIsHide && this.mIsParentVisibleToUser && baseActivity() != null && (frameLayout = this.j0) != null && frameLayout.isAttachedToWindow() && this.j0.getVisibility() == 0 && !baseActivity().isFinishing()) {
                this.m0 = ea7.p(this.j0, getResources().getString(R.string.visha_change_layout_mode), 8388693);
                ThreadUtils.o().postDelayed(this.u0, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                w6c.r(this.mContext, "show_video_main_collect_tips", false);
            }
        } catch (Exception e2) {
            Log.w("VideoMainFragment", "showCollectLayoutGuideTip error: " + e2.getMessage());
        }
    }

    public final void B1(List list) {
        if (MainApp.l) {
            postDelayLoadData();
        } else {
            l2(false);
        }
    }

    public final void C1(List list) {
        if (!isAdded() || getView() == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("mAllVideoPlayHistoryLiveData onChanged ");
        sb.append(list != null ? list.size() : 0);
        vmb.a("VideoMainFragment", sb.toString());
        g2(d1(list));
    }

    public final boolean H1(View view) {
        this.D.setHapticFeedbackEnabled(!RouterUtils.jumpToPrivacyRoomOnLongClick(this.mContext, 1, 2));
        return true;
    }

    public final void I1(Boolean bool) {
        if (bool.booleanValue()) {
            postDelayLoadData();
        } else {
            l2(false);
        }
    }

    public final void J1(View view) {
        ((VideosBaseFragment) this.u.get(this.n.getCurrentItem())).selectAll(this.mAllCheckBox.isChecked());
    }

    public void K1() {
        mc7.K(this.mActivity).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoMainFragment.w1((BaseActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                VideoMainFragment.x1((String) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                VideoMainFragment.y1((Throwable) obj);
            }
        });
    }

    public final void M1() {
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser && !this.mIsHide) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (1000 < jCurrentTimeMillis - this.s0) {
                p06.f0(null, "vd_page_show", 9324L);
                q16.f(this.mContext);
                this.s0 = jCurrentTimeMillis;
            }
        }
    }

    public final void O1() {
        if (!this.mIsVisibleToUser || !this.mIsParentVisibleToUser || this.mIsHide || !MainApp.l) {
            this.T = false;
        } else if (this.x.size() == 0) {
            this.T = true;
        } else {
            i06.d();
        }
    }

    public final void Q1() {
        this.w.e().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.B1((List) obj);
            }
        });
    }

    public final void R1() {
        if (this.b0 != null) {
            return;
        }
        this.b0 = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.C1((List) obj);
            }
        };
        this.W.d.observe(getViewLifecycleOwner(), this.b0);
    }

    public final void S1() {
        g2(d1(this.W.f()));
    }

    public final void U1(boolean z) {
        int i = 8;
        this.j0.setVisibility((z && this.Q == 0) ? 0 : 8);
        boolean zC = w6c.c(this.mContext, "show_video_main_collect_point", true);
        ImageView imageView = this.l0;
        if (zC && !ydc.e()) {
            i = 0;
        }
        imageView.setVisibility(i);
    }

    public final void W1() {
        Observer observer = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.I1((Boolean) obj);
            }
        };
        this.a0 = observer;
        this.K.h.observe(this.mActivity, observer);
    }

    public final void Y0(final boolean z) {
        ViewPager2 viewPager2;
        final int height;
        if (this.m == null || (viewPager2 = this.n) == null) {
            return;
        }
        if (viewPager2.getTop() <= this.m.getHeight()) {
            Z1(z);
            return;
        }
        LogUtils.v("VideoMainFragment", "animateVideoListEditMode " + z);
        AnimatorSet animatorSet = this.q0;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.q0.cancel();
        }
        this.q0 = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        if (z) {
            View view = this.B;
            if (view == null || !this.X) {
                height = 0;
            } else {
                height = view.getHeight();
                this.B.setPivotY(0.0f);
                arrayList.add(ObjectAnimator.ofFloat(this.B, "scaleY", 1.0f, 0.0f));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.n, "translationY", 0.0f, -(this.m.getHeight() + height)));
        } else {
            View view2 = this.B;
            if (view2 == null || !this.X) {
                height = 0;
            } else {
                height = view2.getHeight();
                this.B.setPivotY(0.0f);
                arrayList.add(ObjectAnimator.ofFloat(this.B, "scaleY", 0.0f, 1.0f));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.n, "translationY", -height, this.m.getHeight()));
        }
        this.q0.playTogether(arrayList);
        this.q0.setDuration(200L);
        this.q0.setInterpolator(new AccelerateInterpolator());
        Choreographer.FrameCallback frameCallback = new Choreographer.FrameCallback() {
            @Override
            public final void doFrame(long j) {
                this.b.l1(z, height, j);
            }
        };
        this.q0.addListener(new d(z, frameCallback));
        Choreographer.getInstance().postFrameCallback(frameCallback);
    }

    public final void Y1(long j) {
        if (ydc.e()) {
            w6c.r(this.mContext, "show_video_main_collect_tips", false);
            return;
        }
        if (w6c.c(this.mContext, "show_video_main_collect_tips", true) && this.j0.getVisibility() == 0 && this.j0.isAttachedToWindow() && !baseActivity().isFinishing()) {
            ThreadUtils.o().removeCallbacks(this.v0);
            ThreadUtils.o().postDelayed(this.v0, j);
        }
    }

    public final void Z0() {
        List list;
        if (!isAdded() || isDetached() || getView() == null || (list = this.u) == null || this.o == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((Fragment) it.next()) instanceof WhatsAppVideoFragment) {
                return;
            }
        }
        VideosBaseFragment videosBaseFragment = (VideosBaseFragment) new WhatsAppVideoFragment().setBaseActivity((BaseActivity) getActivity());
        videosBaseFragment.setBounceListener(this.mBounceListener);
        videosBaseFragment.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        videosBaseFragment.setOverScrollListener(this.mOverScrollListener);
        videosBaseFragment.setEditModeListener(this.p0);
        videosBaseFragment.setDragAnimationView(this.U);
        videosBaseFragment.setAppBar(this.mAppBarLayout, this.mToolBarLayout);
        this.u.add(videosBaseFragment);
        this.o.notifyItemInserted(this.u.size() - 1);
    }

    public final void Z1(boolean z) {
        View view = this.B;
        if (view != null && this.X) {
            view.setVisibility(z ? 8 : 0);
            if (!z) {
                this.B.setScaleY(1.0f);
            }
        }
        CustomTabLayoutNew customTabLayoutNew = this.m;
        if (customTabLayoutNew != null) {
            customTabLayoutNew.setVisibility(z ? 8 : 0);
        }
    }

    public final void a2() {
        if (this.m == null || ydc.e()) {
            return;
        }
        if ((MMKV.p().e("playListFarvoriteRedSpot", false) || (this.t0 && MMKV.p().e("redshots_recently_added", true))) && this.Q != 1) {
            this.m.showBadgeView(1, true, 0);
        } else {
            this.m.showBadgeView(1, false);
        }
    }

    public final void b1() {
        try {
            ThreadUtils.o().removeCallbacks(this.v0);
            ThreadUtils.o().removeCallbacks(this.u0);
            PopupWindow popupWindow = this.m0;
            if (popupWindow != null) {
                popupWindow.dismiss();
            }
        } catch (Exception e2) {
            Log.w("VideoMainFragment", "cancelCollectLayoutGuideTip error: " + e2.getMessage());
        }
    }

    public final void c1() {
        kpb kpbVar = new kpb(this.mContext);
        this.n0 = kpbVar;
        kpbVar.show();
        p06.d0("vd_page_layout_cl");
    }

    public final ArrayList d1(List list) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        return list instanceof ArrayList ? (ArrayList) list : new ArrayList(list);
    }

    public final void d2(MediaItem mediaItem) {
        int iD0;
        PlayVideoData playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(mediaItem);
        if (playVideoDataConvertToPlayVideoData != null) {
            playVideoDataConvertToPlayVideoData.setShowPicInPic(true);
            playVideoDataConvertToPlayVideoData.setNeedRecordVideoStates(true);
            playVideoDataConvertToPlayVideoData.listFlag = 1;
            if (mediaItem.equals(VideoPlayManager.X().c0()) && (iD0 = VideoPlayManager.X().d0()) != 0) {
                playVideoDataConvertToPlayVideoData.playPosition = iD0;
            }
        }
        Log.d("VideoMainFragment", "startOpenVideo " + playVideoDataConvertToPlayVideoData);
        if (VideoPlayManager.X().x0() && this.mActivity.isAlertWindowPermissionGranted()) {
            VideoPlayManager.X().o2(playVideoDataConvertToPlayVideoData);
        } else {
            VideoPlayerActivityInner.G2(playVideoDataConvertToPlayVideoData);
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i != 1061) {
            if (i == 1081) {
                f2();
                return;
            }
            if (i == 1087) {
                if (this.B != null) {
                    l2(((Boolean) objArr[0]).booleanValue());
                    return;
                }
                return;
            }
            if (i != 1095) {
                if (i == 1139) {
                    if (MainApp.l) {
                        postDelayLoadData();
                        return;
                    }
                    return;
                }
                if (i == 1157) {
                    if (((Integer) objArr[0]).intValue() == BaseFragment.SCROLL_START) {
                        hideShuffleBtn();
                        return;
                    } else {
                        showShuffleBtn();
                        return;
                    }
                }
                if (i == 1159) {
                    int iIntValue = ((Integer) objArr[0]).intValue();
                    if (this.n == null || iIntValue <= 0 || iIntValue >= this.u.size()) {
                        return;
                    }
                    this.n.setCurrentItem(iIntValue);
                    return;
                }
                if (i == 1161) {
                    try {
                        Boolean bool = (Boolean) objArr[0];
                        boolean zBooleanValue = bool.booleanValue();
                        Integer num = (Integer) objArr[1];
                        int iIntValue2 = num.intValue();
                        this.showShuffleMap.put(num, bool);
                        if ((iIntValue2 == 0 || iIntValue2 == 3) && this.Q == iIntValue2) {
                            setShuffleBtnVisible(zBooleanValue, "video");
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                if (i != 1176) {
                    if (i != 1184) {
                        return;
                    }
                    j2(true);
                    return;
                }
                Object obj = objArr[0];
                if (obj != null) {
                    if ((obj instanceof Long) || (obj instanceof Integer)) {
                        Y1(((Long) obj).longValue());
                        return;
                    }
                    return;
                }
                return;
            }
            this.t0 = true;
        }
        a2();
    }

    public final void e1() {
        if (this.F) {
            return;
        }
        View view = this.A;
        if (view != null) {
            view.setVisibility(8);
        }
        VideosFragment videosFragment = (VideosFragment) VideosFragment.F3(1).setBaseActivity((BaseActivity) getActivity());
        videosFragment.setNeedBg(true);
        a64.n(videosFragment, true, true);
        MMKV.p().y("history_red_point_show", false);
        i06.b();
    }

    public void f1() {
        View view;
        int i;
        if (this.L != null || (view = this.M) == null) {
            return;
        }
        View viewInflate = ((ViewStub) view.findViewById(R.id.video_main_empty_view)).inflate();
        this.L = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.text_no_videos);
        Resources resources = getResources();
        if (pp3.t) {
            i = pp3.c ? R.string.permission_all_file_1_pre : R.string.permission_all_file_1;
        } else {
            i = pp3.c ? R.string.permission_write_extenal_1_pre : R.string.permission_write_extenal_1;
        }
        textView.setText(resources.getString(i));
        TextView textView2 = (TextView) this.L.findViewById(R.id.add_video_tv);
        textView2.setVisibility(0);
        textView2.setText(R.string.permission_go);
        textView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.m1(view2);
            }
        });
    }

    public final void g2(ArrayList arrayList) {
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        this.x.clear();
        this.x.addAll(arrayList);
        boolean z = false;
        j2(false);
        Log.e("VideoMainFragment", "updateHistoryData " + arrayList.size());
        tpb.j0().D(arrayList);
        TopHistoryAdapter topHistoryAdapter = this.y;
        if (topHistoryAdapter != null) {
            topHistoryAdapter.setNewData(arrayList);
        }
        if (MainApp.l && !this.x.isEmpty()) {
            z = true;
        }
        l2(z);
    }

    public final void h1() {
        S1();
        Q1();
    }

    public final void h2() {
        RecyclerView recyclerView = this.v;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new a(this.mContext, 0, false));
        }
    }

    public final void i1(View view) {
        View viewFindViewById = view.findViewById(R.id.ll_history);
        this.z = (ImageView) view.findViewById(R.id.iv_history_clear);
        this.A = view.findViewById(R.id.iv_history_tag);
        View.OnClickListener onClickListener = new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.r1(view2);
            }
        };
        viewFindViewById.setOnClickListener(onClickListener);
        this.z.setOnClickListener(onClickListener);
        this.z.setEnabled(!this.F);
        this.v = (RecyclerView) view.findViewById(R.id.rv_history);
        h2();
        this.v.setAdapter(this.y);
        this.v.addOnScrollListener(new b());
        this.y.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.s1(baseQuickAdapter, view2, i);
            }
        });
    }

    public final void i2() {
        ImageView imageView = this.s;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        this.s.setVisibility(MMKV.p().e("mmkv_key_show_music_theme_icon", true) ? 0 : 8);
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1061);
        this.mEvents.add(1081);
        this.mEvents.add(1087);
        this.mEvents.add(1095);
        this.mEvents.add(1139);
        this.mEvents.add(1159);
        this.mEvents.add(1157);
        this.mEvents.add(1161);
        this.mEvents.add(1176);
        this.mEvents.add(1184);
        this.mEvents.add(1110);
    }

    public final void j2(boolean z) {
        int iS = VideoPlayManager.X().S();
        MediaItem mediaItemR = VideoPlayManager.X().R();
        if (mediaItemR == null) {
            return;
        }
        int i = 0;
        for (Object obj : this.x) {
            if (obj instanceof MediaItem) {
                MediaItem mediaItem = (MediaItem) obj;
                if (mediaItem != null && mediaItem.id == mediaItemR.id && mediaItem.data.equals(mediaItemR.data) && iS > mediaItem.playPosition) {
                    mediaItem.setPlayPosition(iS);
                    break;
                }
                i++;
            }
        }
        if (z) {
            this.y.notifyItemChanged(i, 1);
        }
    }

    public final void k1(View view) {
        this.n = (ViewPager2) view.findViewById(R.id.show_video_pager);
    }

    public final void l1(boolean z, int i, long j) {
        View view;
        if (!z && (view = this.B) != null && this.X) {
            view.setVisibility(0);
        }
        if (z) {
            this.m.setVisibility(4);
        }
        this.n.setTranslationY(z ? 0.0f : -i);
        if (this.q0.isStarted()) {
            return;
        }
        this.q0.start();
    }

    public final void l2(boolean z) {
        if (z && this.B == null && this.M == null) {
            this.o0 = true;
            return;
        }
        if (!z) {
            this.o0 = false;
        }
        if (this.X != z || (z && this.B == null)) {
            this.X = z;
            if (z && this.B == null) {
                ViewStub viewStub = (ViewStub) this.M.findViewById(R.id.top_history_view_ll);
                if (viewStub != null) {
                    View viewInflate = viewStub.inflate();
                    this.B = viewInflate;
                    viewInflate.setVisibility(0);
                    i1(this.B);
                    this.o0 = false;
                } else {
                    this.o0 = true;
                }
            } else {
                View view = this.B;
                if (view != null) {
                    view.setVisibility(z ? 0 : 8);
                }
            }
            MainViewModel mainViewModel = this.K;
            if (mainViewModel != null) {
                mainViewModel.k.setValue(Boolean.valueOf(z && this.B != null));
            }
            LogUtils.i("VideoMainFragment", "mNeedInitTopHistoryView: " + this.o0);
        }
    }

    @Override
    public void loadData(boolean z, boolean z2) {
        Log.e("VideoMainFragment", "loadData queryAllVideoStates ");
        super.loadData(z, z2);
        mc7.K(1).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoMainFragment.u1((Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.v1((ArrayList) obj);
            }
        });
    }

    public final void m1(View view) {
        t08.l(getActivity());
    }

    @Override
    public void markBottomTabPageShow() {
        super.markBottomTabPageShow();
        r06.e(this.mScreenType, null, "vd_page_show", 9324L);
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (!this.mIsVisibleToUser || this.mIsHide) {
            return;
        }
        r06.c(screen_type, "vd_page_show");
        if (this.x.size() != 0) {
            r06.c(screen_type, "vd_tab_history");
        }
    }

    @Override
    public void markPointVisiable(boolean z) {
        super.markPointVisiable(z);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            K1();
            if (this.x.size() != 0) {
                r06.d(this.mScreenType, "vd_tab_history");
            }
            N1();
        }
    }

    public final void n1(float f2) {
        V1(f2 == 0.0f);
    }

    public final void o1() {
        ViewPager2 viewPager2;
        RtlPageAdapter2 rtlPageAdapter2 = this.o;
        if (rtlPageAdapter2 == null || (viewPager2 = this.n) == null) {
            return;
        }
        rtlPageAdapter2.t(viewPager2.getCurrentItem());
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.iv_music_theme_menu) {
            Intent intent = new Intent();
            intent.setClassName(this.mContext, "com.transsion.tools.activities.SkinsPreviewActivity");
            Bundle bundle = new Bundle();
            bundle.putSerializable("skin_list", (Serializable) vha.f());
            bundle.putInt("skin_index", 0);
            intent.putExtra("skin_list", bundle);
            f5.b(intent, 2021, getActivity());
            MMKV.p().y("mmkv_key_show_music_theme_icon", false);
            return;
        }
        if (view.getId() == R.id.iv_search) {
            PlayBaseFragment.e eVar = this.mSearchListener;
            if (eVar != null) {
                eVar.a(1);
                return;
            }
            return;
        }
        if (view.getId() == R.id.title_bar_back) {
            startEditMode(false, 2, true);
            return;
        }
        if (view.getId() == R.id.iv_ad_tip_menu) {
            RouterUtils.jumpFromAdViewResult(this.mActivity, false, this.Y);
            AdItemBean adItemBean = this.Y;
            if (adItemBean != null) {
                a9.b(adItemBean.getJumpLink(), this.Y.getId(), "vd_ad_icon_cl");
            }
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (X1()) {
            if (a1()) {
                b2();
            } else {
                this.R = 0;
                this.S = true;
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.t = getResources().getStringArray(R.array.video_tab_list);
        VideoPlayListModel videoPlayListModel = (VideoPlayListModel) getViewModelByActivity(VideoPlayListModel.class);
        this.w = videoPlayListModel;
        videoPlayListModel.i().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.D1((List) obj);
            }
        });
        this.W = (VideoDataListModel) getViewModelByActivity(VideoDataListModel.class);
        this.y = new TopHistoryAdapter(this.mContext);
        h1();
        this.K = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        WindowInfoViewModel windowInfoViewModel = (WindowInfoViewModel) getViewModelByActivity(WindowInfoViewModel.class);
        this.c0 = windowInfoViewModel;
        windowInfoViewModel.a.observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.E1((woc) obj);
            }
        });
        registerBottomBarVisibleChanged();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.M = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        List list = this.u;
        if (list != null) {
            list.clear();
        }
    }

    @Override
    public void onDestroyView() {
        ViewPager2 viewPager2 = this.n;
        if (viewPager2 != null) {
            viewPager2.unregisterOnPageChangeCallback(this.r0);
            this.n.setAdapter(null);
        }
        this.o = null;
        this.r0 = null;
        CustomTabLayoutNew customTabLayoutNew = this.m;
        if (customTabLayoutNew != null) {
            customTabLayoutNew.setupWithViewPager(null);
        }
        this.n = null;
        super.onDestroyView();
        MainViewModel mainViewModel = this.K;
        if (mainViewModel != null) {
            Observer observer = this.Z;
            if (observer != null) {
                mainViewModel.a.removeObserver(observer);
            }
            this.K.h.removeObserver(this.a0);
        }
        ThreadUtils.o().removeCallbacks(this.v0);
        ThreadUtils.o().removeCallbacks(this.u0);
        kpb kpbVar = this.n0;
        if (kpbVar != null) {
            kpbVar.cancel();
            this.n0 = null;
        }
        this.M = null;
        this.B = null;
        this.J = null;
        this.b0 = null;
        List list = this.u;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (Fragment fragment : this.u) {
            if (fragment instanceof PlayBaseFragment) {
                PlayBaseFragment playBaseFragment = (PlayBaseFragment) fragment;
                playBaseFragment.setEditModeListener(null);
                playBaseFragment.setBounceListener(null);
            }
        }
    }

    @Override
    public void onFinishRequestPermission(int i, boolean z) {
        super.onFinishRequestPermission(i, z);
        for (Fragment fragment : this.u) {
            if (fragment instanceof BaseFragment) {
                BaseFragment.cast(fragment).onFinishRequestPermission(i, z);
            }
        }
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        k2();
    }

    @Override
    public int onLayoutId() {
        return R.layout.video_fragment_main_new;
    }

    @Override
    public void onPause() {
        super.onPause();
        this.T = false;
        b1();
        if (MainApp.l) {
            VideoPlayManager.X().v2(this.x0);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.l = true;
        if (MainApp.l) {
            postDelayLoadData();
        } else {
            l2(false);
        }
        if (this.mIsVisibleToUser && !this.mIsHide) {
            markBottomTabPageShow();
        }
        a2();
        f2();
        O1();
        M1();
        i2();
        this.g0.setVisibility((this.G || this.F || MainApp.l) ? 8 : 0);
        if (MainApp.l) {
            VideoPlayManager.X().D1(this.x0);
        }
        if (X1() && P1() && a1()) {
            realignNestedViewPagersIfNeeded();
        }
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
        O1();
        M1();
        onVisibleChanged(true);
        List list = this.u;
        if (list != null) {
            int size = list.size();
            int i = this.Q;
            if (size > i) {
                ((BaseFragment) this.u.get(i)).onSelectInViewPage();
            }
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        if (X1()) {
            this.S = true;
        }
    }

    @Override
    public void onUnSelectInViewPage() {
        super.onUnSelectInViewPage();
        b1();
        onVisibleChanged(false);
        List list = this.u;
        if (list != null) {
            int size = list.size();
            int i = this.Q;
            if (size > i) {
                ((BaseFragment) this.u.get(i)).onUnSelectInViewPage();
            }
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (pp3.x(getApplicationContext())) {
            this.d0 = pp3.g(this.mContext);
            int iH = pp3.h(this.mContext);
            this.e0 = iH;
            view.setPadding(this.d0, 0, iH, 0);
        }
        R1();
        S1();
        this.V = (ConstraintLayout) view.findViewById(R.id.video_root_layout);
        this.N = view.findViewById(R.id.video_main_layout);
        this.O = view.findViewById(R.id.top_menu_ll);
        this.U = (ConstraintLayout) view.findViewById(R.id.cl_drag_animation_view);
        this.m = (CustomTabLayoutNew) view.findViewById(R.id.tab_layout);
        k1(view);
        if (MMKV.p().e("mmkv_key_show_music_theme_icon", true) && !ydc.e()) {
            ImageView imageView = (ImageView) view.findViewById(R.id.iv_music_theme_menu);
            this.s = imageView;
            imageView.setOnClickListener(this);
        }
        ImageView imageView2 = (ImageView) view.findViewById(R.id.iv_ad_tip_menu);
        this.r = imageView2;
        imageView2.setOnClickListener(this);
        this.Y = xdc.d();
        OSIconTextView oSIconTextView = (OSIconTextView) view.findViewById(R.id.iv_search);
        this.p = oSIconTextView;
        oSIconTextView.setOnClickListener(this);
        this.mAppBarLayout = (AppBarLayout) view.findViewById(R.id.app_bar);
        this.mAllCheckBox = (CheckBox) view.findViewById(R.id.title_bar_checkBox);
        View viewFindViewById = view.findViewById(R.id.title_bar_back);
        this.q = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.C = (TextView) view.findViewById(R.id.tv_title);
        this.D = view.findViewById(R.id.iv_logo);
        this.E = view.findViewById(R.id.tv_logo_text);
        this.J = (BubbleTextView) view.findViewById(R.id.tv_bubble);
        this.P = view.findViewById(R.id.view_padding_start);
        this.j0 = (FrameLayout) view.findViewById(R.id.ll_collect_layout);
        this.k0 = (OSIconTextView) view.findViewById(R.id.iv_video_collect);
        this.l0 = (ImageView) view.findViewById(R.id.iv_video_collect_point);
        OSIconTextView oSIconTextView2 = this.k0;
        if (oSIconTextView2 != null) {
            oSIconTextView2.setOnClickListener(new ha1(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.F1(view2);
                }
            }));
        }
        this.g0 = (FrameLayout) view.findViewById(R.id.ll_history_layout);
        if (!MainApp.l) {
            this.g0.setVisibility(0);
        }
        this.h0 = (OSIconTextView) view.findViewById(R.id.iv_video_history);
        this.i0 = (ImageView) view.findViewById(R.id.iv_history_main_point);
        this.i0.setVisibility((!w6c.c(this.mContext, "show_video_history_point", true) || ydc.e()) ? 8 : 0);
        OSIconTextView oSIconTextView3 = this.h0;
        if (oSIconTextView3 != null) {
            oSIconTextView3.setOnClickListener(new ha1(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.G1(view2);
                }
            }));
        }
        k2();
        g1();
        j1();
        if (w6c.c(this.mContext, "need_personal_theme_guide", true)) {
            hb0.markDirect("skin_bubble_show");
        }
        W1();
        super.onViewCreatedEnd(view, bundle);
        if (pp3.p) {
            this.D.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public final boolean onLongClick(View view2) {
                    return this.b.H1(view2);
                }
            });
            return;
        }
        this.E.setOnLongClickListener(null);
        this.E.setLongClickable(false);
        this.E.setHapticFeedbackEnabled(false);
    }

    @Override
    public void onVisibleChanged(boolean z) {
        super.onVisibleChanged(z);
        List list = this.u;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator it = this.u.iterator();
        while (it.hasNext()) {
            ((BaseFragment) ((Fragment) it.next())).setParentVisible(z);
        }
    }

    public final void p1(boolean z) {
        if (z) {
            Z0();
        }
    }

    public final void q1() {
        final boolean zF = ikc.f(true);
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                this.b.p1(zF);
            }
        });
    }

    public final void r1(View view) {
        e1();
    }

    @Override
    public void realignNestedViewPagersIfNeeded() {
        if (X1() && P1()) {
            if (!a1()) {
                this.S = true;
            } else {
                this.S = false;
                c2();
            }
        }
    }

    @Override
    public void refresh() {
        Log.d("VideoMainFragment", "refresh");
        postDelayLoadData();
        List list = this.u;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (Fragment fragment : this.u) {
            if (fragment instanceof VideosBaseFragment) {
                ((VideosBaseFragment) fragment).refresh();
            }
        }
    }

    @Override
    public void releaseWhenDestroyView() {
        super.releaseWhenDestroyView();
        AnimatorSet animatorSet = this.q0;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.q0.removeAllListeners();
            this.q0 = null;
        }
    }

    public final void s1(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (ingoreClickEvent()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
        MediaItem mediaItem = (MediaItem) baseQuickAdapter.getData().get(i);
        if (this.F) {
            return;
        }
        p06.u(i + 1, baseQuickAdapter.getData().size());
        d2(mediaItem);
        o06.e(o06.f);
        i06.c();
    }

    @Override
    public void setHiddenChanged(boolean z) {
        super.setHiddenChanged(z);
        List list = this.u;
        if (list == null || list.size() == 0) {
            return;
        }
        if (z) {
            b1();
        }
        Iterator it = this.u.iterator();
        while (it.hasNext()) {
            ((BaseFragment) ((Fragment) it.next())).setParentVisible(!z);
        }
        if (z) {
            return;
        }
        ((VideosFragment) this.u.get(0)).d4();
        O1();
        M1();
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        onVisibleChanged(z);
    }

    @Override
    public void showSelectedTab(int i) {
        super.showSelectedTab(i);
        ViewPager2 viewPager2 = this.n;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(i);
        }
    }

    @Override
    public void showVishaQuestionnaire() {
        if (!this.mIsVisibleToUser || this.mIsHide || getActivity() == null) {
            return;
        }
        VishaQuestionnaireManager.c().p(getActivity(), getClass().getSimpleName());
    }

    @Override
    public void startEditMode(boolean z, int i, boolean z2) {
        super.startEditMode(z, i, z2);
        Log.d("VideoMainFragment", "startEditMode " + this.Q + StringUtils.COMMA + z);
        int i2 = this.Q;
        if (i2 != 0 && i2 != 3 && i2 != 4 && z) {
            BaseFragment baseFragment = (BaseFragment) this.u.get(0);
            if (baseFragment instanceof PlayBaseFragment) {
                ((PlayBaseFragment) baseFragment).editMode(false);
                return;
            }
            return;
        }
        this.F = z;
        if (this.M != null) {
            this.p.setVisibility((z || this.G) ? 8 : 0);
            V1(!z);
            this.m.setTabChildEnable(!z);
            h2();
            ImageView imageView = this.z;
            if (imageView != null) {
                imageView.setEnabled(!z);
            }
            this.q.setVisibility(z ? 0 : 8);
            k2();
            PlayBaseFragment.d dVar = this.mEditModeListener;
            if (dVar != null) {
                dVar.d(z, i, z2);
            }
            if (!z) {
                BaseFragment baseFragment2 = (BaseFragment) this.u.get(this.n.getCurrentItem());
                if (baseFragment2 instanceof PlayBaseFragment) {
                    ((PlayBaseFragment) baseFragment2).editMode(false);
                }
                this.C.setText(getResources().getString(R.string.video));
            }
            this.mAllCheckBox.setVisibility(z ? 0 : 8);
            this.mAllCheckBox.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.J1(view);
                }
            });
            updateAppBarLayoutBehavior(z);
            Y0(z);
        }
    }

    public final void t1(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        CustomTabLayoutNew customTabLayoutNew = this.m;
        customTabLayoutNew.selectTab(customTabLayoutNew.getTabAt(this.n.getCurrentItem()));
    }

    public final void v1(ArrayList arrayList) {
        Log.e("VideoMainFragment", "loadData queryAllVideoStates " + arrayList.size());
        g2(arrayList);
        if (this.x.size() <= 0 || !this.T) {
            return;
        }
        O1();
        this.T = false;
    }

    public final void z1() {
        try {
            this.m0.dismiss();
        } catch (Exception e2) {
            Log.w("VideoMainFragment", "hideCollectLayoutGuideTip error: " + e2.getMessage());
        }
    }
}
