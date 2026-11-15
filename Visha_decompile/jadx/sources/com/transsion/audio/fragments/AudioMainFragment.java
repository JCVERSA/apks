package com.transsion.audio.fragments;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.tencent.mmkv.MMKV;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioFilterMainActivity;
import com.transsion.audio.fragments.AudioMainFragment;
import com.transsion.audio.shortcut.AudioShortCutHelper;
import com.transsion.audio.shortcut.ShortcutObserver;
import com.transsion.data.Repository;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.effectengine.bounceeffect.IOverScrollListener;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.adapter.RtlPageAdapter2;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.videomodel.MainViewModel;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.CustomTabLayoutNew;
import com.transsion.widgets.RoundImageView;
import com.transsion.widgetslib.widget.OSIconTextView;
import defpackage.a9;
import defpackage.adc;
import defpackage.cs;
import defpackage.ea7;
import defpackage.ed7;
import defpackage.f5;
import defpackage.h27;
import defpackage.ha1;
import defpackage.hb0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pp3;
import defpackage.qha;
import defpackage.r06;
import defpackage.rc7;
import defpackage.rcc;
import defpackage.sy5;
import defpackage.t08;
import defpackage.t74;
import defpackage.uy5;
import defpackage.vb;
import defpackage.vf;
import defpackage.vha;
import defpackage.w6c;
import defpackage.xdc;
import defpackage.ydc;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

public class AudioMainFragment extends PlayBaseFragment implements View.OnClickListener {
    public ImageView B;
    public TextView C;
    public MainViewModel D;
    public View E;
    public View F;
    public View G;
    public View H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public AdItemBean M;
    public ConstraintLayout N;
    public OSIconTextView O;
    public OSIconTextView P;
    public ImageView Q;
    public int R;
    public boolean T;
    public FrameLayout V;
    public ShortcutObserver X;
    public ObjectAnimator a0;
    public Animator b0;
    public int c0;
    public int d0;
    public ViewTreeObserver.OnPreDrawListener e0;
    public int f0;
    public boolean g0;
    public boolean l;
    public CustomTabLayoutNew m;
    public ViewPager2 n;
    public RtlPageAdapter2 o;
    public OSIconTextView p;
    public View q;
    public ImageView r;
    public ImageView s;
    public CheckBox t;
    public String[] u;
    public Handler v;
    public View w;
    public View x;
    public List y;
    public TextView z;
    public boolean A = true;
    public int S = 0;
    public final float U = 30.0f;
    public boolean W = true;
    public final ViewPager2.OnPageChangeCallback Y = new a();
    public PlayBaseFragment.d Z = new b();

