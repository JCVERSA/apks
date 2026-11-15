package com.transsion.onlinevideo.home;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.Fragment;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.viewpager.widget.ViewPager;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.app.hubert.guide.core.Controller;
import com.app.hubert.guide.model.HighLight;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.dbdata.beans.appconfig.ChannelsBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.UserInfoBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.channel.ChannelFragment;
import com.transsion.onlinevideo.collect.OnlineCollectDataManager;
import com.transsion.onlinevideo.h5.H5WebFragment;
import com.transsion.onlinevideo.history.HistoryManager;
import com.transsion.onlinevideo.home.OnlineHomeFragment;
import com.transsion.onlinevideo.membership.UserCenterActivity;
import com.transsion.onlinevideo.promotion.PromotionManager;
import com.transsion.onlinevideo.promotion.PromotionModel;
import com.transsion.onlinevideo.tiktok.TiktokFragment;
import com.transsion.onlinevideo.topic.AllTagFragment;
import com.transsion.onlinevideo.web.OrderManager;
import com.transsion.onlinevideo.web.VipWebActivity;
import com.transsion.playercommon.adapter.RtlPageAdapter;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.vishaapis.aistatistics.AiStatisticsModel;
import com.transsion.playercommon.vishaapis.appconfig.helper.AppLayoutConfigHelper;
import com.transsion.vishaplayersdk.mgtvplayer.MgtvConstant;
import com.transsion.vishaplayersdk.mgtvplayer.MgtvPlayerManager;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgets.CustomTabLayout;
import com.transsion.widgets.RelativeGuide;
import com.transsion.widgets.RtlViewPager;
import defpackage.c06;
import defpackage.cja;
import defpackage.d06;
import defpackage.df7;
import defpackage.f5;
import defpackage.h27;
import defpackage.hb0;
import defpackage.kfc;
import defpackage.oc2;
import defpackage.pp3;
import defpackage.se7;
import defpackage.te7;
import defpackage.u71;
import defpackage.v07;
import defpackage.w6c;
import defpackage.ydc;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Route(path = VishaRouterTable.PATH_PAGE_FRAGMENT_ONLINE_HOME)
public class OnlineHomeFragment extends BaseFragment implements View.OnClickListener, h27.b {
    private static final String TAG = "visha_onlineHomeFragment";
    public static boolean bTopBarChanged = false;
    AnimatorSet animatorSet;
    private WindowInsetsControllerCompat controller;
    private RtlPageAdapter mAdapter;
    private int mChannelSize;
    private ImageView mCollect;
    private int mColorRes;
    private Controller mController;
    private View mFragmentView;
    private ImageView mHistory;
    private ImageView mLoginUserDefaultImage;
    private ImageView mLoginUserImage;
    private ImageView mNotLoginUserLogo;
    private int mPosition;
    PromotionModel mPromotionModel;
    private boolean mScrolling;
    private ImageView mSearch;
    private View mSearchRedSpot;
    private View mTabContainer;
    private CustomTabLayout mTabLayout;
    private View mTopBarContainer;
    private View mTopBarLayout;
    private View mUserContent;
    private VishaPalmUserInfo mUserInfo;
    private ImageView mVishaLogo;
    private RtlViewPager mVpChannels;
    private final List<Fragment> mFragments = new ArrayList();
    private boolean mTopBarShow = false;
    private Boolean mForceUpdateBarShow = Boolean.FALSE;
    private boolean mIsInitFragmentAndChannelNull = false;
    private boolean mIsTiktokVisible = false;
    private boolean mIsLibraryVisible = false;
    private boolean mIsH5Visible = false;
    private boolean mSilentAuthScheduled = false;
    private Runnable mSilentAuthRunnable = null;
    private List<ChannelsBean> mOttChannelsConfig = new ArrayList();
    private final e mTopBarCallback = new a();

    public class a implements e {
        public a() {
        }

