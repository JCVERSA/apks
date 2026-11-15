package com.transsion.onlinevideo.mangotv;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.appbar.AppBarLayout;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.onlinevideo.CollectItem;
import com.transsion.dbdata.beans.onlinevideo.FeedStreamBean;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.PromotionBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.Tag;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.dbdata.database.OnlineVideoDatabase;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.adapter.EpisodesAdapter;
import com.transsion.onlinevideo.adapter.RecommendTypeBeanAdapter;
import com.transsion.onlinevideo.adapter.SessionAdapter;
import com.transsion.onlinevideo.adapter.TagAdapter;
import com.transsion.onlinevideo.adapter.VarietyShowAdapter;
import com.transsion.onlinevideo.adapter.VkRecommendAdapter;
import com.transsion.onlinevideo.adapter.YoutubeAdapter;
import com.transsion.onlinevideo.collect.OnlineCollectDataManager;
import com.transsion.onlinevideo.mangotv.PlayerDetailActivity;
import com.transsion.onlinevideo.membership.UserCenterActivity;
import com.transsion.onlinevideo.promotion.PromotionManager;
import com.transsion.onlinevideo.viewmodel.ChannelViewModel;
import com.transsion.onlinevideo.viewmodel.RecommendViewModel;
import com.transsion.onlinevideo.web.VipWebActivity;
import com.transsion.onlinevideo.widgets.dialog.EpisodesDialog;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.aistatistics.AiStatisticsModel;
import com.transsion.playercommon.vishaweb.pages.VishaFeedbackPage;
import com.transsion.utils.NetworkObserver;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.base.config.PlayType;
import com.transsion.vishaplayersdk.base.config.PlayerError;
import com.transsion.vishaplayersdk.base.config.PlayerEvent;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import com.transsion.vishaplayersdk.base.config.PlayerStatisticInfo;
import com.transsion.vishaplayersdk.base.config.PlayerType;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import com.transsion.vishaplayersdk.gsyplayer.builder.GSYVideoOptionBuilder;
import com.transsion.vishaplayersdk.gsyplayer.listener.LockClickListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.VishaPlayerCallBack;
import com.transsion.vishaplayersdk.gsyplayer.utils.NetworkUtils;
import com.transsion.vishaplayersdk.gsyplayer.utils.OrientationUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.StandardGSYVideoPlayer;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView;
import com.transsion.vishaplayersdk.vishaplayer.VishaPlayer;
import defpackage.c07;
import defpackage.dt7;
import defpackage.e06;
import defpackage.e80;
import defpackage.ek4;
import defpackage.ez5;
import defpackage.f38;
import defpackage.f5;
import defpackage.fec;
import defpackage.fi1;
import defpackage.ft7;
import defpackage.gec;
import defpackage.h06;
import defpackage.h27;
import defpackage.hb0;
import defpackage.iia;
import defpackage.jp8;
import defpackage.kfc;
import defpackage.li9;
import defpackage.o18;
import defpackage.oc2;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.r16;
import defpackage.se;
import defpackage.sf7;
import defpackage.uf7;
import defpackage.ux0;
import defpackage.vha;
import defpackage.vz6;
import defpackage.w6c;
import defpackage.wz5;
import defpackage.xz5;
import defpackage.ydc;
import defpackage.yz5;
import defpackage.zg9;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@Route(path = VishaRouterTable.PATH_PAGE_ACTIVITY_PLAYER_DETAIL)
public class PlayerDetailActivity extends OnlineBaseActivity implements h27.b {
    public static final int INVALID_VIDEO_ID = 0;
    private static final String TAG = "visha_" + PlayerDetailActivity.class.getSimpleName();
    public static long pipInTime = 0;
    public static long pipStartTime = 0;
    VishaPlayer detailPlayer;
    EpisodesAdapter episodesAdapter;
    RouterBean.RouterData intentData;
    boolean isFromLeaveHint;
    private boolean isPlay;
    boolean isVarietyShow;
    ImageView mAddIcon;
    View mAddIconParent;
    AppBarLayout mAppBarLayout;
    ImageView mBackIv;
    ViewGroup mBottomController;
    private int mCategory;
    long mChannel;
    private View mChannelHeadContainer;
    private ImageView mChannelHeadIv;
    String mChannelName;
    private TextView mChannelNameTv;
    ChannelViewModel mChannelViewModel;
    private ImageView mCollectIv;
    String mCoverX;
    String mCoverY;
    TranVideoDetail.VideoSerials mCurrentSerial;
    TextView mDate;
    View mDateLine;
    ViewGroup mDetailContainer;
    private View mDetailMoreLl;
    NestedScrollView mDetailRoot;
    FrameLayout mDetailView;
    ViewGroup mEmptyView;
    TextView mEpisodeTip;
    ImageView mEpisodesClose;
    ViewGroup mEpisodesContainer;
    String mEpisodesName;
    RecyclerView mEpisodesRv;
    View mEpisodesTip;
    private TextView mEpisodesUpdateTv;
    String mFromCard;
    private boolean mFullScreenGuideCancelled;
    boolean mHaveTrivia;
    private List<HistoryBean> mHistroyBeans;
    ViewGroup mIntroContainer;
    IntroDialog mIntroDialog;
    boolean mIsFromLanuchIcon;
    boolean mIsFullScreen;
    boolean mIsHaveEpisodes;
    boolean mIsHaveSeries;
    private boolean mIsLoading;
    int mIsMultiSeason;
    int mIsMultiSerial;
    boolean mIsNeedFit;
    boolean mIsPlaying;
    int mIsRelated;
    boolean mIsVk;
    boolean mIsYoutube;
    int mLastNetState;
    int mLastNo;
    String mLastSeason;
    private String mLastSourId;
    ViewGroup mLoaddingErrorLayer;
    ViewGroup mLoadingLayer;
    TextView mLoadingTip;
    ImageView mLockIv;
    ViewGroup mNoNetLayer;
    TextView mOldPrice;
    TextView mOpenTipTv;
    long mPageDuration;
    long mPageTime;
    int mPayType;
    o18 mPipView;
    int mPlayFrom;
    PlayerDatailViewModel mPlayerDatailViewModel;
    private int mPortVideoHeight;
    PromotionBean mPromotion;
    String mRecentPlayEvent;
    RecommendViewModel mRecommendViewModel;
    YoutubeAdapter mRecommendYoutubeAdapter;
    RecyclerView mRecommendsRv;
    private TextView mRecommendsTipTv;
    View mRedPoint;
    String mRequestId;
    ViewGroup mRootView;
    private long mSerialId;
    private List<TranVideoDetail.VideoSerials> mSerials;
    String mSeriesName;
    RecyclerView mSessionsRv;
    private String mSourceId;
    String mSourceType;
    int mSoureFromType;
    View mSurfaceContainer;
    RecyclerView mTag;
    TextView mTime;
    View mTimeLine;
    TextView mTitleTv;
    long mTopicId;
    String mTopicName;
    int mTopicSort;
    VarietyShowAdapter mTriviaAdapter;
    ViewGroup mTriviaContainer;
    private String mTriviaLastSourId;
    RecyclerView mTriviaRv;
    ViewGroup mTriviaTip;
    private List<TranVideoDetail.VideoSerials> mTrivias;
    private TextView mTvSmashiUpdateTime;
    private long mVideoId;
    private ImageView mVideoIntroLogoIv;
    long mVideoLoadingTime;
    private String mVideoTitle;
    private String mVideoUrl;
    View mVipOpenView;
    private String mVkCoverImage;
    private TextView mVkDescTv;
    private FeedStreamBean mVkFeedStreamBean;
    private View mVkHeadContainer;
    private ImageView mVkHeadIv;
    private String mVkId;
    VkRecommendAdapter mVkRecommendAdapter;
    private String mVkSourceImage;
    private String mVkSourceName;
    private TextView mVkSourceNameTv;
    private TextView mVkTitleTv;
    private String mVkVideoName;
    private String mYoutubeChannel;
    private String mYoutubeCover;
    private String mYoutubeCoverX;
    private String mYoutubeVideoName;
    boolean mbLive;
    private boolean mbRequestVip;
    private LinearLayout mllDatailYearDurationLogo;
    private View navBar;
    NetworkObserver networkObserver;
    private OrientationUtils orientationUtils;
    private boolean recommendInit;
    RecommendTypeBeanAdapter recommendItemAdapter;
    long seriesId;
    SessionAdapter sessionAdapter;
    boolean tempStopLeaveHint;
    VarietyShowAdapter varietyShowAdapter;
    TranVideoDetail videoDatilBean;
    TranVideoDetail.VideoInfoBean videoInfoBean;
    private final int[] mFitStatusTitle = {R.string.fit_crop, R.string.fit_screen, R.string.fit_stratch};
    private volatile long mPlayPostion = 0;
    public boolean mHistorySeek = true;
    public boolean mReplay = false;
    public boolean mIsLandMorePip = false;
    private volatile boolean isEnterPip = false;
    private boolean isStopCalled = false;
    boolean mIsSynEpisode = true;
    String mDateStr = "";
    String mKind = "";
    volatile boolean mIsOver = false;
    private boolean isNewIntentCalled = false;
    Handler handler = new Handler();
    Set<Long> mSerialSet = new HashSet();
    int mHaveAD = 0;
    boolean mIsPort = true;
    boolean mIsFirst = true;
    boolean mIsHavePrepared = false;
    boolean mIsEnterPiped = false;
    private boolean mbPlayFromHistory = true;
    long mBufferIngTime = 0;
    boolean mExpanded = false;
    private int mForcePlay = 0;
    private final int Interval = 700;
    private int mVkPageNo = 1;
    VishaPlayerCallBack mVishaPlayerCallBack = new b();
    vz6 mNetworkStatusCallback = new c();
    private int mLastPlayState = 0;
    Runnable runnable = new Runnable() {
        @Override
        public void run() {
            f38.c().f(PlayerDetailActivity.this.detailPlayer.getCurrentPlayer().getFullscreenButton(), PlayerDetailActivity.this);
        }
    };

    public class a extends ux0 {
        public a() {
        }

        @Override
        public void onNoDoubleClick(View view) {
            try {
                if (PlayerDetailActivity.this.mVkFeedStreamBean == null) {
                    return;
                }
                IntroDialog introDialog = PlayerDetailActivity.this.mIntroDialog;
                if (introDialog != null && introDialog.isAdded()) {
                    PlayerDetailActivity.this.getSupportFragmentManager().beginTransaction().remove(PlayerDetailActivity.this.mIntroDialog).commit();
                }
                PlayerDetailActivity playerDetailActivity = PlayerDetailActivity.this;
                playerDetailActivity.mIntroDialog = VkDialog.O(playerDetailActivity.mVkFeedStreamBean, PlayerDetailActivity.this.mVkId, PlayerDetailActivity.this.mVkSourceImage, PlayerDetailActivity.this.mVkCoverImage, PlayerDetailActivity.this.mVkSourceName, PlayerDetailActivity.this.mVkVideoName);
                PlayerDetailActivity playerDetailActivity2 = PlayerDetailActivity.this;
                playerDetailActivity2.mIntroDialog.show(playerDetailActivity2.getSupportFragmentManager(), "IntroDialog");
            } catch (IllegalStateException e) {
                Log.e(PlayerDetailActivity.TAG, "show detail more dialog failed " + e.getMessage());
            }
        }
    }

    public class b extends VishaPlayerCallBack {
        public b() {
        }

        public static void e() {
            h27.c().e(1005, Boolean.valueOf(PlayHandler.getInstance().mIsLast));
        }

        public static void f() {
            PlayHandler.getInstance().mIsGravityLand = false;
        }

        public final void g() {
            PlayerDetailActivity playerDetailActivity = PlayerDetailActivity.this;
            if (playerDetailActivity.mIsNeedFit) {
                return;
            }
            playerDetailActivity.fitRoot();
        }

        public final void h() {
            if (!PlayHandler.getInstance().mIsLoading && !PlayHandler.getInstance().mTearing) {
                PlayerDetailActivity.this.getCurPlayer().hideLoadingView();
            }
            PlayerDetailActivity.this.getCurPlayer().setFullScreenVisible(true);
        }

        @Override
        public void onAutoComplete(String str, Object... objArr) {
            super.onAutoComplete(str, objArr);
            PlayerDetailActivity playerDetailActivity = PlayerDetailActivity.this;
            if (playerDetailActivity.mIsYoutube || playerDetailActivity.mIsVk) {
                return;
            }
            playerDetailActivity.playNext();
        }