    public class a extends ViewPager2.OnPageChangeCallback {
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
            List list;
            AudioMainFragment.this.o.t(i);
            if (((PlayBaseFragment) AudioMainFragment.this).showShuffleMap.containsKey(Integer.valueOf(i)) && Boolean.TRUE.equals(((PlayBaseFragment) AudioMainFragment.this).showShuffleMap.get(Integer.valueOf(i)))) {
                AudioMainFragment.this.setShuffleBtnVisible(true, "audio");
            } else {
                AudioMainFragment.this.setShuffleBtnVisible(false, "audio");
            }
            if (pp3.y) {
                AudioMainFragment.this.A = i == 0 || i == 3 || i == 6 || i == 7;
            } else {
                AudioMainFragment.this.A = i == 0 || i == 3 || i == 5 || i == 6;
            }
            AudioMainFragment audioMainFragment = AudioMainFragment.this;
            audioMainFragment.R = i;
            List list2 = audioMainFragment.y;
            if (list2 != null && list2.size() > i && AudioMainFragment.this.y.get(i) != null && (AudioMainFragment.this.y.get(i) instanceof AudioBaseFragment)) {
                ((AudioBaseFragment) AudioMainFragment.this.y.get(i)).r = true;
            }
            if (i >= 0 && (list = AudioMainFragment.this.y) != null && i < list.size() && AudioMainFragment.this.y.get(i) != null) {
                if (AudioMainFragment.this.y.get(i) != null && (AudioMainFragment.this.y.get(i) instanceof BaseFragment)) {
                    ((BaseFragment) AudioMainFragment.this.y.get(i)).onSelectInViewPage();
                    ((BaseFragment) AudioMainFragment.this.y.get(i)).onSelectTabViewPager();
                }
                for (int i2 = 0; i2 < AudioMainFragment.this.y.size(); i2++) {
                    if (i != i2 && (AudioMainFragment.this.y.get(i2) instanceof BaseFragment) && ((BaseFragment) AudioMainFragment.this.y.get(i2)).mIsSelectByViewPager) {
                        ((BaseFragment) AudioMainFragment.this.y.get(i2)).onUnSelectInViewPage();
                        ((BaseFragment) AudioMainFragment.this.y.get(i2)).onUnSelectTabViewPager();
                    }
                }
            }
            AudioMainFragment.this.B1(true);
        }
    }

    public class b implements PlayBaseFragment.d {
        public b() {
        }

        @Override
        public void b(ArrayList arrayList, boolean z, boolean z2) {
            String string;
            if (((PlayBaseFragment) AudioMainFragment.this).mEditModeListener != null) {
                ((PlayBaseFragment) AudioMainFragment.this).mEditModeListener.b(arrayList, z, z2);
            }
            int size = arrayList.size();
            AudioMainFragment.this.t.setChecked(z);
            if (AudioMainFragment.this.z != null) {
                TextView textView = AudioMainFragment.this.z;
                AudioMainFragment audioMainFragment = AudioMainFragment.this;
                if (size == 0) {
                    string = ((BaseFragment) audioMainFragment).mContext.getString(R.string.none_select);
                } else {
                    string = ((BaseFragment) audioMainFragment).mContext.getString(size > 1 ? R.string.items : R.string.item, Integer.valueOf(size));
                }
                textView.setText(string);
            }
        }

        @Override
        public void d(final boolean z, final int i, final boolean z2) {
            ThreadUtils.t(new Runnable() {
                @Override
                public final void run() {
                    this.b.f(z, i, z2);
                }
            }, 50L);
        }

        public final void f(boolean z, int i, boolean z2) {
            AudioMainFragment.this.startEditMode(z, i, z2);
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            AudioMainFragment audioMainFragment = AudioMainFragment.this;
            ((AudioBaseFragment) audioMainFragment.y.get(audioMainFragment.n.getCurrentItem())).selectAll(AudioMainFragment.this.t.isChecked());
        }
    }

    public class d extends AnimatorListenerAdapter {
        public final boolean b;

        public d(boolean z) {
            this.b = z;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (((PlayBaseFragment) AudioMainFragment.this).mMenuLayout != null) {
                ((PlayBaseFragment) AudioMainFragment.this).mMenuLayout.setVisibility(this.b ? 8 : 0);
            }
            if (AudioMainFragment.this.n != null) {
                AudioMainFragment.this.n.setTranslationY(0.0f);
            }
        }
    }

    public class e extends AnimatorListenerAdapter {
        public final ViewGroup.LayoutParams b;
        public final int c;

        public e(ViewGroup.LayoutParams layoutParams, int i) {
            this.b = layoutParams;
            this.c = i;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            ViewGroup.LayoutParams layoutParams;
            if (((PlayBaseFragment) AudioMainFragment.this).mMenuLayout != null && (layoutParams = this.b) != null) {
                layoutParams.height = this.c;
                ((PlayBaseFragment) AudioMainFragment.this).mMenuLayout.setLayoutParams(this.b);
                ((PlayBaseFragment) AudioMainFragment.this).mMenuLayout.setVisibility(0);
            }
            if (AudioMainFragment.this.n != null) {
                AudioMainFragment.this.n.setTranslationY(0.0f);
            }
            AudioMainFragment.this.U0();
        }
    }

    public class f extends RecyclerView.SimpleOnItemTouchListener {
        public float b;
        public float c;

        public f() {
        }

        /* JADX WARN: Code duplicated, block: B:20:0x004c  */
        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            if (AudioMainFragment.this.I || AudioMainFragment.this.K) {
                Log.d("AudioMainFragment", "onInterceptTouchEvent, mEditMode: " + AudioMainFragment.this.I + " mDragMode: " + AudioMainFragment.this.K);
            } else {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.b = motionEvent.getX();
                    this.c = motionEvent.getY();
                    AudioMainFragment.this.y1(true);
                } else if (action == 1) {
                    AudioMainFragment.this.y1(true);
                } else if (action == 2) {
                    float x = motionEvent.getX() - this.b;
                    float y = motionEvent.getY() - this.c;
                    if (Math.abs(y) > Math.abs(x) && Math.abs(y) > 30.0f) {
                        AudioMainFragment.this.y1(false);
                    }
                } else if (action == 3) {
                    AudioMainFragment.this.y1(true);
                }
            }
            return false;
        }
    }

    private void H1() {
        BaseActivity baseActivity = this.mActivity;
        boolean zIsHaveFilePermission = baseActivity instanceof BasePermissionActivity ? ((BasePermissionActivity) baseActivity).isHaveFilePermission() : t08.c(this.mContext);
        boolean z = zIsHaveFilePermission || t08.b(this.mContext);
        if (!zIsHaveFilePermission && !z) {
            Y0();
        }
        View view = this.F;
        if (view != null) {
            view.setVisibility((zIsHaveFilePermission || z) ? 0 : 8);
        }
        View view2 = this.G;
        if (view2 != null) {
            view2.setVisibility((zIsHaveFilePermission || z) ? 0 : 8);
        }
        View view3 = this.E;
        if (view3 != null) {
            view3.setVisibility((zIsHaveFilePermission || z) ? false : true ? 0 : 8);
        }
    }

    private void X0() {
        this.Q.setVisibility(8);
        w6c.r(this.mContext, "show_audio_sort_point", false);
    }

    private void a1() {
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
        this.mSimpleOnItemTouchListener = new f();
        this.y = new ArrayList();
        AudioBaseFragment audioBaseFragment = (AudioBaseFragment) AudiosFragment.a3(21).setBaseActivity((BaseActivity) getActivity());
        audioBaseFragment.setBounceListener(this.mBounceListener);
        audioBaseFragment.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        audioBaseFragment.setOverScrollListener(this.mOverScrollListener);
        audioBaseFragment.setParentVisible(this.mIsVisibleToUser);
        audioBaseFragment.setEditModeListener(this.Z);
        audioBaseFragment.setDragAnimationView(this.N);
        audioBaseFragment.setAppBar(this.mAppBarLayout, null);
        this.y.add(audioBaseFragment);
        AudioBaseFragment audioBaseFragment2 = (AudioBaseFragment) new PlayListFoldersFragment().setBaseActivity((BaseActivity) getActivity());
        audioBaseFragment2.setBounceListener(this.mBounceListener);
        audioBaseFragment2.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        audioBaseFragment2.setOverScrollListener(this.mOverScrollListener);
        audioBaseFragment2.setAppBar(this.mAppBarLayout, null);
        this.y.add(audioBaseFragment2);
        AudioBaseFragment audioBaseFragment3 = (AudioBaseFragment) AudioFoldersFragment.f2(27).setBaseActivity((BaseActivity) getActivity());
        audioBaseFragment3.setBounceListener(this.mBounceListener);
        audioBaseFragment3.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        audioBaseFragment3.setOverScrollListener(this.mOverScrollListener);
        audioBaseFragment3.setAppBar(this.mAppBarLayout, null);
        this.y.add(audioBaseFragment3);
        if (pp3.y) {
            AudioBaseFragment audioBaseFragment4 = (AudioBaseFragment) AudiosFragment.a3(24).setBaseActivity((BaseActivity) getActivity());
            audioBaseFragment4.setBounceListener(this.mBounceListener);
            audioBaseFragment4.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
            audioBaseFragment4.setOverScrollListener(this.mOverScrollListener);
            audioBaseFragment4.setEditModeListener(this.Z);
            audioBaseFragment4.setAppBar(this.mAppBarLayout, null);
            this.y.add(audioBaseFragment4);
        }
        AudioBaseFragment audioBaseFragment5 = (AudioBaseFragment) AudioFoldersFragment.f2(25).setBaseActivity(baseActivity());
        audioBaseFragment5.setBounceListener(this.mBounceListener);
        audioBaseFragment5.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        audioBaseFragment5.setOverScrollListener(this.mOverScrollListener);
        audioBaseFragment5.setAppBar(this.mAppBarLayout, null);
        this.y.add(audioBaseFragment5);
        AudioBaseFragment audioBaseFragment6 = (AudioBaseFragment) ArtistListFragment.T1(26).setBaseActivity(baseActivity());
        audioBaseFragment6.setBounceListener(this.mBounceListener);
        audioBaseFragment6.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        audioBaseFragment6.setOverScrollListener(this.mOverScrollListener);
        audioBaseFragment6.setAppBar(this.mAppBarLayout, null);
        this.y.add(audioBaseFragment6);
        AudioBaseFragment audioBaseFragment7 = (AudioBaseFragment) PlayListFragment.a4(53).setBaseActivity(baseActivity());
        audioBaseFragment7.setBounceListener(this.mBounceListener);
        audioBaseFragment7.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        audioBaseFragment7.setOverScrollListener(this.mOverScrollListener);
        audioBaseFragment7.setEditModeListener(this.Z);
        audioBaseFragment7.setAppBar(this.mAppBarLayout, null);
        this.y.add(audioBaseFragment7);
        AudioBaseFragment audioBaseFragment8 = (AudioBaseFragment) PlayListFragment.a4(32).setBaseActivity(baseActivity());
        audioBaseFragment8.setBounceListener(this.mBounceListener);
        audioBaseFragment8.setRvSimpleTouchListener(this.mSimpleOnItemTouchListener);
        audioBaseFragment8.setOverScrollListener(this.mOverScrollListener);
        audioBaseFragment8.setEditModeListener(this.Z);
        audioBaseFragment8.setAppBar(this.mAppBarLayout, null);
        this.y.add(audioBaseFragment8);
        RtlPageAdapter2 rtlPageAdapter2 = new RtlPageAdapter2(this, this.y, this.u);
        this.o = rtlPageAdapter2;
        this.n.setOffscreenPageLimit(rtlPageAdapter2.getItemCount());
        rcc.c(this.n, this.o, this.Y, new Runnable() {
            @Override
            public final void run() {
                this.b.o1();
            }
        });
        this.S = getResources().getConfiguration().orientation;
    }

    public static boolean f1(ShortcutInfoCompat shortcutInfoCompat) {
        return "visha_audio_shortcut".equals(shortcutInfoCompat.getId());
    }

    public static void r1(Object obj) {
    }

    public final void A1(boolean z) {
        OSIconTextView oSIconTextView;
        try {
            if (!ydc.e() && z && (oSIconTextView = this.O) != null && oSIconTextView.getVisibility() == 0 && Repository.INSTANCE.mainTab == 1 && MMKV.p().e("mmkv_key_show_filter_tip", false)) {
                this.O.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.s1();
                    }
                }, 200L);
            }
        } catch (Exception e2) {
            Log.e("AudioMainFragment", "showFilterUpdateGuide error", e2);
        }
    }

    public final void B1(boolean z) {
        boolean z2 = z && this.R == 0 && this.W;
        OSIconTextView oSIconTextView = this.O;
        if (oSIconTextView != null) {
            oSIconTextView.setVisibility(z2 ? 0 : 8);
        }
        C1(z2);
    }

    public final void C1(boolean z) {
        FrameLayout frameLayout = this.V;
        if (frameLayout != null) {
            int i = 8;
            frameLayout.setVisibility(z ? 0 : 8);
            boolean zC = w6c.c(this.mContext, "show_audio_sort_point", true);
            ImageView imageView = this.Q;
            if (zC && !ydc.e()) {
                i = 0;
            }
            imageView.setVisibility(i);
        }
    }

    public final void D1() {
        adc.s(this.n, this.n.getWidth(), new cs(this));
    }

    public final void E1() {
        adc.u(this.n, new cs(this));
    }

    public final void F1(float f2, float f3, boolean z) {
        ViewPager2 viewPager2 = this.n;
        if (viewPager2 == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewPager2, "translationY", f2, f3);
        this.a0 = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(200L);
        this.a0.setInterpolator(new AccelerateInterpolator());
        this.a0.addListener(new d(z));
        this.a0.start();
    }

    public final void G1() {
        if (this.M == null || this.I) {
            this.r.setVisibility(8);
            return;
        }
        ImageView imageView = this.r;
        if (imageView != null) {
            imageView.setVisibility(qha.b(this.mContext) ? 0 : 8);
        }
        u1();
    }

    public final void I1() {
        ImageView imageView = this.s;
        if (imageView == null) {
            return;
        }
        imageView.setVisibility(this.L || this.K || this.J || this.I || ydc.b ? 8 : 0);
    }

    public final void J1() {
        ImageView imageView = this.B;
        if (imageView == null || this.z == null) {
            return;
        }
        boolean z = (this.I || this.K || this.J || this.mScreenType != BaseConstant.SCREEN_TYPE.FOLD) ? false : true;
        if (pp3.c) {
            imageView.setVisibility(8);
            this.C.setVisibility(z ? 0 : 8);
        } else {
            imageView.setVisibility(z ? 0 : 8);
            this.C.setVisibility(8);
        }
        this.z.setVisibility(!z ? 0 : 8);
        if (!this.I) {
            this.z.setText(getResources().getString(R.string.music));
        }
        int i = W0() ? 8 : 0;
        this.p.setVisibility(i);
        B1(i == 0);
        ViewGroup.LayoutParams layoutParams = this.H.getLayoutParams();
        layoutParams.width = com.transsion.utils.a.d(this.mContext, (this.I || this.K) ? 18.0f : 24.0f);
        this.H.setLayoutParams(layoutParams);
        G1();
    }

    public final void R0(boolean z) {
        if (this.mMenuLayout == null || this.n == null) {
            if (z) {
                return;
            }
            U0();
            return;
        }
        T0();
        int iX1 = x1();
        if (z) {
            if (iX1 > 0 && this.n.getTop() > iX1) {
                F1(this.n.getTranslationY(), -iX1, true);
                return;
            } else {
                this.mMenuLayout.setVisibility(8);
                this.n.setTranslationY(0.0f);
                return;
            }
        }
        if (iX1 <= 0) {
            iX1 = com.transsion.utils.a.d(this.mContext, 50.0f);
        }
        final ViewGroup.LayoutParams layoutParams = this.mMenuLayout.getLayoutParams();
        layoutParams.height = 0;
        this.mMenuLayout.setLayoutParams(layoutParams);
        this.mMenuLayout.setVisibility(0);
        this.n.setTranslationY(0.0f);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, iX1);
        valueAnimatorOfInt.setDuration(200L);
        valueAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.b.d1(layoutParams, valueAnimator);
            }
        });
        valueAnimatorOfInt.addListener(new e(layoutParams, iX1));
        this.b0 = valueAnimatorOfInt;
        valueAnimatorOfInt.start();
    }

    public final boolean S0() {
        if (!isResumed() || isHidden() || this.n == null || this.o == null) {
            return false;
        }
        Fragment parentFragment = getParentFragment();
        return parentFragment == null || !parentFragment.isHidden();
    }

    public final void T0() {
        this.d0++;
        w1();
        ObjectAnimator objectAnimator = this.a0;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.a0.cancel();
            this.a0 = null;
        }
        Animator animator = this.b0;
        if (animator != null) {
            animator.removeAllListeners();
            this.b0.cancel();
            this.b0 = null;
        }
    }

    public final void U0() {
        int currentItem;
        updateAppBarLayoutBehavior(false);
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null) {
            dVar.d(false, this.f0, this.g0);
        }
        List list = this.y;
        if (list != null && this.n != null && !list.isEmpty() && (currentItem = this.n.getCurrentItem()) >= 0 && currentItem < this.y.size()) {
            BaseFragment baseFragment = (BaseFragment) this.y.get(currentItem);
            if (baseFragment instanceof PlayBaseFragment) {
                ((PlayBaseFragment) baseFragment).editMode(false);
            }
        }
        if (this.showShuffleMap.containsKey(Integer.valueOf(this.R))) {
            setShuffleBtnVisible(true, "audio");
        }
    }

    public final int V0() {
        List list;
        int selectedTabPosition;
        int currentItem;
        ViewPager2 viewPager2 = this.n;
        if (viewPager2 != null && (currentItem = viewPager2.getCurrentItem()) >= 0) {
            return currentItem;
        }
        CustomTabLayoutNew customTabLayoutNew = this.m;
        if (customTabLayoutNew != null && (selectedTabPosition = customTabLayoutNew.getSelectedTabPosition()) >= 0) {
            return selectedTabPosition;
        }
        int i = this.R;
        if (i < 0 || (list = this.y) == null || i >= list.size()) {
            return 0;
        }
        return this.R;
    }

    public final boolean W0() {
        return this.J || this.I || this.K;
    }

    public void Y0() {
        View view;
        int i;
        if (this.E != null || (view = this.x) == null) {
            return;
        }
        View viewInflate = ((ViewStub) view.findViewById(R.id.audio_main_empty_view)).inflate();
        this.E = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.text_no_audios);
        Resources resources = getResources();
        if (pp3.t) {
            i = pp3.c ? R.string.permission_all_file_1_pre : R.string.permission_all_file_1;
        } else {
            i = pp3.c ? R.string.permission_write_extenal_1_pre : R.string.permission_write_extenal_1;
        }
        textView.setText(resources.getString(i));
        TextView textView2 = (TextView) this.E.findViewById(R.id.add_play_list_tv);
        textView2.setVisibility(0);
        textView2.setText(R.string.permission_go);
        textView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.e1(view2);
            }
        });
    }

    public final void Z0() {
        View view;
        if (this.x != null || (view = this.w) == null) {
            return;
        }
        View viewInflate = ((ViewStub) view.findViewById(R.id.audio_fragment_main_layout)).inflate();
        this.x = viewInflate;
        this.F = viewInflate.findViewById(R.id.top_menu_ll);
        this.G = viewInflate.findViewById(R.id.audio_main_layout);
        this.m = (CustomTabLayoutNew) viewInflate.findViewById(R.id.tab_layout);
        c1(viewInflate);
        this.q = viewInflate.findViewById(R.id.title_bar_back);
        this.B = (ImageView) viewInflate.findViewById(R.id.iv_logo);
        this.C = (TextView) viewInflate.findViewById(R.id.tv_logo_text);
        this.q.setOnClickListener(this);
        this.t = (CheckBox) viewInflate.findViewById(R.id.title_bar_checkBox);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_ad_tip_menu);
        this.r = imageView;
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.onClick(view2);
            }
        });
        this.M = xdc.d();
        OSIconTextView oSIconTextView = (OSIconTextView) viewInflate.findViewById(R.id.iv_search);
        this.p = oSIconTextView;
        oSIconTextView.setOnClickListener(this);
        this.z = (TextView) viewInflate.findViewById(R.id.tv_title);
        this.mAudioSortPoint = (ImageView) viewInflate.findViewById(R.id.iv_point);
        this.H = viewInflate.findViewById(R.id.view_padding_start);
        this.s = (ImageView) viewInflate.findViewById(R.id.iv_audio_shortcut);
        RoundImageView roundImageView = (RoundImageView) viewInflate.findViewById(R.id.iv_play_shuffle);
        this.mIvShufflePlayBtn = roundImageView;
        if (roundImageView != null) {
            roundImageView.setOnClickListener(this);
        }
        this.X = new ShortcutObserver(new Handler(), getApplicationContext(), this.s);
        if (!ydc.b) {
            mc7.K(this).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.g1((AudioMainFragment) obj);
                }
            }).d0(k29.c()).M(vb.a()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.h1((Pair) obj);
                }
            });
        }
        this.mMenuLayout = (ViewGroup) viewInflate.findViewById(R.id.menu_tab_layout);
        this.mAppBarLayout = (AppBarLayout) viewInflate.findViewById(R.id.app_bar);
        OSIconTextView oSIconTextView2 = (OSIconTextView) viewInflate.findViewById(R.id.audio_filter);
        this.O = oSIconTextView2;
        if (oSIconTextView2 != null) {
            oSIconTextView2.setOnClickListener(new ha1(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.i1(view2);
                }
            }));
        }
        this.V = (FrameLayout) viewInflate.findViewById(R.id.ll_sort_layout);
        this.P = (OSIconTextView) viewInflate.findViewById(R.id.audio_main_sort);
        this.Q = (ImageView) viewInflate.findViewById(R.id.iv_main_point);
        OSIconTextView oSIconTextView3 = this.P;
        if (oSIconTextView3 != null) {
            oSIconTextView3.setOnClickListener(new ha1(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.j1(view2);
                }
            }));
        }
        J1();
        a1();
        b1();
        this.D = (MainViewModel) getViewModelByActivity(MainViewModel.class);
        ImageView imageView2 = this.B;
        if (imageView2 == null || !pp3.p) {
            return;
        }
        imageView2.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public final boolean onLongClick(View view2) {
                return this.b.k1(view2);
            }
        });
        this.B.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public final boolean onLongClick(View view2) {
                return this.b.l1(view2);
            }
        });
        this.C.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public final boolean onLongClick(View view2) {
                return this.b.m1(view2);
            }
        });
    }

    public final void b1() {
        if (this.u != null) {
            ArrayList arrayList = new ArrayList(Arrays.asList(Integer.valueOf(R.drawable.ic_media_tab_all), Integer.valueOf(R.drawable.ic_media_tab_play_list), Integer.valueOf(R.drawable.ic_media_tab_folder), Integer.valueOf(R.drawable.ic_media_tab_mv), Integer.valueOf(R.drawable.ic_media_tab_album), Integer.valueOf(R.drawable.ic_media_tab_artist), Integer.valueOf(R.drawable.ic_media_tab_often_listen), Integer.valueOf(R.drawable.ic_media_tab_history)));
            ArrayList arrayList2 = new ArrayList(Arrays.asList(this.u));
            if (!pp3.y) {
                arrayList2.remove(3);
                arrayList.remove(3);
            }
            this.m.setNames(arrayList2);
            this.m.setIcons(arrayList);
        }
        this.m.setupWithViewPager(this.n);
        this.m.isFirstLevelTab(true);
        this.m.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.b.p1(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
    }

    public void c1(View view) {
        this.n = (ViewPager2) view.findViewById(R.id.show_audio_pager);
    }

    public final void d1(ViewGroup.LayoutParams layoutParams, ValueAnimator valueAnimator) {
        if (this.mMenuLayout == null || layoutParams == null) {
            return;
        }
        layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.mMenuLayout.setLayoutParams(layoutParams);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        Object obj;
        super.didReceivedNotification(i, objArr);
        if (i == 1081) {
            H1();
            return;
        }
        boolean zBooleanValue = false;
        if (i == 1142) {
            Log.d("AudioMainFragment", "EVENT_AUDIO_MANUAL_SORT ,is Manual Sort :" + ((Boolean) objArr[0]) + ", from:" + ((Integer) objArr[1]).intValue());
            startDragMode(((Boolean) objArr[0]).booleanValue(), ((Integer) objArr[1]).intValue(), false);
            return;
        }
        if (i == 1156) {
            if (((Integer) objArr[0]).intValue() == BaseFragment.SCROLL_START) {
                hideShuffleBtn();
                return;
            } else {
                if (this.I || this.K) {
                    return;
                }
                showShuffleBtn();
                return;
            }
        }
        if (i == 1162) {
            try {
                Boolean bool = (Boolean) objArr[0];
                boolean zBooleanValue2 = bool.booleanValue();
                Integer num = (Integer) objArr[1];
                int iIntValue = num.intValue();
                this.showShuffleMap.put(num, bool);
                if (this.showShuffleMap.containsKey(Integer.valueOf(this.R)) && this.R == iIntValue) {
                    setShuffleBtnVisible(zBooleanValue2, "audio");
                    return;
                }
                return;
            } catch (Exception e2) {
                LogUtils.m("AudioMainFragment", e2.getMessage());
                return;
            }
        }
        if (i != 1169) {
            if (i == 1180 && (obj = objArr[0]) != null && (obj instanceof Boolean)) {
                this.W = ((Boolean) obj).booleanValue();
                B1(!W0());
                return;
            }
            return;
        }
        Object obj2 = objArr[0];
        if (obj2 != null && (obj2 instanceof Boolean)) {
            zBooleanValue = ((Boolean) obj2).booleanValue();
        }
        this.L = !zBooleanValue;
        I1();
    }

    public final void e1(View view) {
        t08.l(getActivity());
    }

    public final Pair g1(AudioMainFragment audioMainFragment) {
        return new Pair(Boolean.valueOf(AudioShortCutHelper.e(this.mActivity)), Boolean.valueOf(ShortcutManagerCompat.getShortcuts(getApplicationContext(), 4).stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AudioMainFragment.f1((ShortcutInfoCompat) obj);
            }
        })));
    }

    @Override
    public int getDefaultListFlag() {
        int iV0;
        List list = this.y;
        if (list == null || list.isEmpty() || (iV0 = V0()) < 0 || iV0 >= this.y.size()) {
            return 21;
        }
        return ((BaseFragment) this.y.get(iV0)).getListFlag();
    }

    public final void h1(Pair pair) {
        Object obj;
        try {
            if (!isAdded() || isDetached() || pair == null || (obj = pair.first) == null || pair.second == null || !((Boolean) obj).booleanValue() || this.s == null || getContext() == null || getContext().getApplicationContext() == null) {
                return;
            }
            this.s.setOnClickListener(this);
            getApplicationContext().getContentResolver().registerContentObserver(Settings.Global.CONTENT_URI, true, this.X);
            this.L = ((Boolean) pair.second).booleanValue();
            I1();
        } catch (Exception e2) {
            Log.e("AudioMainFragment", "isSupportShortCut error " + e2.getMessage());
        }
    }

    public final void i1(View view) {
        f5.c(new Intent(this.mContext, (Class<?>) AudioFilterMainActivity.class), this.mContext);
        hb0.markDirect("vd_audio_filt_cl");
        if (MMKV.p().c("mmkv_key_show_filter_tip")) {
            return;
        }
        MMKV.p().y("mmkv_key_show_filter_tip", false);
        MMKV.p().t("mmkv_key_listen_music_count", 3);
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1081);
        this.mEvents.add(1142);
        this.mEvents.add(1156);
        this.mEvents.add(1162);
        this.mEvents.add(1169);
        this.mEvents.add(1180);
    }

    public final void j1(View view) {
        h27.c().e(1024, view);
        X0();
    }

    public final boolean k1(View view) {
        this.B.setHapticFeedbackEnabled(!RouterUtils.jumpToPrivacyRoomOnLongClick(this.mContext, 1, 3));
        return true;
    }

    public final boolean l1(View view) {
        return RouterUtils.jumpToPrivacyRoomOnLongClick(this.mContext, 1, 3);
    }

    public final boolean m1(View view) {
        return RouterUtils.jumpToPrivacyRoomOnLongClick(this.mContext, 1, 3);
    }

    @Override
    public void markBottomTabPageShow() {
        super.markBottomTabPageShow();
        mc7.h(new ed7() {
            @Override
            public final void subscribe(rc7 rc7Var) {
                this.a.q1(rc7Var);
            }
        }).g(bindToLifecycle()).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                AudioMainFragment.r1(obj);
            }
        });
    }

    @Override
    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.markPointScreenTypeChange(screen_type);
        if (!this.mIsVisibleToUser || this.mIsHide) {
            return;
        }
        r06.c(screen_type, "vd_audio_show");
    }

    @Override
    public void markPointVisiable(boolean z) {
        super.markPointVisiable(z);
        if (this.mAttach && this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            u1();
        }
    }

    public final void n1(float f2) {
        y1(f2 == 0.0f);
    }

    @Override
    public void notifyMiniBarVisible(boolean z) {
        super.notifyMiniBarVisible(z);
        List list = this.y;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator it = this.y.iterator();
        while (it.hasNext()) {
            ((BaseFragment) ((Fragment) it.next())).notifyMiniBarVisible(z);
        }
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
        List list;
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
                eVar.a(2);
                return;
            }
            return;
        }
        if (view.getId() == R.id.title_bar_back) {
            if (this.K) {
                startDragMode(false, 21, false);
                return;
            } else {
                startEditMode(false, 21, false);
                return;
            }
        }
        if (view.getId() == R.id.iv_ad_tip_menu) {
            RouterUtils.jumpFromAdViewResult(this.mActivity, false, this.M);
            AdItemBean adItemBean = this.M;
            if (adItemBean != null) {
                a9.b(adItemBean.getJumpLink(), this.M.getId(), "vd_ad_icon_cl");
                return;
            }
            return;
        }
        if (view.getId() == R.id.iv_audio_shortcut) {
            AudioShortCutHelper.g(this.mActivity, false);
            sy5.c(AudioShortCutHelper.d(this.mActivity, "visha_audio_shortcut"));
        } else {
            if (view.getId() != R.id.iv_play_shuffle || (list = this.y) == null) {
                return;
            }
            int size = list.size();
            int i = this.R;
            if (size > i) {
                ((BaseFragment) this.y.get(i)).startShufflePlay();
            }
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (z1()) {
            if (S0()) {
                D1();
            } else {
                this.S = 0;
                this.T = true;
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.u = getResources().getStringArray(R.array.audio_tab_list);
        this.v = new Handler(Looper.getMainLooper());
        registerBottomBarVisibleChanged();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.w = viewOnCreateView;
        return viewOnCreateView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        ViewPager2 viewPager2 = this.n;
        if (viewPager2 != null) {
            viewPager2.unregisterOnPageChangeCallback(this.Y);
            this.n.setAdapter(null);
        }
        this.o = null;
        CustomTabLayoutNew customTabLayoutNew = this.m;
        if (customTabLayoutNew != null) {
            customTabLayoutNew.setupWithViewPager(null);
        }
        this.n = null;
        super.onDestroyView();
        this.w = null;
        this.x = null;
        Handler handler = this.v;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        List list = this.y;
        if (list != null && !list.isEmpty()) {
            for (Fragment fragment : this.y) {
                if (fragment instanceof PlayBaseFragment) {
                    ((PlayBaseFragment) fragment).setEditModeListener(null);
                }
            }
        }
        if (this.X != null) {
            getApplicationContext().getContentResolver().unregisterContentObserver(this.X);
            this.X = null;
        }
    }

    @Override
    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        super.onFragmentScreenTypeChange(screen_type);
        J1();
    }

    @Override
    public int onLayoutId() {
        return R.layout.audio_fragment_main;
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.l = true;
        H1();
        if (MMKV.p().c("mmkv_key_show_filter_tip")) {
            A1(true);
        }
        if (z1() && v1() && S0()) {
            realignNestedViewPagersIfNeeded();
        }
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
        List list = this.y;
        if (list != null) {
            int size = list.size();
            int i = this.R;
            if (size > i) {
                ((BaseFragment) this.y.get(i)).onSelectInViewPage();
            }
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        if (z1()) {
            this.T = true;
        }
    }

    @Override
    public void onUnSelectInViewPage() {
        super.onUnSelectInViewPage();
        List list = this.y;
        if (list != null) {
            int size = list.size();
            int i = this.R;
            if (size > i) {
                ((BaseFragment) this.y.get(i)).onUnSelectInViewPage();
            }
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (pp3.x(getApplicationContext())) {
            view.setPadding(pp3.g(this.mContext), 0, pp3.h(this.mContext), 0);
        }
        this.N = (ConstraintLayout) view.findViewById(R.id.cl_drag_animation_view);
        if (this.mIsVisibleToUser) {
            Z0();
        } else {
            this.v.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.Z0();
                }
            }, 800L);
        }
        super.onViewCreatedEnd(view, bundle);
    }

    @Override
    public void onVisibleChanged(boolean z) {
        super.onVisibleChanged(z);
        BaseFragment.d dVar = this.mMenuShowListener;
        if (dVar != null) {
            dVar.a(z);
        }
        List list = this.y;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator it = this.y.iterator();
        while (it.hasNext()) {
            ((BaseFragment) ((Fragment) it.next())).setParentVisible(z);
        }
        A1(z);
    }

    public final void p1(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        CustomTabLayoutNew customTabLayoutNew = this.m;
        customTabLayoutNew.selectTab(customTabLayoutNew.getTabAt(this.n.getCurrentItem()));
    }

    public final void q1(rc7 rc7Var) {
        Context context = this.mContext;
        if (context != null) {
            uy5.g(MainApp.q ? "on" : "off", this.mScreenType, this.mFromSource, AudioShortCutHelper.d(context, "visha_audio_shortcut"), vf.e(this.mContext));
        }
        rc7Var.onNext(Boolean.TRUE);
        rc7Var.onComplete();
    }

    @Override
    public void realignNestedViewPagersIfNeeded() {
        if (z1() && v1()) {
            if (!S0()) {
                this.T = true;
            } else {
                this.T = false;
                E1();
            }
        }
    }

    @Override
    public void refresh() {
        Log.d("AudioMainFragment", "refresh");
    }

    @Override
    public void releaseWhenDestroyView() {
        super.releaseWhenDestroyView();
        T0();
    }

    public final void s1() {
        if (getContext() != null) {
            ea7.p(this.O, getString(R.string.audio_filter_not_need), 8388693);
            MMKV.p().y("mmkv_key_show_filter_tip", false);
        }
    }

    @Override
    public void setHiddenChanged(boolean z) {
        super.setHiddenChanged(z);
        List list = this.y;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator it = this.y.iterator();
        while (it.hasNext()) {
            ((BaseFragment) ((Fragment) it.next())).setParentVisible(!z);
        }
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
    public void startDragMode(boolean z, int i, boolean z2) {
        if (this.K == z) {
            return;
        }
        Log.d("AudioMainFragment", "startDragMode: enter = " + z + ", listFlag = " + i + ", isVideo = " + z2);
        super.startDragMode(z, i, z2);
        this.K = z;
        this.p.setVisibility((z || this.J) ? 8 : 0);
        I1();
        y1(!z);
        this.m.setTabChildEnable(!z);
        this.q.setVisibility(z ? 0 : 8);
        J1();
        if (!z) {
            BaseFragment baseFragment = (BaseFragment) this.y.get(this.n.getCurrentItem());
            if (baseFragment instanceof PlayBaseFragment) {
                ((PlayBaseFragment) baseFragment).startDragMode(false, i, z2);
            }
        }
        this.z.setText(getResources().getString(R.string.manual_sorting));
        if (this.showShuffleMap.containsKey(Integer.valueOf(this.R))) {
            setShuffleBtnVisible(!z, "audio");
        }
    }

    @Override
    public void startEditMode(boolean z, int i, boolean z2) {
        super.startEditMode(z, i, z2);
        Log.d("AudioMainFragment", "startEditMode " + this.A + StringUtils.COMMA + z);
        if (!this.A && z) {
            BaseFragment baseFragment = (BaseFragment) this.y.get(0);
            if (baseFragment instanceof PlayBaseFragment) {
                ((PlayBaseFragment) baseFragment).editMode(false);
                return;
            }
            return;
        }
        this.I = z;
        this.p.setVisibility((z || this.J) ? 8 : 0);
        I1();
        y1(!z);
        this.m.setTabChildEnable(!z);
        this.q.setVisibility(z ? 0 : 8);
        J1();
        this.t.setVisibility(z ? 0 : 8);
        this.t.setOnClickListener(new c());
        if (!z) {
            this.f0 = i;
            this.g0 = z2;
            this.z.setText(getResources().getString(R.string.music));
            R0(false);
            return;
        }
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null) {
            dVar.d(true, i, z2);
        }
        updateAppBarLayoutBehavior(true);
        R0(true);
        if (this.showShuffleMap.containsKey(Integer.valueOf(this.R))) {
            setShuffleBtnVisible(false, "audio");
        }
    }

    public final void t1() {
        ViewPager2 viewPager2;
        if (isAdded()) {
            RtlPageAdapter2 rtlPageAdapter2 = this.o;
            if (rtlPageAdapter2 != null && (viewPager2 = this.n) != null) {
                rtlPageAdapter2.t(viewPager2.getCurrentItem());
            }
            if (getResources() != null) {
                this.S = getResources().getConfiguration().orientation;
            }
        }
    }

    public final void u1() {
        ImageView imageView;
        AdItemBean adItemBean;
        if (!this.mIsVisibleToUser || this.mIsHide || (imageView = this.r) == null || imageView.getVisibility() != 0 || (adItemBean = this.M) == null) {
            return;
        }
        a9.b(adItemBean.getJumpLink(), this.M.getId(), "vd_ad_icon_show");
    }

    public final boolean v1() {
        if (!isAdded() || getResources() == null) {
            return this.T;
        }
        return this.T || getResources().getConfiguration().orientation != this.S;
    }

    public final void w1() {
        ViewPager2 viewPager2;
        if (this.e0 != null && (viewPager2 = this.n) != null) {
            ViewTreeObserver viewTreeObserver = viewPager2.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.e0);
            }
        }
        this.e0 = null;
    }

    public final int x1() {
        ViewGroup viewGroup = this.mMenuLayout;
        if (viewGroup != null) {
            int height = viewGroup.getHeight();
            if (height <= 0 && this.mMenuLayout.getLayoutParams() != null) {
                height = this.mMenuLayout.getLayoutParams().height;
            }
            if (height > 0) {
                this.c0 = height;
            }
        }
        return this.c0;
    }

    public final void y1(boolean z) {
        ViewPager2 viewPager2 = this.n;
        if (viewPager2 != null) {
            viewPager2.setUserInputEnabled((!z || this.I || this.K) ? false : true);
        }
    }

    public final boolean z1() {
        return com.transsion.utils.a.D(this.mContext) || this.mScreenType == BaseConstant.SCREEN_TYPE.TABLE;
    }
}