        @Override
        public void a(boolean z) {
            boolean zIsShowTopAll = OnlineHomeFragment.this.isShowTopAll();
            Log.i(OnlineHomeFragment.TAG, "showTopBar: " + z + ", mTopBarShow: " + OnlineHomeFragment.this.mTopBarShow + ", getShowTopFunction: " + zIsShowTopAll);
            OnlineHomeFragment.this.setTopBarShow(zIsShowTopAll);
            if ((!OnlineHomeFragment.this.mForceUpdateBarShow.booleanValue() || z) && OnlineHomeFragment.this.mTopBarShow == z) {
                return;
            }
            OnlineHomeFragment.this.mForceUpdateBarShow = Boolean.FALSE;
            OnlineHomeFragment.this.mTopBarShow = z;
            OnlineHomeFragment.this.changeNavStatusBarColor(z);
            if (OnlineHomeFragment.this.mVishaLogo != null) {
                OnlineHomeFragment.this.mVishaLogo.setImageResource(z ? R.drawable.ic_online_visha_logo : R.drawable.ic_online_visha_logo_night);
            }
            if (OnlineHomeFragment.this.mSearch != null) {
                OnlineHomeFragment.this.mSearch.setImageResource(z ? R.drawable.ic_online_video_search : R.drawable.ic_online_video_search_night);
            }
            if (OnlineHomeFragment.this.mCollect != null) {
                OnlineHomeFragment.this.mCollect.setImageResource(z ? R.drawable.ic_ott_bar_collect_enter : R.drawable.ic_ott_bar_collect_enter_dark);
            }
            if (OnlineHomeFragment.this.mHistory != null) {
                OnlineHomeFragment.this.mHistory.setImageResource(z ? R.drawable.ic_ott_history_record : R.drawable.ic_ott_history_record_night);
            }
            if (OnlineHomeFragment.this.mTopBarContainer != null) {
                View view = OnlineHomeFragment.this.mTopBarContainer;
                OnlineHomeFragment onlineHomeFragment = OnlineHomeFragment.this;
                view.setBackgroundColor(z ? onlineHomeFragment.mColorRes : ((BaseFragment) onlineHomeFragment).mActivity.getResources().getColor(R.color.transparent));
            }
            if (OnlineHomeFragment.this.mTabContainer != null) {
                View view2 = OnlineHomeFragment.this.mTabContainer;
                OnlineHomeFragment onlineHomeFragment2 = OnlineHomeFragment.this;
                view2.setBackgroundColor(z ? onlineHomeFragment2.mColorRes : ((BaseFragment) onlineHomeFragment2).mActivity.getResources().getColor(R.color.transparent));
            }
            if (OnlineHomeFragment.this.mTabLayout == null || OnlineHomeFragment.this.getContext() == null) {
                return;
            }
            OnlineHomeFragment.this.mTabLayout.setTabTextColors(OnlineHomeFragment.this.getResources().getColor(z ? R.color.os_text_secondary_color : R.color.os_text_secondary_color_dark), OnlineHomeFragment.this.getResources().getColor(z ? R.color.os_text_primary_color : R.color.os_text_primary_color_dark));
        }
    }

    public class b implements ViewPager.OnPageChangeListener {
        public final List b;

        public b(List list) {
            this.b = list;
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            if (i == 1) {
                OnlineHomeFragment onlineHomeFragment = OnlineHomeFragment.this;
                onlineHomeFragment.mPosition = onlineHomeFragment.mVpChannels.getCurrentItem();
                OnlineHomeFragment.this.mScrolling = true;
            }
            if (i == 0) {
                if (OnlineHomeFragment.this.mPosition != OnlineHomeFragment.this.mVpChannels.getCurrentItem() && OnlineHomeFragment.this.mScrolling) {
                    hb0.markDirect("vd_ott_sl");
                }
                OnlineHomeFragment.this.mScrolling = false;
            }
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override
        public void onPageSelected(int i) {
            OnlineHomeFragment.this.handleChannelPageSelected(i, this.b);
        }
    }

    public class c implements CustomTabLayout.OnTabSelectedListener {
        public c() {
        }

        @Override
        public void onTabReselected(CustomTabLayout.Tab tab) {
            OnlineHomeFragment.this.scrollToTop();
        }

        @Override
        public void onTabSelected(CustomTabLayout.Tab tab) {
        }

        @Override
        public void onTabUnselected(CustomTabLayout.Tab tab) {
        }
    }

    public class d implements se7 {
        public d() {
        }

        @Override
        public void a(Controller controller) {
            hb0.markDirect("vd_ott_leading_show");
        }

        @Override
        public void b(Controller controller) {
            hb0.markDirect("vd_ott_leadingigot_cl");
            MainApp.n = false;
            h27.c().e(1098, new Object[0]);
        }
    }

    public interface e {
        void a(boolean z);
    }