        @Override
        public void onEnterFullscreen(String str, Object... objArr) {
            if (!MMKV.p().e("ott_play_fullscreen_guide", false)) {
                MMKV.p().y("ott_play_fullscreen_guide", true);
                ThreadUtils.o().removeCallbacks(PlayerDetailActivity.this.runnable);
            }
            PlayHandler.getInstance().mIsGravityLand = true;
            PlayerDetailActivity.this.mIsFullScreen = true;
            super.onEnterFullscreen(str, objArr);
            if (PlayHandler.getInstance().mIsGravity) {
                wz5.q();
            }
            long j = PlayDetailDataManger.sCurrentSerialId;
            long j2 = PlayerDetailActivity.this.mVideoId;
            long duration = GSYVideoManager.instance().getDuration();
            PlayerDetailActivity playerDetailActivity = PlayerDetailActivity.this;
            wz5.Z(j, j2, duration, playerDetailActivity.mTopicId, playerDetailActivity.mTopicSort, playerDetailActivity.mSourceType);
            PlayerDetailActivity.this.setNavVisibility(false);
            PlayerDetailActivity.this.getWindow().addFlags(512);
            IntroDialog introDialog = PlayerDetailActivity.this.mIntroDialog;
            if (introDialog != null && introDialog.isVisible()) {
                PlayerDetailActivity.this.mIntroDialog.dismiss();
            }
            int i = 8;
            PlayerDetailActivity.this.mBackIv.setVisibility(8);
            PlayerDetailActivity.this.handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    PlayerDetailActivity.b.e();
                }
            }, 500L);
            PlayerDetailActivity.this.handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    PlayerDetailActivity.b.f();
                }
            }, 2000L);
            PlayHandler.getInstance().mIsGravity = true;
            if (NetworkUtils.isAvailable(PlayerDetailActivity.this.getApplicationContext()) && !NetworkUtils.isWifiConnected(PlayerDetailActivity.this.getApplicationContext()) && PlayHandler.getInstance().mShowMobileData) {
                h27.c().e(1001, Boolean.TRUE);
                PlayerDetailActivity.this.detailPlayer.onVideoPause();
            }
            wz5.N("full_play");
            if (PlayerDetailActivity.this.detailPlayer.getCurrentPlayer() != null && PlayerDetailActivity.this.detailPlayer.getCurrentPlayer().getPlayListBtn() != null) {
                ImageView playListBtn = PlayerDetailActivity.this.detailPlayer.getCurrentPlayer().getPlayListBtn();
                if (PlayerDetailActivity.this.shouldShowPlayListBtn()) {
                    PlayerDetailActivity playerDetailActivity2 = PlayerDetailActivity.this;
                    if (!playerDetailActivity2.mIsYoutube && !playerDetailActivity2.mIsVk) {
                        i = 0;
                    }
                }
                playListBtn.setVisibility(i);
            }
            h27.c().e(1122, new Object[0]);
        }

        @Override
        public void onEnterImmerse() {
            PlayerDetailActivity playerDetailActivity = PlayerDetailActivity.this;
            if (playerDetailActivity.mIsFullScreen) {
                playerDetailActivity.setNavVisibility(false);
            }
        }

        @Override
        public void onOutImmerse() {
            PlayerDetailActivity playerDetailActivity = PlayerDetailActivity.this;
            if (playerDetailActivity.mIsFullScreen) {
                playerDetailActivity.setNavVisibility(true);
            }
        }

        @Override
        public void onPrepared(String str, Object... objArr) {
            super.onPrepared(str, objArr);
            PlayerDetailActivity playerDetailActivity = PlayerDetailActivity.this;
            playerDetailActivity.markPlayEventTime("vd_sdk_videoprepare", 1, playerDetailActivity.mHaveAD);
            if (!r0a.g(PlayerDetailActivity.this.mLastSourId)) {
                PlayHandler playHandler = PlayHandler.getInstance();
                String str2 = PlayerDetailActivity.this.mSourceId;
                TranVideoDetail.VideoSerials videoSerials = PlayerDetailActivity.this.mCurrentSerial;
                playHandler.mIsLast = str2.equals((videoSerials == null || videoSerials.getIsIntact() == 1) ? PlayerDetailActivity.this.mLastSourId : PlayerDetailActivity.this.mTriviaLastSourId);
                h27.c().e(1005, Boolean.valueOf(PlayHandler.getInstance().mIsLast));
            }
            if (PlayerDetailActivity.this.orientationUtils != null && !PlayerDetailActivity.this.orientationUtils.isEnable()) {
                PlayerDetailActivity.this.orientationUtils.setEnable(true);
            }
            PlayerDetailActivity.this.isPlay = true;
        }

        @Override
        public void onQuitFullscreen(String str, Object... objArr) {
            super.onQuitFullscreen(str, objArr);
            if (PlayHandler.getInstance().mIsGravity) {
                wz5.d();
            }
            LogUtils.j(PlayerDetailActivity.TAG, "onQuitFullscreen", objArr);
            PlayerDetailActivity playerDetailActivity = PlayerDetailActivity.this;
            playerDetailActivity.mIsFullScreen = false;
            playerDetailActivity.mBackIv.setVisibility(0);
            PlayerDetailActivity.this.setNavVisibility(true);
            PlayerDetailActivity.this.getWindow().clearFlags(512);
            h27.c().e(1004, new Object[0]);
            PlayerDetailActivity.this.mDetailRoot.scrollTo(0, 0);
            PlayerDetailActivity.this.mAppBarLayout.setExpanded(true);
            if (PlayerDetailActivity.this.orientationUtils != null) {
                PlayerDetailActivity.this.orientationUtils.backToProtVideo();
            }
            new Handler().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.g();
                }
            }, 100L);
            new Handler().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.h();
                }
            }, 500L);
            PlayHandler.getInstance().mIsGravity = true;
            wz5.N("vert_play");
            xz5.b();
        }

        @Override
        public void onRequestVip(String str, Object... objArr) {
            super.onRequestVip(str, objArr);
            LogUtils.j(PlayerDetailActivity.TAG, "request vip");
            PlayerDetailActivity.this.openVip();
            wz5.B(PlayerDetailActivity.this.mVideoId, PlayerDetailActivity.this.mSerialId, true);
        }

        @Override
        public void onRetryPlay() {
            PlayerDetailActivity.this.onMobileChangedRetryPlay();
        }

        @Override
        public void onStartPrepared(String str, Object... objArr) {
            super.onStartPrepared(str, objArr);
            PlayerDetailActivity.this.mVideoLoadingTime = System.currentTimeMillis();
            PlayHandler.getInstance().mIsLoading = true;
            PlayerDetailActivity.this.getCurPlayer().showLoadingView(false);
            PlayerDetailActivity playerDetailActivity = PlayerDetailActivity.this;
            playerDetailActivity.markPlayEventTime("vd_sdk_playercoreprepare", 1, playerDetailActivity.mHaveAD);
        }

        @Override
        public void onVideoStartShow(String str, Object... objArr) {
            super.onVideoStartShow(str, objArr);
            hb0.markDirect(yz5.a);
        }
    }

    public class c implements vz6 {
        public c() {
        }

        @Override
        public void onConnect(int i) {
            LogUtils.j(PlayerDetailActivity.TAG, "onConnect");
            super.onConnect(i);
        }

        @Override
        public void onDisconnect() {
            LogUtils.j(PlayerDetailActivity.TAG, "onDisconnect");
            PlayerDetailActivity.this.onNetworkStatusChanged(0);
        }

        @Override
        public void onMobile() {
            LogUtils.j(PlayerDetailActivity.TAG, "onMobile");
            PlayerDetailActivity.this.onNetworkStatusChanged(4);
        }

        @Override
        public void onWifi() {
            LogUtils.j(PlayerDetailActivity.TAG, "onWifi:mReplay:" + PlayerDetailActivity.this.mReplay);
            PlayerDetailActivity.this.onNetworkStatusChanged(1);
        }
    }

    public class d extends ux0 {
        public d() {
        }

        @Override
        public void onNoDoubleClick(View view) {
            try {
                IntroDialog introDialog = PlayerDetailActivity.this.mIntroDialog;
                if (introDialog != null && introDialog.isAdded()) {
                    PlayerDetailActivity.this.getSupportFragmentManager().beginTransaction().remove(PlayerDetailActivity.this.mIntroDialog).commit();
                }
                IntroDialog introDialog2 = PlayerDetailActivity.this.mIntroDialog;
                if (introDialog2 != null && !introDialog2.isAdded()) {
                    PlayerDetailActivity playerDetailActivity = PlayerDetailActivity.this;
                    playerDetailActivity.mIntroDialog.show(playerDetailActivity.getSupportFragmentManager(), "IntroDialog");
                }
                wz5.m(PlayerDetailActivity.this.mVideoId, PlayDetailDataManger.sCurrentSerialId);
                wz5.u();
            } catch (IllegalStateException e) {
                Log.e(PlayerDetailActivity.TAG, "show detail more dialog failed " + e.getMessage());
            }
        }
    }

    public class e extends RecyclerView.OnScrollListener {
        public e() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            LinearLayoutManager linearLayoutManager;
            super.onScrollStateChanged(recyclerView, i);
            if (PlayerDetailActivity.this.mIsLoading) {
                return;
            }
            if ((i == 1 || i == 2) && (linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager()) != null && linearLayoutManager.findLastCompletelyVisibleItemPosition() >= linearLayoutManager.getItemCount() - 1) {
                PlayerDetailActivity.this.loadMoreVkRecommendData();
            }
        }
    }

    public class f extends RecyclerView.OnScrollListener {
        public f() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            View childAt;
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0 && (childAt = recyclerView.getChildAt(0)) != null) {
                r16.d(childAt);
            }
        }
    }

    public class g implements Animator.AnimatorListener {
        public final boolean b;

        public g(boolean z) {
            this.b = z;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            PlayerDetailActivity.this.mVipOpenView.setVisibility(this.b ? 0 : 8);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            PlayerDetailActivity.this.mVipOpenView.setVisibility(0);
        }
    }

    public class h implements o18.b {
        public h() {
        }

        @Override
        public void a() {
            PlayerDetailActivity.this.playNext();
            PlayerDetailActivity.this.flushPip(true);
        }

        @Override
        public void b() {
            PlayerDetailActivity.this.playPre();
            PlayerDetailActivity.this.flushPip(true);
        }

        @Override
        public void c() {
            if (PlayerDetailActivity.this.getCurPlayer().isAdPlaying()) {
                return;
            }
            PlayerDetailActivity.this.getCurPlayer().clickStartIcon();
            boolean z = PlayerDetailActivity.this.getCurPlayer().getCurrentState() == 2;
            PlayerDetailActivity.this.flushPip(z);
            PlayerDetailActivity.this.mIsPlaying = z;
        }
    }

    public class i extends RecyclerView.OnScrollListener {
        public i() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                PlayerDetailActivity.this.showFullScreenGuide();
            }
        }
    }

    public class j extends RecyclerView.OnScrollListener {
        public j() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                PlayerDetailActivity.this.showFullScreenGuide();
            }
        }
    }

    private void bindLoadingPlaceholder() {
        TextView textView = (TextView) this.mLoadingLayer.findViewById(com.transsion.onlinevideo.R.id.loading_video_name);
        View viewFindViewById = this.mLoadingLayer.findViewById(com.transsion.onlinevideo.R.id.view_1);
        boolean zShouldSkipIntentTitleOnLoading = shouldSkipIntentTitleOnLoading();
        if (TextUtils.isEmpty(this.mVideoTitle) || zShouldSkipIntentTitleOnLoading) {
            if (textView != null) {
                textView.setText("");
                textView.setVisibility(8);
            }
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
        } else {
            if (textView != null) {
                textView.setText(this.mVideoTitle);
                textView.setVisibility(0);
            }
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
        }
        LogUtils.j(TAG, "bindLoadingPlaceholder skipIntentTitle=" + zShouldSkipIntentTitleOnLoading + " fromCard=" + this.mFromCard + " intentTitle=" + this.mVideoTitle);
    }

    private String buildOttPlayTag() {
        return "ott_mgtv_" + System.identityHashCode(this) + "_" + this.mVideoId;
    }

    private void cancelShowFullScreenGuide() {
        if (this.mFullScreenGuideCancelled) {
            return;
        }
        this.mFullScreenGuideCancelled = true;
        if (MMKV.p().e("ott_play_fullscreen_guide", false)) {
            return;
        }
        MMKV.p().y("ott_play_fullscreen_guide", true);
        ThreadUtils.o().removeCallbacks(this.runnable);
    }

    private void disableNestedScrollForDetailRecyclerViews() {
        this.mEpisodesRv.setNestedScrollingEnabled(false);
        this.mSessionsRv.setNestedScrollingEnabled(false);
        this.mTriviaRv.setNestedScrollingEnabled(false);
        this.mRecommendsRv.setNestedScrollingEnabled(false);
    }

    private void enterFullScreen() {
        if (f38.c().b() != null) {
            f38.c().b().dismiss();
        }
        PlayHandler.getInstance().mIsGravity = false;
        this.orientationUtils.resolveByClick();
        this.detailPlayer.startWindowFullscreen(this, true, true);
        this.handler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                PlayerDetailActivity.lambda$enterFullScreen$31();
            }
        }, 2000L);
        xz5.f(getCurPlayer() != null ? getCurPlayer().getPlayPosition() : 0, PlayDetailDataManger.sCurrentSerialId, this.mVideoId);
    }

    private void exitOthersPip() {
        Activity activity;
        WeakReference weakReference = o18.g;
        if (weakReference != null) {
            Object obj = weakReference.get();
            if (obj instanceof VideosService) {
                ((VideosService) obj).n();
            }
        }
        WeakReference weakReference2 = o18.f;
        if (weakReference2 == null || (activity = (Activity) weakReference2.get()) == null || activity == this) {
            return;
        }
        try {
            activity.moveTaskToBack(true);
            activity.finish();
        } catch (Exception unused) {
        }
    }

    public void fitRoot() {
        this.mRootView.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$fitRoot$4();
            }
        });
    }

    private void fixPipNavBar() {
        if (this.mIsPort || this.mIsEnterPiped) {
            ViewGroup.LayoutParams layoutParams = this.navBar.getLayoutParams();
            layoutParams.height = e80.c();
            this.navBar.setLayoutParams(layoutParams);
        }
    }

    public StandardGSYVideoPlayer getCurPlayer() {
        VishaPlayer vishaPlayer = this.detailPlayer;
        if (vishaPlayer == null) {
            return null;
        }
        return vishaPlayer.getFullWindowPlayer() != null ? (StandardGSYVideoPlayer) this.detailPlayer.getFullWindowPlayer() : this.detailPlayer;
    }

    @Nullable
    private PlayerInitConfig getPlayerInitConfig() {
        if (!com.transsion.palmsdk.b.s()) {
            return new PlayerInitConfig.PlayerInitConfigBuilder().withLoginState(false).withClientIP(CountryInfoUtil.k()).withGAID(com.transsion.utils.deviceinfo.a.j()).withCountryCode(CountryInfoUtil.i()).withVAID(AthenaAnalytics.F(Utils.a())).withLanguageCode(LanguageUtils.b().getLanguage()).withPlayerActivity(this).build();
        }
        PlayerInitConfig.PlayerInitConfigBuilder playerInitConfigBuilderWithVAID = new PlayerInitConfig.PlayerInitConfigBuilder().withLoginState(com.transsion.palmsdk.b.s()).withUserOpenID(com.transsion.palmsdk.b.k()).withUserToken(gec.c().e()).whitTokenType(gec.c().h()).withPalmToken(com.transsion.palmsdk.b.o()).withClientIP(CountryInfoUtil.k()).withGAID(com.transsion.utils.deviceinfo.a.j()).withCountryCode(CountryInfoUtil.i()).withVAID(AthenaAnalytics.F(Utils.a()));
        String str = this.mSourceType;
        if (str == null) {
            str = "0";
        }
        return playerInitConfigBuilderWithVAID.whitVIP(kfc.m(Integer.parseInt(str))).withLanguageCode(LanguageUtils.b().getLanguage()).withPlayerActivity(this).build();
    }

    private String getVideoId() {
        if (this.mVideoId == 0) {
            return this.mSourceId;
        }
        return this.mVideoId + "";
    }

    @Nullable
    private TranVideoDetail.VideoSerials getVideoSerials() {
        List<TranVideoDetail.VideoSerials> list;
        List<TranVideoDetail.VideoSerials> list2 = this.mSerials;
        TranVideoDetail.VideoSerials videoSerials = null;
        if (list2 == null || list2.isEmpty()) {
            List<TranVideoDetail.VideoSerials> list3 = this.mTrivias;
            if (list3 == null || list3.isEmpty()) {
                return null;
            }
            return this.mTrivias.get(0);
        }
        if (this.mSerialId != 0) {
            for (int i2 = 0; i2 < this.mSerials.size(); i2++) {
                if (this.mSerials.get(i2) != null && this.mSerials.get(i2).getSerialId() == this.mSerialId) {
                    videoSerials = this.mSerials.get(i2);
                    break;
                }
            }
        }
        if (videoSerials != null) {
            return videoSerials;
        }
        if (this.mSerialId != 0 && (list = this.mTrivias) != null && !list.isEmpty()) {
            for (int i3 = 0; i3 < this.mTrivias.size(); i3++) {
                if (this.mTrivias.get(i3) != null && this.mTrivias.get(i3).getSerialId() == this.mSerialId) {
                    videoSerials = this.mTrivias.get(i3);
                    break;
                }
            }
        }
        return videoSerials == null ? this.mSerials.get(0) : videoSerials;
    }

    private String getVideoUrl() {
        String str = this.mSourceId;
        try {
            if (Integer.parseInt(this.mSourceType) == 1 || Integer.parseInt(this.mSourceType) == 4) {
                return str;
            }
            Log.i(TAG, "getVideoUrl: " + this.mVideoUrl);
            return this.mVideoUrl;
        } catch (Exception unused) {
            return str;
        }
    }

    private void initHistory() {
        LogUtils.v(TAG, "initHistory, mVideoId: " + this.mVideoId + " mSerialId = " + this.mSerialId + " mSourceId = " + this.mSourceId + " mVideoUrl = " + this.mVideoUrl);
        ChannelViewModel channelViewModel = (ChannelViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(ChannelViewModel.class);
        this.mChannelViewModel = channelViewModel;
        channelViewModel.x().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$initHistory$1((List) obj);
            }
        });
        if (this.mIsYoutube || this.mIsVk) {
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$initHistory$2();
                }
            });
        } else {
            if (this.mIsFromLanuchIcon) {
                this.mChannelViewModel.y(this, this.mVideoId, com.transsion.palmsdk.b.s());
                return;
            }
            ChannelViewModel channelViewModel2 = this.mChannelViewModel;
            int i2 = this.mPlayFrom;
            channelViewModel2.w(this, i2 == 1 ? this.mSerialId : this.mVideoId, i2, com.transsion.palmsdk.b.s());
        }
    }

    private void initPlayer() {
        VishaPlayer vishaPlayer = this.detailPlayer;
        if (vishaPlayer == null || vishaPlayer.getFullWindowPlayer() == null) {
            initVishaPlayer();
            return;
        }
        LogUtils.j(TAG, "detailPlayer.getFullWindowPlayer() != null");
        TranVideoDetail.VideoSerials videoSerials = new TranVideoDetail.VideoSerials();
        videoSerials.setSerialTitle(this.mVideoTitle);
        videoSerials.setSerialId(this.mSerialId);
        videoSerials.setSourceId(this.mSourceId);
        videoSerials.setVideoUrl(this.mVideoUrl);
        playVideo(videoSerials);
    }

    private void initScrollListener() {
        this.mDetailRoot.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() {
            @Override
            public final void onScrollChange(NestedScrollView nestedScrollView, int i2, int i3, int i4, int i5) {
                this.a.lambda$initScrollListener$46(nestedScrollView, i2, i3, i4, i5);
            }
        });
        this.mEpisodesRv.addOnScrollListener(new i());
        this.mTriviaRv.addOnScrollListener(new j());
    }

    private void initThumb() {
        if (vha.s(this)) {
            PlayHandler.getInstance().setCustomThumb(vha.e(this), getResources().getDimensionPixelOffset(com.transsion.onlinevideo.R.dimen.seekbar_custom_thumb_offset));
        }
    }

    private void initVishaPlayer() {
        String str = TAG;
        LogUtils.j(str, "initVishaPlayer");
        if (this.detailPlayer == null) {
            LogUtils.m(str, "play error: player not found");
            return;
        }
        PlayHandler.getInstance().mPlayStartTime = System.currentTimeMillis();
        PlayHandler.getInstance().registerNetStatus(getApplicationContext());
        resolveNormalVideoUI();
        this.detailPlayer.setPlayerType(Integer.parseInt(TextUtils.isEmpty(this.mSourceType) ? "0" : this.mSourceType));
        this.detailPlayer.setPlayType(this.mbLive ? PlayType.PLAY_TYPE_LIVE : PlayType.PLAY_TYPE_VOD);
        OrientationUtils orientationUtils = new OrientationUtils(this, this.detailPlayer);
        this.orientationUtils = orientationUtils;
        orientationUtils.setEnable(false);
        this.detailPlayer.setRotateViewAuto(false);
        this.detailPlayer.setLockLand(false);
        GSYVideoOptionBuilder url = new GSYVideoOptionBuilder().setIsTouchWiget(true).setRotateViewAuto(false).setLockLand(false).setNeedLockFull(true).setPlayTag(buildOttPlayTag()).setVideoTitle(this.mVideoTitle).setSeekOnStart(this.mPlayPostion).setUrl(getVideoUrl());
        TranVideoDetail.VideoSerials videoSerials = this.mCurrentSerial;
        GSYVideoOptionBuilder videoID = url.setVideoID(videoSerials != null ? videoSerials.getVideoId() : 0L);
        TranVideoDetail.VideoSerials videoSerials2 = this.mCurrentSerial;
        videoID.setSerialID(videoSerials2 != null ? videoSerials2.getSerialId() : 0L).setCacheWithPlay(false).setPlayerInitConfig(getPlayerInitConfig()).setHardwareAccelerated(this.detailPlayer.isHardwareAccelerated()).setVideoAllCallBack(this.mVishaPlayerCallBack).setLockClickListener(new LockClickListener() {
            @Override
            public final void onClick(View view, boolean z) {
                this.a.lambda$initVishaPlayer$26(view, z);
            }
        }).build((StandardGSYVideoPlayer) this.detailPlayer);
        this.detailPlayer.getFullscreenButton().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$initVishaPlayer$27(view);
            }
        });
        PlayHandler.getInstance().setPlayNextListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$initVishaPlayer$28(view);
            }
        });
        PlayHandler.getInstance().setPlayListListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$initVishaPlayer$29(view);
            }
        });
        PlayHandler.getInstance().setPipListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$initVishaPlayer$30(view);
            }
        });
        if (NetworkUtils.isAvailable(getApplicationContext())) {
            if (NetworkUtils.isWifiConnected(getApplicationContext()) || !PlayHandler.getInstance().mShowMobileData) {
                this.detailPlayer.autoPlay();
            } else {
                h27.c().e(1001, Boolean.TRUE);
            }
        }
    }

    public static void lambda$didReceivedNotification$45() {
        PlayHandler.getInstance().mProgressChange = false;
    }

    public static void lambda$enterFullScreen$31() {
        PlayHandler.getInstance().mIsGravity = true;
    }

    public void lambda$fitRoot$4() {
        int[] iArr = new int[2];
        this.mRootView.getLocationOnScreen(iArr);
        if (e80.e() - iArr[1] > oc2.a(getApplicationContext(), 10.0f)) {
            this.mIsNeedFit = true;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mRootView.getLayoutParams();
            layoutParams.setMargins(0, e80.e(), 0, 0);
            layoutParams.height = -1;
            layoutParams.width = -1;
            this.mRootView.setLayoutParams(layoutParams);
        }
    }

    public void lambda$initHistory$1(List list) {
        LogUtils.j(TAG, "getHistoryBeansByVid: " + list.size());
        if (list.isEmpty()) {
            return;
        }
        this.mHistroyBeans = list;
    }

    public void lambda$initHistory$2() {
        List<HistoryBean> historyUserBeanBySourceId = OnlineVideoDatabase.a().b().getHistoryUserBeanBySourceId(this.mIsVk ? this.mVkId : this.mSourceId);
        this.mHistroyBeans = historyUserBeanBySourceId;
        if (historyUserBeanBySourceId == null || historyUserBeanBySourceId.isEmpty()) {
            return;
        }
        this.mPlayPostion = this.mHistroyBeans.get(0).lastPos;
    }

    public void lambda$initScrollListener$46(NestedScrollView nestedScrollView, int i2, int i3, int i4, int i5) {
        cancelShowFullScreenGuide();
    }

    public void lambda$initView$10(String str, View view) {
        savePlayHistory();
        hb0.markTrackTwo("vd_ott_detail_addtohome_cl", "videoID", Long.valueOf(this.mVideoId), "videoname", this.mVideoTitle);
        if (zg9.m(this, str)) {
            ToastUtils.s(com.transsion.onlinevideo.R.string.has_cut_ready);
            return;
        }
        if (!this.mIsYoutube && !this.mIsVk) {
            TranVideoDetail tranVideoDetail = this.videoDatilBean;
            if (tranVideoDetail == null || tranVideoDetail.getVideoInfo() == null || TextUtils.isEmpty(this.videoDatilBean.getVideoInfo().getVideoTitle())) {
                return;
            }
            LogUtils.j(TAG, "addShortCut,sourceid:" + this.videoDatilBean.getVideoInfo().getSourceId());
            zg9.h(this, PlayerDetailActivity.class, this.videoDatilBean, this.mSerialId);
        }
        MMKV.p().y("is_ott_bubble_showed", true);
        this.tempStopLeaveHint = true;
        this.mRedPoint.setVisibility(8);
        if (this.mIsVk) {
            zg9.j(this, PlayerDetailActivity.class, new CollectItem(this.mVkVideoName, this.mVkId, this.mVkCoverImage, System.currentTimeMillis() / 1000, 0, this.mVkSourceName, this.mVkCoverImage, this.mIsVk, this.mVkId, fi1.e(this.mVkFeedStreamBean)));
            return;
        }
        if (this.mIsYoutube) {
            zg9.j(this, PlayerDetailActivity.class, new CollectItem(this.mYoutubeVideoName, this.mSourceId, this.mYoutubeCoverX, System.currentTimeMillis() / 1000, 1, this.mYoutubeChannel, this.mYoutubeCover));
            return;
        }
        LogUtils.j(TAG, "addShortCut,sourceid:" + this.videoDatilBean.getVideoInfo().getSourceId());
        zg9.h(this, PlayerDetailActivity.class, this.videoDatilBean, this.mSerialId);
    }

    public void lambda$initView$11(View view) {
        retry();
    }

    public void lambda$initView$12(View view) {
        retry();
    }

    public void lambda$initView$13(View view) {
        PromotionBean promotionBean = this.mPromotion;
        if (promotionBean != null) {
            f5.c(VipWebActivity.K0(this, promotionBean.getVipId().intValue(), "VIP", "ott_promotion", this.mPromotion.getVipCardId().longValue()), this);
        } else {
            openVip();
            wz5.B(this.mVideoId, this.mSerialId, false);
        }
    }

    public void lambda$initView$5(String str, View view) {
        CollectItem collectItem;
        if (this.mIsYoutube) {
            collectItem = new CollectItem(this.mYoutubeVideoName, this.mSourceId, this.mYoutubeCoverX, System.currentTimeMillis() / 1000, 1, this.mYoutubeChannel, this.mYoutubeCover);
        } else if (this.mIsVk) {
            collectItem = new CollectItem(this.mVkVideoName, this.mVkId, this.mVkCoverImage, System.currentTimeMillis() / 1000, 0, this.mVkSourceName, this.mVkCoverImage, this.mIsVk, this.mVkId, fi1.e(this.mVkFeedStreamBean));
        } else {
            long j2 = this.mVideoId;
            TranVideoDetail.VideoInfoBean videoInfoBean = this.videoInfoBean;
            collectItem = new CollectItem(j2, videoInfoBean == null ? "" : videoInfoBean.getVideoTitle(), Integer.valueOf(this.mSoureFromType), this.mSourceId, this.mCoverX, this.mCoverY, Integer.valueOf(this.mPayType), System.currentTimeMillis() / 1000, this.mTopicId);
        }
        wz5.p(0, this.mTopicId, this.mChannel, this.mVideoId, OnlineCollectDataManager.d().f(str));
        sf7.a(this.mCollectIv, collectItem, str, 0);
    }

    public void lambda$initView$6(View view) {
        markDuration();
        this.mIsOver = true;
        wz5.T("eixt", this.mRecentPlayEvent);
        wz5.N("btn_back");
        finish();
    }

    public void lambda$initView$7(View view) {
        showTriviaExpand();
        wz5.i0();
    }

    public void lambda$initView$8(View view) {
        showEpisodesExpand(false);
        wz5.l();
        wz5.Y();
    }

    public void lambda$initView$9(View view) {
        showEpisodesExpand(false);
        wz5.l();
        wz5.Y();
    }

    public void lambda$initVishaPlayer$26(View view, boolean z) {
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.setEnable(!z);
        }
    }

    public void lambda$initVishaPlayer$27(View view) {
        enterFullScreen();
    }

    public void lambda$initVishaPlayer$28(View view) {
        playNext();
    }

    public void lambda$initVishaPlayer$29(View view) {
        showPlayList();
    }

    public void lambda$initVishaPlayer$30(View view) {
        this.orientationUtils.updateLandStatusWhenPip();
        enterPip();
    }

    public void lambda$onNetworkStatusChanged$3(int i2) {
        this.mLastPlayState = this.detailPlayer.getCurrentPlayer().getCurrentState();
        if (i2 == 1) {
            onWiFiNetWorkStateChanged();
        } else if (i2 == 6 || i2 == 7 || i2 == 0) {
            onNetworkDisconnected();
        } else {
            onMobileNetworkChanged();
        }
    }

    public void lambda$onNormalPlay$33(TranVideoDetail tranVideoDetail) {
        if (tranVideoDetail != null) {
            LogUtils.j(TAG, "Player:get video info end");
            updateUI(tranVideoDetail);
            return;
        }
        LogUtils.m(TAG, "get video info failed videoid = " + getVideoId());
        h27.c().e(1000, Boolean.TRUE, "");
        h27.c().e(1034, Long.valueOf(PlayerError.TRAN_PLAYER_ERROR_GET_VIDEO_ID_FAILED));
    }

    public void lambda$onObservePlayDetailRequest$32(Integer num) {
        if (num.intValue() == 200) {
            this.mLoaddingErrorLayer.setVisibility(8);
            this.mLoadingLayer.setVisibility(8);
            this.mEmptyView.setVisibility(8);
        } else if (num.intValue() == -1) {
            this.mEmptyView.setVisibility(0);
            zg9.q(this);
            zg9.o(this, zg9.i(this.mVideoId));
        } else {
            this.mEmptyView.setVisibility(0);
            if (NetworkUtils.isAvailable(getApplicationContext())) {
                this.mLoaddingErrorLayer.setVisibility(0);
                wz5.M(PlayDetailDataManger.sCurrentSerialId, this.mVideoId, String.valueOf(PlayerError.TRAN_PLAYER_ERROR_API_REQUEST_ERROR), "", this.mRecentPlayEvent);
            } else {
                wz5.T("network", this.mRecentPlayEvent);
                wz5.M(PlayDetailDataManger.sCurrentSerialId, this.mVideoId, String.valueOf(PlayerError.TRAN_PLAYER_ERROR_NETWORK_NOT_AVAILABLE), "", this.mRecentPlayEvent);
                this.mNoNetLayer.setVisibility(0);
                wz5.A();
                h27.c().e(1002, Boolean.TRUE);
            }
        }
        this.mLoadingLayer.setVisibility(8);
    }

    public void lambda$onPause$44() {
        if (this.mIsEnterPiped) {
            return;
        }
        markDurationPause();
    }

    public void lambda$onPictureInPictureModeChanged$40(boolean z) {
        this.mBackIv.setVisibility(z ? 8 : 0);
        this.mDetailView.setVisibility(z ? 8 : 0);
        this.mBottomController.setVisibility((z || this.detailPlayer.isVkVideo()) ? 8 : 0);
        View viewFindViewById = getCurPlayer().findViewById(com.transsion.onlinevideo.R.id.surface_container);
        if (z) {
            if (viewFindViewById == null || viewFindViewById.getParent() == null) {
                return;
            }
            for (int i2 = 0; i2 < ((ViewGroup) viewFindViewById.getParent()).getChildCount(); i2++) {
                if (((ViewGroup) viewFindViewById.getParent()).getChildAt(i2).getId() != com.transsion.onlinevideo.R.id.surface_container) {
                    ((ViewGroup) viewFindViewById.getParent()).getChildAt(i2).setVisibility(z ? 8 : 0);
                }
            }
            return;
        }
        if (viewFindViewById == null || viewFindViewById.getParent() == null) {
            return;
        }
        for (int i3 = 0; i3 < ((ViewGroup) viewFindViewById.getParent()).getChildCount(); i3++) {
            if (((ViewGroup) viewFindViewById.getParent()).getChildAt(i3).getId() == com.transsion.onlinevideo.R.id.layout_bottom_container) {
                ((ViewGroup) viewFindViewById.getParent()).getChildAt(i3).setVisibility(z ? 8 : 0);
            }
        }
    }

    public void lambda$onPictureInPictureModeChanged$41() {
        e80.g(this);
        this.recommendItemAdapter.notifyDataSetChanged();
        VarietyShowAdapter varietyShowAdapter = this.mTriviaAdapter;
        if (varietyShowAdapter != null) {
            varietyShowAdapter.notifyDataSetChanged();
        }
        VarietyShowAdapter varietyShowAdapter2 = this.varietyShowAdapter;
        if (varietyShowAdapter2 != null) {
            varietyShowAdapter2.notifyDataSetChanged();
        }
    }

    public void lambda$onPictureInPictureModeChanged$42(boolean z) {
        View childAt;
        if (!z) {
            this.detailPlayer.getCurrentPlayer().setFullScreenVisible(true);
        }
        View viewFindViewById = getCurPlayer().findViewById(com.transsion.onlinevideo.R.id.surface_container);
        if (viewFindViewById == null || (childAt = ((ViewGroup) viewFindViewById).getChildAt(0)) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        childAt.setLayoutParams(layoutParams);
    }

    public void lambda$parseIntent$0(PersistableBundle persistableBundle) {
        Intent intent = new Intent(this, (Class<?>) PlayerDetailActivity.class);
        intent.putExtra(RouterUtils.ROUTER_DATA, persistableBundle);
        intent.addFlags(268435456);
        getApplication().startActivity(intent);
    }

    public void lambda$setVkUI$47(View view) {
        this.mRecommendsRv.scrollToPosition(0);
    }

    public void lambda$showPlayList$37(List list, int i2) {
        savePlayHistory();
        PlayDetailDataManger.sCurrentSerialId = ((TranVideoDetail.VideoSerials) list.get(i2)).getSerialId();
        this.mSerials = list;
        synPlayItemBoth(((TranVideoDetail.VideoSerials) list.get(i2)).getSeriesId());
        playVideo((TranVideoDetail.VideoSerials) list.get(i2));
        TranVideoDetail.VideoSeries series = PlayDetailDataManger.getSeries(((TranVideoDetail.VideoSerials) list.get(i2)).getSeriesId());
        wz5.R(PlayDetailDataManger.sCurrentSerialId, this.mVideoId, this.mLastSeason, series == null ? "" : series.getSeasonName());
    }

    public void lambda$showPromotion$43(PromotionBean promotionBean) {
        if (promotionBean == null) {
            return;
        }
        this.mPromotion = promotionBean;
        this.mOpenTipTv.setText(promotionBean.getPromotionPrice());
        this.mOldPrice.setText(promotionBean.getPrice());
        this.mOpenTipTv.setIncludeFontPadding(false);
        this.mOldPrice.setIncludeFontPadding(false);
        this.mOldPrice.setVisibility(0);
        this.mOldPrice.getPaint().setFlags(16);
        this.mOldPrice.getPaint().setAntiAlias(true);
    }

    public void lambda$showTriviaExpand$36(List list, int i2) {
        savePlayHistory();
        markDuration();
        PlayDetailDataManger.sCurrentSerialId = ((TranVideoDetail.VideoSerials) list.get(i2)).getSerialId();
        this.mSerials = list;
        this.mTriviaRv.scrollToPosition(i2);
        playVideo((TranVideoDetail.VideoSerials) list.get(i2));
        TranVideoDetail.VideoSeries series = PlayDetailDataManger.getSeries(((TranVideoDetail.VideoSerials) list.get(i2)).getSeriesId());
        wz5.R(PlayDetailDataManger.sCurrentSerialId, this.mVideoId, this.mLastSeason, series == null ? "" : series.getSeasonName());
    }

    public void lambda$updateEpisodes$15(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        jp8.a(this.mEpisodesRv, view);
        playVideoItem(baseQuickAdapter.getData(), false, i2);
    }

    public void lambda$updateEpisodes$16(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        jp8.a(this.mEpisodesRv, view);
        playVideoItem(baseQuickAdapter.getData(), false, i2);
    }

    public void lambda$updateIntro$14(TagAdapter tagAdapter, BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        Tag tag = tagAdapter.getData().get(i2);
        RouterBean.RouterData routerData = new RouterBean.RouterData();
        routerData.setTopic_id((int) tag.getTopicId());
        routerData.setTopic_name(tag.getName());
        routerData.setData_type(2);
        routerData.setSourceType(tag.getTagType().intValue());
        routerData.setChannel(tag.getTagId().intValue());
        routerData.setBottom_position(((Integer) tag.getSourceType()).intValue());
        wz5.g0("vd_ott_detail_label_cl", tag.getName(), this.mVideoId, tag.getTagId().intValue());
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(2).withParam(routerData).withMarkParam("vd_ott_label_cl").build(), this);
        finish();
    }

    public void lambda$updateRecommend$19(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        this.mRecommendYoutubeAdapter.c(this, i2, true);
    }

    public void lambda$updateRecommend$20(List list) {
        updateRecommend(list, true, false);
    }

    public static void lambda$updateRecommend$21() {
    }

    public void lambda$updateRecommend$22(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        this.mVkRecommendAdapter.c(this, i2, true);
    }

    public void lambda$updateRecommend$23(List list) {
        updateRecommend(list, false, true);
    }

    public void lambda$updateRecommend$24(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        savePlayHistory();
        markDuration();
        this.recommendItemAdapter.c(this, i2);
        GSYVideoManager.instance().stop();
    }

    public void lambda$updateRecommend$25(List list) {
        updateRecommend(list, false, false);
    }

    public void lambda$updateSeries$18(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        switchSession(false, i2);
    }

    public void lambda$updateTrivia$17(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
        jp8.a(this.mTriviaRv, view);
        playVideoItem(baseQuickAdapter.getData(), false, i2);
    }

    public void lambda$updateVipGuide$38(boolean z) {
        if (this.mVipOpenView.getVisibility() == 0 || z) {
            this.mVipOpenView.setVisibility(z ? 8 : 0);
        } else {
            showVipGuide(true);
        }
    }

    public void lambda$updateVipGuide$39() {
        String str = this.mSourceType;
        if (str == null) {
            str = "0";
        }
        final boolean z = kfc.m(Integer.parseInt(str)) || !PlayDetailDataManger.isVip();
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$updateVipGuide$38(z);
            }
        });
    }

    public void loadMoreVkRecommendData() {
        if (this.mIsVk) {
            this.mIsLoading = true;
            RecommendViewModel recommendViewModel = this.mRecommendViewModel;
            String strJ = dt7.j(this.mVkFeedStreamBean);
            int i2 = this.mVkPageNo;
            this.mVkPageNo = i2 + 1;
            recommendViewModel.d(strJ, i2, this.mVkId);
        }
    }

    private void markDuration() {
        if ((this.mIsYoutube || this.mIsVk || this.videoDatilBean != null) && !this.mIsOver) {
            timeCount();
            timeDowith();
        }
    }

    private void markDurationPause() {
        if ((this.mIsYoutube || this.mIsVk || this.videoDatilBean != null) && !this.mIsOver) {
            long jCurrentTimeMillis = System.currentTimeMillis() - 700;
            if (PlayHandler.getInstance().mPlayTime == 0) {
                return;
            }
            PlayHandler.getInstance().mPlayDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPlayTime;
            PlayHandler.getInstance().mPlayItemDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPlayItemTime;
            if (this.mIsPort) {
                PlayHandler.getInstance().mPortPlayDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPortPlayTime;
            }
            timeDowith();
        }
    }

    public void markPlayEventTime(String str, int i2, int i3) {
        this.mRecentPlayEvent = str;
        wz5.P(str, System.currentTimeMillis() - PlayHandler.getInstance().mPlayStartTime, i2, i3, PlayDetailDataManger.sCurrentSerialId, this.mVideoId);
    }

    private void markPlayEventTimeInit(String str, int i2, int i3) {
        this.mRecentPlayEvent = str;
        wz5.P(str, System.currentTimeMillis() - PlayHandler.getInstance().mInitStartTime, i2, i3, PlayDetailDataManger.sCurrentSerialId, this.mVideoId);
    }

    private void markPreviewDuration() {
        if (PlayerStatisticInfo.playRealDuration <= 0 || this.mPayType <= 0) {
            return;
        }
        String string = this.mTitleTv.getText().toString();
        long j2 = this.mVideoId;
        TranVideoDetail.VideoSerials videoSerials = this.mCurrentSerial;
        e06.c(string, j2, videoSerials != null ? videoSerials.getSerialTitle() : "", PlayerStatisticInfo.playRealDuration);
        PlayerStatisticInfo.playRealDuration = 0L;
    }

    public void onMobileChangedRetryPlay() {
        boolean z = this.mIsYoutube;
        if (!z && !this.mIsVk && this.videoDatilBean == null) {
            this.detailPlayer.getCurrentPlayer().showLoadingView(false);
            this.mPlayerDatailViewModel.e(getVideoId());
            return;
        }
        if (this.mReplay) {
            if (z) {
                onYoutubePlay();
            } else {
                this.detailPlayer.getCurrentPlayer().netWorkErrorLogic();
            }
            this.mReplay = false;
            return;
        }
        if (this.mLastPlayState == 2) {
            this.detailPlayer.getGSYVideoManager().start();
        } else {
            this.detailPlayer.getCurrentPlayer().showLoadingView(false);
            this.detailPlayer.autoPlay();
        }
    }

    private void onMobileNetworkChanged() {
        if (NetworkUtils.isWifiConnected(this)) {
            LogUtils.j(TAG, "onMobileNetworkChanged: wifi is connected");
            return;
        }
        this.mNoNetLayer.setVisibility(8);
        h27.c().e(1002, Boolean.FALSE);
        if (PlayHandler.getInstance().mShowMobileData) {
            h27.c().e(1001, Boolean.TRUE);
            this.detailPlayer.onVideoPause();
        } else if (this.mReplay) {
            this.detailPlayer.getCurrentPlayer().netWorkErrorLogic();
            this.mReplay = false;
        } else if (this.mLastPlayState == 2) {
            this.detailPlayer.getGSYVideoManager().start();
        }
    }

    private void onNetworkDisconnected() {
        if (NetworkUtils.isConnected(this)) {
            LogUtils.j(TAG, "onNetworkDisconnected,but network is isAvailable,no need to deal");
            return;
        }
        this.mLastNetState = 0;
        this.mReplay = true;
        this.mPlayPostion = GSYVideoManager.instance().getCurrentPosition();
        this.mLastPlayState = this.detailPlayer.getCurrentPlayer().getCurrentState();
        if (this.detailPlayer.isPlaying()) {
            GSYVideoManager.instance().pause();
            this.mReplay = false;
        }
        h27.c().e(1002, Boolean.TRUE);
        if (this.videoDatilBean == null) {
            this.mNoNetLayer.setVisibility(0);
        }
        if (!NetworkUtils.isAvailable(getApplicationContext())) {
            wz5.A();
        }
        wz5.M(PlayDetailDataManger.sCurrentSerialId, this.mVideoId, String.valueOf(PlayerError.TRAN_PLAYER_ERROR_NETWORK_NOT_AVAILABLE), "", this.mRecentPlayEvent);
        wz5.T("network", this.mRecentPlayEvent);
    }

    public void onNetworkStatusChanged(final int i2) {
        runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onNetworkStatusChanged$3(i2);
            }
        });
    }

    private void onNormalPlay() {
        LogUtils.j(TAG, "player:get video info start " + getVideoId());
        if (!NetworkUtils.isAvailable(getApplicationContext())) {
            ToastUtils.s(com.transsion.onlinevideo.R.string.tip_no_net);
            this.mPlayerDatailViewModel.a().postValue(-2);
        } else {
            this.mPlayerDatailViewModel.e(getVideoId());
            if (this.mPlayerDatailViewModel.d().hasObservers()) {
                return;
            }
            this.mPlayerDatailViewModel.d().observe(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.lambda$onNormalPlay$33((TranVideoDetail) obj);
                }
            });
        }
    }

    private void onObservePlayDetailRequest() {
        if (this.mPlayerDatailViewModel.a().hasObservers()) {
            return;
        }
        this.mPlayerDatailViewModel.a().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$onObservePlayDetailRequest$32((Integer) obj);
            }
        });
    }

    private void onVkPlay() {
        PlayerDatailViewModel playerDatailViewModel;
        PlayHandler.getInstance().mVkInitMute = false;
        PlayHandler.getInstance().mVkTouchCheck = false;
        initPlayer();
        this.mLoadingLayer.setVisibility(8);
        this.mEmptyView.setVisibility(8);
        setVkUI();
        updateRecommend();
        if (NetworkUtils.isAvailable(getApplicationContext()) || (playerDatailViewModel = this.mPlayerDatailViewModel) == null || playerDatailViewModel.a() == null) {
            return;
        }
        this.mPlayerDatailViewModel.a().postValue(-2);
    }

    private void onWiFiNetWorkStateChanged() {
        if (this.mLastNetState != 1) {
            this.mLastNetState = 1;
            this.mNoNetLayer.setVisibility(8);
            h27 h27VarC = h27.c();
            Boolean bool = Boolean.FALSE;
            h27VarC.e(1002, bool);
            h27.c().e(1001, bool);
            h27.c().e(1000, bool);
            onMobileChangedRetryPlay();
        }
    }

    private void onYoutubePlay() {
        PlayerDatailViewModel playerDatailViewModel;
        initPlayer();
        this.mLoadingLayer.setVisibility(8);
        this.mEmptyView.setVisibility(8);
        setYoutubeUI();
        updateRecommend();
        if (NetworkUtils.isAvailable(getApplicationContext()) || (playerDatailViewModel = this.mPlayerDatailViewModel) == null || playerDatailViewModel.a() == null) {
            return;
        }
        this.mPlayerDatailViewModel.a().postValue(-2);
    }

    public void openVip() {
        this.mbRequestVip = true;
        UserCenterActivity.T0("playdetail", this.mSourceType, this);
    }

    private void parseIntent(Intent intent) {
        if (intent != null) {
            this.recommendInit = true;
            Parcelable parcelableExtra = intent.getParcelableExtra(RouterUtils.ROUTER_DATA);
            if (parcelableExtra instanceof PersistableBundle) {
                this.mIsFromLanuchIcon = true;
                final PersistableBundle persistableBundle = (PersistableBundle) parcelableExtra;
                this.mIsYoutube = persistableBundle.getInt("is_youtube", 0) == 1;
                boolean z = persistableBundle.getInt("is_vk", 0) == 1;
                this.mIsVk = z;
                if (this.mIsYoutube) {
                    this.mSourceType = "4";
                    this.mSourceId = persistableBundle.getString("sid");
                    this.mYoutubeChannel = persistableBundle.getString("youtube_channel_name");
                    this.mYoutubeCover = persistableBundle.getString("youtube_channel_cover");
                    this.mYoutubeVideoName = persistableBundle.getString("youtube_name");
                    this.mYoutubeCoverX = persistableBundle.getString("youtube_cover");
                    LogUtils.j(TAG, "mYoutubeChannel = " + this.mYoutubeChannel + " mYoutubeCover = " + this.mYoutubeCover + " mYoutubeVideoName = " + this.mYoutubeVideoName + " mYoutubeCoverX = " + this.mYoutubeCoverX);
                } else if (z) {
                    this.mVkVideoName = persistableBundle.getString("vk_title_name");
                    this.mVkSourceName = persistableBundle.getString("vk_source_name");
                    this.mVkSourceImage = persistableBundle.getString("vk_source_image");
                    this.mVkCoverImage = persistableBundle.getString("vk_cover_image");
                    FeedStreamBean feedStreamBean = (FeedStreamBean) ek4.d(persistableBundle.getString("vk_bean"), FeedStreamBean.class);
                    this.mVkFeedStreamBean = feedStreamBean;
                    this.mVideoUrl = (String) feedStreamBean.getVideo().getVideoLink();
                    this.mVkId = persistableBundle.getString("vk_id");
                    this.mSourceType = "5";
                    LogUtils.j(TAG, "mVkSourceName = " + this.mVkSourceName + " mVkSourceImage = " + this.mVkSourceImage + " mVkCoverImage = " + this.mVkCoverImage + " mVkId = " + this.mVkId + " mVkVideoName = " + this.mVkVideoName + " mVideoUrl = " + this.mVideoUrl + " mVkFeedStreamBean = " + this.mVkFeedStreamBean);
                } else {
                    this.mVideoId = persistableBundle.getLong("vid");
                    this.mSerialId = persistableBundle.getLong("serid");
                    this.mSourceId = persistableBundle.getString("sid");
                    this.mIsRelated = persistableBundle.getInt("rel");
                    LogUtils.j(TAG, "parseIntent: mVideoId = " + this.mVideoId + ", mSerialId = " + this.mSerialId + ", mSourceId = " + this.mSourceId + ", mIsRelated = " + this.mIsRelated);
                }
                this.mPlayFrom = 0;
                this.mbPlayFromHistory = false;
                this.isNewIntentCalled = false;
                if (isInPictureInPictureMode()) {
                    se.b().postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.lambda$parseIntent$0(persistableBundle);
                        }
                    }, 100L);
                    finish();
                    return;
                }
            } else {
                this.mIsFromLanuchIcon = false;
                this.intentData = (RouterBean.RouterData) parcelableExtra;
                String str = TAG;
                Log.i(str, "parseIntent: intentData = " + this.intentData);
                RouterBean.RouterData routerData = this.intentData;
                if (routerData != null) {
                    this.mIsYoutube = routerData.isYoutube() == 1;
                    this.mIsVk = this.intentData.getSourceType() == 5;
                    this.mVkId = this.intentData.getVkId();
                    this.mVideoId = this.intentData.getVideo_id();
                    this.mSourceId = this.intentData.getSourceId();
                    this.mVideoUrl = this.intentData.getVideoUrl();
                    this.mSourceType = this.intentData.getSourceType() + "";
                    this.mSoureFromType = this.intentData.getSourceType();
                    this.mVideoTitle = this.intentData.getTitle();
                    this.mFromCard = this.intentData.getFrom_card();
                    this.mTopicId = this.intentData.getTopic_id();
                    this.mTopicSort = this.intentData.getTopic_sort();
                    this.mIsRelated = this.intentData.getIs_related();
                    this.mChannel = this.intentData.getChannel();
                    this.mChannelName = this.intentData.getChannel_name();
                    this.mTopicName = this.intentData.getTopic_name();
                    this.mPlayFrom = this.intentData.getData_type();
                    this.mForcePlay = this.intentData.getVideo_force_play();
                    if (this.mIsYoutube) {
                        this.mSourceType = "4";
                        this.mYoutubeChannel = this.intentData.getYoutubeChannel();
                        this.mYoutubeCover = this.intentData.getYoutubeChannelCover();
                        this.mYoutubeVideoName = this.intentData.getYoutubeVideoName();
                        this.mYoutubeCoverX = this.intentData.getYoutubeCover();
                    }
                    if (this.mIsVk) {
                        FeedStreamBean feedStreamBean2 = (FeedStreamBean) fi1.b(this.intentData.getTypeBeanJson(), FeedStreamBean.class);
                        this.mVkFeedStreamBean = feedStreamBean2;
                        this.mVkCoverImage = dt7.k(feedStreamBean2.getVideo().getImages());
                        this.mVkSourceImage = this.mVkFeedStreamBean.getVideo().getSourceImage();
                        this.mVkVideoName = this.mVkFeedStreamBean.getVideo().getTitle();
                        Object sourceName = this.mVkFeedStreamBean.getVideo().getSourceName();
                        this.mVkSourceName = sourceName != null ? sourceName.toString() : "";
                    }
                    if (this.intentData.isNotPlayFromHistory()) {
                        this.mbPlayFromHistory = false;
                    }
                    if (this.mForcePlay == 1) {
                        long video_serial_id = this.intentData.getVideo_serial_id();
                        this.mSerialId = video_serial_id;
                        if (video_serial_id == 0) {
                            this.mSerialId = this.intentData.getSerialId();
                        }
                    } else {
                        this.mSerialId = this.intentData.getSerialId();
                    }
                    this.mRequestId = this.intentData.getRequestId();
                } else {
                    LogUtils.m(str, "parseIntent null");
                }
            }
            PlayHandler.getInstance().mIsYoutube = this.mIsYoutube;
            PlayHandler.getInstance().mIsVk = this.mIsVk;
        }
        PlayHandler.getInstance().mShowMobileData = (w6c.c(this, "allow_mobile_data_play", false) || MMKV.p().e("moble_remind", false)) ? false : true;
    }

    public void playNext() {
        savePlayHistory();
        TranVideoDetail.VideoSerials serial = PlayDetailDataManger.getSerial(PlayDetailDataManger.sCurrentSerialId);
        if (serial == null) {
            return;
        }
        if (serial.getIsIntact() != 1) {
            for (int i2 = 0; i2 < this.mTrivias.size(); i2++) {
                if (PlayDetailDataManger.sCurrentSerialId == this.mTrivias.get(i2).getSerialId() && i2 < this.mTrivias.size() - 1) {
                    markDuration();
                    int i3 = i2 + 1;
                    PlayDetailDataManger.sCurrentSerialId = this.mTrivias.get(i3).getSerialId();
                    playVideo(this.mTrivias.get(i3));
                    this.mTriviaRv.scrollToPosition(i3);
                    this.mTriviaAdapter.notifyDataSetChanged();
                    return;
                }
            }
            return;
        }
        for (int i4 = 0; i4 < this.mSerials.size(); i4++) {
            if (PlayDetailDataManger.sCurrentSerialId == this.mSerials.get(i4).getSerialId()) {
                if (i4 < this.mSerials.size() - 1) {
                    markDuration();
                    int i5 = i4 + 1;
                    PlayDetailDataManger.sCurrentSerialId = this.mSerials.get(i5).getSerialId();
                    synEpisodeIndex();
                    playVideo(this.mSerials.get(i5));
                    return;
                }
                if (this.mIsHaveSeries) {
                    for (int i6 = 0; i6 < this.videoDatilBean.getVideoSeries().size(); i6++) {
                        if (this.mSerials.get(i4).getSeriesId() == this.videoDatilBean.getVideoSeries().get(i6).getSeriesId() && i6 < this.videoDatilBean.getVideoSeries().size() - 1) {
                            markDuration();
                            List<TranVideoDetail.VideoSerials> episodes = PlayDetailDataManger.getEpisodes(this.videoDatilBean.getVideoSeries().get(i6 + 1).getSeriesId());
                            this.mSerials = episodes;
                            synPlayItemBoth(episodes.get(0).getSeriesId());
                            playVideo(this.mSerials.get(0));
                            return;
                        }
                    }
                    return;
                }
                return;
            }
        }
    }

    public void playPre() {
        savePlayHistory();
        for (int i2 = 0; i2 < this.mSerials.size(); i2++) {
            if (PlayDetailDataManger.sCurrentSerialId == this.mSerials.get(i2).getSerialId() && i2 > 0) {
                markDuration();
                int i3 = i2 - 1;
                PlayDetailDataManger.sCurrentSerialId = this.mSerials.get(i3).getSerialId();
                synEpisodeIndex();
                playVideo(this.mSerials.get(i3));
            }
        }
    }

    private void playVideo(TranVideoDetail.VideoSerials videoSerials) {
        if (videoSerials == null) {
            return;
        }
        if (!NetworkUtils.isAvailable(getApplicationContext())) {
            ToastUtils.s(com.transsion.onlinevideo.R.string.tip_no_net);
            if (this.detailPlayer != null) {
                getCurPlayer().showLoadingView(false);
                return;
            }
            return;
        }
        wz5.T("serieschange", this.mRecentPlayEvent);
        wz5.w();
        this.mSourceId = videoSerials.getSourceId();
        this.mVideoUrl = videoSerials.getVideoUrl();
        this.mCurrentSerial = videoSerials;
        setTime();
        PlayHandler.getInstance().mIsLast = this.mSourceId.equals(this.mCurrentSerial.getIsIntact() != 1 ? this.mTriviaLastSourId : this.mLastSourId);
        h27.c().e(1005, Boolean.valueOf(PlayHandler.getInstance().mIsLast));
        if (this.detailPlayer != null) {
            PlayHandler.getInstance().mPlayTitle = videoSerials.getSerialTitle();
            this.detailPlayer.getCurrentPlayer().setUp(getVideoUrl(), videoSerials.getVideoId(), videoSerials.getSerialId(), false, videoSerials.getSerialTitle());
            if (NetworkUtils.isAvailable(getApplicationContext()) && (NetworkUtils.isWifiConnected(getApplicationContext()) || !PlayHandler.getInstance().mShowMobileData)) {
                PlayHandler.getInstance().mPlayStartTime = System.currentTimeMillis();
                PlayHandler.getInstance().mIsLoading = true;
                getCurPlayer().showLoadingView(false);
                this.detailPlayer.getCurrentPlayer().setSeekOnStart(0L);
                if (com.transsion.palmsdk.b.s()) {
                    GSYVideoWndView currentPlayer = this.detailPlayer.getCurrentPlayer();
                    boolean zS = com.transsion.palmsdk.b.s();
                    String strE = gec.c().e();
                    String strH = gec.c().h();
                    String strO = com.transsion.palmsdk.b.o();
                    String strK = com.transsion.palmsdk.b.k();
                    String str = this.mSourceType;
                    if (str == null) {
                        str = "0";
                    }
                    currentPlayer.setUserInfo(zS, strE, strH, strO, strK, kfc.m(Integer.parseInt(str)));
                }
                this.detailPlayer.getCurrentPlayer().startPlay();
            }
        }
        updateVipGuide();
    }

    private void playVideoItem(List<TranVideoDetail.VideoSerials> list, boolean z, int i2) {
        if (!NetworkUtils.isAvailable(getApplicationContext())) {
            ToastUtils.s(com.transsion.onlinevideo.R.string.tip_no_net);
            return;
        }
        if (list == null || list.isEmpty() || i2 > list.size() - 1 || i2 < 0) {
            return;
        }
        TranVideoDetail.VideoSerials videoSerials = list.get(i2);
        this.mCurrentSerial = videoSerials;
        if (videoSerials == null) {
            return;
        }
        savePlayHistory();
        markDuration();
        PlayDetailDataManger.sCurrentSerialId = list.get(i2).getSerialId();
        if (this.mCurrentSerial.getIsIntact() != 1) {
            this.mSerials = list;
        }
        synPlayItem(z, i2, this.mCurrentSerial.getIsIntact() != 1);
        playVideo(this.mCurrentSerial);
        if (this.mCurrentSerial.getIsIntact() != 1) {
            wz5.h0(this.mVideoId, this.mTitleTv.getText().toString(), this.mCurrentSerial.getSerialTitle(), z);
            return;
        }
        if (z) {
            wz5.r("serialcl");
            return;
        }
        wz5.k(list.get(i2).getSerialNo(), this.mLastNo, PlayDetailDataManger.sCurrentSerialId, this.mVideoId, this.mPayType + "_" + list.get(i2).getPayType());
    }

    private void resolveNormalVideoUI() {
        this.detailPlayer.getTitleTextView().setVisibility(8);
        this.detailPlayer.getBackButton().setVisibility(8);
    }

    private void retry() {
        wz5.v();
        if (NetworkUtils.isAvailable(getApplicationContext())) {
            initData();
        } else {
            ToastUtils.s(com.transsion.onlinevideo.R.string.tip_no_net);
        }
    }

    private void savePlayHistory() {
        String strK;
        HistoryBean historyBean;
        TranVideoDetail.VideoSerials serial;
        if (this.mIsYoutube || this.mIsVk) {
            strK = com.transsion.palmsdk.b.s() ? com.transsion.palmsdk.b.k() : null;
            if (this.mIsVk) {
                historyBean = new HistoryBean(this.mVkId.hashCode(), this.mVkId.hashCode() / 10, this.mVkId, this.mVkVideoName, this.mVkCoverImage, this.mVideoUrl, 0, this.mVkSourceName, this.mVkSourceImage, System.currentTimeMillis(), GSYVideoManager.instance().getCurrentPosition(), GSYVideoManager.instance().getDuration(), strK == null ? 0L : strK.hashCode(), this.mSourceType, fi1.e(this.mVkFeedStreamBean));
            } else {
                long jHashCode = this.mSourceId.hashCode();
                long jHashCode2 = this.mSourceId.hashCode() / 10;
                String str = this.mSourceId;
                String str2 = this.mYoutubeVideoName;
                String str3 = this.mYoutubeCoverX;
                String str4 = this.mVideoUrl;
                String str5 = this.mYoutubeChannel;
                historyBean = new HistoryBean(jHashCode, jHashCode2, str, str2, str3, str4, 1, str5, str5, System.currentTimeMillis(), GSYVideoManager.instance().getCurrentPosition(), GSYVideoManager.instance().getDuration(), strK == null ? 0L : strK.hashCode());
            }
            if (GSYVideoManager.instance().getDuration() > 0) {
                this.mChannelViewModel.H(this, historyBean);
            }
            if (GSYVideoManager.instance().isPlaying()) {
                PlayHandler.getInstance().mPlayItemDuration += System.currentTimeMillis() - PlayHandler.getInstance().mPlayItemTime;
            }
            PlayHandler.getInstance().mPlayItemDuration = 0L;
            markPreviewDuration();
            return;
        }
        TranVideoDetail tranVideoDetail = this.videoDatilBean;
        if (tranVideoDetail == null || tranVideoDetail.getVideoSerials() == null || this.videoDatilBean.getVideoSerials().size() == 0 || (serial = PlayDetailDataManger.getSerial(PlayDetailDataManger.sCurrentSerialId)) == null) {
            return;
        }
        TranVideoDetail.VideoSeries series = PlayDetailDataManger.getSeries(serial.getSeriesId());
        if (series != null) {
            this.mLastSeason = series.getSeriesName();
        }
        this.mLastNo = serial.getSerialNo();
        strK = com.transsion.palmsdk.b.s() ? com.transsion.palmsdk.b.k() : null;
        HistoryBean historyBean2 = new HistoryBean(serial.getSerialId(), serial.getSeriesId(), serial.getVideoId(), serial.getSourceId(), ((Object) this.mTitleTv.getText()) + " " + serial.getSerialTitle(), System.currentTimeMillis(), GSYVideoManager.instance().getCurrentPosition(), GSYVideoManager.instance().getDuration(), serial.getCoverX(), serial.getSerialTitle(), strK == null ? 0L : strK.hashCode(), serial.getPayType(), serial.getIsIntact(), this.mVideoUrl, this.mSourceType, serial.getPlayLet());
        if (historyBean2.duration > 0) {
            if (!historyBean2.videoIsTact() || this.isVarietyShow) {
                this.mChannelViewModel.H(this, historyBean2);
            } else {
                this.mChannelViewModel.a0(this, historyBean2);
            }
        }
        PlayHandler.getInstance().mPlayItemDuration = 0L;
        markPreviewDuration();
    }

    public void lambda$showEpisodesExpand$35(List<TranVideoDetail.VideoSerials> list, int i2) {
        savePlayHistory();
        markDuration();
        PlayDetailDataManger.sCurrentSerialId = list.get(i2).getSerialId();
        this.mSerials = list;
        synPlayItemBoth(list.get(i2).getSeriesId());
        playVideo(list.get(i2));
        TranVideoDetail.VideoSeries series = PlayDetailDataManger.getSeries(list.get(i2).getSeriesId());
        wz5.R(PlayDetailDataManger.sCurrentSerialId, this.mVideoId, this.mLastSeason, series == null ? "" : series.getSeasonName());
    }

    private void setTime() {
        boolean zIsEmpty = TextUtils.isEmpty(this.mDateStr);
        f38 f38VarC = f38.c();
        TranVideoDetail.VideoSerials videoSerials = this.mCurrentSerial;
        String strD = f38VarC.d(videoSerials == null ? 0L : videoSerials.getDuration());
        boolean z = (!TextUtils.isEmpty(strD) && this.mCategory == 1) || this.mCategory == 3;
        this.mDate.setVisibility(zIsEmpty ? 8 : 0);
        this.mDateLine.setVisibility(zIsEmpty ? 8 : 0);
        this.mTime.setVisibility(z ? 0 : 8);
        this.mTimeLine.setVisibility(z ? 0 : 8);
        this.mDate.setText(this.mDateStr);
        int i2 = this.mCategory;
        if (i2 == 1) {
            this.mTime.setText(strD);
        } else if (i2 == 3) {
            String string = getString(com.transsion.onlinevideo.R.string.video_category_variety);
            this.mKind = string;
            this.mTime.setText(string);
        }
    }

    private void setVkUI() {
        View viewFindViewById = findViewById(com.transsion.onlinevideo.R.id.vk_container);
        this.mVkHeadContainer = viewFindViewById;
        viewFindViewById.setVisibility(0);
        TextView textView = (TextView) findViewById(com.transsion.onlinevideo.R.id.vk_title);
        this.mVkTitleTv = textView;
        textView.setText(this.mVkVideoName);
        TextView textView2 = (TextView) findViewById(com.transsion.onlinevideo.R.id.vk_desc);
        this.mVkDescTv = textView2;
        textView2.setText(dt7.g(this.mVkFeedStreamBean.getVideo().getViews().longValue(), this.mVkFeedStreamBean.getVideo().getLikes().longValue(), this.mVkFeedStreamBean.getVideo().getCreated()));
        this.mVkHeadContainer.setOnClickListener(new a());
        this.mVkHeadIv = (ImageView) findViewById(com.transsion.onlinevideo.R.id.vk_head);
        Glide.with((FragmentActivity) this).asBitmap().load2(this.mVkSourceImage).placeholder(com.transsion.onlinevideo.R.drawable.ic_avator_default).circleCrop().into(this.mVkHeadIv);
        this.mVkSourceNameTv = (TextView) findViewById(com.transsion.onlinevideo.R.id.vk_source_name);
        if (!TextUtils.isEmpty(this.mVkSourceName)) {
            this.mVkSourceNameTv.setText(this.mVkSourceName);
        }
        this.mllDatailYearDurationLogo.setVisibility(8);
        findViewById(com.transsion.onlinevideo.R.id.lay_tag_flow).setVisibility(8);
        this.mCollectIv.setVisibility(8);
        this.mAddIconParent.setVisibility(8);
        this.mEpisodesTip.setVisibility(8);
        this.mSessionsRv.setVisibility(8);
        this.mEpisodesRv.setVisibility(8);
        this.mTriviaRv.setVisibility(8);
        this.mTriviaTip.setVisibility(8);
        this.mTitleTv.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mRecommendsTipTv.getLayoutParams();
        layoutParams.topMargin = 0;
        this.mRecommendsTipTv.setLayoutParams(layoutParams);
        this.mRecommendsTipTv.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$setVkUI$47(view);
            }
        });
        View viewFindViewById2 = findViewById(com.transsion.onlinevideo.R.id.lay_video_info);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) viewFindViewById2.getLayoutParams();
        layoutParams2.bottomMargin = 0;
        viewFindViewById2.setLayoutParams(layoutParams2);
        wz5.j0(this.mFromCard, this.detailPlayer.getDuration(), this.mIsRelated, "5", this.mVkId);
    }

    private void setYoutubeUI() {
        this.mChannelNameTv = (TextView) findViewById(com.transsion.onlinevideo.R.id.youtube_channel_name);
        this.mChannelHeadIv = (ImageView) findViewById(com.transsion.onlinevideo.R.id.youtube_head);
        View viewFindViewById = findViewById(com.transsion.onlinevideo.R.id.youtube_ctontainer);
        this.mChannelHeadContainer = viewFindViewById;
        viewFindViewById.setVisibility(0);
        this.mChannelNameTv.setText(this.mYoutubeChannel);
        Glide.with((FragmentActivity) this).asBitmap().load2(this.mYoutubeCover).placeholder(com.transsion.onlinevideo.R.drawable.ic_avator_default).circleCrop().into(this.mChannelHeadIv);
        this.mTitleTv.setText(this.mYoutubeVideoName);
        this.mllDatailYearDurationLogo.setVisibility(8);
        findViewById(com.transsion.onlinevideo.R.id.lay_tag_flow).setVisibility(8);
        this.mEpisodesTip.setVisibility(8);
        this.mSessionsRv.setVisibility(8);
        this.mEpisodesRv.setVisibility(8);
        this.mTriviaRv.setVisibility(8);
        this.mTriviaTip.setVisibility(8);
    }

    public boolean shouldShowPlayListBtn() {
        TranVideoDetail tranVideoDetail;
        return !TranVideoDetail.isSmashiVideo(this.mSourceType) || (tranVideoDetail = this.videoDatilBean) == null || tranVideoDetail.getVideoSeries() == null || this.videoDatilBean.getVideoSeries().size() > 1;
    }

    private boolean shouldSkipIntentTitleOnLoading() {
        return TextUtils.isEmpty(this.mFromCard) || "external_deeplink".equals(this.mFromCard);
    }

    private void showEpisodesExpand(boolean z) {
        if (this.mIsHaveSeries) {
            EpisodesWithSeriesExpandDialog.M(this.videoDatilBean, new EpisodesWithSeriesExpandDialog.a() {
                @Override
                public final void a(List list, int i2) {
                    this.a.lambda$showEpisodesExpand$34(list, i2);
                }
            }).show(getSupportFragmentManager(), "EpisodesWithSeriesExpandDialog");
        } else {
            EpisodesExpandDialog.K(this.videoDatilBean, new EpisodesExpandDialog.a() {
                @Override
                public final void a(List list, int i2) {
                    this.a.lambda$showEpisodesExpand$35(list, i2);
                }
            }).show(getSupportFragmentManager(), "EpisodesWithSeriesExpandDialog");
        }
    }

    public void showFullScreenGuide() {
        String str = this.mSourceType;
        if (str == null) {
            str = "0";
        }
        if ((kfc.m(Integer.parseInt(str)) || !PlayDetailDataManger.isVip()) && c07.b(this) && !this.mExpanded && !MMKV.p().e("ott_play_fullscreen_guide", false)) {
            ThreadUtils.o().removeCallbacks(this.runnable);
            ThreadUtils.o().postDelayed(this.runnable, C.DEFAULT_SEEK_FORWARD_INCREMENT_MS);
        }
    }

    private void showPlayList() {
        if (getSupportFragmentManager().isDestroyed() || this.mIsYoutube || this.mIsVk) {
            return;
        }
        wz5.Q(true, this.isVarietyShow ? "movie&variety" : "tvdrama");
        wz5.Q(false, this.isVarietyShow ? "movie&variety" : "tvdrama");
        TranVideoDetail tranVideoDetail = this.videoDatilBean;
        TranVideoDetail.VideoSerials videoSerials = this.mCurrentSerial;
        EpisodesDialog.L(tranVideoDetail, (videoSerials == null || videoSerials.getIsIntact() == 1) ? false : true, new EpisodesDialog.a() {
            @Override
            public final void a(List list, int i2) {
                this.a.lambda$showPlayList$37(list, i2);
            }
        }).show(getSupportFragmentManager(), "EpisodesWithSeriesExpandDialog");
    }

    private void showPromotion(int i2) {
        PromotionManager.c().f(this, 1, i2, new li9() {
            @Override
            public final void a(PromotionBean promotionBean) {
                this.a.lambda$showPromotion$43(promotionBean);
            }
        });
    }

    private void showTriviaExpand() {
        if (getSupportFragmentManager().isDestroyed()) {
            return;
        }
        TriviaDialog.I(this.videoDatilBean, new TriviaDialog.a() {
            @Override
            public final void a(List list, int i2) {
                this.a.lambda$showTriviaExpand$36(list, i2);
            }
        }).show(getSupportFragmentManager(), "trivia");
    }

    private void showVipGuide(boolean z) {
        int iA = oc2.a(getApplicationContext(), -54.0f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mVipOpenView, "translationY", z ? iA : 0.0f, z ? 0.0f : -iA);
        objectAnimatorOfFloat.setDuration(500L);
        objectAnimatorOfFloat.addListener(new g(z));
        objectAnimatorOfFloat.start();
    }

    private void switchSession(boolean z, int i2) {
        SessionAdapter sessionAdapter = this.sessionAdapter;
        if (sessionAdapter == null) {
            return;
        }
        sessionAdapter.c(sessionAdapter.getData().get(i2));
        this.sessionAdapter.notifyDataSetChanged();
        long seriesId = this.sessionAdapter.getData().get(i2).getSeriesId();
        if (this.isVarietyShow) {
            this.varietyShowAdapter.setNewData(PlayDetailDataManger.getEpisodes(seriesId));
        } else {
            this.episodesAdapter.setNewData(PlayDetailDataManger.getEpisodes(seriesId));
        }
        if (!z) {
            wz5.o(seriesId);
        } else {
            this.mSessionsRv.scrollToPosition(i2);
            wz5.r("seasoncl");
        }
    }

    private void synCurrentVideo(TranVideoDetail.VideoInfoBean videoInfoBean) {
        this.isVarietyShow = videoInfoBean.getSerialCover() == 1;
        this.mIsHaveSeries = (this.videoDatilBean.getVideoSeries() == null || this.videoDatilBean.getVideoSeries().isEmpty()) ? false : true;
        this.mIsHaveEpisodes = (this.videoDatilBean.getVideoSerials() == null || this.videoDatilBean.getVideoSerials().isEmpty()) ? false : true;
        List<TranVideoDetail.VideoSerials> videoSerialsNotIntact = this.videoDatilBean.getVideoSerialsNotIntact();
        this.mTrivias = videoSerialsNotIntact;
        this.mHaveTrivia = (videoSerialsNotIntact == null || videoSerialsNotIntact.isEmpty()) ? false : true;
        this.mIsMultiSeason = (this.videoDatilBean.getVideoSeries() == null || this.videoDatilBean.getVideoSeries().size() <= 1) ? 1 : 0;
        this.mIsMultiSerial = (this.videoDatilBean.getVideoSerials() == null || this.videoDatilBean.getVideoSerials().size() <= 1) ? 1 : 0;
        this.mSourceType = videoInfoBean.getSourceType();
        this.seriesId = videoInfoBean.getSeriesId();
        if (this.mForcePlay != 0) {
            this.mForcePlay = 0;
            long j2 = this.mSerialId;
            if (j2 != 0) {
                this.seriesId = j2;
            }
            List<TranVideoDetail.VideoSerials> episodes = this.mIsHaveSeries ? PlayDetailDataManger.getEpisodes(this.seriesId) : this.videoDatilBean.getVideoSerials();
            this.mSerials = episodes;
            TranVideoDetail.VideoSerials videoSerials = null;
            if (this.mSerialId != 0) {
                if (episodes != null && !episodes.isEmpty()) {
                    for (int i2 = 0; i2 < this.mSerials.size(); i2++) {
                        if (this.mSerials.get(i2) != null && this.mSerials.get(i2).getSerialId() == this.mSerialId) {
                            videoSerials = this.mSerials.get(i2);
                            break;
                        }
                    }
                    if (videoSerials == null) {
                        videoSerials = this.mSerials.get(0);
                    }
                }
                List<TranVideoDetail.VideoSerials> list = this.mTrivias;
                if (list != null && list.size() > 0) {
                    for (int i3 = 0; i3 < this.mTrivias.size(); i3++) {
                        if (this.mTrivias.get(i3) != null && this.mTrivias.get(i3).getSerialId() == this.mSerialId) {
                            videoSerials = this.mTrivias.get(i3);
                            break;
                        }
                    }
                    if (videoSerials == null) {
                        videoSerials = this.mTrivias.get(0);
                    }
                }
            }
            if (videoSerials != null) {
                this.mSerialId = videoSerials.getSerialId();
                this.seriesId = videoSerials.getSeriesId();
                this.mCurrentSerial = videoSerials;
            }
        } else if ((this.mbPlayFromHistory || this.mIsFromLanuchIcon) && this.mHistroyBeans != null) {
            LogUtils.j(TAG, "synCurrentVideo: mHistroyBeans.lastPos = " + this.mHistroyBeans.get(0).lastPos);
            this.seriesId = this.mHistroyBeans.get(0).seriesId;
            this.mSourceId = this.mHistroyBeans.get(0).sourceId;
            this.mSourceType = this.mHistroyBeans.get(0).sourceType;
            this.mVideoUrl = this.mHistroyBeans.get(0).videoUrl;
            this.mSerialId = this.mHistroyBeans.get(0).serialId;
            this.mPlayPostion = this.mHistroyBeans.get(0).lastPos;
            TranVideoDetail.VideoSerials serial = PlayDetailDataManger.getSerial(this.mSerialId);
            this.mCurrentSerial = serial;
            this.mSerials = this.mIsHaveSeries ? PlayDetailDataManger.getEpisodes((serial == null || serial.getIsIntact() == 1) ? this.seriesId : this.videoDatilBean.getVideoSeries().get(0).getSeriesId()) : this.videoDatilBean.getVideoSerials();
        } else {
            long j3 = this.mSerialId;
            if (j3 != 0) {
                this.seriesId = j3;
            }
            this.mSerials = this.mIsHaveSeries ? PlayDetailDataManger.getEpisodes(this.seriesId) : this.videoDatilBean.getVideoSerials();
            TranVideoDetail.VideoSerials videoSerials2 = getVideoSerials();
            if (videoSerials2 != null) {
                this.mSerialId = videoSerials2.getSerialId();
                this.seriesId = videoSerials2.getSeriesId();
                this.mCurrentSerial = videoSerials2;
            }
        }
        TranVideoDetail.VideoSerials videoSerials3 = this.mCurrentSerial;
        if (videoSerials3 != null) {
            this.mVideoTitle = videoSerials3.getSerialTitle();
            this.mSourceId = this.mCurrentSerial.getSourceId();
            this.mVideoUrl = this.mCurrentSerial.getVideoUrl();
            PlayDetailDataManger.sCurrentSerialId = this.mSerialId;
        }
        updateVipGuide();
    }

    private void synEpisodeIndex() {
        TranVideoDetail.VideoSerials videoSerials = this.mCurrentSerial;
        if (videoSerials == null) {
            return;
        }
        List<TranVideoDetail.VideoSerials> list = videoSerials.getIsIntact() != 1 ? this.mTrivias : this.mSerials;
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (PlayDetailDataManger.sCurrentSerialId == list.get(i2).getSerialId()) {
                TranVideoDetail.VideoSerials videoSerials2 = list.get(i2);
                this.mCurrentSerial = videoSerials2;
                synPlayItem(false, i2, videoSerials2.getIsIntact() != 1);
                synPlayItem(true, i2, this.mCurrentSerial.getIsIntact() != 1);
                return;
            }
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private void synPlayItem(boolean z, int i2, boolean z2) {
        if (this.isVarietyShow) {
            VarietyShowAdapter varietyShowAdapter = this.varietyShowAdapter;
            if (varietyShowAdapter != null) {
                varietyShowAdapter.notifyDataSetChanged();
            }
        } else {
            EpisodesAdapter episodesAdapter = this.episodesAdapter;
            if (episodesAdapter != null) {
                episodesAdapter.notifyDataSetChanged();
            }
        }
        VarietyShowAdapter varietyShowAdapter2 = this.mTriviaAdapter;
        if (varietyShowAdapter2 != null) {
            varietyShowAdapter2.notifyDataSetChanged();
        }
        if (!z2) {
            if (z) {
                this.mEpisodesRv.scrollToPosition(i2);
            }
        } else if (this.mHaveTrivia && z) {
            this.mTriviaRv.scrollToPosition(i2);
        }
    }

    private void synPlayItemBoth(long j2) {
        TranVideoDetail.VideoSerials videoSerials;
        if (!this.mIsHaveSeries || (videoSerials = this.mCurrentSerial) == null || videoSerials.getIsIntact() == 1) {
            synEpisodeIndex();
            return;
        }
        for (int i2 = 0; i2 < this.videoDatilBean.getVideoSeries().size(); i2++) {
            if (j2 == this.videoDatilBean.getVideoSeries().get(i2).getSeriesId()) {
                switchSession(false, i2);
                switchSession(true, i2);
                this.mSeriesName = this.videoDatilBean.getVideoSeries().get(i2).getSeriesName();
                this.mSerials = PlayDetailDataManger.getEpisodes(j2);
                synEpisodeIndex();
                return;
            }
        }
    }

    private void synPreNextBtnStatus() {
        List<TranVideoDetail.VideoSerials> episodes;
        if (this.mIsHaveSeries) {
            int size = this.videoDatilBean.getVideoSeries().size();
            do {
                size--;
                if (size <= -1) {
                    return;
                } else {
                    episodes = PlayDetailDataManger.getEpisodes(this.videoDatilBean.getVideoSeries().get(size).getSeriesId());
                }
            } while (episodes.isEmpty());
            this.mLastSourId = episodes.get(episodes.size() - 1).getSourceId();
            return;
        }
        if (this.videoDatilBean.getVideoSerials() != null && this.videoDatilBean.getVideoSerials().size() > 0) {
            this.mLastSourId = this.videoDatilBean.getVideoSerials().get(this.videoDatilBean.getVideoSerials().size() - 1).getSourceId();
        }
        List<TranVideoDetail.VideoSerials> list = this.mTrivias;
        if (list == null || list.size() <= 0) {
            return;
        }
        List<TranVideoDetail.VideoSerials> list2 = this.mTrivias;
        this.mTriviaLastSourId = list2.get(list2.size() - 1).getSourceId();
    }

    private void timeCount() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (PlayHandler.getInstance().mPlayTime == 0) {
            return;
        }
        PlayHandler.getInstance().mPlayDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPlayTime;
        PlayHandler.getInstance().mPlayItemDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPlayItemTime;
        if (this.mIsPort) {
            PlayHandler.getInstance().mPortPlayDuration = jCurrentTimeMillis - PlayHandler.getInstance().mPortPlayTime;
        }
    }

    private void timeDowith() {
        String str;
        if (GSYVideoManager.instance().getDuration() != 0) {
            str = ((GSYVideoManager.instance().getCurrentPosition() * 100) / GSYVideoManager.instance().getDuration()) + "%";
        } else {
            str = null;
        }
        AiStatisticsModel.markAlgorithmRecommend("vd_ott_video_duration", wz5.S(PlayHandler.getInstance().mPlayDuration, PlayHandler.getInstance().mPortPlayDuration, pipInTime, String.valueOf(PlayDetailDataManger.sCurrentSerialId), this.mVideoId, this.mChannel, this.mTopicId, this.mEpisodesName, this.mTopicName, this.mChannelName, this.mRequestId, str, this.mSourceType, this.mIsVk ? this.mVkId : null));
        PlayHandler.getInstance().mPortPlayDuration = 0L;
        PlayHandler.getInstance().mPlayDuration = 0L;
        PlayHandler.getInstance().mPlayItemDuration = 0L;
        PlayHandler.getInstance().mPlayTime = 0L;
        this.mSerialSet.clear();
    }

    private void updateEpisodes() {
        if (!this.mIsHaveEpisodes) {
            this.mEpisodesRv.setVisibility(8);
            this.mSessionsRv.setVisibility(8);
            this.mEpisodesTip.setVisibility(8);
        } else {
            if (this.isVarietyShow) {
                VarietyShowAdapter varietyShowAdapter = new VarietyShowAdapter((Context) this, false, this.mCategory);
                this.varietyShowAdapter = varietyShowAdapter;
                varietyShowAdapter.setNewData(this.mSerials);
                this.mEpisodesRv.setAdapter(this.varietyShowAdapter);
                this.varietyShowAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                    @Override
                    public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                        this.b.lambda$updateEpisodes$15(baseQuickAdapter, view, i2);
                    }
                });
                return;
            }
            EpisodesAdapter episodesAdapter = new EpisodesAdapter(this, false);
            this.episodesAdapter = episodesAdapter;
            episodesAdapter.setNewData(this.mSerials);
            this.mEpisodesRv.setAdapter(this.episodesAdapter);
            this.episodesAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    this.b.lambda$updateEpisodes$16(baseQuickAdapter, view, i2);
                }
            });
        }
    }

    @SuppressLint({"StringFormatMatches", "StringFormatInvalid"})
    private void updateIntro(TranVideoDetail.VideoInfoBean videoInfoBean) {
        this.mSourceType = videoInfoBean.getSourceType();
        this.mVideoId = videoInfoBean.getVideoId();
        this.mEpisodesName = videoInfoBean.getVideoTitle();
        this.mTitleTv.setText(videoInfoBean.getVideoTitle());
        this.mVideoTitle = videoInfoBean.getVideoTitle();
        if (videoInfoBean.getYear() != null && !TextUtils.isEmpty(videoInfoBean.getYear().trim())) {
            this.mDateStr = videoInfoBean.getYear();
        }
        if (videoInfoBean.getKind() != null && !TextUtils.isEmpty(videoInfoBean.getKind().trim())) {
            this.mKind = videoInfoBean.getKind();
        }
        boolean z = (videoInfoBean.getTags() == null || videoInfoBean.getTags().isEmpty()) ? false : true;
        findViewById(com.transsion.onlinevideo.R.id.lay_tag_flow).setVisibility(z ? 0 : 8);
        if (z) {
            hb0.markDirect("vd_ott_detail_label_show");
            final TagAdapter tagAdapter = new TagAdapter();
            tagAdapter.setNewData(videoInfoBean.getTags());
            this.mTag.setAdapter(tagAdapter);
            this.mTag.setLayoutManager(new LinearLayoutManager(this, 0, false));
            tagAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    this.b.lambda$updateIntro$14(tagAdapter, baseQuickAdapter, view, i2);
                }
            });
        }
        this.mSessionsRv.setLayoutManager(new LinearLayoutManager(this, 0, false));
        this.mEpisodesRv.setLayoutManager(new LinearLayoutManager(this, 0, false));
        int i2 = this.mCategory;
        boolean z2 = i2 == 2;
        if (i2 == 2) {
            if (videoInfoBean.getSerialCount() > videoInfoBean.getUpdateSerialNo()) {
                this.mEpisodesUpdateTv.setText(getString(com.transsion.onlinevideo.R.string.video_onlinevideo_episodes_update, videoInfoBean.getUpdateSerialNo() + "", videoInfoBean.getSerialCount() + ""));
            } else if (videoInfoBean.getSerialCount() == videoInfoBean.getUpdateSerialNo()) {
                this.mEpisodesUpdateTv.setText(getString(com.transsion.onlinevideo.R.string.video_onlinevideo_episodes_all, Integer.valueOf(videoInfoBean.getSerialCount())));
            }
        }
        this.mEpisodesUpdateTv.setVisibility(z2 ? 0 : 8);
    }

    private void updateRecommend() {
        if (this.mIsYoutube) {
            this.mRecommendViewModel.e(this.mSourceId);
        } else if (this.mIsVk) {
            loadMoreVkRecommendData();
        } else {
            this.mRecommendViewModel.g(this, this.mVideoId, this.mSourceType);
        }
        updateRecommend(this.mSourceType);
    }

    private void updateSeries(TranVideoDetail.VideoInfoBean videoInfoBean) {
        this.mSessionsRv.setVisibility(this.mIsHaveSeries ? 0 : 8);
        if (this.mIsHaveSeries) {
            SessionAdapter sessionAdapter = new SessionAdapter(this);
            this.sessionAdapter = sessionAdapter;
            sessionAdapter.setNewData(this.videoDatilBean.getVideoSeries());
            this.sessionAdapter.c(PlayDetailDataManger.getSeries(videoInfoBean.getSeriesId()));
            this.sessionAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    this.b.lambda$updateSeries$18(baseQuickAdapter, view, i2);
                }
            });
            this.mSessionsRv.setAdapter(this.sessionAdapter);
        }
    }

    private void updateTrivia() {
        List<TranVideoDetail.VideoSerials> list = this.mTrivias;
        boolean z = list != null && list.size() > 0;
        this.mHaveTrivia = z;
        this.mTriviaRv.setVisibility(z ? 0 : 8);
        this.mTriviaTip.setVisibility(this.mHaveTrivia ? 0 : 8);
        if (this.mHaveTrivia) {
            wz5.i0();
            this.mTriviaRv.setLayoutManager(new LinearLayoutManager(this, 0, false));
            VarietyShowAdapter varietyShowAdapter = new VarietyShowAdapter((Context) this, false, 4);
            this.mTriviaAdapter = varietyShowAdapter;
            varietyShowAdapter.setNewData(this.mTrivias);
            this.mTriviaRv.setAdapter(this.mTriviaAdapter);
            this.mTriviaAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    this.b.lambda$updateTrivia$17(baseQuickAdapter, view, i2);
                }
            });
        }
    }

    private void updateVideoDetailUI(TranVideoDetail.VideoInfoBean videoInfoBean) {
        if (this.mVideoIntroLogoIv != null) {
            if (TranVideoDetail.isMgTVVideo(this.mSourceType)) {
                showPromotion(1);
                this.mVideoIntroLogoIv.setImageResource(com.transsion.onlinevideo.R.drawable.ic_mg_logo);
            } else if (TranVideoDetail.isSmashiVideo(this.mSourceType)) {
                showPromotion(2);
                this.mVideoIntroLogoIv.setImageResource(com.transsion.onlinevideo.R.drawable.ic_smashi_logo);
            }
        }
        if (TranVideoDetail.isMgTVVideo(this.mSourceType)) {
            showPromotion(1);
        } else if (TranVideoDetail.isSmashiVideo(this.mSourceType)) {
            showPromotion(2);
        }
        if (TranVideoDetail.isSmashiVideo(this.mSourceType)) {
            if (this.mTvSmashiUpdateTime != null && videoInfoBean != null && !r0a.g(videoInfoBean.getUpdateTime())) {
                this.mTvSmashiUpdateTime.setVisibility(0);
                this.mTvSmashiUpdateTime.setText(videoInfoBean.getUpdateTime());
            }
            LinearLayout linearLayout = this.mllDatailYearDurationLogo;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
        } else {
            this.mDetailMoreLl.setVisibility(0);
            TextView textView = this.mTvSmashiUpdateTime;
            if (textView != null) {
                textView.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.mllDatailYearDurationLogo;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(0);
            }
        }
        List<TranVideoDetail.VideoSerials> list = this.mSerials;
        if (list == null || list.isEmpty()) {
            this.mEpisodesTip.setVisibility(8);
            this.mEpisodesRv.setVisibility(8);
        } else {
            this.mEpisodesTip.setVisibility(0);
            this.mEpisodesRv.setVisibility(0);
        }
    }

    private void updateVipGuide() {
        ThreadUtils.n().execute(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$updateVipGuide$39();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00b9  */
    @Override
    public void didReceivedNotification(int i2, Object... objArr) {
        int currentState;
        switch (i2) {
            case 1000:
            case 1016:
                PlayHandler.getInstance().mIsLoading = false;
                timeCount();
                if (MMKV.p().e("ott_play_fullscreen_guide", false)) {
                    return;
                }
                ThreadUtils.o().removeCallbacks(this.runnable);
                return;
            case 1008:
                wz5.i((String) objArr[0], PlayDetailDataManger.sCurrentSerialId, this.mVideoId);
                if (this.mIsYoutube) {
                    this.mPlayPostion = GSYVideoManager.instance().getCurrentPosition();
                    this.mHistorySeek = true;
                    return;
                }
                return;
            case 1009:
                this.detailPlayer.getCurrentPlayer().showTextToast(getString(this.mFitStatusTitle[PlayHandler.getInstance().mFitType]));
                wz5.y("setAspectRatio", PlayDetailDataManger.sCurrentSerialId, this.mVideoId);
                return;
            case 1010:
                this.mIsLandMorePip = true;
                wz5.y("pip", PlayDetailDataManger.sCurrentSerialId, this.mVideoId);
                return;
            case 1011:
                VishaFeedbackPage.f(this, getString(com.transsion.playercommon.R.string.feedback), 3, String.valueOf(this.mVideoId), String.valueOf(PlayDetailDataManger.sCurrentSerialId));
                ez5.b("ott_playshow");
                return;
            case 1012:
                wz5.e0((String) objArr[0], PlayDetailDataManger.sCurrentSerialId, this.mVideoId);
                return;
            case 1014:
            case 1099:
                PlayHandler.getInstance().mIsLoading = false;
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        PlayerDetailActivity.lambda$didReceivedNotification$45();
                    }
                }, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                getCurPlayer().hideLoadingView();
                h27.c().e(1076, new Object[0]);
                getCurPlayer().hideAdBack();
                this.mIsHavePrepared = true;
                if (!isInPictureInPictureMode()) {
                    this.detailPlayer.getCurrentPlayer().setFullScreenVisible(true);
                }
                if (this.mIsPort && !isInPictureInPictureMode()) {
                    this.detailPlayer.getCurrentPlayer().setBottomVisible(true);
                }
                markPlayEventTime("vd_sdk_videostartplaying", 1, this.mHaveAD);
                long jCurrentTimeMillis = System.currentTimeMillis();
                PlayHandler.getInstance().mPlayTime = jCurrentTimeMillis;
                PlayHandler.getInstance().mPortPlayTime = jCurrentTimeMillis;
                PlayHandler.getInstance().mPlayItemTime = jCurrentTimeMillis;
                if (isInPictureInPictureMode()) {
                    flushPip(getCurPlayer().getGSYVideoManager().isPlaying());
                }
                this.mHaveAD = 0;
                showFullScreenGuide();
                return;
            case 1015:
                PlayHandler.getInstance().mIsLoading = false;
                markDuration();
                return;
            case 1018:
                markPlayEventTimeInit("vd_sdk_playercore", ((Integer) objArr[0]).intValue(), -1);
                return;
            case 1021:
                this.detailPlayer.getCurrentPlayer().setFullScreenVisible(false);
                this.detailPlayer.getCurrentPlayer().setBottomVisible(false);
                this.mHaveAD = 1;
                getCurPlayer().hideLoadingView();
                markPlayEventTime("vd_sdk_adstartduration", 1, -1);
                return;
            case AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED:
                this.mHaveAD = 1;
                markPlayEventTime("vd_sdk_adendduration", 1, -1);
                return;
            case AnalyticsListener.EVENT_DRM_KEYS_LOADED:
                this.mDetailRoot.scrollTo(0, 0);
                this.mAppBarLayout.setExpanded(true);
                return;
            case AnalyticsListener.EVENT_DRM_KEYS_REMOVED:
                this.detailPlayer.onVideoPause();
                return;
            case AnalyticsListener.EVENT_AUDIO_CODEC_ERROR:
                wz5.y("", PlayDetailDataManger.sCurrentSerialId, this.mVideoId);
                return;
            case 1034:
                wz5.M(PlayDetailDataManger.sCurrentSerialId, this.mVideoId, String.valueOf(objArr[0]), String.valueOf(objArr[1]), this.mRecentPlayEvent);
                wz5.T("playerror", this.mRecentPlayEvent);
                return;
            case 1037:
                if (this.isEnterPip) {
                    finish();
                }
                break;
            case 1043:
                updateVipGuide();
                return;
            case 1051:
                if (((Integer) objArr[0]).intValue() == 0) {
                    this.mBufferIngTime = System.currentTimeMillis();
                }
                if (((Integer) objArr[0]).intValue() == 100) {
                    wz5.e(this.mVideoId, PlayDetailDataManger.sCurrentSerialId, System.currentTimeMillis() - this.mBufferIngTime);
                    return;
                }
                return;
            case 1074:
                hb0.markDirect("vd_ott_buffering_show");
                return;
            case 1076:
                if (isInPictureInPictureMode()) {
                    if (objArr == null || objArr.length <= 0) {
                        currentState = getCurPlayer().getCurrentState();
                    } else {
                        Object obj = objArr[0];
                        if (obj instanceof Integer) {
                            currentState = ((Integer) obj).intValue();
                        } else {
                            currentState = getCurPlayer().getCurrentState();
                        }
                    }
                    flushPip(currentState == 2);
                    return;
                }
                return;
            case 1082:
                this.detailPlayer.getCurrentPlayer().showTextToast(objArr[0] + "");
                return;
            case 1090:
                setNavVisibility(false);
                return;
            case 1091:
                this.mExpanded = true;
                cancelShowFullScreenGuide();
                return;
            case 1092:
                break;
            case 1093:
                VishaFeedbackPage.f(this, getString(com.transsion.playercommon.R.string.feedback), 4, String.valueOf(this.mVideoId), String.valueOf(PlayDetailDataManger.sCurrentSerialId), PlayHandler.getInstance().mCureentSubTitle);
                ez5.b("ott_subtitle");
                return;
            case 1105:
                wz5.D(this.mVideoId, PlayDetailDataManger.sCurrentSerialId, System.currentTimeMillis() - PlayHandler.getInstance().mPauseTime);
                return;
            case 1106:
                PlayHandler.getInstance().mPauseTime = System.currentTimeMillis();
                return;
            case PlayerEvent.EVENT_ID_PLAYER_VIDEO_PREVIEW_BTN_CLICK:
                String string = this.mTitleTv.getText().toString();
                long j2 = this.mVideoId;
                TranVideoDetail.VideoSerials videoSerials = this.mCurrentSerial;
                e06.b(string, j2, videoSerials != null ? videoSerials.getSerialTitle() : "", ((Boolean) objArr[0]).booleanValue());
                return;
            case PlayerEvent.EVENT_ID_PLAYER_VIDEO_PREVIEW_WATCH_DURATION:
                markPreviewDuration();
                return;
            default:
                return;
        }
        this.mExpanded = false;
        showFullScreenGuide();
    }

    public void enterPip() {
        boolean zIsPlaying = getCurPlayer().getGSYVideoManager().isPlaying();
        this.mPipView.w(this, zIsPlaying ? com.transsion.magicvideo.R.drawable.ic_floating_pause : com.transsion.onlinevideo.R.drawable.ic_floating_play, "", zIsPlaying ? 1 : 2, zIsPlaying ? 1 : 2, this.detailPlayer.getCurrentVideoWidth(), this.detailPlayer.getCurrentVideoHeight(), PlayDetailDataManger.hasPre(this.mSerials), PlayDetailDataManger.hasNext(this.mSerials));
        h06.d(false);
        o18.q(this, 2);
        if (this.detailPlayer.isIfCurrentIsFullscreen()) {
            Log.e(TAG, "enterPip fullscreen");
            this.mIsLandMorePip = true;
        }
    }

    public void flushPip(boolean z) {
        getCurPlayer().getWidth();
        this.mPipView.r(this, z ? com.transsion.onlinevideo.R.drawable.ic_floating_pause : com.transsion.onlinevideo.R.drawable.ic_floating_play, "", z ? 1 : 2, z ? 1 : 2, this.detailPlayer.getCurrentVideoWidth(), this.detailPlayer.getCurrentVideoHeight(), PlayDetailDataManger.hasPre(this.mSerials), PlayDetailDataManger.hasNext(this.mSerials));
    }

    public String getSerialStr() {
        StringBuilder sb = new StringBuilder();
        Iterator<Long> it = this.mSerialSet.iterator();
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            sb.append(StringUtils.COMMA);
            sb.append(jLongValue);
        }
        return sb.length() > 0 ? sb.substring(1) : "";
    }

    @Override
    public boolean hasLightStatusBarBackground() {
        return true;
    }

    public void initData() {
        this.mLastNetState = NetworkUtils.getNetWorkType(this);
        if (NetworkUtils.isMobileConnected(getApplicationContext()) && PlayHandler.getInstance().mShowMobileData) {
            h27.c().e(1001, Boolean.TRUE);
        }
        this.mPlayerDatailViewModel = (PlayerDatailViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(se.a())).get(PlayerDatailViewModel.class);
        this.mRecommendViewModel = (RecommendViewModel) new ViewModelProvider(this).get(RecommendViewModel.class);
        this.mEmptyView.setVisibility(0);
        this.mLoadingLayer.setVisibility(0);
        bindLoadingPlaceholder();
        onObservePlayDetailRequest();
        VishaPlayer vishaPlayer = this.detailPlayer;
        if (vishaPlayer != null) {
            vishaPlayer.setVideoAllCallBack(this.mVishaPlayerCallBack);
        }
        if (this.mIsYoutube) {
            onYoutubePlay();
        } else if (this.mIsVk) {
            onVkPlay();
        } else {
            onNormalPlay();
        }
    }

    @Override
    public void initNotify() {
        super.initNotify();
        this.mNotifys.add(1008);
        this.mNotifys.add(1009);
        this.mNotifys.add(1010);
        this.mNotifys.add(1012);
        this.mNotifys.add(1014);
        this.mNotifys.add(1015);
        this.mNotifys.add(1016);
        this.mNotifys.add(1018);
        this.mNotifys.add(1021);
        this.mNotifys.add(Integer.valueOf(AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED));
        this.mNotifys.add(Integer.valueOf(AnalyticsListener.EVENT_DRM_KEYS_LOADED));
        this.mNotifys.add(Integer.valueOf(AnalyticsListener.EVENT_AUDIO_CODEC_ERROR));
        this.mNotifys.add(1034);
        this.mNotifys.add(1043);
        this.mNotifys.add(Integer.valueOf(AnalyticsListener.EVENT_DRM_KEYS_REMOVED));
        this.mNotifys.add(1000);
        this.mNotifys.add(1037);
        this.mNotifys.add(1074);
        this.mNotifys.add(Integer.valueOf(PlayerEvent.EVENT_ID_PLAYER_VIDEO_PREVIEW_BTN_CLICK));
        this.mNotifys.add(Integer.valueOf(PlayerEvent.EVENT_ID_PLAYER_VIDEO_PREVIEW_WATCH_DURATION));
        this.mNotifys.add(1076);
        this.mNotifys.add(1051);
        this.mNotifys.add(1082);
        this.mNotifys.add(1091);
        this.mNotifys.add(1092);
        this.mNotifys.add(1090);
        this.mNotifys.add(1011);
        this.mNotifys.add(1093);
        this.mNotifys.add(1106);
        this.mNotifys.add(1105);
        this.mNotifys.add(1099);
    }

    public void initView() {
        initView(false);
    }

    @Override
    public void onActivityResult(int i2, int i3, @Nullable Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == o18.d && o18.d(this)) {
            enterPip();
        } else if (i2 == o18.c && o18.c(this)) {
            enterPip();
        }
    }

    @Override
    public void onBackPressed() {
        savePlayHistory();
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.backToProtVideo();
        }
        if (GSYVideoManager.backFromWindowFull(this)) {
            return;
        }
        wz5.T("exit", this.mRecentPlayEvent);
        markDuration();
        this.mIsOver = true;
        super.onBackPressed();
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.isPlay && !this.isEnterPip) {
            int i2 = configuration.orientation;
            if (i2 == 1) {
                getWindow().setBackgroundDrawableResource(com.transsion.playercommon.R.drawable.os_window_background);
                this.detailPlayer.onConfigurationChanged(this, configuration, this.orientationUtils, false, false);
            } else if (i2 == 2) {
                getWindow().setBackgroundDrawableResource(com.transsion.onlinevideo.R.color.black);
                this.detailPlayer.onConfigurationChanged(this, configuration, this.orientationUtils, true, true);
            }
        }
        this.mIsPort = configuration.orientation == 1;
        fixPipNavBar();
    }

    @Override
    public void onCreate(Bundle bundle) {
        LogUtils.j(TAG, "onCreate =" + this);
        super.onCreate(bundle);
        if (ft7.i(this, getIntent())) {
            return;
        }
        GSYVideoManager.instance().stop();
        PlayHandler.getInstance().mIsLogin = com.transsion.palmsdk.b.s();
        this.networkObserver = new NetworkObserver(this);
        getLifecycle().addObserver(this.networkObserver);
        this.networkObserver.b("ottplayer", this.mNetworkStatusCallback);
        initThumb();
        setContentView(com.transsion.onlinevideo.R.layout.activity_video_detail);
        this.isNewIntentCalled = false;
        parseIntent(getIntent());
        initHistory();
        initView();
        initData();
        setNavVisibility(true);
        wz5.w();
        wz5.x();
        h27.c().e(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new Object[0]);
    }

    @Override
    public void onDestroy() {
        LogUtils.j(TAG, "onDestroy =" + this);
        StandardGSYVideoPlayer curPlayer = getCurPlayer();
        if (curPlayer != null) {
            curPlayer.release();
        }
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.releaseListener();
        }
        super.onDestroy();
        PlayHandler.getInstance().release();
        ThreadUtils.o().removeCallbacks(this.runnable);
        this.runnable = null;
        markPreviewDuration();
        markDuration();
        this.mIsOver = true;
        wz5.C(this.mPageDuration, this.mChannel, this.mTopicId, getSerialStr(), this.mVideoId);
        PlayDetailDataManger.clear();
        o18 o18Var = this.mPipView;
        if (o18Var != null) {
            try {
                o18Var.v(this);
            } catch (Exception e2) {
                LogUtils.l(TAG, "unRegisterController error:" + e2.getMessage());
            }
        }
        IntroDialog introDialog = this.mIntroDialog;
        if (introDialog != null && introDialog.isVisible()) {
            this.mIntroDialog.dismiss();
        }
        o18.h(this);
    }

    @Override
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            PlayHandler.getInstance().mIsGravity = false;
            if (this.mIsPort) {
                wz5.c();
            } else {
                wz5.N("guide_back");
            }
        } else if (i2 == 24) {
            if (getCurPlayer() != null) {
                getCurPlayer().addVolume();
                return true;
            }
        } else if (i2 == 25 && getCurPlayer() != null) {
            getCurPlayer().cutVolume();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override
    public void onNewIntent(Intent intent) {
        LogUtils.j(TAG, "onNewIntent =" + this);
        super.onNewIntent(intent);
        setIntent(intent);
        if (ft7.i(this, intent)) {
            return;
        }
        this.mPlayPostion = 0L;
        this.isNewIntentCalled = true;
        parseIntent(intent);
        this.mPlayFrom = 0;
        this.mbPlayFromHistory = false;
        this.mIsRelated = 1;
        this.mIsHavePrepared = false;
        initHistory();
        initView(true);
        initData();
        wz5.w();
        wz5.x();
    }

    @Override
    public void onPause() {
        super.onPause();
        LogUtils.j(TAG, "onPause =" + this);
        this.mIsPlaying = GSYVideoManager.instance().isPlaying();
        this.mPageDuration = this.mPageDuration + (System.currentTimeMillis() - this.mPageTime);
        xz5.f(getCurPlayer() != null ? getCurPlayer().getPlayPosition() : 0, PlayDetailDataManger.sCurrentSerialId, this.mVideoId);
        if (!isInPictureInPictureMode()) {
            GSYVideoManager.instance().gotoBackground();
            GSYVideoManager.instance().onActivityStop();
        }
        savePlayHistory();
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onPause$44();
            }
        }, 700L);
    }

    @Override
    public void onPictureInPictureModeChanged(final boolean z, Configuration configuration) {
        List<Fragment> fragments;
        LogUtils.j(TAG, "onPictureInPictureModeChanged:" + z);
        this.isEnterPip = z;
        PlayHandler.getInstance().mIsPip = z;
        if (this.isEnterPip) {
            PlayHandler.getInstance().mStartBuffering = -1L;
            PlayHandler.getInstance().mTearing = false;
            getCurPlayer().showBuffering(false, false);
        }
        if (z) {
            o18.q(this, 2);
            h06.b();
        } else {
            o18.f();
            h06.f();
        }
        if (z) {
            this.mIsEnterPiped = true;
            pipStartTime = System.currentTimeMillis();
            xz5.f(getCurPlayer() != null ? getCurPlayer().getPlayPosition() : 0, PlayDetailDataManger.sCurrentSerialId, this.mVideoId);
        } else {
            pipInTime = System.currentTimeMillis() - pipStartTime;
            xz5.b();
            getCurPlayer().getStartButton().setVisibility(0);
        }
        super.onPictureInPictureModeChanged(z, configuration);
        if (getCurPlayer() != null) {
            getCurPlayer().getGSYVideoManager().noticePlayViewMode(z ? 1 : 0);
            getCurPlayer().setIsPipMode(z);
            savePlayHistory();
        }
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onPictureInPictureModeChanged$40(z);
            }
        }, 100L);
        if (z && (fragments = getSupportFragmentManager().getFragments()) != null) {
            Iterator<Fragment> it = fragments.iterator();
            while (it.hasNext()) {
                getSupportFragmentManager().beginTransaction().remove(it.next()).commitAllowingStateLoss();
            }
        }
        if (z) {
            ViewGroup.LayoutParams layoutParams = this.detailPlayer.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -2;
            this.detailPlayer.setLayoutParams(layoutParams);
            if (this.mIsNeedFit) {
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mRootView.getLayoutParams();
                layoutParams2.setMargins(0, 0, 0, 0);
                layoutParams2.height = -1;
                layoutParams2.width = -1;
                this.mRootView.setLayoutParams(layoutParams2);
            }
            this.mPipView.o(this, new h());
        } else {
            if (this.isStopCalled) {
                markDuration();
                try {
                    for (ActivityManager.AppTask appTask : ((ActivityManager) getSystemService("activity")).getAppTasks()) {
                        if (appTask.getTaskInfo().numActivities == 1 && appTask.getTaskInfo().baseActivity != null && appTask.getTaskInfo().baseActivity.equals(getComponentName())) {
                            appTask.finishAndRemoveTask();
                            break;
                        }
                    }
                } catch (Exception unused) {
                }
                finish();
            }
            this.detailPlayer.setLayoutParams(new FrameLayout.LayoutParams(-1, this.mPortVideoHeight));
            if (this.mIsNeedFit) {
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.mRootView.getLayoutParams();
                layoutParams3.setMargins(0, e80.e(), 0, 0);
                layoutParams3.height = -1;
                layoutParams3.width = -1;
                this.mRootView.setLayoutParams(layoutParams3);
            }
            if (this.recommendItemAdapter != null) {
                new Handler(getMainLooper()).postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$onPictureInPictureModeChanged$41();
                    }
                }, 200L);
            }
            this.detailPlayer.restoreNormal();
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onPictureInPictureModeChanged$42(z);
            }
        }, 100L);
        if (!z || !this.isFromLeaveHint || MMKV.p().e("is_pip_ges_showed", false) || Build.VERSION.SDK_INT < 30) {
            return;
        }
        ToastUtils.q(pp3.c ? com.transsion.onlinevideo.R.string.ges_pip_notice_pre : com.transsion.onlinevideo.R.string.ges_pip_notice);
        MMKV.p().y("is_pip_ges_showed", true);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x013e  */
    @Override
    public void onResume() {
        String str = TAG;
        LogUtils.j(str, "onResume =" + this);
        this.mPageTime = System.currentTimeMillis();
        super.onResume();
        this.isFromLeaveHint = false;
        if (this.mIsFirst) {
            this.mIsFirst = false;
            return;
        }
        this.isStopCalled = false;
        this.tempStopLeaveHint = false;
        if (this.mbRequestVip && com.transsion.palmsdk.b.s()) {
            String str2 = this.mSourceType;
            if (str2 == null) {
                str2 = "0";
            }
            if (!kfc.m(Integer.parseInt(str2))) {
                GSYVideoManager.instance().backToFront();
                if (!GSYVideoManager.instance().getIsPausedByUser()) {
                    h27.c().e(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new Object[0]);
                    GSYVideoManager.instance().onActivityStart(getCurPlayer().isInPlayingState());
                }
            } else if (this.detailPlayer.getPlayerType() == PlayerType.MGTV_PLAYER) {
                getCurPlayer().showLoadingView(true);
                if (getCurPlayer().isSwitchResolutionNeedVip()) {
                    VishaAccountInfo vishaAccountInfo = new VishaAccountInfo();
                    vishaAccountInfo.setOpenId(com.transsion.palmsdk.b.k());
                    vishaAccountInfo.setToken(gec.c().e());
                    vishaAccountInfo.setLogin(com.transsion.palmsdk.b.s());
                    vishaAccountInfo.setPalmToken(com.transsion.palmsdk.b.o());
                    GSYVideoManager.instance().setUserAccountInfo(vishaAccountInfo);
                    LogUtils.j(str, "mango vip login must replay:" + vishaAccountInfo);
                    this.detailPlayer.replay();
                } else {
                    GSYVideoWndView currentPlayer = this.detailPlayer.getCurrentPlayer();
                    boolean zS = com.transsion.palmsdk.b.s();
                    String strE = gec.c().e();
                    String strH = gec.c().h();
                    String strO = com.transsion.palmsdk.b.o();
                    String strK = com.transsion.palmsdk.b.k();
                    String str3 = this.mSourceType;
                    currentPlayer.setUserInfo(zS, strE, strH, strO, strK, kfc.m(Integer.parseInt(str3 != null ? str3 : "0")));
                    this.detailPlayer.getCurrentPlayer().startPlay();
                }
            } else {
                LogUtils.j(str, "vip login visha player must replay");
                getCurPlayer().showLoadingView(true);
                GSYVideoWndView currentPlayer2 = this.detailPlayer.getCurrentPlayer();
                boolean zS2 = com.transsion.palmsdk.b.s();
                String strE2 = gec.c().e();
                String strH2 = gec.c().h();
                String strO2 = com.transsion.palmsdk.b.o();
                String strK2 = com.transsion.palmsdk.b.k();
                String str4 = this.mSourceType;
                currentPlayer2.setUserInfo(zS2, strE2, strH2, strO2, strK2, kfc.m(Integer.parseInt(str4 != null ? str4 : "0")));
                this.detailPlayer.getCurrentPlayer().startPlay();
            }
        } else {
            GSYVideoManager.instance().backToFront();
            if (!GSYVideoManager.instance().getIsPausedByUser() && !getCurPlayer().isSwitchResolutionNeedVip()) {
                h27.c().e(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new Object[0]);
                GSYVideoManager.instance().onActivityStart(getCurPlayer().isInPlayingState());
            }
        }
        this.mbRequestVip = false;
        if (isInPictureInPictureMode()) {
            flushPip(this.mIsPlaying);
        }
        updateVipGuide();
        if (this.mIsLandMorePip) {
            this.orientationUtils.restoreOrientation();
            this.mIsLandMorePip = false;
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        LogUtils.j(TAG, "onStop =" + this);
        this.isStopCalled = true;
        if (isInPictureInPictureMode()) {
            GSYVideoManager.instance().gotoBackground();
            GSYVideoManager.instance().onActivityStop();
        }
    }

    @Override
    public void onUserLeaveHint() {
        StandardGSYVideoPlayer curPlayer;
        super.onUserLeaveHint();
        if (this.tempStopLeaveHint || !fec.a() || this.mIsVk || (curPlayer = getCurPlayer()) == null || curPlayer.getGSYVideoManager() == null) {
            return;
        }
        boolean z = NetworkUtils.isMobileConnected(getApplicationContext()) && PlayHandler.getInstance().mShowMobileData;
        boolean z2 = c07.a(this) == 2;
        if (!o18.d(this) || z || z2) {
            return;
        }
        if (curPlayer.getGSYVideoManager().isPlaying() || !(curPlayer.getCurrentState() == -1 || curPlayer.getCurrentState() == 5 || curPlayer.getCurrentState() == 7)) {
            OrientationUtils orientationUtils = this.orientationUtils;
            if (orientationUtils != null) {
                orientationUtils.updateLandStatusWhenPip();
            }
            enterPip();
            h06.e("onlinevide");
            wz5.N("gesture_pip");
            this.isFromLeaveHint = true;
        }
    }

    @Override
    public boolean shouldApplyLegacySystemBarPadding() {
        return false;
    }

    public void updateUI(TranVideoDetail tranVideoDetail) {
        if (tranVideoDetail == null) {
            return;
        }
        this.mDetailRoot.scrollTo(0, 0);
        this.mAppBarLayout.setExpanded(true);
        this.mEmptyView.setVisibility(8);
        this.mLoadingLayer.setVisibility(8);
        this.videoDatilBean = tranVideoDetail;
        TranVideoDetail.VideoInfoBean videoInfo = tranVideoDetail.getVideoInfo();
        this.videoInfoBean = videoInfo;
        if (videoInfo != null) {
            this.mSourceType = videoInfo.getSourceType();
            this.mCategory = tranVideoDetail.getVideoInfo().getCategory();
            this.mbLive = this.videoInfoBean.isLive();
            this.mCoverX = this.videoInfoBean.getCoverX();
            this.mCoverY = this.videoInfoBean.getCoverY();
            updateIntro(this.videoInfoBean);
            synCurrentVideo(this.videoInfoBean);
            synPreNextBtnStatus();
            initPlayer();
            updateEpisodes();
            updateSeries(this.videoInfoBean);
            updateTrivia();
            if (this.mIsSynEpisode) {
                synPlayItemBoth(this.seriesId);
            }
            setTime();
            StringBuilder sb = new StringBuilder();
            sb.append(this.videoInfoBean.getPayType());
            sb.append("_");
            TranVideoDetail.VideoSerials videoSerials = this.mCurrentSerial;
            sb.append(videoSerials == null ? 0 : videoSerials.getPayType());
            String string = sb.toString();
            long j2 = this.mSerialId;
            long j3 = this.mVideoId;
            String str = this.mFromCard;
            TranVideoDetail.VideoSerials videoSerials2 = this.mCurrentSerial;
            wz5.X(j2, j3, str, videoSerials2 != null ? videoSerials2.getDuration() : 0, this.mTopicId, this.mTopicSort, this.mSeriesName, this.mIsMultiSeason, this.mIsMultiSerial, this.mIsRelated, this.videoInfoBean.getSourceType(), string);
        }
        this.mSerialSet.add(Long.valueOf(PlayDetailDataManger.sCurrentSerialId));
        updateRecommend();
        updateVideoDetailUI(this.videoInfoBean);
        if (this.mIsYoutube) {
            setYoutubeUI();
        } else if (this.mIsVk) {
            setVkUI();
        }
        this.mIntroDialog = this.mIsVk ? VkDialog.O(this.mVkFeedStreamBean, this.mVkId, this.mVkSourceImage, this.mVkCoverImage, this.mVkSourceName, this.mVkVideoName) : IntroDialog.L(tranVideoDetail, this.mCurrentSerial);
        initScrollListener();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x022f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0232  */
    /* JADX WARN: Code duplicated, block: B:19:0x0261  */
    /* JADX WARN: Code duplicated, block: B:22:0x029b  */
    /* JADX WARN: Code duplicated, block: B:23:0x029d  */
    /* JADX WARN: Code duplicated, block: B:26:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:30:0x02b7  */
    public void initView(boolean z) {
        final String strValueOf;
        final String strI;
        int i2;
        View view;
        boolean zN;
        int i3;
        exitOthersPip();
        this.detailPlayer = (VishaPlayer) findViewById(R.id.detail_player);
        this.mDetailRoot = (NestedScrollView) findViewById(com.transsion.onlinevideo.R.id.nsv_detail);
        this.mAppBarLayout = (AppBarLayout) findViewById(com.transsion.onlinevideo.R.id.appbar_detail);
        this.mRootView = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.root_container);
        this.mDetailView = (FrameLayout) findViewById(com.transsion.onlinevideo.R.id.detail_container);
        this.mVipOpenView = findViewById(com.transsion.onlinevideo.R.id.video_open_container);
        this.mOpenTipTv = (TextView) findViewById(com.transsion.onlinevideo.R.id.video_vip_tip);
        this.mOldPrice = (TextView) findViewById(com.transsion.onlinevideo.R.id.video_vip_tip_old);
        this.mllDatailYearDurationLogo = (LinearLayout) findViewById(com.transsion.onlinevideo.R.id.ll_detail_year_duration_logo);
        updateVipGuide();
        getCurPlayer().showLoadingView(false);
        if (!z) {
            this.mPortVideoHeight = (com.transsion.utils.a.m(getApplicationContext()) * 9) / 16;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.detailPlayer.getCurrentPlayer().getLayoutParams();
            layoutParams.height = this.mPortVideoHeight;
            layoutParams.width = -1;
            layoutParams.gravity = 48;
            this.detailPlayer.getCurrentPlayer().setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mDetailView.getLayoutParams();
            layoutParams2.height = -1;
            layoutParams2.width = -1;
            layoutParams2.gravity = 48;
            layoutParams2.setMargins(0, this.mPortVideoHeight, 0, 0);
            this.mDetailView.setLayoutParams(layoutParams2);
        }
        this.mSurfaceContainer = findViewById(com.transsion.onlinevideo.R.id.surface_container);
        this.mBackIv = (ImageView) findViewById(com.transsion.onlinevideo.R.id.activity_back);
        fitRoot();
        this.mLockIv = (ImageView) findViewById(com.transsion.onlinevideo.R.id.lock_screen);
        this.mDate = (TextView) findViewById(com.transsion.onlinevideo.R.id.date);
        this.mTime = (TextView) findViewById(com.transsion.onlinevideo.R.id.time);
        this.mDateLine = findViewById(com.transsion.onlinevideo.R.id.date_line);
        this.mTimeLine = findViewById(com.transsion.onlinevideo.R.id.time_line);
        this.mTitleTv = (TextView) findViewById(com.transsion.onlinevideo.R.id.video_name);
        this.mAddIcon = (ImageView) findViewById(com.transsion.onlinevideo.R.id.iv_add_icon);
        this.mAddIconParent = findViewById(com.transsion.onlinevideo.R.id.fl_add_icon);
        this.mRedPoint = findViewById(com.transsion.onlinevideo.R.id.v_red_point);
        this.mTag = (RecyclerView) findViewById(com.transsion.onlinevideo.R.id.tags);
        this.mEpisodeTip = (TextView) findViewById(com.transsion.onlinevideo.R.id.episodetv);
        this.mEpisodesRv = (RecyclerView) findViewById(com.transsion.onlinevideo.R.id.rv_numbers);
        this.mSessionsRv = (RecyclerView) findViewById(com.transsion.onlinevideo.R.id.rv_serials);
        this.mRecommendsRv = (RecyclerView) findViewById(com.transsion.onlinevideo.R.id.rv_recommends);
        this.navBar = findViewById(com.transsion.onlinevideo.R.id.nav_bar);
        this.mRecommendsTipTv = (TextView) findViewById(com.transsion.onlinevideo.R.id.recommend_tip);
        this.mTriviaContainer = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.root_trivia);
        this.mVideoIntroLogoIv = (ImageView) findViewById(com.transsion.onlinevideo.R.id.mgLogo);
        this.mEpisodesTip = findViewById(com.transsion.onlinevideo.R.id.episodes_tip);
        this.mTriviaRv = (RecyclerView) findViewById(com.transsion.onlinevideo.R.id.rv_trivia);
        this.mTriviaTip = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.trivia_tip);
        this.mEpisodesClose = (ImageView) findViewById(com.transsion.onlinevideo.R.id.episode_close);
        this.mDetailContainer = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.root_detail);
        this.mIntroContainer = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.root_introduce);
        this.mEpisodesContainer = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.root_episodes);
        this.mBottomController = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.ll_bottom_content);
        this.mLoadingLayer = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.loading_container);
        this.mLoadingTip = (TextView) findViewById(com.transsion.onlinevideo.R.id.tv_network_connection_hint);
        this.mLoaddingErrorLayer = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.ll_loading_error);
        this.mNoNetLayer = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.ll_no_wifi);
        this.mEmptyView = (ViewGroup) findViewById(com.transsion.onlinevideo.R.id.empty_view);
        int i4 = com.transsion.onlinevideo.R.id.episodes_update;
        this.mEpisodesUpdateTv = (TextView) findViewById(i4);
        this.mCollectIv = (ImageView) findViewById(com.transsion.onlinevideo.R.id.collect);
        this.mPipView = new o18();
        if (!this.mIsYoutube) {
            if (this.mIsVk) {
                strValueOf = this.mVkId;
            } else {
                strValueOf = String.valueOf(this.mVideoId);
                strI = zg9.i(this.mVideoId);
            }
            ImageView imageView = this.mCollectIv;
            if (OnlineCollectDataManager.d().f(strValueOf)) {
                i2 = com.transsion.onlinevideo.R.drawable.ic_farvorited_on;
            } else {
                i2 = com.transsion.onlinevideo.R.drawable.ic_ott_collect_enter;
            }
            imageView.setImageResource(i2);
            this.mCollectIv.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.lambda$initView$5(strValueOf, view2);
                }
            });
            this.mBackIv.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.lambda$initView$6(view2);
                }
            });
            this.mDetailMoreLl = findViewById(com.transsion.onlinevideo.R.id.detai_top);
            this.mTvSmashiUpdateTime = (TextView) findViewById(com.transsion.onlinevideo.R.id.tv_smashi_updatetime);
            view = this.mDetailMoreLl;
            if (view != null) {
                view.setOnClickListener(new d());
            }
            findViewById(com.transsion.onlinevideo.R.id.trivia_more).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.lambda$initView$7(view2);
                }
            });
            findViewById(com.transsion.onlinevideo.R.id.episode_more).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.lambda$initView$8(view2);
                }
            });
            findViewById(i4).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.lambda$initView$9(view2);
                }
            });
            zN = zg9.n(this);
            View view2 = this.mAddIconParent;
            if (zN) {
                i3 = 0;
            } else {
                i3 = 8;
            }
            view2.setVisibility(i3);
            if (zN) {
                this.mRedPoint.setVisibility((!ydc.e() || MMKV.p().e("is_ott_bubble_showed", false)) ? 8 : 0);
                this.mAddIcon.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view3) {
                        this.b.lambda$initView$10(strI, view3);
                    }
                });
            }
            findViewById(com.transsion.onlinevideo.R.id.tv_toview).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    this.b.lambda$initView$11(view3);
                }
            });
            findViewById(com.transsion.onlinevideo.R.id.tv_retry).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    this.b.lambda$initView$12(view3);
                }
            });
            this.mVipOpenView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    this.b.lambda$initView$13(view3);
                }
            });
            adaptSystemUiBarColor();
            disableNestedScrollForDetailRecyclerViews();
        }
        strValueOf = this.mSourceId;
        strI = strValueOf;
        ImageView imageView2 = this.mCollectIv;
        if (OnlineCollectDataManager.d().f(strValueOf)) {
            i2 = com.transsion.onlinevideo.R.drawable.ic_farvorited_on;
        } else {
            i2 = com.transsion.onlinevideo.R.drawable.ic_ott_collect_enter;
        }
        imageView2.setImageResource(i2);
        this.mCollectIv.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                this.b.lambda$initView$5(strValueOf, view3);
            }
        });
        this.mBackIv.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                this.b.lambda$initView$6(view3);
            }
        });
        this.mDetailMoreLl = findViewById(com.transsion.onlinevideo.R.id.detai_top);
        this.mTvSmashiUpdateTime = (TextView) findViewById(com.transsion.onlinevideo.R.id.tv_smashi_updatetime);
        view = this.mDetailMoreLl;
        if (view != null) {
            view.setOnClickListener(new d());
        }
        findViewById(com.transsion.onlinevideo.R.id.trivia_more).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                this.b.lambda$initView$7(view3);
            }
        });
        findViewById(com.transsion.onlinevideo.R.id.episode_more).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                this.b.lambda$initView$8(view3);
            }
        });
        findViewById(i4).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                this.b.lambda$initView$9(view3);
            }
        });
        zN = zg9.n(this);
        View view3 = this.mAddIconParent;
        if (zN) {
            i3 = 0;
        } else {
            i3 = 8;
        }
        view3.setVisibility(i3);
        if (zN) {
            this.mRedPoint.setVisibility((!ydc.e() || MMKV.p().e("is_ott_bubble_showed", false)) ? 8 : 0);
            this.mAddIcon.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view4) {
                    this.b.lambda$initView$10(strI, view4);
                }
            });
        }
        findViewById(com.transsion.onlinevideo.R.id.tv_toview).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view4) {
                this.b.lambda$initView$11(view4);
            }
        });
        findViewById(com.transsion.onlinevideo.R.id.tv_retry).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view4) {
                this.b.lambda$initView$12(view4);
            }
        });
        this.mVipOpenView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view4) {
                this.b.lambda$initView$13(view4);
            }
        });
        adaptSystemUiBarColor();
        disableNestedScrollForDetailRecyclerViews();
    }

    private void updateRecommend(String str) {
        LinearLayoutManager linearLayoutManager;
        if (this.isNewIntentCalled) {
            fixPipNavBar();
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mRecommendsRv.getLayoutParams();
        layoutParams.rightMargin = (this.mIsYoutube || this.mIsVk) ? 0 : oc2.a(this, 19.0f);
        layoutParams.leftMargin = (this.mIsYoutube || this.mIsVk) ? 0 : oc2.a(this, 19.0f);
        this.mRecommendsRv.setLayoutParams(layoutParams);
        if (this.mIsYoutube) {
            this.mRecommendYoutubeAdapter = new YoutubeAdapter();
            this.mRecommendsRv.setLayoutManager(new LinearLayoutManager(this, 1, false));
            this.mRecommendsRv.setAdapter(this.mRecommendYoutubeAdapter);
            this.mRecommendYoutubeAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    this.b.lambda$updateRecommend$19(baseQuickAdapter, view, i2);
                }
            });
            this.mRecommendViewModel.f(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.lambda$updateRecommend$20((List) obj);
                }
            });
            return;
        }
        if (this.mIsVk) {
            uf7 uf7Var = new uf7(this);
            VkRecommendAdapter vkRecommendAdapter = new VkRecommendAdapter();
            this.mVkRecommendAdapter = vkRecommendAdapter;
            vkRecommendAdapter.setLoadMoreView(uf7Var);
            this.mVkRecommendAdapter.setPreLoadNumber(1);
            this.mVkRecommendAdapter.disableLoadMoreIfNotFullPage(this.mRecommendsRv);
            this.mVkRecommendAdapter.setOnLoadMoreListener(new BaseQuickAdapter.RequestLoadMoreListener() {
                @Override
                public final void onLoadMoreRequested() {
                    PlayerDetailActivity.lambda$updateRecommend$21();
                }
            }, this.mRecommendsRv);
            this.mRecommendsRv.setLayoutManager(new LinearLayoutManager(this, 1, false));
            this.mRecommendsRv.setAdapter(this.mVkRecommendAdapter);
            this.mRecommendsRv.addOnScrollListener(new e());
            r16.d(this.mRecommendsRv);
            this.mVkRecommendAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    this.b.lambda$updateRecommend$22(baseQuickAdapter, view, i2);
                }
            });
            this.mRecommendViewModel.f(this, new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.lambda$updateRecommend$23((List) obj);
                }
            });
            return;
        }
        RecommendTypeBeanAdapter recommendTypeBeanAdapter = new RecommendTypeBeanAdapter();
        this.recommendItemAdapter = recommendTypeBeanAdapter;
        recommendTypeBeanAdapter.q = this.mVideoId + "";
        this.recommendItemAdapter.d(true);
        this.recommendItemAdapter.g(TranVideoDetail.isSmashiVideo(str));
        this.recommendItemAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                this.b.lambda$updateRecommend$24(baseQuickAdapter, view, i2);
            }
        });
        r16.d(this.mRecommendsRv);
        RecyclerView recyclerView = this.mRecommendsRv;
        if (!this.mIsYoutube && !this.mIsVk) {
            linearLayoutManager = new GridLayoutManager(this, TranVideoDetail.isSmashiVideo(str) ? 2 : 3);
        } else {
            linearLayoutManager = new LinearLayoutManager(this, 1, false);
        }
        recyclerView.setLayoutManager(linearLayoutManager);
        this.mRecommendsRv.setAdapter(this.recommendItemAdapter);
        this.mRecommendsRv.addOnScrollListener(new f());
        this.mRecommendViewModel.f(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.lambda$updateRecommend$25((List) obj);
            }
        });
    }

    private void updateRecommend(List list, boolean z, boolean z2) {
        boolean z3 = (list == null || list.isEmpty()) ? false : true;
        this.mRecommendsTipTv.setVisibility(!z3 ? 8 : 0);
        if (z) {
            this.mRecommendYoutubeAdapter.setNewData(list);
            return;
        }
        if (z2) {
            this.mIsLoading = false;
            if (this.recommendInit) {
                this.recommendInit = false;
                this.mVkRecommendAdapter.setNewData(list);
            } else {
                this.mVkRecommendAdapter.addData((Collection) list);
            }
            this.mVkRecommendAdapter.loadMoreComplete();
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("updateRecommend recommendInit : ");
            sb.append(this.recommendInit);
            sb.append(",haveRecommend:");
            sb.append(z3);
            sb.append(StringUtils.COMMA);
            sb.append(list != null ? list.size() : 0);
            Log.i(str, sb.toString());
            return;
        }
        this.recommendItemAdapter.setNewData(list);
    }
}
