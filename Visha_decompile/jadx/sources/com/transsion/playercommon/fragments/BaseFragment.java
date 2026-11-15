package com.transsion.playercommon.fragments;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModel;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.data.Repository;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.tranquestion.VishaQuestionnaireManager;
import com.transsion.preload.OptimizeListAdapter;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.RoundImageView;
import com.transsion.widgetslib.R;
import com.trello.rxlifecycle3.components.support.RxFragment;
import defpackage.a39;
import defpackage.af9;
import defpackage.b39;
import defpackage.h27;
import defpackage.oc2;
import defpackage.pcc;
import defpackage.pp3;
import defpackage.se;
import defpackage.t06;
import defpackage.ydc;
import defpackage.yk5;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class BaseFragment extends RxFragment implements h27.b {
    public static final int BOTTOM_BAR_PADDING = 105;
    static final boolean DEBUG = true;
    public static final int DEF_BOTTOM_MARGIN = 10;
    public static final int GESTURE_NAVIGATION_HEIGHT = 15;
    public static final int MENU_ACTIVITY_FLAG_OFF = 0;
    public static final int MENU_ACTIVITY_FLAG_ON = 1;
    public static final int MINBAR_BAR_PADDING = 50;
    public static int SCROLL_END = 1;
    public static int SCROLL_START = 0;
    public static final String SHUFFLE_BTN_AUDIO_TAG = "audio";
    public static final String SHUFFLE_BTN_VIDEO_TAG = "video";
    public static final int TAB_BOTTOM_BAR_PADDING = 60;
    public static final int TAB_BOTTOM_BAR_PADDING_FOR_TABLE_FOLD = 72;
    static final String TAG = "BaseFragment";
    public static final int TOP_HISTORY_VIEW_HEIGHT = 137;
    static int mTagKey;
    ObjectAnimator fadeInt;
    ObjectAnimator fadeOut;
    protected BaseActivity mActivity;
    protected int mActivityNavigationColor;
    protected boolean mAttach;
    protected Context mContext;
    protected boolean mDataUpdated;
    private yk5 mFragmentLifecycleTransformer;
    protected String mFragmentTag;
    protected String mFromSource;
    protected boolean mIsAutoRecover;
    protected boolean mIsSecondPageShowChanged;
    public boolean mIsToSanFar;
    protected RoundImageView mIvShufflePlayBtn;
    protected d mMenuShowListener;
    public String mPreviousFragmentTag;
    private boolean mShuffleMiniBarShowing;
    protected boolean mbFragmentShowCompleted;
    protected boolean mDebugDestroy = false;
    public boolean mIsVisibleToUser = true;
    protected boolean isViewCreated = false;
    protected boolean isDataLoaded = false;
    protected boolean mIsParentVisibleToUser = true;
    protected boolean mIsHide = false;
    protected BaseConstant.SCREEN_TYPE mScreenType = BaseConstant.l;
    public boolean mIsSelectByViewPager = false;
    public boolean needBg = false;
    protected boolean mIsRealVisibleToUser = true;
    public boolean mCurrentTabIsSelected = false;
    protected boolean isStop = false;
    Runnable runnableShuffle = new Runnable() {
        @Override
        public void run() {
            RoundImageView roundImageView;
            if (!BaseFragment.this.isShuffleShowing || (roundImageView = BaseFragment.this.mIvShufflePlayBtn) == null) {
                return;
            }
            roundImageView.setAlpha(0.0f);
            BaseFragment.this.mIvShufflePlayBtn.setVisibility(0);
            BaseFragment baseFragment = BaseFragment.this;
            baseFragment.fadeInt = ObjectAnimator.ofFloat(baseFragment.mIvShufflePlayBtn, "alpha", 0.0f, 1.0f);
            BaseFragment.this.fadeInt.setDuration(500L);
            BaseFragment.this.fadeInt.start();
        }
    };
    private boolean isShuffleShowing = false;

    public class a extends Drawable {
        public Rect a = new Rect();
        public final int b;
        public final Drawable c;

        public a(int i, Drawable drawable) {
            this.b = i;
            this.c = drawable;
        }

        @Override
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.translate(0.0f, -this.b);
            this.c.setBounds(getBounds());
            this.c.draw(canvas);
            canvas.restore();
        }

        @Override
        public int getIntrinsicHeight() {
            return this.c.getIntrinsicHeight() + this.b;
        }

        @Override
        public int getOpacity() {
            return this.c.getOpacity();
        }

        @Override
        public void onBoundsChange(Rect rect) {
            this.a.set(rect);
            rect.bottom += this.b;
            super.onBoundsChange(rect);
        }

        @Override
        public void setAlpha(int i) {
            this.c.setAlpha(i);
        }

        @Override
        public void setColorFilter(ColorFilter colorFilter) {
            this.c.setColorFilter(colorFilter);
        }
    }

    public class b implements Animation.AnimationListener {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            BaseFragment.this.onFragmentAnimationEnd(animation);
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
            BaseFragment.this.onFragmentAnimationStart(animation);
        }
    }

    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            BaseFragment.this.mIvShufflePlayBtn.setVisibility(8);
        }
    }

    public interface d {
        void a(boolean z);
    }

    public static BaseFragment cast(Fragment fragment) {
        return (BaseFragment) fragment;
    }

    public static boolean isMenuON(int i) {
        return 1 == i;
    }

    public final void H(View view, int i) {
        if (resolveNavigationBarInsetPx() > 0) {
            applyBottomMarginNavInset(view, i);
        }
    }

    public final void I(View view) {
        if (resolveNavigationBarInsetPx() > 0) {
            applyEditFootBarBottomInset(view);
        }
    }

    public final void J(View view, int i) {
        if (resolveNavigationBarInsetPx() > 0) {
            applyPaddingBottomWithNav(view, i);
        }
    }

    public final void K(RecyclerView recyclerView) {
        if (resolveNavigationBarInsetPx() > 0) {
            applyRecyclerViewNavBottomPadding(recyclerView, true);
        }
    }

    public final void L(BaseConstant.SCREEN_TYPE screen_type) {
        if (this.mScreenType != screen_type) {
            this.mScreenType = screen_type;
            markPointScreenTypeChange(screen_type);
            onFragmentScreenTypeChange(screen_type);
        }
    }

    public final void M(Boolean bool) {
        boolean zEquals = Boolean.TRUE.equals(bool);
        this.mShuffleMiniBarShowing = zEquals;
        O(zEquals);
    }

    public final void N(boolean z, String str) {
        this.mIsVisibleToUser = z;
        updateVisibleToUserRealState();
        Log.e(TAG, str + " isVisibleToUser:" + z + ",--isParentVisibleToUser:" + this.mIsParentVisibleToUser + ", --isHidden:" + this.mIsHide + ", " + this);
        markPointVisiable(z);
        markPointPageShow();
        showVishaQuestionnaire();
    }

    public final void O(boolean z) {
        RoundImageView roundImageView = this.mIvShufflePlayBtn;
        if (roundImageView == null || this.mContext == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = roundImageView.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int iA = oc2.a(this.mContext, z ? 126.0f : 76.0f) + resolveNavigationBarInsetPx();
            if (marginLayoutParams.bottomMargin == iA) {
                return;
            }
            marginLayoutParams.bottomMargin = iA;
            this.mIvShufflePlayBtn.setLayoutParams(marginLayoutParams);
        }
    }

    public void applyBottomMarginNavInset(@Nullable final View view, final int i) {
        BaseActivity baseActivity;
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int iResolveNavigationBarInsetPx = resolveNavigationBarInsetPx() + i;
            if (marginLayoutParams.bottomMargin != iResolveNavigationBarInsetPx) {
                marginLayoutParams.bottomMargin = iResolveNavigationBarInsetPx;
                view.setLayoutParams(marginLayoutParams);
            }
            if (resolveNavigationBarInsetPx() != 0 || (baseActivity = this.mActivity) == null || baseActivity.getApplicationInfo().targetSdkVersion < 36) {
                return;
            }
            view.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.H(view, i);
                }
            });
        }
    }

    public void applyEditFootBarBottomInset(@Nullable final View view) {
        BaseActivity baseActivity;
        if (view == null || (baseActivity = this.mActivity) == null || baseActivity.getApplicationInfo().targetSdkVersion < 36) {
            return;
        }
        int iResolveNavigationBarInsetPx = resolveNavigationBarInsetPx();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_foot_bar_min_height) + iResolveNavigationBarInsetPx;
        View viewFindViewById = view.findViewById(R.id.fob_root);
        if (viewFindViewById != null) {
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            if (layoutParams != null && layoutParams.height != dimensionPixelSize) {
                layoutParams.height = dimensionPixelSize;
                viewFindViewById.setLayoutParams(layoutParams);
            }
            if (viewFindViewById.getPaddingBottom() != iResolveNavigationBarInsetPx) {
                viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), viewFindViewById.getPaddingTop(), viewFindViewById.getPaddingRight(), iResolveNavigationBarInsetPx);
            }
        }
        if (view.getPaddingBottom() != 0) {
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), 0);
        }
        if (view.getMinimumHeight() != dimensionPixelSize) {
            view.setMinimumHeight(dimensionPixelSize);
        }
        if (iResolveNavigationBarInsetPx == 0) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.I(view);
                }
            });
        }
    }

    public void applyPaddingBottomWithNav(@Nullable final View view, final int i) {
        BaseActivity baseActivity;
        if (view == null) {
            return;
        }
        int iResolveNavigationBarInsetPx = resolveNavigationBarInsetPx() + i;
        if (view.getPaddingBottom() != iResolveNavigationBarInsetPx) {
            view.setPaddingRelative(view.getPaddingStart(), view.getPaddingTop(), view.getPaddingEnd(), iResolveNavigationBarInsetPx);
        }
        if (resolveNavigationBarInsetPx() != 0 || (baseActivity = this.mActivity) == null || baseActivity.getApplicationInfo().targetSdkVersion < 36) {
            return;
        }
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.b.J(view, i);
            }
        });
    }

    public void applyRecyclerViewBottomPaddingPx(@Nullable RecyclerView recyclerView, int i) {
        if (recyclerView == null) {
            return;
        }
        recyclerView.setClipToPadding(false);
        if (recyclerView.getPaddingBottom() != i) {
            recyclerView.setPaddingRelative(recyclerView.getPaddingStart(), recyclerView.getPaddingTop(), recyclerView.getPaddingEnd(), i);
        }
    }

    public void applyRecyclerViewNavBottomPadding(@Nullable final RecyclerView recyclerView, boolean z) {
        BaseActivity baseActivity;
        if (recyclerView == null) {
            return;
        }
        int iResolveNavigationBarInsetPx = z ? resolveNavigationBarInsetPx() : 0;
        recyclerView.setClipToPadding(false);
        if (recyclerView.getPaddingBottom() != iResolveNavigationBarInsetPx) {
            recyclerView.setPaddingRelative(recyclerView.getPaddingStart(), recyclerView.getPaddingTop(), recyclerView.getPaddingEnd(), iResolveNavigationBarInsetPx);
        }
        if (!z || iResolveNavigationBarInsetPx != 0 || (baseActivity = this.mActivity) == null || baseActivity.getApplicationInfo().targetSdkVersion < 36) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                this.b.K(recyclerView);
            }
        });
    }

    public void backgroundFollowBaseWindowByDp(View view, int i) {
        backgroundFollowBaseWindowByPx(view, com.transsion.utils.a.d(this.mContext, i));
    }

    public void backgroundFollowBaseWindowByPx(View view, int i) {
        Drawable windowBackground = getWindowBackground();
        if (windowBackground != null) {
            a aVar = i > 0 ? new a(i, windowBackground) : null;
            if (aVar != null) {
                windowBackground = aVar;
            }
            view.setBackground(windowBackground);
        }
    }

    public BaseActivity baseActivity() {
        if (this.mActivity == null) {
            this.mActivity = (BaseActivity) getActivity();
        }
        return this.mActivity;
    }

    public FragmentTransaction beginTransactionAnimation() {
        return baseActivity().beginTransactionAnimation();
    }

    public <T> yk5 bindFragmentToLifecycle() {
        if (this.mFragmentLifecycleTransformer == null) {
            this.mFragmentLifecycleTransformer = bindToLifecycle();
        }
        return this.mFragmentLifecycleTransformer;
    }

    public void didReceivedNotification(int i, Object... objArr) {
        switch (i) {
            case AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED:
                onUserLogin((VishaPalmUserInfo) objArr[0]);
                break;
            case AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED:
                userLogout();
                break;
            case AnalyticsListener.EVENT_RENDERER_READY_CHANGED:
                onUserReLogin((VishaPalmUserInfo) objArr[0]);
                break;
        }
    }

    public int getActivityMenuSwitchFlag() {
        return 0;
    }

    public Context getApplicationContext() {
        return getContext().getApplicationContext();
    }

    public int getDefaultListFlag() {
        return 0;
    }

    public String getFragmentTag() {
        if (this.mFragmentTag == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(getClass().getSimpleName());
            sb.append("_");
            int i = mTagKey;
            mTagKey = i + 1;
            sb.append(i);
            this.mFragmentTag = sb.toString();
        }
        return this.mFragmentTag;
    }

    public String getFromSource() {
        return this.mFromSource;
    }

    public int getListFlag() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG) : getDefaultListFlag();
    }

    public <T extends ViewModel> T getViewModelByActivity(Class<T> cls) {
        return (T) new ViewModelProvider(requireActivity()).get(cls);
    }

    public <T extends ViewModel> T getViewModelByFragment(Class<T> cls) {
        return (T) new ViewModelProvider(this).get(cls);
    }

    public Drawable getWindowBackground() {
        Drawable background;
        Drawable.ConstantState constantState;
        if (getActivity() == null || (background = getActivity().getWindow().getDecorView().getBackground()) == null || (constantState = background.getConstantState()) == null) {
            return null;
        }
        return constantState.newDrawable().mutate();
    }

    public void hideShuffleBtn() {
        if (pp3.D) {
            try {
                if (this.mIvShufflePlayBtn == null) {
                    return;
                }
                ObjectAnimator objectAnimator = this.fadeInt;
                if (objectAnimator != null && objectAnimator.isRunning()) {
                    this.fadeInt.cancel();
                }
                ThreadUtils.o().removeCallbacks(this.runnableShuffle);
                if (this.mIvShufflePlayBtn.getVisibility() == 8) {
                    return;
                }
                ObjectAnimator objectAnimator2 = this.fadeOut;
                if (objectAnimator2 == null || !objectAnimator2.isRunning()) {
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mIvShufflePlayBtn, "alpha", 1.0f, 0.0f);
                    this.fadeOut = objectAnimatorOfFloat;
                    objectAnimatorOfFloat.setDuration(500L);
                    this.fadeOut.addListener(new c());
                    this.fadeOut.start();
                }
            } catch (Exception unused) {
            }
        }
    }

    public void hideSoftPanel(TextView textView) {
        InputMethodManager inputMethodManager = (InputMethodManager) se.a().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(textView.getApplicationWindowToken(), 0);
        }
    }

    public boolean isDestroyed() {
        return this.mDebugDestroy;
    }

    public boolean isFoldScreen() {
        return this.mScreenType == BaseConstant.SCREEN_TYPE.FOLD;
    }

    public boolean isStopped() {
        return this.isStop;
    }

    public void markBottomTabPageShow() {
    }

    public void markPointPageShow() {
        if (this.mAttach) {
            if (this.mIsVisibleToUser && !this.mIsHide) {
                markBottomTabPageShow();
                updateFragmentListFlag();
            }
            boolean z = this.mIsVisibleToUser && !this.mIsHide && this.mIsParentVisibleToUser;
            if (z != this.mIsSecondPageShowChanged) {
                this.mIsSecondPageShowChanged = z;
                if (z) {
                    markSecondPageShow();
                    updateFragmentListFlag();
                }
            }
        }
    }

    public void markPointScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
    }

    public void markPointVisiable(boolean z) {
    }

    public void markSecondPageShow() {
    }

    public boolean needAnimation() {
        return true;
    }

    public void notifyMiniBarVisible(boolean z) {
    }

    public void observeFragmentFoldScreen() {
        Context context = getContext();
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).addOnScreenTypeListener(this, new a39() {
                @Override
                public final void a(BaseConstant.SCREEN_TYPE screen_type) {
                    this.a.L(screen_type);
                }
            });
        }
    }

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        Log.d(TAG, "onAttach:" + this);
        this.mContext = context;
        if (context instanceof BaseActivity) {
            this.mActivity = (BaseActivity) context;
        }
        this.mAttach = true;
    }

    public boolean onBackPressed() {
        return false;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.mIsAutoRecover = true;
        }
        Log.d(TAG, "onCreate isAutoRecover:" + this.mIsAutoRecover + ", " + this);
        this.mActivityNavigationColor = this.mActivity.getWindow().getNavigationBarColor();
        if (com.transsion.utils.a.D(this.mContext)) {
            this.mScreenType = b39.a(this.mContext);
        } else {
            this.mScreenType = com.transsion.utils.a.k(this.mContext);
        }
        if (ydc.g() || com.transsion.utils.a.D(this.mContext)) {
            observeFragmentFoldScreen();
        }
        markPointPageShow();
        markPointVisiable(this.mIsVisibleToUser);
    }

    @Override
    @Nullable
    public Animation onCreateAnimation(int i, boolean z, int i2) {
        if (i2 == 0) {
            onFragmentAnimationEnd(null);
            return null;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), i2);
        if (animationLoadAnimation == null) {
            return animationLoadAnimation;
        }
        animationLoadAnimation.setAnimationListener(new b());
        return animationLoadAnimation;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.d(TAG, "start onCreateView:" + this);
        int iOnLayoutId = onLayoutId();
        View viewInflate = null;
        if (iOnLayoutId != 0) {
            if (viewGroup != null && (viewInflate = OptimizeListAdapter.h().i(iOnLayoutId)) != null) {
                OptimizeListAdapter.h().g(viewGroup, iOnLayoutId);
            }
            if (viewInflate == null) {
                viewInflate = layoutInflater.inflate(iOnLayoutId, viewGroup, false);
            }
        }
        Log.d(TAG, "end onCreateView:" + this);
        this.isViewCreated = true;
        return viewInflate;
    }

    @Override
    public void onDestroy() {
        Log.d(TAG, "onDestroy:" + this);
        this.mFragmentLifecycleTransformer = null;
        this.mDebugDestroy = true;
        if (ydc.g()) {
            unObserveFragmentFoldScreen();
        }
        super.onDestroy();
        releaseWhenDestroy();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        Log.d(TAG, "onDestroyView:" + this);
        unRegisterPalmIdListeners();
        releaseWhenDestroyView();
    }

    public void onFinishRequestPermission(int i, boolean z) {
    }

    public void onFragmentAnimationEnd(Animation animation) {
        LogUtils.N(TAG, "onAnimationEnd:" + this, "mDataUpdated:" + this.mDataUpdated, "ListFlag:" + getListFlag());
        this.mbFragmentShowCompleted = true;
        if (this.mDataUpdated) {
            updateShowUI();
            this.mDataUpdated = false;
        }
    }

    public void onFragmentAnimationStart(Animation animation) {
        LogUtils.j(TAG, "onAnimationStart :" + this);
    }

    public void onFragmentScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
    }

    @Override
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        this.mIsHide = z;
        updateVisibleToUserRealState();
        markPointPageShow();
        Log.d(TAG, "onHiddenChanged isHidden:" + z + ",--isVisibleToUser:" + this.mIsVisibleToUser + ", " + this);
    }

    public int onLayoutId() {
        return 0;
    }

    @Override
    public void onPause() {
        Log.d(TAG, "onPause:" + this);
        super.onPause();
    }

    @Override
    public void onResume() {
        Log.d(TAG, "onResume:" + this);
        super.onResume();
        markPointPageShow();
        showVishaQuestionnaire();
    }

    public void onSelectInViewPage() {
        this.mIsSelectByViewPager = true;
        onVisibleChanged(true);
    }

    public void onSelectTabViewPager() {
    }

    @Override
    public void onStart() {
        Log.d(TAG, "onStart:" + this);
        super.onStart();
        this.isStop = false;
    }

    @Override
    public void onStop() {
        Log.d(TAG, "onStop:" + this);
        super.onStop();
        this.isStop = true;
    }

    public void onUnSelectInViewPage() {
        this.mIsSelectByViewPager = false;
        onVisibleChanged(false);
    }

    public void onUnSelectTabViewPager() {
    }

    public void onUserLogin(VishaPalmUserInfo vishaPalmUserInfo) {
    }

    public void onUserReLogin(VishaPalmUserInfo vishaPalmUserInfo) {
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        Log.d(TAG, "onViewCreated:" + this);
        registerPalmIdListeners();
    }

    public void onViewCreatedEnd(@NonNull View view, @Nullable Bundle bundle) {
        Log.d(TAG, "onViewCreatedEnd:" + this);
        RoundImageView roundImageView = this.mIvShufflePlayBtn;
        if (roundImageView != null) {
            pcc.c(roundImageView);
        }
    }

    public void onVisibleChanged(boolean z) {
        N(z, "onVisibleChanged");
    }

    public boolean peekConsumeBack() {
        return false;
    }

    public void preloadLayout(@Nullable ViewGroup viewGroup, int i) {
        if (viewGroup == null || i == 0) {
            return;
        }
        OptimizeListAdapter.h().e(viewGroup, i, 1);
    }

    public void realignNestedViewPagersIfNeeded() {
    }

    public void refresh() {
    }

    public void registerBottomBarVisibleChanged() {
        LiveEventBus.b().d("bottom_bar_show").observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.M((Boolean) obj);
            }
        });
    }

    public void registerPalmIdListeners() {
        h27.c().b(this, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED);
        h27.c().b(this, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED);
        h27.c().b(this, AnalyticsListener.EVENT_RENDERER_READY_CHANGED);
        h27.c().b(this, 1043);
    }

    public void releaseWhenDestroy() {
        Log.d(TAG, "releaseWhenDestroyView:" + this);
        ObjectAnimator objectAnimator = this.fadeInt;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.fadeOut;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        ThreadUtils.o().removeCallbacks(this.runnableShuffle);
    }

    public void releaseWhenDestroyView() {
        Log.d(TAG, "releaseWhenDestroyView:" + this);
    }

    public int resolveNavigationBarInsetPx() {
        Window window;
        WindowInsets rootWindowInsets;
        BaseActivity baseActivity = this.mActivity;
        if (baseActivity == null || baseActivity.getApplicationInfo().targetSdkVersion < 36 || Build.VERSION.SDK_INT < 30 || (window = this.mActivity.getWindow()) == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null) {
            return 0;
        }
        return rootWindowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom;
    }

    public void scrollToTop() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends BaseFragment> T setBaseActivity(BaseActivity baseActivity) {
        this.mActivity = baseActivity;
        return this;
    }

    public void setFromSource(String str) {
        this.mFromSource = str;
    }

    public void setHiddenChanged(boolean z) {
        this.mIsHide = z;
        updateVisibleToUserRealState();
        markPointPageShow();
        Log.d(TAG, "setHiddenChanged isHidden:" + z + ",--isVisibleToUser:" + this.mIsVisibleToUser + ", " + this);
    }

    public void setMenuShowListener(d dVar) {
        this.mMenuShowListener = dVar;
    }

    public void setNeedBg(boolean z) {
        this.needBg = z;
    }

    public void setParentVisible(boolean z) {
        this.mIsParentVisibleToUser = z;
        updateVisibleToUserRealState();
        Log.w(TAG, "setParentVisible isVisibleToUser:" + this.mIsVisibleToUser + ", --isParentVisibleToUser:" + this.mIsParentVisibleToUser + StringUtils.COMMA + this);
        markPointVisiable(z);
    }

    public void setShuffleBtnVisible(boolean z, String str) {
        if (this.mIvShufflePlayBtn == null || !pp3.D) {
            return;
        }
        ObjectAnimator objectAnimator = this.fadeOut;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.fadeOut.cancel();
        }
        ObjectAnimator objectAnimator2 = this.fadeInt;
        if (objectAnimator2 != null && objectAnimator2.isRunning()) {
            this.fadeInt.cancel();
        }
        ThreadUtils.o().removeCallbacks(this.runnableShuffle);
        this.isShuffleShowing = z;
        if (z) {
            t06.b(str);
            O(this.mShuffleMiniBarShowing);
        }
        this.mIvShufflePlayBtn.setVisibility(z ? 0 : 8);
        this.mIvShufflePlayBtn.setAlpha(1.0f);
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        N(z, "setUserVisibleHint");
    }

    public void showGuide() {
    }

    public void showSelectedTab(int i) {
    }

    public void showShuffleBtn() {
        if (pp3.D) {
            try {
                if (this.mIvShufflePlayBtn == null) {
                    return;
                }
                ObjectAnimator objectAnimator = this.fadeOut;
                if (objectAnimator != null && objectAnimator.isRunning()) {
                    this.fadeOut.cancel();
                }
                if (this.mIvShufflePlayBtn.getVisibility() == 0 && this.mIvShufflePlayBtn.getAlpha() == 1.0f) {
                    return;
                }
                ObjectAnimator objectAnimator2 = this.fadeInt;
                if (objectAnimator2 == null || !objectAnimator2.isRunning()) {
                    if (!this.isShuffleShowing) {
                        setShuffleBtnVisible(true, "audio");
                    } else {
                        ThreadUtils.o().removeCallbacks(this.runnableShuffle);
                        ThreadUtils.o().postDelayed(this.runnableShuffle, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public void showSoftPanel(TextView textView) {
        InputMethodManager inputMethodManager = (InputMethodManager) se.a().getSystemService("input_method");
        if (inputMethodManager != null) {
            textView.requestFocus();
            inputMethodManager.showSoftInput(textView, 0);
        }
    }

    public void showVishaQuestionnaire() {
        if (!this.mIsVisibleToUser || this.mIsHide || getActivity() == null) {
            return;
        }
        VishaQuestionnaireManager.c().r(getActivity(), getClass().getSimpleName());
    }

    public void startShufflePlay() {
    }

    public void unObserveFragmentFoldScreen() {
        Context context = getContext();
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).removeScreenTypeListener(this);
        }
    }

    public void unRegisterPalmIdListeners() {
        h27.c().f(this, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED);
        h27.c().f(this, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED);
        h27.c().f(this, AnalyticsListener.EVENT_RENDERER_READY_CHANGED);
        h27.c().f(this, 1043);
    }

    public void updateByVisibleToUserChanged() {
        updateUiForDataChanged();
    }

    public void updateFragmentListFlag() {
        Log.i(TAG, "updateFragmentListFlag  listFlag = " + getListFlag());
        Repository.INSTANCE.setListFlag(getListFlag());
    }

    public void updateShowUI() {
    }

    public void updateUiForDataChanged() {
        this.mDataUpdated = true;
        LogUtils.N(TAG, "updateUiForDataChanged :" + this, "mIsRealVisibleToUser:" + this.mIsRealVisibleToUser, "mbFragmentShowCompleted:" + this.mbFragmentShowCompleted, "mIsToSanFar:" + this.mIsToSanFar, "ListFlag:" + getListFlag());
        if ((this.mbFragmentShowCompleted && this.mIsRealVisibleToUser) || this.mIsToSanFar) {
            af9.g = false;
            updateShowUI();
            this.mDataUpdated = false;
        }
    }

    public void updateVisibleToUserRealState() {
        boolean z = this.mIsVisibleToUser && this.mIsParentVisibleToUser && !this.mIsHide;
        Log.i(TAG, "updateVisibleToUserRealState: " + this.mIsRealVisibleToUser + ", isRealVisibleToUser：" + z + ", mDataUpdated" + this.mDataUpdated + "\t, " + this);
        if (this.mIsRealVisibleToUser != z) {
            this.mIsRealVisibleToUser = z;
            if (z && this.mDataUpdated) {
                updateByVisibleToUserChanged();
            }
        }
    }

    public void userLogout() {
    }
}