    private void applyTopBarStatusBarInset(View view) {
        if (view == null) {
            return;
        }
        setTopBarTopPadding(view, com.transsion.utils.a.n(this.mContext));
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return this.a.lambda$applyTopBarStatusBarInset$1(view2, windowInsetsCompat);
            }
        });
        ViewCompat.requestApplyInsets(view);
    }

    public void changeNavStatusBarColor(boolean z) {
        changeNavStatusBarColor(z, false);
    }

    private void configPlayer() {
        MgtvPlayerManager.initMgtvPlayerCoreSDK(getApplicationContext(), MgtvConstant.mid, MgtvConstant.ch_token, com.transsion.utils.deviceinfo.a.j());
    }

    public void handleChannelPageSelected(int i, List<ChannelsBean> list) {
        if (list == null || i < 0 || i >= list.size() || i >= this.mFragments.size()) {
            return;
        }
        ChannelsBean channelsBean = list.get(i);
        c06.h(channelsBean.getTopicLayout(), channelsBean.getId().intValue(), channelsBean.getSort().intValue(), channelsBean.getName(), "vd_ott_channel_cl");
        Fragment fragment = this.mFragments.get(i);
        if (this.mIsLibraryVisible && (fragment instanceof AllTagFragment)) {
            ((AllTagFragment) fragment).E0();
        } else if (this.mIsTiktokVisible && (fragment instanceof TiktokFragment)) {
            ((TiktokFragment) fragment).w1();
        } else if (this.mIsH5Visible && (fragment instanceof H5WebFragment)) {
            ((H5WebFragment) fragment).g0();
        } else if (fragment instanceof ChannelFragment) {
            ChannelFragment channelFragment = (ChannelFragment) fragment;
            channelFragment.mIsVisibleToUser = true;
            channelFragment.r1();
        }
        this.mVpChannels.setOffscreenPageLimit(list.size());
    }

    public boolean isShowTopAll() {
        ChannelsBean channelsBean;
        List<ChannelsBean> ottChannelsBean = u71.a(this.mOttChannelsConfig) ? AppLayoutConfigHelper.getInstance().getOttChannelsBean() : this.mOttChannelsConfig;
        return u71.b(ottChannelsBean) && this.mVpChannels.getCurrentItem() < ottChannelsBean.size() && (channelsBean = ottChannelsBean.get(this.mVpChannels.getCurrentItem())) != null && channelsBean.getShowTopFunction() != null && channelsBean.getShowTopFunction().intValue() == 1;
    }

    private boolean isVkVideo() {
        ChannelsBean channelsBean;
        List<ChannelsBean> ottChannelsBean = u71.a(this.mOttChannelsConfig) ? AppLayoutConfigHelper.getInstance().getOttChannelsBean() : this.mOttChannelsConfig;
        if (!u71.b(ottChannelsBean) || this.mVpChannels.getCurrentItem() >= ottChannelsBean.size() || (channelsBean = ottChannelsBean.get(this.mVpChannels.getCurrentItem())) == null) {
            return false;
        }
        return channelsBean.isVkChannel();
    }

    public WindowInsetsCompat lambda$applyTopBarStatusBarInset$1(View view, WindowInsetsCompat windowInsetsCompat) {
        setTopBarTopPadding(view, windowInsetsCompat.getInsets(WindowInsetsCompat.Type.statusBars() | WindowInsetsCompat.Type.displayCutout()).top);
        return windowInsetsCompat;
    }

    public static boolean lambda$initTitle$2(View view, MotionEvent motionEvent) {
        return true;
    }

    public void lambda$onPageRealShowDelayOneSecond$3() {
        List list;
        int currentItem = this.mVpChannels.getCurrentItem();
        if (this.mFragments.size() <= 0 || !(this.mFragments.get(currentItem) instanceof ChannelFragment) || (list = ((ChannelFragment) this.mFragments.get(currentItem)).z) == null || list.size() <= 0 || !this.mIsVisibleToUser || !this.mIsParentVisibleToUser) {
            return;
        }
        c06.p(com.transsion.palmsdk.b.s());
    }

    public void lambda$onPageRealShowDelayThreeSecond$4() {
        List list;
        int currentItem = this.mVpChannels.getCurrentItem();
        if (this.mFragments.size() <= 0 || !(this.mFragments.get(currentItem) instanceof ChannelFragment) || (list = ((ChannelFragment) this.mFragments.get(currentItem)).z) == null || list.size() <= 0 || !this.mIsVisibleToUser || !this.mIsParentVisibleToUser) {
            return;
        }
        c06.e(com.transsion.palmsdk.b.s());
    }

    public void lambda$onViewCreated$0(Integer num) {
        PromotionManager.c().f(getActivity(), 2, 0, null);
    }

    public void lambda$showGuide$10(Canvas canvas, RectF rectF) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(getResources().getColor(R.color.color_guide_circle, this.mActivity.getTheme()));
        paint.setStrokeWidth(getResources().getDimensionPixelOffset(R.dimen.guide_stroke_circle_width));
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, paint);
    }

    public static void lambda$showGuide$6(View view, final Controller controller) {
        view.findViewById(R.id.ok).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                controller.q(1);
            }
        });
    }

    public void lambda$showGuide$7(Canvas canvas, RectF rectF) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(getResources().getColor(R.color.white, this.mActivity.getTheme()));
        paint.setStrokeWidth(getResources().getDimensionPixelOffset(R.dimen.guide_stroke_width));
        float f = rectF.left;
        Resources resources = getResources();
        int i = R.dimen.guide_padding_horizontal;
        RectF rectF2 = new RectF(f + resources.getDimensionPixelOffset(i), rectF.top, rectF.right - getResources().getDimensionPixelOffset(i), rectF.bottom);
        Resources resources2 = getResources();
        int i2 = R.dimen.guide_stroke_radius;
        canvas.drawRoundRect(rectF2, resources2.getDimensionPixelOffset(i2), getResources().getDimensionPixelOffset(i2), paint);
    }

    public static void lambda$showGuide$8(Controller controller, View view) {
        hb0.markDirect("vd_ott_history_leading_got_show");
        controller.l();
    }

    public static void lambda$showGuide$9(View view, final Controller controller) {
        hb0.markDirect("vd_ott_history_leading_show");
        view.findViewById(R.id.ok).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                OnlineHomeFragment.lambda$showGuide$8(controller, view2);
            }
        });
    }

    public void lambda$updateIfOSLogin$11() {
        try {
            try {
                if (isAdded() && !com.transsion.palmsdk.b.s()) {
                    if (com.transsion.palmsdk.b.t()) {
                        com.transsion.palmsdk.b.i(getActivity(), "vd_ott_pf_cl", true);
                    }
                }
            } catch (Exception e2) {
                LogUtils.m(TAG, "Palm authorize error: " + e2.getMessage());
            }
        } finally {
            this.mSilentAuthScheduled = false;
        }
    }

    private void onBannerReady() {
        ChannelFragment channelFragment;
        int currentItem = this.mVpChannels.getCurrentItem();
        if (currentItem < 0 || currentItem >= this.mFragments.size() || !(this.mFragments.get(currentItem) instanceof ChannelFragment) || (channelFragment = (ChannelFragment) this.mFragments.get(currentItem)) == null || channelFragment.A == null || !channelFragment.L0()) {
            return;
        }
        this.mTopBarShow = true;
        channelFragment.A.a(false);
    }

    private void onPageRealShowDelayOneSecond() {
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onPageRealShowDelayOneSecond$3();
            }
        }, 1000L);
    }

    private void onPageRealShowDelayThreeSecond() {
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onPageRealShowDelayThreeSecond$4();
            }
        }, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    private void restoreHostStatusBarAppearance() {
        try {
            changeNavStatusBarColor((getResources().getConfiguration().uiMode & 48) != 32, true);
        } catch (Exception e2) {
            Log.e(TAG, "restoreHostStatusBarAppearance: " + e2.getMessage());
        }
    }

    public void setTopBarShow(boolean z) {
        if (this.mTopBarLayout != null) {
            int i = 8;
            int i2 = z ? 0 : 8;
            this.mSearch.setVisibility(i2);
            View view = this.mSearchRedSpot;
            if (z && !ydc.e()) {
                i = 0;
            }
            view.setVisibility(i);
            this.mHistory.setVisibility(i2);
            this.mCollect.setVisibility(i2);
            this.mUserContent.setVisibility(i2);
        }
    }

    private void setTopBarTopPadding(View view, int i) {
        if (view.getPaddingTop() == i && view.getPaddingBottom() == 0 && view.getPaddingLeft() == 0 && view.getPaddingRight() == 0) {
            return;
        }
        view.setPadding(0, i, 0, 0);
    }

    private void updateIfOSLogin() {
        LogUtils.j(TAG, "updateIfOSLogin: " + this.mSilentAuthScheduled);
        if (this.mSilentAuthScheduled || com.transsion.palmsdk.b.s() || !com.transsion.palmsdk.b.t()) {
            return;
        }
        this.mSilentAuthScheduled = true;
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$updateIfOSLogin$11();
            }
        };
        this.mSilentAuthRunnable = runnable;
        ThreadUtils.o().postDelayed(runnable, 300L);
    }

    private void vipLogoAnimate() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mNotLoginUserLogo, "scaleX", 1.0f, 1.25f, 1.0f);
        objectAnimatorOfFloat.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.mNotLoginUserLogo, "scaleY", 1.0f, 1.25f, 1.0f);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        AnimatorSet animatorSet = new AnimatorSet();
        this.animatorSet = animatorSet;
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.animatorSet.setDuration(2000L);
        this.animatorSet.start();
    }

    public void changeUserImage(boolean z, VishaPalmUserInfo vishaPalmUserInfo) {
        if (isVkVideo() || !isShowTopAll()) {
            View view = this.mUserContent;
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        this.mUserInfo = vishaPalmUserInfo;
        View viewFindViewById = this.mFragmentView.findViewById(R.id.ll_login);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(z ? 8 : 0);
        }
        boolean zH = kfc.h();
        boolean zL = kfc.l();
        if (z && zH && zL) {
            LogUtils.j("[VishaUserDebug]", "user login,update user info");
            if (!TextUtils.isEmpty(vishaPalmUserInfo.getAvatarUrl())) {
                Glide.with(this.mContext).asBitmap().load2(vishaPalmUserInfo.getAvatarUrl()).apply((BaseRequestOptions<?>) new RequestOptions().transform(new CenterInside(), new RoundedCorners(oc2.a(this.mContext, 14.0f)))).into(this.mLoginUserImage);
                this.mLoginUserImage.setVisibility(0);
            }
            this.mUserContent.setVisibility(0);
            this.mLoginUserDefaultImage.setVisibility(0);
            this.mNotLoginUserLogo.setVisibility(8);
            return;
        }
        this.mLoginUserDefaultImage.setVisibility(8);
        this.mLoginUserImage.setVisibility(8);
        this.mNotLoginUserLogo.setVisibility(0);
        this.mUserContent.setVisibility(0);
        if (zH) {
            vipLogoAnimate();
        }
        hb0.markDirect("vd_ott_vip_btn_show");
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 1043) {
            changeUserImage(true, this.mUserInfo);
        }
        if (i == 1075) {
            AiStatisticsModel.markAlgorithmRecommend(d06.a, (Map) objArr[0]);
            return;
        }
        if (i == 1114) {
            privacyPermissionCheck();
            return;
        }
        if (i == 1126) {
            onBannerReady();
            return;
        }
        if (i == 1151) {
            if (this.mIsInitFragmentAndChannelNull) {
                try {
                    initFragments(AppLayoutConfigHelper.getInstance().getOttChannelsBean());
                    return;
                } catch (Exception e2) {
                    Log.e(AbstractID3v1Tag.TAG, e2.getMessage());
                    return;
                }
            }
            return;
        }
        switch (i) {
            case AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED:
                changeUserImage(true, (VishaPalmUserInfo) objArr[0]);
                HistoryManager.m();
                OnlineCollectDataManager.d().h();
                break;
            case AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED:
                changeUserImage(false, null);
                HistoryManager.g();
                OnlineCollectDataManager.d().e(false);
                break;
            case AnalyticsListener.EVENT_RENDERER_READY_CHANGED:
                changeUserImage(true, (VishaPalmUserInfo) objArr[0]);
                break;
        }
    }

    public void initFragments(List<ChannelsBean> list) {
        if (list == null || list.isEmpty() || !this.mFragments.isEmpty()) {
            this.mIsInitFragmentAndChannelNull = true;
            LogUtils.m(TAG, "initFragments failed, channels is null or size == 0");
            return;
        }
        this.mOttChannelsConfig = list;
        this.mChannelSize = list.size();
        RtlViewPager rtlViewPager = this.mVpChannels;
        if (rtlViewPager != null) {
            preloadLayout(rtlViewPager, R.layout.channel_fragment);
            preloadLayout(this.mVpChannels, R.layout.fragment_all);
        }
        String[] strArr = new String[this.mChannelSize];
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.online_video_tab_height) + com.transsion.utils.a.n(this.mContext);
        int i = -1;
        int i2 = -1;
        int i3 = 0;
        while (i3 < list.size()) {
            ChannelsBean channelsBean = list.get(i3);
            String name = channelsBean.getName();
            if (channelsBean.isLibraryChannel()) {
                if (TextUtils.isEmpty(name)) {
                    name = getString(R.string.ott_media_libary);
                }
                strArr[i3] = name;
                this.mIsLibraryVisible = true;
                AllTagFragment allTagFragment = new AllTagFragment();
                allTagFragment.D0(this.mTopBarCallback);
                this.mFragments.add(allTagFragment);
            } else {
                if (i2 == i) {
                    i2 = i3;
                }
                if (channelsBean.isTiktokChannel()) {
                    this.mIsTiktokVisible = true;
                    if (TextUtils.isEmpty(name)) {
                        name = getString(R.string.visha_tiktok);
                    }
                    strArr[i3] = name;
                    TiktokFragment tiktokFragment = new TiktokFragment();
                    tiktokFragment.setBaseActivity(this.mActivity);
                    Bundle bundle = new Bundle();
                    bundle.putInt("header_margin", dimensionPixelOffset);
                    bundle.putString(VkConstant.URL, TextUtils.isEmpty(channelsBean.getTtPage()) ? cja.a() : channelsBean.getTtPage());
                    bundle.putInt("channelid", channelsBean.getId().intValue());
                    bundle.putString("channelname", channelsBean.getName());
                    tiktokFragment.setArguments(bundle);
                    tiktokFragment.r1(this.mTopBarCallback);
                    tiktokFragment.setParentVisible(this.mIsVisibleToUser);
                    this.mFragments.add(tiktokFragment);
                } else if (channelsBean.isH5Channel()) {
                    this.mIsH5Visible = true;
                    strArr[i3] = name;
                    H5WebFragment h5WebFragment = new H5WebFragment();
                    h5WebFragment.setBaseActivity(this.mActivity);
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("header_margin", dimensionPixelOffset);
                    bundle2.putString(VkConstant.URL, channelsBean.getH5Page());
                    bundle2.putInt("channelid", channelsBean.getId().intValue());
                    bundle2.putString("channelname", channelsBean.getName());
                    h5WebFragment.setArguments(bundle2);
                    h5WebFragment.f0(this.mTopBarCallback);
                    this.mFragments.add(h5WebFragment);
                } else {
                    strArr[i3] = name;
                    ChannelFragment channelFragment = (ChannelFragment) ChannelFragment.m1(channelsBean, i3 == 0, dimensionPixelOffset).setBaseActivity(this.mActivity);
                    channelFragment.q1(this.mTopBarCallback);
                    channelFragment.setParentVisible(this.mIsVisibleToUser);
                    this.mFragments.add(channelFragment);
                }
            }
            i3++;
            i = -1;
        }
        this.mAdapter = new RtlPageAdapter(getChildFragmentManager(), this.mFragments, strArr);
        this.mVpChannels.setOffscreenPageLimit(this.mFragments.size());
        this.mVpChannels.setCanScroll(true);
        this.mVpChannels.setAdapter(this.mAdapter);
        Log.d(TAG, "initFragments defaultPosition:" + i2);
        if (i2 < 0 || i2 >= this.mFragments.size()) {
            i2 = 0;
        }
        this.mVpChannels.addOnPageChangeListener(new b(list));
        this.mVpChannels.setCurrentItem(i2, false);
        if (i2 == 0) {
            handleChannelPageSelected(i2, list);
        }
        LogUtils.P(TAG, "[OTT]initFragments channels.size() = " + list.size(), "current page = " + this.mVpChannels.getCurrentItem());
        if (this.mCurrentTabIsSelected) {
            onSelectInViewPage();
        }
    }

    public void initTitle() {
        this.mTopBarLayout.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return OnlineHomeFragment.lambda$initTitle$2(view, motionEvent);
            }
        });
        this.mTabLayout.setupWithViewPager(this.mVpChannels);
        this.mTabLayout.setTabTextSize(getResources().getDimensionPixelOffset(R.dimen.online_video_selected_tab_text_size));
        this.mTabLayout.setUnselectedTabTextSize(getResources().getDimensionPixelOffset(R.dimen.online_video_unselected_tab_text_size));
        this.mTabLayout.addOnTabSelectedListener((CustomTabLayout.OnTabSelectedListener) new c());
    }

    @Override
    public void markBottomTabPageShow() {
        super.markBottomTabPageShow();
        c06.d(com.transsion.palmsdk.b.s());
        if (this.mVpChannels == null) {
            return;
        }
        onPageRealShowDelayOneSecond();
        onPageRealShowDelayThreeSecond();
    }

    @Override
    public boolean onBackPressed() {
        List<Fragment> list;
        if (this.mVpChannels != null && (list = this.mFragments) != null && list.size() > this.mVpChannels.getCurrentItem()) {
            Fragment fragment = this.mFragments.get(this.mVpChannels.getCurrentItem());
            if (fragment instanceof TiktokFragment) {
                return ((TiktokFragment) fragment).onBackPressed();
            }
            if (fragment instanceof H5WebFragment) {
                return ((H5WebFragment) fragment).onBackPressed();
            }
        }
        return super.onBackPressed();
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.user_content) {
            hb0.markDirect("vd_ott_pf_cl");
            if (!pp3.L) {
                if (com.transsion.palmsdk.b.s()) {
                    com.transsion.palmsdk.b.C(this.mActivity);
                    return;
                } else {
                    com.transsion.palmsdk.b.h(this.mActivity, "vd_ott_pf_cl");
                    return;
                }
            }
            if (kfc.l()) {
                UserCenterActivity.S0("vd_ott_pf_cl", this.mActivity);
                return;
            }
            UserInfoBean.VipInfoVosBean vipInfoVosBeanI = kfc.i();
            if (vipInfoVosBeanI != null) {
                f5.c(VipWebActivity.I0(this.mActivity, vipInfoVosBeanI.getId().intValue(), "VIP", "vd_ott_vip_btn_cl"), this.mActivity);
                hb0.markTrackTwo("vd_ott_vip_btn_cl", "status_0", Integer.valueOf(com.transsion.palmsdk.b.s() ? 1 : 0), "page", vipInfoVosBeanI.getTitle());
                return;
            } else {
                f5.c(VipWebActivity.I0(this.mActivity, 1, "VIP", "vd_ott_vip_btn_cl"), this.mActivity);
                hb0.markTrackTwo("vd_ott_vip_btn_cl", "status_0", Integer.valueOf(com.transsion.palmsdk.b.s() ? 1 : 0), "page", "Mango VIP");
                return;
            }
        }
        if (id == R.id.iv_history) {
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(6).build(), this.mContext);
            hb0.markDirect("vd_ott_history_cl");
            return;
        }
        if (id == R.id.iv_collect) {
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(8).build(), this.mContext);
            hb0.markDirect("vd_ott_history_cl");
        } else if (id == R.id.iv_search) {
            Intent intent = new Intent();
            intent.setAction("com.transsion.onlinevideo.search.OnlineVideoSearchActivity");
            intent.setPackage(Utils.a().getPackageName());
            f5.c(intent, this.mActivity);
            hb0.markDirect("vd_ott_search_cl");
            w6c.r(getApplicationContext(), "online_search_red_spot", false);
            this.mSearchRedSpot.setVisibility(8);
        }
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        OnlineCollectDataManager.d().e(com.transsion.palmsdk.b.s());
        if (com.transsion.palmsdk.b.s()) {
            OnlineCollectDataManager.d().g();
        }
        TypedValue typedValue = new TypedValue();
        this.mActivity.getTheme().resolveAttribute(R.attr.OsBgPrimary, typedValue, true);
        this.mColorRes = typedValue.data;
    }

    @Override
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.online_home_fragment, viewGroup, false);
        this.mFragmentView = viewInflate;
        return viewInflate;
    }

    @Override
    public void onPause() {
        super.onPause();
        restoreHostStatusBarAppearance();
    }

    @Override
    public void onResume() {
        super.onResume();
        updateIfOSLogin();
        if (com.transsion.palmsdk.b.s()) {
            changeUserImage(com.transsion.palmsdk.b.s(), com.transsion.palmsdk.b.b);
        }
        PromotionManager.c().f(getActivity(), 2, 0, null);
        this.mForceUpdateBarShow = Boolean.TRUE;
        if (!this.mCurrentTabIsSelected || this.mFragments.isEmpty()) {
            return;
        }
        changeNavStatusBarColor(this.mTopBarShow, true);
    }

    @Override
    public void onSelectInViewPage() {
        super.onSelectInViewPage();
        this.mCurrentTabIsSelected = true;
        if (this.mFragments.isEmpty()) {
            return;
        }
        for (Fragment fragment : this.mFragments) {
            if (fragment instanceof BaseFragment) {
                ((BaseFragment) fragment).setParentVisible(true);
            }
        }
        changeNavStatusBarColor(this.mTopBarShow, true);
    }

    @Override
    public void onUnSelectInViewPage() {
        super.onUnSelectInViewPage();
        this.mCurrentTabIsSelected = false;
        restoreHostStatusBarAppearance();
        if (this.mFragments.isEmpty()) {
            return;
        }
        for (Fragment fragment : this.mFragments) {
            if (fragment instanceof BaseFragment) {
                ((BaseFragment) fragment).setParentVisible(false);
            }
        }
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        if (pp3.x(getApplicationContext())) {
            view.setPadding(pp3.g(this.mContext), 0, pp3.h(this.mContext), 0);
        }
        this.mVishaLogo = (ImageView) view.findViewById(R.id.iv_visha_logo);
        this.mTabLayout = (CustomTabLayout) view.findViewById(R.id.tab_layout);
        this.mVpChannels = (RtlViewPager) view.findViewById(R.id.vp_channels);
        this.mLoginUserImage = (ImageView) view.findViewById(R.id.iv_user_image);
        this.mNotLoginUserLogo = (ImageView) view.findViewById(R.id.iv_user_logo);
        this.mHistory = (ImageView) view.findViewById(R.id.iv_history);
        this.mCollect = (ImageView) view.findViewById(R.id.iv_collect);
        this.mSearch = (ImageView) view.findViewById(R.id.iv_search);
        this.mTopBarLayout = view.findViewById(R.id.ll_top_bar);
        View viewFindViewById = view.findViewById(R.id.top_bar_container);
        this.mTopBarContainer = viewFindViewById;
        applyTopBarStatusBarInset(viewFindViewById);
        this.mTabContainer = view.findViewById(R.id.ll_tab);
        this.mLoginUserDefaultImage = (ImageView) view.findViewById(R.id.iv_user_image_frame);
        this.mUserContent = view.findViewById(R.id.user_content);
        View viewFindViewById2 = view.findViewById(R.id.v_red_point);
        this.mSearchRedSpot = viewFindViewById2;
        viewFindViewById2.setVisibility((ydc.e() || !w6c.c(getApplicationContext(), "online_search_red_spot", true)) ? 8 : 0);
        this.mUserContent.setOnClickListener(this);
        this.mHistory.setOnClickListener(this);
        this.mCollect.setOnClickListener(this);
        this.mSearch.setOnClickListener(this);
        initTitle();
        initFragments(AppLayoutConfigHelper.getInstance().getOttChannelsBean());
        super.onViewCreated(view, bundle);
        OrderManager.b(this);
        configPlayer();
        vipLogoAnimate();
        PromotionModel promotionModel = (PromotionModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(getActivity().getApplication())).get(PromotionModel.class);
        this.mPromotionModel = promotionModel;
        promotionModel.getLoadStatus().observe(getViewLifecycleOwner(), new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$onViewCreated$0((Integer) obj);
            }
        });
        this.mPromotionModel.a();
        bTopBarChanged = false;
    }

    @Override
    public boolean peekConsumeBack() {
        List<Fragment> list;
        if (this.mVpChannels == null || (list = this.mFragments) == null || list.size() <= this.mVpChannels.getCurrentItem()) {
            return false;
        }
        Fragment fragment = this.mFragments.get(this.mVpChannels.getCurrentItem());
        if (fragment instanceof BaseFragment) {
            return ((BaseFragment) fragment).peekConsumeBack();
        }
        return false;
    }

    public void privacyPermissionCheck() {
        for (Fragment fragment : this.mFragments) {
            if (fragment instanceof ChannelFragment) {
                ((ChannelFragment) fragment).privacyPermissionCheck();
            }
        }
    }

    @Override
    public void refresh() {
        int currentItem;
        RtlViewPager rtlViewPager = this.mVpChannels;
        if (rtlViewPager == null || (currentItem = rtlViewPager.getCurrentItem()) >= this.mFragments.size() || !(this.mFragments.get(currentItem) instanceof ChannelFragment)) {
            return;
        }
        ((ChannelFragment) this.mFragments.get(currentItem)).refresh();
    }

    @Override
    public void registerPalmIdListeners() {
        super.registerPalmIdListeners();
        h27.c().b(this, 1075);
        h27.c().b(this, 1113);
        h27.c().b(this, 1114);
        h27.c().b(this, 1126);
        h27.c().b(this, 1151);
        com.transsion.palmsdk.b.G();
        com.transsion.palmsdk.b.H();
    }

    @Override
    public void releaseWhenDestroyView() {
        super.releaseWhenDestroyView();
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.animatorSet.removeAllListeners();
            for (Animator animator : this.animatorSet.getChildAnimations()) {
                if (animator != null) {
                    animator.cancel();
                    animator.removeAllListeners();
                    if (animator instanceof ObjectAnimator) {
                        ((ObjectAnimator) animator).setTarget(null);
                    }
                }
            }
            this.animatorSet = null;
        }
        CustomTabLayout customTabLayout = this.mTabLayout;
        if (customTabLayout != null) {
            customTabLayout.setupWithViewPager(null);
        }
        RtlViewPager rtlViewPager = this.mVpChannels;
        if (rtlViewPager != null) {
            rtlViewPager.setAdapter(null);
        }
        this.mAdapter = null;
        if (this.mSilentAuthRunnable != null) {
            ThreadUtils.o().removeCallbacks(this.mSilentAuthRunnable);
            this.mSilentAuthRunnable = null;
            this.mSilentAuthScheduled = false;
        }
    }

    @Override
    public void scrollToTop() {
        int currentItem;
        RtlViewPager rtlViewPager = this.mVpChannels;
        if (rtlViewPager == null || (currentItem = rtlViewPager.getCurrentItem()) >= this.mFragments.size() || !(this.mFragments.get(currentItem) instanceof ChannelFragment)) {
            return;
        }
        ((ChannelFragment) this.mFragments.get(currentItem)).scrollToTop();
    }

    @Override
    public void setHiddenChanged(boolean z) {
        super.setHiddenChanged(z);
        if (this.mFragments.isEmpty()) {
            return;
        }
        for (Fragment fragment : this.mFragments) {
            if (fragment instanceof BaseFragment) {
                ((BaseFragment) fragment).setParentVisible(!z);
            }
        }
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (this.mFragments.isEmpty()) {
            return;
        }
        for (Fragment fragment : this.mFragments) {
            if (fragment instanceof BaseFragment) {
                ((BaseFragment) fragment).setParentVisible(z);
            }
        }
    }

    @Override
    public void showGuide() {
        if (isAdded()) {
            RelativeGuide relativeGuide = new RelativeGuide(R.layout.guide_for_online_tab, 80);
            relativeGuide.setOnLayoutInflatedListener(new df7() {
                @Override
                public final void a(View view, Controller controller) {
                    OnlineHomeFragment.lambda$showGuide$6(view, controller);
                }
            });
            com.app.hubert.guide.model.a aVarB = com.app.hubert.guide.model.a.l().b(this.mTabContainer, HighLight.Shape.RECTANGLE, new com.app.hubert.guide.model.b.a().c(relativeGuide).b(new te7() {
                @Override
                public final void a(Canvas canvas, RectF rectF) {
                    this.a.lambda$showGuide$7(canvas, rectF);
                }
            }).a());
            Resources resources = getResources();
            int i = R.color.color_guide_bg;
            com.app.hubert.guide.model.a aVarN = aVarB.m(resources.getColor(i, null)).n(false);
            RelativeGuide relativeGuide2 = new RelativeGuide(R.layout.guide_for_online_history, GravityCompat.START);
            relativeGuide2.setOnLayoutInflatedListener(new df7() {
                @Override
                public final void a(View view, Controller controller) {
                    OnlineHomeFragment.lambda$showGuide$9(view, controller);
                }
            });
            com.app.hubert.guide.model.b bVarA = new com.app.hubert.guide.model.b.a().c(relativeGuide2).b(new te7() {
                @Override
                public final void a(Canvas canvas, RectF rectF) {
                    this.a.lambda$showGuide$10(canvas, rectF);
                }
            }).a();
            com.app.hubert.guide.model.a aVarL = com.app.hubert.guide.model.a.l();
            ImageView imageView = this.mHistory;
            HighLight.Shape shape = HighLight.Shape.CIRCLE;
            com.app.hubert.guide.model.a aVarN2 = aVarL.b(imageView, shape, bVarA).m(getResources().getColor(i, null)).n(false);
            com.app.hubert.guide.model.a aVarN3 = com.app.hubert.guide.model.a.l().b(this.mCollect, shape, bVarA).m(getResources().getColor(i, null)).n(false);
            if (this.mController == null) {
                Controller controllerC = v07.a(this).e("guide_online_tab").b(false).f(new d()).a(aVarN).a(aVarN2).a(aVarN3).c();
                this.mController = controllerC;
                controllerC.n();
            }
            MainApp.n = this.mController.k();
        }
    }

    @Override
    public void showSelectedTab(int i) {
        super.showSelectedTab(i);
        RtlViewPager rtlViewPager = this.mVpChannels;
        if (rtlViewPager != null) {
            rtlViewPager.setCurrentItem(i);
        }
    }

    @Override
    public void unRegisterPalmIdListeners() {
        super.unRegisterPalmIdListeners();
        h27.c().f(this, 1075);
        h27.c().f(this, 1113);
        h27.c().f(this, 1114);
        h27.c().f(this, 1126);
        h27.c().f(this, 1151);
        com.transsion.palmsdk.b.L();
        com.transsion.palmsdk.b.M();
    }

    private void changeNavStatusBarColor(boolean z, boolean z2) {
        if (z2 || this.mCurrentTabIsSelected) {
            try {
                if ((getResources().getConfiguration().uiMode & 48) == 32 && z) {
                    z = false;
                }
                Window window = this.mActivity.getWindow();
                View decorView = window.getDecorView();
                if (this.controller == null) {
                    this.controller = new WindowInsetsControllerCompat(window, decorView);
                }
                this.controller.setAppearanceLightStatusBars(z);
                this.controller.setAppearanceLightNavigationBars(z);
            } catch (Exception e2) {
                Log.e(TAG, "changeNavStatusBarColor: " + e2.getMessage());
            }
        }
    }
}
