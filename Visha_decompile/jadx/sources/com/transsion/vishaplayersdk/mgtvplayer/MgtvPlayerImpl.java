package com.transsion.vishaplayersdk.mgtvplayer;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.blankj.utilcode.util.LogUtils;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.mgtv.ssp.InitArgs;
import com.mgtv.ssp.MgSspInitCallback;
import com.mgtv.ssp.MgSspLoginStatusReceiver;
import com.mgtv.ssp.MgSspSdk;
import com.mgtv.ssp.authbase.AccountInfo;
import com.mgtv.ssp.authbase.c;
import com.mgtv.ssp.play.MediaInfo;
import com.mgtv.ssp.play.PlayerCore;
import com.mgtv.ssp.play.bean.SubTitleData;
import com.mgtv.ssp.play.playsdk.PlayListener;
import com.mgtv.ssp.play.playsdk.PlayerAdInfo;
import com.mgtv.ssp.play.playsdk.PlayerVideoInfo;
import com.mgtv.ssp.play.playsdk.VideoDefinitions;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.vishaplayersdk.base.config.ControllerLayoutConfig;
import com.transsion.vishaplayersdk.base.config.PlayParams;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.base.config.PlayerError;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import com.transsion.vishaplayersdk.base.config.PlayerType;
import com.transsion.vishaplayersdk.gsyplayer.base.BasePlayerManager;
import com.transsion.vishaplayersdk.gsyplayer.base.MediaPlayerImpl;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoSubtitle;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.markpoint.MarkPlayerAd;
import com.transsion.vishaplayersdk.mgtvplayer.MgtvPlayerImpl;
import defpackage.pp3;
import defpackage.r0a;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class MgtvPlayerImpl extends MediaPlayerImpl {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + MgtvPlayerImpl.class.getSimpleName();
    public static boolean bMgtvSDKInited;
    int adPlayDuration;
    private boolean bPlayAd;
    private boolean bPlayerPrepared;
    private boolean bPreviewVideo;
    private MgSspLoginStatusReceiver mMgSspLoginStatusReceiver;
    private PlayerCore mMgTvPlayer;
    private PlayParams mPlayParam;
    private MgtvPlayerConfig mPlayerInitConfig;
    private boolean bBackground = false;
    private boolean bPlayComplete = false;
    private final List<VideoDefinition> mDefinitionsVisha = new ArrayList();

    private void createMgtvPlayCore(MgtvPlayerConfig mgtvPlayerConfig) {
        if (mgtvPlayerConfig == null || !mgtvPlayerConfig.isValidConfig()) {
            LogUtils.j(TAG, "mgtv_invalid_play_param");
            postNotificationMsg(1034, Long.valueOf(PlayerError.TRANSSION_PLAYER_ERROR_CRETE_PLAYER_FAILED));
            postNotificationMsg(1000, Boolean.TRUE, Long.valueOf(PlayerError.TRANSSION_PLAYER_ERROR_CRETE_PLAYER_FAILED));
            return;
        }
        String str = TAG;
        LogUtils.j(str, "create mgtv player:" + mgtvPlayerConfig);
        PlayerCore playerCore = new PlayerCore();
        this.mMgTvPlayer = playerCore;
        playerCore.setViewRendType(mgtvPlayerConfig.getRenderType());
        this.mMgTvPlayer.setRequestPauseAd(mgtvPlayerConfig.isbOpenRecommondContent());
        String strInit = this.mMgTvPlayer.init(mgtvPlayerConfig.getContext());
        if (!"0".equals(strInit)) {
            LogUtils.m(str, "create mgtv play core failed err code:" + strInit);
            this.mMgTvPlayer.release();
            this.mMgTvPlayer = null;
            postNotificationMsg(1034, Long.valueOf(PlayerError.TRAN_PLAYER_ERROR_PLAYER_INIT_FAILED), strInit);
            postNotificationMsg(1000, Boolean.TRUE, Long.valueOf(PlayerError.TRAN_PLAYER_ERROR_PLAYER_INIT_FAILED));
            return;
        }
        this.bPlayComplete = false;
        setMgtvPlayerListeners();
        setAccountInfo(mgtvPlayerConfig);
        if (PlayHandler.getInstance().mVideoDefinition != null) {
            LogUtils.j(str, "current video definition: " + PlayHandler.getInstance().mVideoDefinition);
            this.mMgTvPlayer.setProperties(1, Integer.valueOf(PlayHandler.getInstance().mVideoDefinition.getType()));
        }
        this.mPlayParam = PlayParams.PlayParamsBuilder.aPlayParams().withContentid(MgtvConstant.comm_content).withVideoid(mgtvPlayerConfig.getVideoid()).withStartPosition(mgtvPlayerConfig.getStartPosition()).build();
        prepare();
    }

    private void initMgtvPlayerCoreSDK(final MgtvPlayerConfig mgtvPlayerConfig) throws Throwable {
        String gaid = (mgtvPlayerConfig == null || r0a.g(mgtvPlayerConfig.getGaid())) ? "" : mgtvPlayerConfig.getGaid();
        LogUtils.j(TAG, " MgSspSdk init: gaid=" + mgtvPlayerConfig.getGaid() + ", token=" + mgtvPlayerConfig.getToken() + ",mid=" + mgtvPlayerConfig.getMid() + ",adsid=" + mgtvPlayerConfig.getAdsid() + ",playurl=" + mgtvPlayerConfig.getVideoid());
        MgSspSdk.get().setAdsID(mgtvPlayerConfig.getAdsid());
        MgSspSdk.get().setOaid(gaid);
        MgSspSdk.get().setGaid(gaid);
        MgSspSdk.get().setIsOverSea(true);
        setAreaLanguage();
        setSupportVip();
        MgSspSdk.get().init(mgtvPlayerConfig.getContext(), new InitArgs(mgtvPlayerConfig.getMid(), mgtvPlayerConfig.getToken()), new MgSspInitCallback() {
            @Override
            public final void onResult(int i, String str) {
                this.a.lambda$initMgtvPlayerCoreSDK$0(mgtvPlayerConfig, i, str);
            }
        });
    }

    public void lambda$initMgtvPlayerCoreSDK$0(MgtvPlayerConfig mgtvPlayerConfig, int i, String str) {
        long jCurrentTimeMillis = System.currentTimeMillis() - PlayHandler.getInstance().mInitStartTime;
        if (i == 0) {
            LogUtils.j(TAG, "mgtv sdk init success");
            createMgtvPlayCore(mgtvPlayerConfig);
            bMgtvSDKInited = true;
            postNotificationMsg(1018, 1, Long.valueOf(jCurrentTimeMillis));
            return;
        }
        LogUtils.m(TAG, "mgtv sdk init failed, code:" + i + " msg:" + str);
        postNotificationMsg(1018, 0, Long.valueOf(jCurrentTimeMillis));
        postNotificationMsg(1034, Long.valueOf(PlayerError.TRAN_PLAYER_ERROR_SDK_INIT_FAILED), Integer.valueOf(i), str);
        postNotificationMsg(1000, Boolean.TRUE, Integer.valueOf(i));
    }

    public static void lambda$initMgtvPlayerCoreSDK$1(int i, String str) {
        if (i == 0) {
            LogUtils.j(TAG, "mgtv sdk init success");
            bMgtvSDKInited = true;
            return;
        }
        LogUtils.m(TAG, "mgtv sdk init failed, code:" + i + " msg:" + str);
    }

    public void lambda$setMgtvPlayerListeners$10() {
        LogUtils.j(TAG, "onAdComplete");
        this.bPlayAd = false;
        if (this.bPlayerPrepared) {
            this.mMgTvPlayer.start();
        }
        Boolean bool = Boolean.FALSE;
        postNotificationMsg(1013, bool);
        postNotificationMsg(AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED, bool);
        this.mPlayerManager.getPlayerManagerListener().onAdComplete(this);
    }

    public void lambda$setMgtvPlayerListeners$11() {
        LogUtils.j(TAG, "OnVideoPaused");
        if (this.bPlayComplete) {
            return;
        }
        postNotificationMsg(1015, new Object[0]);
    }

    public void lambda$setMgtvPlayerListeners$12() {
        LogUtils.j(TAG, "OnVideoPreparing");
        notifyOnPrepared();
    }

    public void lambda$setMgtvPlayerListeners$13() {
        LogUtils.j(TAG, "OnVideoStopped");
        postNotificationMsg(1016, new Object[0]);
    }

    public void lambda$setMgtvPlayerListeners$14() {
        LogUtils.j(TAG, "OnVideoStarted");
        postNotificationMsg(1099, new Object[0]);
    }

    public void lambda$setMgtvPlayerListeners$15(int i, int i2) {
        IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener = this.mOnPlayerCoreVideoSizeChangedListener;
        if (onVideoSizeChangedListener != null) {
            onVideoSizeChangedListener.onVideoSizeChanged(this, i, i2, 0, 0);
        }
    }

    public void lambda$setMgtvPlayerListeners$16(MgSspLoginStatusReceiver mgSspLoginStatusReceiver) {
        LogUtils.j(TAG, "mangotv call vip callback");
        this.mMgSspLoginStatusReceiver = mgSspLoginStatusReceiver;
        postNotificationMsg(1038, new Object[0]);
    }

    public void lambda$setMgtvPlayerListeners$17(String str) {
        LogUtils.j(TAG, "onVideoResolutionChanged:" + str);
        if ("0104".equals(str)) {
            postNotificationMsg(1102, this.mPlayParam.getVideoid());
            return;
        }
        boolean zEquals = "0000".equals(str);
        List<VideoDefinition> list = this.mDefinitionsVisha;
        VideoDefinition videoDefinition = null;
        if (list != null && list.size() > 0) {
            for (int i = 0; i < this.mDefinitionsVisha.size(); i++) {
                VideoDefinition videoDefinition2 = this.mDefinitionsVisha.get(i);
                if (videoDefinition2.type == this.mMgTvPlayer.getCurrentResolution()) {
                    videoDefinition2.setCurrent(true);
                    videoDefinition = videoDefinition2;
                } else {
                    videoDefinition2.setCurrent(false);
                }
            }
        }
        postNotificationMsg(1049, Boolean.valueOf(zEquals), videoDefinition, str);
    }

    public void lambda$setMgtvPlayerListeners$2() {
        String str = TAG;
        LogUtils.j(str, "onVideoComplete");
        if (this.bPreviewVideo) {
            LogUtils.j(str, "video preview complete:" + this.mPlayParam.getVideoid());
            postNotificationMsg(1037, new Object[0]);
            return;
        }
        this.bPlayComplete = true;
        IMediaPlayer.OnCompletionListener onCompletionListener = this.mOnPlayerCoreCompletionListener;
        if (onCompletionListener != null) {
            onCompletionListener.onCompletion(this);
        }
    }

    public void lambda$setMgtvPlayerListeners$3(boolean z) {
        LogUtils.j(TAG, "onVideoStartPlaying " + z);
        if (this.bPlayComplete || !z) {
            return;
        }
        postNotificationMsg(1014, new Object[0]);
    }

    public void lambda$setMgtvPlayerListeners$4(String str) {
        LogUtils.m(TAG, "onError:" + str);
        if (this.mOnPlayerCoreErrorListener != null) {
            int iOrdinal = PlayerType.MGTV_PLAYER.ordinal();
            int i = MgtvConstant.MGTV_ERROR_MESSAGE_300006.equals(str) ? 300006 : 0;
            if (str.length() > 6) {
                str = str.substring(0, 6);
            }
            postErrorState(Boolean.TRUE, str);
            this.mOnPlayerCoreErrorListener.onError(this, i, iOrdinal);
        }
    }

    public void lambda$setMgtvPlayerListeners$5(String str, String str2) {
        LogUtils.j(TAG, "OnAuthorizeResultListener result code:" + str + " msg:" + str2);
        if (MgtvPlayerConstants.ErrorCode.AUTH_SUCCESS.equals(str) || "0".equals(str)) {
            onAuthSuccess(str);
        } else if (MgtvPlayerConstants.ErrorCode.AUTH_FAILED_JUST_LOOK.equals(str)) {
            onAuthPreview();
        } else if (MgtvPlayerConstants.ErrorCode.AUTH_FAILED_VIP.equals(str)) {
            onAuthNeedVip();
        } else {
            onAuthFailed(str, str2);
        }
        postNotificationMsg(AnalyticsListener.EVENT_DRM_KEYS_LOADED, new Object[0]);
    }

    public void lambda$setMgtvPlayerListeners$6() {
        LogUtils.j(TAG, "onVideoPrepared");
        this.bPlayerPrepared = true;
        if (this.bPlayAd || this.bBackground) {
            return;
        }
        this.mMgTvPlayer.start();
    }

    public void lambda$setMgtvPlayerListeners$7() {
        LogUtils.j(TAG, "onAdStartPlaying");
        postNotificationMsg(1013, Boolean.TRUE);
        postNotificationMsg(1021, new Object[0]);
        this.mPlayerManager.getPlayerManagerListener().onAdStartPlaying(this);
        this.adPlayDuration = 0;
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            PlayerAdInfo currentAdInfo = playerCore.getCurrentAdInfo();
            if (this.mMgTvPlayer != null) {
                MarkPlayerAd.adButtonName = currentAdInfo.getAdButtonName();
                MarkPlayerAd.adDuration = currentAdInfo.getAdDuration();
                MarkPlayerAd.adTag = currentAdInfo.getAdTag();
                MarkPlayerAd.adVideoHeight = currentAdInfo.getAdVideoHeight();
                MarkPlayerAd.adVideoWidth = currentAdInfo.getAdVideoWidth();
                MarkPlayerAd.canPause = currentAdInfo.canPause;
                MarkPlayerAd.isTrueViewAd = currentAdInfo.isTrueViewAd;
                MarkPlayerAd.url = currentAdInfo.getUrl();
                MarkPlayerAd.vipText = currentAdInfo.getVipText();
                MarkPlayerAd.trueViewDuration = currentAdInfo.getTrueViewDuration();
            }
        }
        MarkPlayerAd.markAdPlay();
    }

    public void lambda$setMgtvPlayerListeners$8(int i) {
        LogUtils.j(TAG, "onAdCountdown");
        this.adPlayDuration++;
    }

    public void lambda$setMgtvPlayerListeners$9() {
        LogUtils.j(TAG, "onAdPrepared");
        this.bPlayAd = true;
    }

    private void onAuthFailed(String str, String str2) {
        LogUtils.m(TAG, "OnAuthorizeResultListener result code:" + str + " msg:" + str2);
        postNotificationMsg(1000, Boolean.TRUE, str);
        postNotificationMsg(1034, Long.valueOf(PlayerError.TRAN_PLAYER_ERROR_AUTH_FAILED), str);
    }

    private void onAuthNeedVip() {
        LogUtils.j(TAG, "onAuthNeedVip");
        postNotificationMsg(1046, this.mPlayParam.getVideoid());
    }

    private void onAuthPreview() {
        PlayerVideoInfo currentVideoInfo = getCurrentVideoInfo();
        if (currentVideoInfo != null) {
            LogUtils.j(TAG, "mgtv authorize failed,but can just preview duration: " + currentVideoInfo.previewDuration);
            this.bPreviewVideo = true;
            postNotificationMsg(1036, Integer.valueOf(currentVideoInfo.previewDuration));
        }
    }

    private void onAuthSuccess(String str) {
        LogUtils.j(TAG, "mgtv authorize success");
        BasePlayerManager basePlayerManager = this.mPlayerManager;
        if (basePlayerManager != null && basePlayerManager.getPlayerManagerListener() != null) {
            this.mPlayerManager.getPlayerManagerListener().onAuthorizeResult("0", "auth success", this.mMgTvPlayer.getAuthData());
        }
        postNotificationMsg(1000, Boolean.FALSE, str);
    }

    private void prepare() {
        PlayParams playParams;
        if (this.mMgTvPlayer == null || (playParams = this.mPlayParam) == null || !playParams.isVaild() || this.mPlayerInitConfig.getPlayerInitConfig() == null || this.mPlayerInitConfig.getPlayerInitConfig().getPlayerActivity() == null) {
            LogUtils.m(TAG, "prepare_mgtv_failed");
            postNotificationMsg(1034, Long.valueOf(PlayerError.TRANSSION_PLAYER_ERROR_PLAYER_PREPARE_FAILED));
            postNotificationMsg(1000, Boolean.TRUE, Long.valueOf(PlayerError.TRANSSION_PLAYER_ERROR_PLAYER_PREPARE_FAILED));
            return;
        }
        LogUtils.j(TAG, "mgtv_player_prepare_play_init_info:" + this.mPlayerInitConfig.toString(), "play_param:" + this.mPlayParam.toString());
        setBookMark(this.mPlayParam.getStartPosition());
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo.token = this.mPlayerInitConfig.getToken();
        mediaInfo.videoId = this.mPlayParam.getVideoid();
        mediaInfo.contentId = this.mPlayParam.getContentid();
        this.mMgTvPlayer.prepare(this.mPlayerInitConfig.getPlayerInitConfig().getPlayerActivity(), mediaInfo, this.mPlayerInitConfig.getToken());
    }

    private void setAccountInfo(MgtvPlayerConfig mgtvPlayerConfig) {
        if (mgtvPlayerConfig == null || mgtvPlayerConfig.getPlayerInitConfig() == null) {
            AccountInfo accountInfo = new AccountInfo();
            accountInfo.setToken("");
            accountInfo.setOpenId("");
            MgSspSdk.get().updateAccountInfo(accountInfo);
            return;
        }
        LogUtils.m(TAG, "token: " + mgtvPlayerConfig.getPlayerInitConfig().getUserToken(), "openId: " + mgtvPlayerConfig.getPlayerInitConfig().getOpenid(), "PalmToken:" + mgtvPlayerConfig.getPlayerInitConfig().getPalmToken());
        PlayerInitConfig playerInitConfig = mgtvPlayerConfig.getPlayerInitConfig();
        AccountInfo accountInfo2 = new AccountInfo();
        accountInfo2.setToken(playerInitConfig.getUserToken());
        accountInfo2.setOpenId(playerInitConfig.getOpenid());
        MgSspSdk.get().updateAccountInfo(accountInfo2);
    }

    private static void setAreaLanguage() throws Throwable {
        Locale locale = Locale.getDefault();
        boolean zEquals = locale.getLanguage().equals(Locale.ENGLISH.getLanguage());
        boolean zEquals2 = "CN".equals(locale.getCountry());
        boolean zEquals3 = "TW".equals(locale.getCountry());
        boolean zEquals4 = "MY".equals(locale.getCountry());
        boolean zEquals5 = DataTypes.OBJ_ID.equals(locale.getCountry());
        boolean zEquals6 = "VN".equals(locale.getCountry());
        boolean zEquals7 = "TH".equals(locale.getCountry());
        LogUtils.w(TAG, "locale.country " + locale.getCountry(), "isZh is " + zEquals2, "isTw is " + zEquals3, "isMy is " + zEquals4, "isId is " + zEquals5, "isVi " + zEquals6, "isTh " + zEquals7, "is English " + zEquals, "system is " + locale);
        if (zEquals2) {
            MgSspSdk.get().changeLanguage(0, true);
            return;
        }
        if (zEquals3) {
            MgSspSdk.get().changeLanguage(1, true);
            return;
        }
        if (zEquals4) {
            MgSspSdk.get().changeLanguage(6, true);
            return;
        }
        if (zEquals5) {
            MgSspSdk.get().changeLanguage(18, true);
            return;
        }
        if (zEquals6) {
            MgSspSdk.get().changeLanguage(19, true);
        } else if (zEquals7) {
            MgSspSdk.get().changeLanguage(23, true);
        } else {
            MgSspSdk.get().changeLanguage(10, true);
        }
    }

    private void setMgtvPlayerListeners() {
        this.mMgTvPlayer.setOnVideoCompleteListener(new PlayListener.OnVideoCompleteListener() {
            @Override
            public final void onVideoComplete() {
                this.a.lambda$setMgtvPlayerListeners$2();
            }
        });
        this.mMgTvPlayer.setOnVideoStartPlayingListener(new PlayListener.OnVideoStartPlayingListener() {
            @Override
            public final void onVideoStartPlaying(boolean z) {
                this.a.lambda$setMgtvPlayerListeners$3(z);
            }
        });
        this.mMgTvPlayer.setOnErrorListener(new PlayListener.OnErrorListener() {
            @Override
            public final void onError(String str) {
                this.a.lambda$setMgtvPlayerListeners$4(str);
            }
        });
        this.mMgTvPlayer.setOnAuthorizeResultListener(new PlayListener.OnAuthorizeResultListener() {
            @Override
            public final void onAuthorizeResult(String str, String str2) {
                this.a.lambda$setMgtvPlayerListeners$5(str, str2);
            }
        });
        this.mMgTvPlayer.setOnVideoPreparedListener(new PlayListener.OnVideoPreparedListener() {
            @Override
            public final void onVideoPrepared() {
                this.a.lambda$setMgtvPlayerListeners$6();
            }
        });
        this.mMgTvPlayer.setOnVideoFirstFrameListener(new PlayListener.OnVideoFirstFrameListener() {
            @Override
            public void onVideoFirstFrame() {
                LogUtils.j(MgtvPlayerImpl.TAG, "onVideoFirstFrame");
                MgtvPlayerImpl.this.notifyOnVideoFirstFrameShow();
            }
        });
        this.mMgTvPlayer.setOnPrePreparedListener(new PlayListener.OnPrePreparedListener() {
            @Override
            public void OnPrePrepared() {
                LogUtils.j(MgtvPlayerImpl.TAG, "OnPrePrepared");
            }
        });
        this.mMgTvPlayer.setOnAdStartPlayingListener(new PlayListener.OnAdStartPlayingListener() {
            @Override
            public final void onAdStartPlaying() {
                this.a.lambda$setMgtvPlayerListeners$7();
            }
        });
        this.mMgTvPlayer.setOnAdCountdownListener(new PlayListener.OnAdCountdownListener() {
            @Override
            public final void onAdCountdown(int i) {
                this.a.lambda$setMgtvPlayerListeners$8(i);
            }
        });
        this.mMgTvPlayer.setOnAdPreparedListener(new PlayListener.OnAdPreparedListener() {
            @Override
            public final void onAdPrepared() {
                this.a.lambda$setMgtvPlayerListeners$9();
            }
        });
        this.mMgTvPlayer.setOnAdCompleteListener(new PlayListener.OnAdCompleteListener() {
            @Override
            public final void onAdComplete() {
                this.a.lambda$setMgtvPlayerListeners$10();
            }
        });
        this.mMgTvPlayer.setOnVideoLoadingListener(new PlayListener.OnVideoLoadingListener() {
            @Override
            public void onBuffering(int i) {
                MgtvPlayerImpl.this.postNotificationMsg(1047, Integer.valueOf(i));
            }

            @Override
            public void onVideoLoading(int i) {
                MgtvPlayerImpl.this.postNotificationMsg(1051, Integer.valueOf(i));
            }
        });
        this.mMgTvPlayer.setOnVideoPausedListener(new PlayListener.OnVideoPausedListener() {
            @Override
            public final void OnVideoPaused() {
                this.a.lambda$setMgtvPlayerListeners$11();
            }
        });
        this.mMgTvPlayer.setOnVideoPreparingListener(new PlayListener.OnVideoPreparingListener() {
            @Override
            public final void OnVideoPreparing() {
                this.a.lambda$setMgtvPlayerListeners$12();
            }
        });
        this.mMgTvPlayer.setOnVideoStoppedListener(new PlayListener.OnVideoStoppedListener() {
            @Override
            public final void OnVideoStopped() {
                this.a.lambda$setMgtvPlayerListeners$13();
            }
        });
        this.mMgTvPlayer.setOnVideoStartedListener(new PlayListener.OnVideoStartedListener() {
            @Override
            public final void OnVideoStarted() {
                this.a.lambda$setMgtvPlayerListeners$14();
            }
        });
        this.mMgTvPlayer.setOnVideoSizeChangedListener(new PlayListener.OnVideoSizeChangedListener() {
            @Override
            public final void onVideoSizeChanged(int i, int i2) {
                this.a.lambda$setMgtvPlayerListeners$15(i, i2);
            }
        });
        this.mMgTvPlayer.setOnSubtitlesListener(new PlayListener.OnSubtitlesListener() {
            @Override
            public void onSubtitlesError(String str) {
                LogUtils.j(MgtvPlayerImpl.TAG, "onSubtitlesError:" + str);
                if (((MediaPlayerImpl) MgtvPlayerImpl.this).mOnPlayerCoreSubtitlesListener != null) {
                    ((MediaPlayerImpl) MgtvPlayerImpl.this).mOnPlayerCoreSubtitlesListener.onSetSubtitlesFailed(MgtvPlayerImpl.this, str);
                    MgtvPlayerImpl.this.postNotificationMsg(1034, Long.valueOf(PlayerError.TRAN_PLAYER_ERROR_SUBTITLES_ERROR));
                }
            }

            @Override
            public void onSubtitlesSuccess(String str) {
                int language;
                LogUtils.j(MgtvPlayerImpl.TAG, "onSubtitlesSuccess:" + str);
                if (((MediaPlayerImpl) MgtvPlayerImpl.this).mOnPlayerCoreSubtitlesListener != null) {
                    SubTitleData currentSubtitleSource = MgtvPlayerImpl.this.mMgTvPlayer.getCurrentSubtitleSource();
                    if (currentSubtitleSource != null) {
                        language = currentSubtitleSource.getLanguage();
                        LogUtils.j(MgtvPlayerImpl.TAG, "onSubtitlesSuccess name:" + currentSubtitleSource.getName() + " language:" + language);
                    } else {
                        language = -1;
                    }
                    ((MediaPlayerImpl) MgtvPlayerImpl.this).mOnPlayerCoreSubtitlesListener.onSetSubtitlesSuccess(MgtvPlayerImpl.this, String.valueOf(language));
                }
            }

            @Override
            public void ontSubtitleList(ArrayList<SubTitleData> arrayList, SubTitleData subTitleData) {
                if (arrayList == null || arrayList.size() <= 0) {
                    return;
                }
                String str = MgtvPlayerImpl.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("ontSubtitleList: ");
                sb.append(arrayList.size());
                sb.append(" current subtitle :");
                sb.append(subTitleData != null ? Integer.valueOf(subTitleData.getLanguage()) : "empty");
                LogUtils.j(str, sb.toString());
                ArrayList arrayList2 = new ArrayList();
                boolean z = false;
                for (int i = 0; i < arrayList.size(); i++) {
                    SubTitleData subTitleData2 = arrayList.get(i);
                    VideoSubtitle videoSubtitle = new VideoSubtitle();
                    videoSubtitle.setLanguage(subTitleData2.getLanguage());
                    videoSubtitle.setCaptionCountrySimpleName(subTitleData2.getCaptionCountrySimpleName());
                    videoSubtitle.setCaptionSimpleName(subTitleData2.getCaptionSimpleName());
                    videoSubtitle.setName(subTitleData2.getName());
                    videoSubtitle.setAreacode(subTitleData2.getAreaCode());
                    if (subTitleData == null && subTitleData2.getLanguage() == -1) {
                        videoSubtitle.setSelect(true);
                    }
                    if (subTitleData != null && subTitleData.getLanguage() == subTitleData2.getLanguage()) {
                        videoSubtitle.setSelect(true);
                        z = true;
                    }
                    LogUtils.j(MgtvPlayerImpl.TAG, "Video Subtitle: " + videoSubtitle);
                    arrayList2.add(videoSubtitle);
                }
                if (!z && subTitleData != null) {
                    VideoSubtitle videoSubtitle2 = new VideoSubtitle();
                    videoSubtitle2.setLanguage(subTitleData.getLanguage());
                    videoSubtitle2.setCaptionCountrySimpleName(subTitleData.getCaptionCountrySimpleName());
                    videoSubtitle2.setCaptionSimpleName(subTitleData.getCaptionSimpleName());
                    videoSubtitle2.setName(subTitleData.getName());
                    videoSubtitle2.setAreacode(subTitleData.getAreaCode());
                    videoSubtitle2.setSelect(true);
                    LogUtils.j(MgtvPlayerImpl.TAG, "not find current subtitle in the list,so add into list: " + videoSubtitle2);
                    arrayList2.add(videoSubtitle2);
                }
                if (((MediaPlayerImpl) MgtvPlayerImpl.this).mOnPlayerCoreSubtitlesListener != null) {
                    ((MediaPlayerImpl) MgtvPlayerImpl.this).mOnPlayerCoreSubtitlesListener.onSubtitlesAvailable(MgtvPlayerImpl.this, arrayList2);
                }
            }
        });
        this.mMgTvPlayer.setSspVipCallback(new c() {
            @Override
            public final void a(MgSspLoginStatusReceiver mgSspLoginStatusReceiver) {
                this.a.lambda$setMgtvPlayerListeners$16(mgSspLoginStatusReceiver);
            }
        });
        this.mMgTvPlayer.setOnVideoResolutionChangedListener(new PlayListener.OnVideoResolutionChangedListener() {
            @Override
            public final void onVideoResolutionChanged(String str) {
                this.a.lambda$setMgtvPlayerListeners$17(str);
            }
        });
    }

    private static void setSupportVip() {
        StringBuilder sb = new StringBuilder();
        if (MgtvConstant.B_SUPPORT_VIP) {
            sb.append("1");
        }
        LogUtils.j(TAG, "setSupportVip:" + ((Object) sb));
        MgSspSdk.get().setSupportVip(sb.toString());
    }

    public void backToFront() {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            playerCore.backToFront();
            this.bBackground = false;
        }
    }

    public void changeAreaLanguage(int i, boolean z) {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "mgtv play core changeAreaLanguage unsupported");
        }
    }

    @Override
    public long getCurrentPosition() {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            return playerCore.getCurrentPosition();
        }
        return -1L;
    }

    public int getCurrentResolution() {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore == null) {
            return -1;
        }
        int currentResolution = playerCore.getCurrentResolution();
        LogUtils.j(TAG, "getCurrentResolution:" + currentResolution);
        return currentResolution;
    }

    public float getCurrentSpeed() {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            return playerCore.getCurrentPlaySpeed();
        }
        return 0.0f;
    }

    public PlayerVideoInfo getCurrentVideoInfo() {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            return playerCore.getCurrentVideoInfo();
        }
        return null;
    }

    @Override
    public long getDuration() {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            return playerCore.getVideoTotalTime();
        }
        return -1L;
    }

    @Override
    public boolean getIsPausedByUser() {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore == null) {
            return false;
        }
        boolean isPausedByUser = playerCore.getIsPausedByUser();
        LogUtils.j(TAG, "mMgTvPlayer.getIsPausedByUser():" + isPausedByUser);
        return isPausedByUser;
    }

    public List<VideoDefinition> getVideoDefinitions() {
        PlayerVideoInfo currentVideoInfo;
        List<VideoDefinition> list = this.mDefinitionsVisha;
        if (list != null && list.size() > 0) {
            return this.mDefinitionsVisha;
        }
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore == null || (currentVideoInfo = playerCore.getCurrentVideoInfo()) == null) {
            return null;
        }
        List<VideoDefinitions> videoDefinitionsList = currentVideoInfo.getVideoDefinitionsList();
        int currentResolution = this.mMgTvPlayer.getCurrentResolution();
        if (videoDefinitionsList == null || videoDefinitionsList.size() <= 0) {
            return null;
        }
        for (int i = 0; i < videoDefinitionsList.size(); i++) {
            VideoDefinition videoDefinition = new VideoDefinition();
            VideoDefinitions videoDefinitions = videoDefinitionsList.get(i);
            if (videoDefinitions != null) {
                String str = TAG;
                LogUtils.j(str, "Definition:id=" + videoDefinitions.definition + " needPay=" + videoDefinitions.needPay);
                int i2 = videoDefinitions.definition;
                if (i2 == 0) {
                    videoDefinition.type = 0;
                    videoDefinition.name = "270P";
                    videoDefinition.setNeedVip(videoDefinitions.needPay == 1);
                    this.mDefinitionsVisha.add(videoDefinition);
                } else if (i2 == 1) {
                    videoDefinition.type = 1;
                    videoDefinition.name = "360P";
                    videoDefinition.setNeedVip(videoDefinitions.needPay == 1);
                    this.mDefinitionsVisha.add(videoDefinition);
                } else if (i2 == 2) {
                    videoDefinition.type = 2;
                    videoDefinition.name = "480P";
                    videoDefinition.setNeedVip(videoDefinitions.needPay == 1);
                    this.mDefinitionsVisha.add(videoDefinition);
                } else if (i2 == 3) {
                    videoDefinition.type = 3;
                    videoDefinition.name = "720P";
                    videoDefinition.setNeedVip(videoDefinitions.needPay == 1);
                    this.mDefinitionsVisha.add(videoDefinition);
                } else if (i2 == 4) {
                    videoDefinition.type = 4;
                    videoDefinition.name = "1080P";
                    videoDefinition.setNeedVip(videoDefinitions.needPay == 1);
                    this.mDefinitionsVisha.add(videoDefinition);
                }
                if (currentResolution == videoDefinitions.definition) {
                    LogUtils.j(str, "currentDefinition:" + currentResolution);
                    videoDefinition.setCurrent(true);
                }
            }
        }
        return this.mDefinitionsVisha;
    }

    @Override
    public int getVideoHeight() {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore == null || playerCore.getVideoSize() == null) {
            return 0;
        }
        return this.mMgTvPlayer.getVideoSize()[1];
    }

    @Override
    public int getVideoWidth() {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore == null || playerCore.getVideoSize() == null) {
            return 0;
        }
        return this.mMgTvPlayer.getVideoSize()[0];
    }

    public void gotoBackground() {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "gotoBackground");
            this.mMgTvPlayer.gotoBackground();
            this.bBackground = true;
        }
    }

    public void initMgTVPlayer(MgtvPlayerConfig mgtvPlayerConfig) throws Throwable {
        if (mgtvPlayerConfig == null || !mgtvPlayerConfig.isValidConfig()) {
            LogUtils.m(TAG, "init_mgtv_failed_invalid_param");
            postNotificationMsg(1034, Long.valueOf(PlayerError.TRAN_PLAYER_ERROR_INVALID_PARAM));
            postNotificationMsg(1000, Boolean.TRUE, Long.valueOf(PlayerError.TRAN_PLAYER_ERROR_INVALID_PARAM));
            return;
        }
        LogUtils.j(TAG, "init mgtv player:" + mgtvPlayerConfig);
        this.mPlayerInitConfig = mgtvPlayerConfig;
        if (bMgtvSDKInited) {
            createMgtvPlayCore(mgtvPlayerConfig);
            return;
        }
        PlayHandler.getInstance().mInitStartTime = System.currentTimeMillis();
        initMgtvPlayerCoreSDK(mgtvPlayerConfig);
    }

    @Override
    public boolean isPlaying() {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            return playerCore.isPlaying();
        }
        return false;
    }

    public void layoutPlayController(ControllerLayoutConfig controllerLayoutConfig) {
        if (this.mMgTvPlayer == null) {
            LogUtils.m(TAG, "layout_play_controller_failed: mgtv player not init");
            return;
        }
        if (controllerLayoutConfig == null || controllerLayoutConfig.isValidConfig()) {
            LogUtils.m(TAG, "layout_play_controller_failed: invalid layout config");
            postNotificationMsg(1034, Long.valueOf(PlayerError.TRANSSION_PLAYER_ERROR_PLAYER_SET_SURFACE_FAILED));
            postNotificationMsg(1000, Boolean.TRUE, Long.valueOf(PlayerError.TRANSSION_PLAYER_ERROR_PLAYER_SET_SURFACE_FAILED));
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        View displayView = this.mMgTvPlayer.getDisplayView();
        if (displayView != null) {
            if (displayView.getParent() != null) {
                ((ViewGroup) displayView.getParent()).removeView(displayView);
            }
            controllerLayoutConfig.getParentContainer().addView(displayView, layoutParams);
        }
    }

    public void noticePlayViewMode(int i) {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "noticePlayViewMode:" + i);
            this.mMgTvPlayer.noticePlayViewMode(i);
        }
    }

    public void onActivityStart(boolean z) {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "onActivityStart: state=" + z);
            this.mMgTvPlayer.onActivityStart(z);
        }
    }

    public void onActivityStop() {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "onActivityStop");
            this.mMgTvPlayer.onActivityStop();
        }
    }

    @Override
    public void onUserLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        super.onUserLogin(vishaPalmUserInfo);
    }

    @Override
    public void onUserReLogin(VishaPalmUserInfo vishaPalmUserInfo) {
        super.onUserReLogin(vishaPalmUserInfo);
    }

    @Override
    public void pause() throws IllegalStateException {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "pause:mMgTvPlayer.pause()");
            this.mMgTvPlayer.pause();
        }
    }

    @Override
    public void release() {
        LogUtils.j(TAG, "release");
        super.release();
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            playerCore.release();
            this.mMgTvPlayer = null;
        }
        MgtvPlayerConfig mgtvPlayerConfig = this.mPlayerInitConfig;
        if (mgtvPlayerConfig != null) {
            mgtvPlayerConfig.reset();
        }
        List<VideoDefinition> list = this.mDefinitionsVisha;
        if (list != null) {
            list.clear();
        }
    }

    public void replay() {
        this.bBackground = false;
        prepare();
    }

    @Override
    public void reset() {
    }

    @Override
    public void seekTo(long j) throws IllegalStateException {
        if (this.mMgTvPlayer == null || j == -1) {
            return;
        }
        LogUtils.j(TAG, "seekTo: " + j);
        this.mMgTvPlayer.seekTo((int) j);
    }

    public void setAspectRatio(int i) {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "setAspectRatio: " + i);
            this.mMgTvPlayer.setAspectRatio(i);
        }
    }

    public void setBookMark(int i) {
        if (i == -1) {
            i = 0;
        }
        if (this.mMgTvPlayer == null || i < 0) {
            return;
        }
        LogUtils.j(TAG, "setBookMark: " + i);
        this.mMgTvPlayer.setBookmark(i);
    }

    public void setFullScreen(boolean z) {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "setFullScreen: " + z);
            this.mMgTvPlayer.switchFullScreen(z);
        }
    }

    public void setMute(boolean z) {
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            playerCore.setMute(z);
        }
    }

    public void setPlaySpeed(float f) {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "setPlaySpeed: " + f);
            this.mMgTvPlayer.setPlaySpeed(f);
        }
    }

    @Override
    public void setScreenOnWhilePlaying(boolean z) {
    }

    public void setSubtitleBottomRatio(float f) {
        LogUtils.j(TAG, "setSubtitleBottomRatio bottomRatio: " + f);
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            playerCore.setSubtitleBottomRatio(f);
        }
    }

    public void setSubtitleSizeRatio(float f) {
        LogUtils.j(TAG, "setSubtitleSizeRatio sizeRatio: " + f);
        PlayerCore playerCore = this.mMgTvPlayer;
        if (playerCore != null) {
            playerCore.setSubtitleSizeRatio(f);
        }
    }

    @Override
    public void setUserAccountInfo(VishaAccountInfo vishaAccountInfo) {
        if (pp3.L && vishaAccountInfo != null && bMgtvSDKInited) {
            LogUtils.m(TAG, "token: " + vishaAccountInfo.getToken(), "openId: " + vishaAccountInfo.getOpenId(), "PalmToken" + vishaAccountInfo.getPalmToken());
            AccountInfo accountInfo = new AccountInfo();
            accountInfo.setOpenId(vishaAccountInfo.getOpenId());
            accountInfo.setToken(vishaAccountInfo.getToken());
            MgSspSdk.get().updateAccountInfo(accountInfo);
        }
    }

    @Override
    public void start() throws IllegalStateException {
        if (this.mMgTvPlayer == null || this.bPlayAd || !this.bPlayerPrepared) {
            return;
        }
        LogUtils.j(TAG, "start:mMgTvPlayer.togglePlay()");
        this.mMgTvPlayer.play();
    }

    @Override
    public void stop() throws IllegalStateException {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "stop");
            this.mMgTvPlayer.stop();
        }
    }

    public void switchResolution(int i) {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "switchResolution: " + i);
            this.mMgTvPlayer.switchResolution(i);
        }
    }

    public void switchSubtitleSource(int i) {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "switchSubtitleSource: " + i);
            this.mMgTvPlayer.switchSubtitleSource(i);
        }
    }

    @Override
    public void togglePlay() throws IllegalStateException {
        if (this.mMgTvPlayer != null) {
            LogUtils.j(TAG, "pause:mMgTvPlayer.togglePlay()");
            this.mMgTvPlayer.togglePlay();
        }
    }

    @Override
    public void userLogout() {
        super.userLogout();
        if (pp3.L) {
            AccountInfo accountInfo = new AccountInfo();
            accountInfo.setOpenId("");
            accountInfo.setToken("");
            MgSspSdk.get().updateAccountInfo(accountInfo);
        }
    }

    public static void initMgtvPlayerCoreSDK(Context context, String str, String str2, String str3) throws Throwable {
        if (r0a.g(str3)) {
            str3 = "";
        }
        MgSspSdk.get().setOaid(str3);
        MgSspSdk.get().setGaid(str3);
        MgSspSdk.get().setIsOverSea(true);
        setAreaLanguage();
        setSupportVip();
        try {
            MgSspSdk.get().init(context, new InitArgs(str, str2), new MgSspInitCallback() {
                @Override
                public final void onResult(int i, String str4) {
                    MgtvPlayerImpl.lambda$initMgtvPlayerCoreSDK$1(i, str4);
                }
            });
        } catch (Throwable th) {
            LogUtils.m(TAG, "mgtv sdk init failed,error:" + th.getMessage());
        }
    }
}
