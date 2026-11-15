package com.mgtv.ssp.play;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.hunantv.imgo.util.ThreadManager;
import com.hunantv.imgo.util.l;
import com.mgmi.ssp.AdError;
import com.mgmi.ssp.NativeADDataRef;
import com.mgmi.ssp.PreRollVideoAd;
import com.mgtv.ssp.a.a;
import com.mgtv.ssp.auth.b;
import com.mgtv.ssp.authbase.MgSspAccountCallback;
import com.mgtv.ssp.bean.config.SspSdkConfig;
import com.mgtv.ssp.control.BaseVideoController;
import com.mgtv.ssp.control.d;
import com.mgtv.ssp.play.bean.SubTitleData;
import com.mgtv.ssp.play.playsdk.PlayListener;
import com.mgtv.ssp.play.playsdk.PlayerAdInfo;
import com.mgtv.ssp.play.playsdk.PlayerVideoInfo;
import com.mgtv.ssp.play.playsdk.VDefinitionInfo;
import com.mgtv.ssp.utils.c;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.callback.MgtvPlayerListener;
import com.mgtv.thirdsdk.playcore.callback.SdkPlayerInterface;
import com.mgtv.thirdsdk.playcore.e;
import com.mgtv.thirdsdk.playcore.f;
import java.io.PrintStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class PlayerCore implements d {
    public static int START_PLAY = 100088;
    private String curPlayIndex;
    private boolean hasClicked;
    boolean isLive;
    boolean isLocal;
    private String lob;
    private com.mgtv.ssp.d mAdControlListener;
    private PlayListener.OnAdEmptyListener mAdEmptyListener;
    private SdkPlayerInterface mMgtvMediaPlayer;
    private PlayListener.OnAdClickListener mOnAdClickListener;
    private PlayListener.OnAdCompleteListener mOnAdCompleteListener;
    private PlayListener.OnAdCountdownListener mOnAdCountdownListener;
    private PlayListener.OnAdErrorListener mOnAdErrorListener;
    private PlayListener.OnAdPreparedListener mOnAdPreparedListener;
    private PlayListener.OnAdSizeChangedListener mOnAdSizeChangedListener;
    private PlayListener.OnAdStartPlayingListener mOnAdStartPlayingListener;
    private PlayListener.OnAuthorizeResultListener mOnAuthorizeResultListener;
    private PlayListener.OnErrorListener mOnErrorListener;
    private PlayListener.OnPrePreparedListener mOnPrePreparedListener;
    protected List<OnStateChangeListener> mOnStateChangeListeners;
    private PlayListener.OnStopAdListener mOnStopAdListener;
    private PlayListener.OnSubtitlesListener mOnSubtitlesListener;
    private PlayListener.OnVideoCompleteListener mOnVideoCompleteListener;
    private PlayListener.OnVideoFirstFrameListener mOnVideoFirstFrameListener;
    private PlayListener.OnVideoLoadingListener mOnVideoLoadingListener;
    private PlayListener.OnVideoPausedListener mOnVideoPausedListener;
    private PlayListener.OnVideoPreparedListener mOnVideoPreparedListener;
    private PlayListener.OnVideoPreparingListener mOnVideoPreparingListener;
    private PlayListener.OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    private PlayListener.OnVideoStartedListener mOnVideoStartedListener;
    private PlayListener.OnVideoStoppedListener mOnVideoStoppedListener;

    @Nullable
    protected BaseVideoController mVideoController;
    private PlayListener.OnVideoResolutionChangedListener mVideoResolutionChangedListener;
    private PlayListener.OnVideoStartPlayingListener mVideoStartPlayingListener;
    private String position;
    private ScreenStatusFetcher screenStatus;
    private String from = "vod";
    private boolean isPausedByUser = false;
    private boolean requestPauseAd = false;
    private boolean isInBackgroud = false;
    private Handler mUIHandler = new InternalHandler(Looper.getMainLooper(), this);
    protected String videoId = "";
    protected String asscen_token = "";
    private boolean autoStart = true;
    protected String mContentid = "";
    protected String liveId = "";
    protected int mCurrentPlayerState = 10;

    public static class InternalHandler extends Handler {
        WeakReference<PlayerCore> myView;

        public InternalHandler(Looper looper, PlayerCore playerCore) {
            super(looper);
            this.myView = new WeakReference<>(playerCore);
        }

        @Override
        public void handleMessage(Message message) {
            PlayerCore playerCore;
            super.handleMessage(message);
            WeakReference<PlayerCore> weakReference = this.myView;
            if (weakReference == null || weakReference.get() == null || message.what != PlayerCore.START_PLAY || (playerCore = this.myView.get()) == null) {
                return;
            }
            if (playerCore.isLocal) {
                playerCore.startLocalPlayer(playerCore.mContentid);
            } else if (playerCore.isLive) {
                playerCore.startLivePlayer(playerCore.liveId);
            } else {
                playerCore.startPlayer(playerCore.videoId, playerCore.asscen_token);
            }
        }
    }

    public interface OnStateChangeListener {
        void onPlayStateChanged(int i);

        void onPlayerStateChanged(int i);
    }

    public interface ScreenStatusFetcher {
        int isFull();
    }

    public static class SimpleOnStateChangeListener implements OnStateChangeListener {
        @Override
        public void onPlayStateChanged(int i) {
        }

        @Override
        public void onPlayerStateChanged(int i) {
        }
    }

    public boolean canReqPauseAd() {
        return "detail".equals(this.from) || "vod".equals(this.from) || "card".equals(this.from);
    }

    private void hideSysBar(ViewGroup viewGroup) {
        viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() | InputDeviceCompat.SOURCE_TOUCHSCREEN);
        getActivity().getWindow().setFlags(1024, 1024);
    }

    private void setReportData() {
        e playerData;
        e playerData2;
        e playerData3;
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null && (playerData3 = sdkPlayerInterface.getPlayerData()) != null) {
            playerData3.aG = this.lob;
            VideoSDKReport.a().b(this.lob);
        }
        SdkPlayerInterface sdkPlayerInterface2 = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface2 != null && (playerData2 = sdkPlayerInterface2.getPlayerData()) != null) {
            playerData2.aH = this.curPlayIndex;
            VideoSDKReport.a().c(this.position);
        }
        if (this.isLive) {
            this.from = "live";
        }
        VideoSDKReport.a().a(this.from);
        SdkPlayerInterface sdkPlayerInterface3 = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface3 == null || (playerData = sdkPlayerInterface3.getPlayerData()) == null) {
            return;
        }
        playerData.aF = this.hasClicked;
    }

    private void showSysBar(ViewGroup viewGroup) {
        viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() & (-4099));
        getActivity().getWindow().clearFlags(1024);
    }

    public void adButtonClick() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.adClick();
        }
    }

    public void addOnStateChangeListener(@NonNull OnStateChangeListener onStateChangeListener) {
        if (this.mOnStateChangeListeners == null) {
            this.mOnStateChangeListeners = new ArrayList();
        }
        this.mOnStateChangeListeners.add(onStateChangeListener);
    }

    public void backToFront() {
        System.out.println("PlayerCore onResume " + this.isInBackgroud);
        this.isInBackgroud = false;
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.onResume();
        }
    }

    public void clearOnStateChangeListeners() {
        List<OnStateChangeListener> list = this.mOnStateChangeListeners;
        if (list != null) {
            list.clear();
        }
    }

    public Activity getActivity() {
        SdkPlayerInterface sdkPlayerInterface;
        BaseVideoController baseVideoController = this.mVideoController;
        if (baseVideoController != null) {
            Activity activityB = c.b(baseVideoController.getContext());
            return (activityB != null || (sdkPlayerInterface = this.mMgtvMediaPlayer) == null || sdkPlayerInterface.getDisPlayView() == null) ? activityB : c.b(this.mMgtvMediaPlayer.getDisPlayView().getContext());
        }
        SdkPlayerInterface sdkPlayerInterface2 = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface2 == null || sdkPlayerInterface2.getDisPlayView() == null) {
            return null;
        }
        return c.b(this.mMgtvMediaPlayer.getDisPlayView().getContext());
    }

    public a getAuthData() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface == null || sdkPlayerInterface.getPlayerData() == null) {
            return null;
        }
        return getAuthData(this.mMgtvMediaPlayer.getPlayerData().p);
    }

    public int getBufferPosition() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getBufferingPosition();
        }
        return 0;
    }

    @Override
    public int getBufferedPercentage() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getBufferedPercentage();
        }
        return 0;
    }

    public Context getContext() {
        SdkPlayerInterface sdkPlayerInterface;
        try {
            Context activity = getActivity();
            if (activity != null) {
                return activity;
            }
            try {
                BaseVideoController baseVideoController = this.mVideoController;
                if (baseVideoController != null) {
                    activity = baseVideoController.getContext();
                }
                if (activity == null && (sdkPlayerInterface = this.mMgtvMediaPlayer) != null && sdkPlayerInterface.getDisPlayView() != null) {
                    activity = this.mMgtvMediaPlayer.getDisPlayView().getContext();
                }
                return activity == null ? BaseApplication.getContext() : activity;
            } catch (Throwable unused) {
                return activity;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public View getControlView() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getControlLayout();
        }
        return null;
    }

    public PlayerAdInfo getCurrentAdInfo() {
        PlayerAdInfo playerAdInfo = new PlayerAdInfo();
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            playerAdInfo.adVideoHeight = sdkPlayerInterface.getVideoHeight();
            playerAdInfo.adVideoWidth = this.mMgtvMediaPlayer.getVideoWidth();
        }
        return playerAdInfo;
    }

    @Override
    public float getCurrentPlaySpeed() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getPlaySpeed();
        }
        return 0.0f;
    }

    @Override
    public int getCurrentPosition() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getCurrentPosition();
        }
        return 0;
    }

    public int getCurrentResolution() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getCurrentDefinition();
        }
        return -1;
    }

    public SubTitleData getCurrentSubtitleSource() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getCurrentSubtitleSource();
        }
        return null;
    }

    public PlayerVideoInfo getCurrentVideoInfo() {
        e playerData;
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface == null || (playerData = sdkPlayerInterface.getPlayerData()) == null) {
            return null;
        }
        PlayerVideoInfo playerVideoInfo = new PlayerVideoInfo();
        playerVideoInfo.allDefinitions = new ArrayList();
        playerVideoInfo.dInfoList = new ArrayList();
        if (!l.a(playerData.o)) {
            List<PlayerAuthRouterEntity> list = playerData.o;
            Collections.sort(list, new Comparator<PlayerAuthRouterEntity>() {
                @Override
                public int compare(PlayerAuthRouterEntity playerAuthRouterEntity, PlayerAuthRouterEntity playerAuthRouterEntity2) {
                    int i = playerAuthRouterEntity.definition;
                    int i2 = playerAuthRouterEntity2.definition;
                    if (i > i2) {
                        return -1;
                    }
                    return i == i2 ? 0 : 1;
                }
            });
            int size = list.size();
            for (int i = 0; i < size; i++) {
                PlayerAuthRouterEntity playerAuthRouterEntity = list.get(i);
                playerVideoInfo.dInfoList.add(new VDefinitionInfo(playerAuthRouterEntity.definition, playerAuthRouterEntity.needPay, playerAuthRouterEntity.name));
                playerVideoInfo.allDefinitions.add(Integer.valueOf(playerAuthRouterEntity.definition));
            }
        }
        playerVideoInfo.mVDefinitionsList = playerData.p();
        playerVideoInfo.videoHeight = this.mMgtvMediaPlayer.getVideoHeight();
        playerVideoInfo.videoWidth = this.mMgtvMediaPlayer.getVideoWidth();
        playerVideoInfo.isOffLine = this.mMgtvMediaPlayer.isLocalPlay();
        playerVideoInfo.videoDuration = this.mMgtvMediaPlayer.getVideoDuration();
        playerVideoInfo.isPreview = this.mMgtvMediaPlayer.isPreview();
        playerVideoInfo.mDefinitionSizeMap = this.mMgtvMediaPlayer.getDefinitionSizeMap();
        playerVideoInfo.curDefinition = this.mMgtvMediaPlayer.getCurrentDefinition();
        if (playerVideoInfo.isPreview) {
            playerVideoInfo.previewDuration = this.mMgtvMediaPlayer.getVideoPreDuration();
        }
        return playerVideoInfo;
    }

    public ViewGroup getDecorView() {
        Activity activity = getActivity();
        if (activity == null) {
            return null;
        }
        return (ViewGroup) activity.getWindow().getDecorView();
    }

    public View getDisplayView() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getDisPlayView();
        }
        return null;
    }

    public boolean getIsPausedByUser() {
        return this.isPausedByUser;
    }

    public long getLoadingSpeed() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getLoadingSpeed();
        }
        return 0L;
    }

    public int getPlayBookmark() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface == null || sdkPlayerInterface.getPlayerData() == null || this.mMgtvMediaPlayer.getPlayerData().p == null) {
            return 0;
        }
        return (this.mMgtvMediaPlayer.getPlayerData().p.previewTime - 1) * 1000;
    }

    public float[] getPlaySpeedList() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        return (sdkPlayerInterface == null || !sdkPlayerInterface.isSupport3X()) ? new float[]{0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f} : new float[]{0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f, 3.0f};
    }

    @Override
    public int getPlayerStatus() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getPlayerStatus();
        }
        return 0;
    }

    public String getVersion() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getVersion();
        }
        return null;
    }

    @Override
    public int getVideoDuration() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getVideoDuration();
        }
        return 0;
    }

    public int getVideoPreTime() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getVideoPreDuration();
        }
        return 0;
    }

    public int[] getVideoSize() {
        return new int[]{this.mMgtvMediaPlayer.getVideoWidth(), this.mMgtvMediaPlayer.getVideoHeight()};
    }

    @Override
    public int getVideoTotalTime() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.getRealDuration();
        }
        return 0;
    }

    public void gotoBackground() {
        System.out.println("PlayerCore onPause " + this.isInBackgroud);
        this.isInBackgroud = true;
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.onPause();
        }
    }

    public String init(Context context) {
        if (context == null) {
            System.out.println("init -999");
            return "-999";
        }
        if (b.a().b() != 0) {
            return "110000";
        }
        com.mgtv.thirdsdk.a aVar = new com.mgtv.thirdsdk.a(context);
        this.mMgtvMediaPlayer = aVar;
        aVar.setFrom(this.from);
        this.mMgtvMediaPlayer.setRequestPauseAd(this.requestPauseAd);
        this.mMgtvMediaPlayer.init(context);
        this.mMgtvMediaPlayer.setVolumeProcess(new com.mgtv.thirdsdk.playcore.c.InterfaceC0188c() {
            @Override
            public void onVolumeChangePorcess(int i) {
                com.hunantv.imgo.log.e.b("lyzzzz", "onVolumeChangePorcess:" + i, true);
                if (i == 0) {
                    PlayerCore.this.setPlayerState(14);
                } else {
                    PlayerCore.this.setPlayerState(15);
                }
            }
        });
        this.mMgtvMediaPlayer.setPlayStatusChangeListener(new com.mgtv.thirdsdk.playcore.d() {
            @Override
            public int getVideoHeight() {
                if (PlayerCore.this.mMgtvMediaPlayer != null) {
                    return PlayerCore.this.mMgtvMediaPlayer.getVideoHeight();
                }
                return 0;
            }

            @Override
            public int getVideoWidth() {
                if (PlayerCore.this.mMgtvMediaPlayer != null) {
                    return PlayerCore.this.mMgtvMediaPlayer.getVideoWidth();
                }
                return 0;
            }

            @Override
            public void onPlayStatusChange(int i) {
                PlayerCore.this.setPlayState(i);
            }
        });
        this.mMgtvMediaPlayer.setScreenOrientationChangeListener(new f() {
            @Override
            public void onScreenOrientationChange(int i) {
                final e playerData;
                final boolean z = i == 2;
                if (z) {
                    PlayerCore.this.setPlayerState(11);
                } else {
                    PlayerCore.this.setPlayerState(10);
                }
                Log.i("onConfigurationChanged", "onConfigurationChanged msg " + i + " " + z);
                if (PlayerCore.this.mAdControlListener != null) {
                    PlayerCore.this.mAdControlListener.a(z);
                }
                if (PlayerCore.this.mMgtvMediaPlayer == null || (playerData = PlayerCore.this.mMgtvMediaPlayer.getPlayerData()) == null || playerData.aN == null) {
                    return;
                }
                playerData.at = z;
                ThreadManager.post(new Runnable() {
                    @Override
                    public void run() {
                        PreRollVideoAd preRollVideoAd;
                        PreRollVideoAd preRollVideoAd2;
                        try {
                            if (z) {
                                e eVar = playerData;
                                if (eVar != null && (preRollVideoAd2 = eVar.aN) != null) {
                                    preRollVideoAd2.noticeFullScreen();
                                }
                            } else {
                                e eVar2 = playerData;
                                if (eVar2 != null && (preRollVideoAd = eVar2.aN) != null) {
                                    preRollVideoAd.noticeHarlfScreen();
                                }
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            }
        });
        this.mMgtvMediaPlayer.setOnAdListener(new MgtvPlayerListener.AdListener() {
            @Override
            public void onAdClick(String str) {
                if (PlayerCore.this.mOnAdClickListener != null) {
                    PlayerCore.this.mOnAdClickListener.onAdClick(str);
                }
            }

            @Override
            public void onAdComplete() {
                if (PlayerCore.this.mOnAdCompleteListener != null) {
                    PlayerCore.this.mOnAdCompleteListener.onAdComplete();
                }
            }

            @Override
            public void onAdCutDown(int i) {
                if (PlayerCore.this.mOnAdCountdownListener != null) {
                    PlayerCore.this.mOnAdCountdownListener.onAdCountdown(i);
                }
            }

            @Override
            public void onAdEmpty() {
                if (PlayerCore.this.mAdEmptyListener != null) {
                    PlayerCore.this.mAdEmptyListener.onAdEmpty();
                }
            }

            @Override
            public void onAdError(AdError adError) {
                if (PlayerCore.this.mOnAdErrorListener != null) {
                    PlayerCore.this.mOnAdErrorListener.onAdError(adError);
                }
            }

            @Override
            public void onAdPrepare() {
                if (PlayerCore.this.mOnAdPreparedListener != null) {
                    PlayerCore.this.mOnAdPreparedListener.onAdPrepared();
                }
            }

            @Override
            public void onAdSizeChanged(int i, int i2) {
                if (PlayerCore.this.mOnAdSizeChangedListener != null) {
                    PlayerCore.this.mOnAdSizeChangedListener.onAdSizeChanged(i, i2);
                }
            }

            @Override
            public void onAdStartPlayering() {
                if (PlayerCore.this.mOnAdStartPlayingListener != null) {
                    PlayerCore.this.mOnAdStartPlayingListener.onAdStartPlaying();
                }
            }

            @Override
            public void onClickBack() {
                if (PlayerCore.this.mAdControlListener != null) {
                    PlayerCore.this.mAdControlListener.a();
                }
            }

            @Override
            public void onClickFullScreen() {
                if (PlayerCore.this.mAdControlListener != null) {
                    PlayerCore.this.mAdControlListener.b();
                }
            }
        });
        this.mMgtvMediaPlayer.setOnStopAdListener(new MgtvPlayerListener.AdStopListener() {
            @Override
            public void getStopAdInfo(NativeADDataRef nativeADDataRef) {
                if (PlayerCore.this.mOnStopAdListener != null) {
                    PlayerCore.this.mOnStopAdListener.getStopAdInfo(nativeADDataRef);
                }
            }

            @Override
            public void onNoAd(AdError adError) {
                if (PlayerCore.this.mOnStopAdListener != null) {
                    PlayerCore.this.mOnStopAdListener.onNoAd(adError);
                }
            }
        });
        this.mMgtvMediaPlayer.setOnAuthResultListener(new MgtvPlayerListener.AuthResultListener() {
            @Override
            public void onAuthResult(String str, String str2) {
                if (PlayerCore.this.mOnAuthorizeResultListener != null) {
                    PlayerCore.this.mOnAuthorizeResultListener.onAuthorizeResult(str, str2);
                }
            }
        });
        this.mMgtvMediaPlayer.setOnVideoListener(new MgtvPlayerListener.VideoListener() {
            @Override
            public void OnVideoFirstFrame() {
                if (PlayerCore.this.mOnVideoFirstFrameListener != null) {
                    PlayerCore.this.mOnVideoFirstFrameListener.onVideoFirstFrame();
                }
                ThreadManager.post(new Runnable() {
                    @Override
                    public void run() {
                        BaseVideoController baseVideoController = PlayerCore.this.mVideoController;
                        if (baseVideoController != null) {
                            baseVideoController.setPlayState(18);
                        }
                    }
                });
            }

            @Override
            public int isFullScreen() {
                if (PlayerCore.this.screenStatus != null) {
                    return PlayerCore.this.screenStatus.isFull();
                }
                return -1;
            }

            @Override
            public void onBuffering(int i) {
            }

            @Override
            public void onSubtitlesError(String str) {
                if (PlayerCore.this.mOnSubtitlesListener != null) {
                    PlayerCore.this.mOnSubtitlesListener.onSubtitlesError(str);
                }
            }

            @Override
            public void onSubtitlesSuccess(String str) {
                if (PlayerCore.this.mOnSubtitlesListener != null) {
                    PlayerCore.this.mOnSubtitlesListener.onSubtitlesSuccess(str);
                }
            }

            @Override
            public void onVideoComplete() {
                if (PlayerCore.this.mOnVideoCompleteListener != null) {
                    PlayerCore.this.mOnVideoCompleteListener.onVideoComplete();
                }
            }

            @Override
            public void onVideoDefinitionChanged(String str) {
                if (PlayerCore.this.mVideoResolutionChangedListener != null) {
                    PlayerCore.this.mVideoResolutionChangedListener.onVideoResolutionChanged(str);
                }
            }

            @Override
            public void onVideoDefinitionChanging() {
                Log.v("onVideo", "onVideoDefinitionChanging276");
            }

            @Override
            public void onVideoLoading(int i) {
                if (PlayerCore.this.mOnVideoLoadingListener != null) {
                    PlayerCore.this.mOnVideoLoadingListener.onVideoLoading(i);
                }
            }

            @Override
            public void onVideoPaused() {
                if (PlayerCore.this.mOnVideoPausedListener != null) {
                    PlayerCore.this.mOnVideoPausedListener.OnVideoPaused();
                }
                if (!PlayerCore.this.canReqPauseAd() || !PlayerCore.this.isPausedByUser || PlayerCore.this.mMgtvMediaPlayer == null || PlayerCore.this.mMgtvMediaPlayer.getPlayerData() == null || PlayerCore.this.mMgtvMediaPlayer.getPlayerData().aN == null) {
                    return;
                }
                PlayerCore.this.mMgtvMediaPlayer.getPlayerData().aN.pauseByUser();
            }

            @Override
            public void onVideoPrepare() {
                if (PlayerCore.this.mOnVideoPreparedListener != null) {
                    PlayerCore.this.mOnVideoPreparedListener.onVideoPrepared();
                }
                if (PlayerCore.this.mMgtvMediaPlayer.getPlayerData() != null && PlayerCore.this.mMgtvMediaPlayer.getPlayerData().ah) {
                    if (PlayerCore.this.isInBackgroud) {
                        return;
                    }
                    PlayerCore.this.start();
                } else {
                    if (PlayerCore.this.isInBackgroud || PlayerCore.this.mMgtvMediaPlayer.getPlayerData() == null) {
                        return;
                    }
                    if (!PlayerCore.this.mMgtvMediaPlayer.getPlayerData().ae || PlayerCore.this.mMgtvMediaPlayer.getPlayerData().U) {
                        PlayerCore.this.start();
                    }
                }
            }

            @Override
            public void onVideoPreparing() {
                if (PlayerCore.this.mOnVideoPreparingListener != null) {
                    PlayerCore.this.mOnVideoPreparingListener.OnVideoPreparing();
                }
            }

            @Override
            public void onVideoSizeChanged(int i, int i2) {
                if (PlayerCore.this.mOnVideoSizeChangedListener != null) {
                    PlayerCore.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i, i2);
                }
            }

            @Override
            public void onVideoStartPlayering(boolean z) {
                if (PlayerCore.this.mVideoStartPlayingListener != null) {
                    PlayerCore.this.mVideoStartPlayingListener.onVideoStartPlaying(z);
                }
                if (z) {
                    com.mgtv.ssp.e.b(PlayerCore.this.getContext());
                }
                if (PlayerCore.this.autoStart || !z) {
                    return;
                }
                PlayerCore.this.pause();
            }

            @Override
            public void onVideoStarted() {
                if (PlayerCore.this.mOnVideoStartedListener != null) {
                    PlayerCore.this.mOnVideoStartedListener.OnVideoStarted();
                }
                PlayerCore.this.isPausedByUser = false;
                if (!PlayerCore.this.canReqPauseAd() || PlayerCore.this.mMgtvMediaPlayer == null || PlayerCore.this.mMgtvMediaPlayer.getPlayerData() == null || PlayerCore.this.mMgtvMediaPlayer.getPlayerData().aN == null) {
                    return;
                }
                PlayerCore.this.mMgtvMediaPlayer.getPlayerData().aN.resumeByUser();
            }

            @Override
            public void onVideoStopped() {
                if (PlayerCore.this.mOnVideoStoppedListener != null) {
                    PlayerCore.this.mOnVideoStoppedListener.OnVideoStopped();
                }
            }

            @Override
            public void ontSubtitleList(ArrayList<SubTitleData> arrayList, SubTitleData subTitleData) {
                if (PlayerCore.this.mOnSubtitlesListener != null) {
                    PlayerCore.this.mOnSubtitlesListener.ontSubtitleList(arrayList, subTitleData);
                }
            }
        });
        this.mMgtvMediaPlayer.setOnErrorListener(new MgtvPlayerListener.ErrorListener() {
            @Override
            public void onError(String str) {
                if (PlayerCore.this.mOnErrorListener != null) {
                    PlayerCore.this.mOnErrorListener.onError(str);
                }
            }
        });
        com.mgtv.thirdsdk.playcore.c.a.d();
        return "0";
    }

    @Override
    public boolean isFullScreen() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.isFullScreen();
        }
        return false;
    }

    public boolean isInterruptBeforeAd() {
        e playerData;
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface == null || (playerData = sdkPlayerInterface.getPlayerData()) == null) {
            return false;
        }
        return playerData.ab;
    }

    @Override
    public boolean isPlaying() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.isPlaying();
        }
        return false;
    }

    public boolean isSupx3() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            return sdkPlayerInterface.isSupport3X();
        }
        return false;
    }

    @Override
    public void lockScreen(boolean z) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.lockScreen(z);
        }
    }

    public void noticePlayViewMode(int i) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.noticePlayViewMode(i);
        }
    }

    public void onActivityStart(boolean z) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.onActivityStart(z);
        }
    }

    public void onActivityStop() {
        PrintStream printStream = System.out;
        printStream.println("Playercode onActivityStop " + this.mMgtvMediaPlayer);
        if (this.mMgtvMediaPlayer != null) {
            printStream.println("Playercode onActivityStop");
            this.mMgtvMediaPlayer.onActivityStop();
        }
    }

    @Deprecated
    public void onPause() {
        gotoBackground();
    }

    @Deprecated
    public void onResume() {
        backToFront();
    }

    public void onVisibilityChanged(boolean z) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            e playerData = sdkPlayerInterface.getPlayerData();
            if (playerData != null) {
                playerData.a(z);
            }
            if (z) {
                this.mMgtvMediaPlayer.onResume();
            } else {
                this.mMgtvMediaPlayer.onPause();
            }
        }
    }

    public void pause() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.pause();
        }
    }

    public void play() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.play();
        }
    }

    public void playByUser() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.playByUser();
        }
    }

    public void prepare(Activity activity, MediaInfo mediaInfo, String str) {
        if (b.a().b() != 0) {
            System.out.println("not init: -110000 ");
            return;
        }
        this.videoId = "";
        this.asscen_token = "";
        this.hasClicked = false;
        this.liveId = mediaInfo.liveId;
        this.isLocal = false;
        try {
            if (!TextUtils.isEmpty(mediaInfo.videoId)) {
                this.videoId = mediaInfo.videoId;
            }
            this.asscen_token = com.hunantv.imgo.util.b.V();
            if (!TextUtils.isEmpty(mediaInfo.contentId) && !"invalid".equals(mediaInfo.contentId)) {
                com.hunantv.imgo.util.b.a(mediaInfo.contentId, mediaInfo.from);
                Log.e(TtmlNode.START, "内容id" + mediaInfo.contentId);
                if (this.mMgtvMediaPlayer != null) {
                    VideoSDKReport.a().b();
                    VideoSDKReport.a().i(0);
                    setPlayState(0);
                    this.mMgtvMediaPlayer.setActivity(activity);
                    com.hunantv.imgo.util.e.a();
                    com.hunantv.imgo.util.e.a = System.currentTimeMillis();
                    if (!TextUtils.isEmpty(this.videoId)) {
                        SspSdkConfig sspSdkConfigE = b.a().e();
                        if (sspSdkConfigE == null || sspSdkConfigE.getLoadingTime() <= 0) {
                            this.mMgtvMediaPlayer.startPlayer(this.videoId, this.asscen_token);
                            setReportData();
                            return;
                        } else {
                            setPlayState(17);
                            this.mUIHandler.sendEmptyMessage(START_PLAY);
                            return;
                        }
                    }
                    if (TextUtils.isEmpty(this.liveId)) {
                        return;
                    }
                    this.isLive = true;
                    this.from = "live";
                    this.mMgtvMediaPlayer.setFrom("live");
                    VideoSDKReport.a().a(this.from);
                    SspSdkConfig sspSdkConfigE2 = b.a().e();
                    if (sspSdkConfigE2 != null && sspSdkConfigE2.getLoadingTime() > 0) {
                        setPlayState(17);
                    }
                    this.mMgtvMediaPlayer.startLivePlayer(this.videoId, this.asscen_token);
                    setReportData();
                    return;
                }
                return;
            }
            Log.e(TtmlNode.START, "内容id 为空");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void reStart() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.startPlayer(this.videoId, this.asscen_token);
            this.hasClicked = true;
            setReportData();
        }
        com.mgtv.ssp.d dVar = this.mAdControlListener;
        if (dVar != null) {
            dVar.c();
        }
    }

    public void reStartPlay(final Activity activity, final MediaInfo mediaInfo, final String str) {
        com.mgtv.ssp.authbase.b.a(activity, new com.mgtv.ssp.authbase.b.a() {
            @Override
            public void onChanged(boolean z) {
                if (z) {
                    PlayerCore.this.prepare(activity, mediaInfo, str);
                }
            }
        });
    }

    public void release() {
        if ("vod".equalsIgnoreCase(this.from) || "live".equalsIgnoreCase(this.from)) {
            VideoSDKReport.a().w();
        }
        com.mgtv.ssp.e.c(getContext());
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.release();
        }
    }

    public void removeOnStateChangeListener(@NonNull OnStateChangeListener onStateChangeListener) {
        List<OnStateChangeListener> list = this.mOnStateChangeListeners;
        if (list != null) {
            list.remove(onStateChangeListener);
        }
    }

    @Override
    public void seekTo(int i) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.seekTo(i);
        }
    }

    public void setAdControlListener(com.mgtv.ssp.d dVar) {
        this.mAdControlListener = dVar;
    }

    public String setAspectRatio(int i) {
        SdkPlayerInterface sdkPlayerInterface;
        if (i == 0) {
            SdkPlayerInterface sdkPlayerInterface2 = this.mMgtvMediaPlayer;
            if (sdkPlayerInterface2 == null) {
                return "0";
            }
            sdkPlayerInterface2.setAspectRatio(1);
            return "0";
        }
        if (i != 1) {
            if (i != 2 || (sdkPlayerInterface = this.mMgtvMediaPlayer) == null) {
                return "0";
            }
            sdkPlayerInterface.setAspectRatio(3);
            return "0";
        }
        SdkPlayerInterface sdkPlayerInterface3 = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface3 == null) {
            return "0";
        }
        sdkPlayerInterface3.setAspectRatio(0);
        return "0";
    }

    public void setAutoPlayClicked(boolean z) {
        e playerData;
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface == null || (playerData = sdkPlayerInterface.getPlayerData()) == null) {
            return;
        }
        playerData.aE = z;
    }

    public void setAutoStart(boolean z) {
        this.autoStart = z;
    }

    public String setBookmark(int i) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface == null) {
            return "0";
        }
        sdkPlayerInterface.setBookmark(i);
        return "0";
    }

    public String setBufferStatus(boolean z) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface == null) {
            return "0";
        }
        sdkPlayerInterface.setBufferStatus(z);
        return "0";
    }

    public void setCurPlayIndex(String str) {
        e playerData;
        this.curPlayIndex = str;
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface == null || (playerData = sdkPlayerInterface.getPlayerData()) == null) {
            return;
        }
        playerData.aH = str;
        VideoSDKReport.a().c(this.position);
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setLob(String str) {
        this.lob = str;
    }

    @Override
    public String setMute(boolean z) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface == null) {
            return "0";
        }
        sdkPlayerInterface.setMute(z);
        return "0";
    }

    public void setOnAdClickListener(PlayListener.OnAdClickListener onAdClickListener) {
    }

    public void setOnAdCompleteListener(PlayListener.OnAdCompleteListener onAdCompleteListener) {
        this.mOnAdCompleteListener = onAdCompleteListener;
    }

    public void setOnAdCountdownListener(PlayListener.OnAdCountdownListener onAdCountdownListener) {
        this.mOnAdCountdownListener = onAdCountdownListener;
    }

    public void setOnAdEmptyListener(PlayListener.OnAdEmptyListener onAdEmptyListener) {
        this.mAdEmptyListener = onAdEmptyListener;
    }

    public void setOnAdErrorListener(PlayListener.OnAdErrorListener onAdErrorListener) {
        this.mOnAdErrorListener = onAdErrorListener;
    }

    public void setOnAdPreparedListener(PlayListener.OnAdPreparedListener onAdPreparedListener) {
        this.mOnAdPreparedListener = onAdPreparedListener;
    }

    public void setOnAdStartPlayingListener(PlayListener.OnAdStartPlayingListener onAdStartPlayingListener) {
        this.mOnAdStartPlayingListener = onAdStartPlayingListener;
    }

    public void setOnAuthorizeResultListener(PlayListener.OnAuthorizeResultListener onAuthorizeResultListener) {
        this.mOnAuthorizeResultListener = onAuthorizeResultListener;
    }

    public void setOnErrorListener(PlayListener.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnPrePreparedListener(PlayListener.OnPrePreparedListener onPrePreparedListener) {
        this.mOnPrePreparedListener = this.mOnPrePreparedListener;
    }

    public void setOnStateChangeListener(@NonNull OnStateChangeListener onStateChangeListener) {
        List<OnStateChangeListener> list = this.mOnStateChangeListeners;
        if (list == null) {
            this.mOnStateChangeListeners = new ArrayList();
        } else {
            list.clear();
        }
        this.mOnStateChangeListeners.add(onStateChangeListener);
    }

    public void setOnSubtitlesListener(PlayListener.OnSubtitlesListener onSubtitlesListener) {
        this.mOnSubtitlesListener = onSubtitlesListener;
    }

    public void setOnVideoCompleteListener(PlayListener.OnVideoCompleteListener onVideoCompleteListener) {
        this.mOnVideoCompleteListener = onVideoCompleteListener;
    }

    public void setOnVideoFirstFrameListener(PlayListener.OnVideoFirstFrameListener onVideoFirstFrameListener) {
        this.mOnVideoFirstFrameListener = onVideoFirstFrameListener;
    }

    public void setOnVideoLoadingListener(PlayListener.OnVideoLoadingListener onVideoLoadingListener) {
        this.mOnVideoLoadingListener = onVideoLoadingListener;
    }

    public void setOnVideoPausedListener(PlayListener.OnVideoPausedListener onVideoPausedListener) {
        this.mOnVideoPausedListener = onVideoPausedListener;
    }

    public void setOnVideoPreparedListener(PlayListener.OnVideoPreparedListener onVideoPreparedListener) {
        this.mOnVideoPreparedListener = onVideoPreparedListener;
    }

    public void setOnVideoPreparingListener(PlayListener.OnVideoPreparingListener onVideoPreparingListener) {
        this.mOnVideoPreparingListener = onVideoPreparingListener;
    }

    public void setOnVideoResolutionChangedListener(PlayListener.OnVideoResolutionChangedListener onVideoResolutionChangedListener) {
        this.mVideoResolutionChangedListener = onVideoResolutionChangedListener;
    }

    public void setOnVideoSizeChangedListener(PlayListener.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public void setOnVideoStartPlayingListener(PlayListener.OnVideoStartPlayingListener onVideoStartPlayingListener) {
        this.mVideoStartPlayingListener = onVideoStartPlayingListener;
    }

    public void setOnVideoStartedListener(PlayListener.OnVideoStartedListener onVideoStartedListener) {
        this.mOnVideoStartedListener = onVideoStartedListener;
    }

    public void setOnVideoStoppedListener(PlayListener.OnVideoStoppedListener onVideoStoppedListener) {
        this.mOnVideoStoppedListener = onVideoStoppedListener;
    }

    public void setPlayClicked(boolean z) {
        this.hasClicked = z;
    }

    public String setPlaySpeed(float f) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface == null) {
            return "0";
        }
        sdkPlayerInterface.setPlaySpeed(f);
        return "0";
    }

    public void setPlayState(int i) {
        BaseVideoController baseVideoController = this.mVideoController;
        if (baseVideoController != null) {
            baseVideoController.setPlayState(i);
        }
        List<OnStateChangeListener> list = this.mOnStateChangeListeners;
        if (list != null) {
            for (OnStateChangeListener onStateChangeListener : c.a(list)) {
                if (onStateChangeListener != null) {
                    onStateChangeListener.onPlayStateChanged(i);
                }
            }
        }
    }

    public void setPlayerState(int i) {
        try {
            this.mCurrentPlayerState = i;
            BaseVideoController baseVideoController = this.mVideoController;
            if (baseVideoController != null) {
                baseVideoController.setPlayerState(i);
            }
            List<OnStateChangeListener> list = this.mOnStateChangeListeners;
            if (list != null) {
                for (OnStateChangeListener onStateChangeListener : c.a(list)) {
                    if (onStateChangeListener != null) {
                        onStateChangeListener.onPlayerStateChanged(i);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setPosition(String str) {
        this.position = str;
    }

    public String setProperties(int i, Object obj) {
        SdkPlayerInterface sdkPlayerInterface;
        if (i != 1) {
            if (i != 2 || (sdkPlayerInterface = this.mMgtvMediaPlayer) == null) {
                return "0";
            }
            sdkPlayerInterface.switchFullScreen(((Boolean) obj).booleanValue());
            return "0";
        }
        SdkPlayerInterface sdkPlayerInterface2 = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface2 == null || !(obj instanceof Integer)) {
            return "0";
        }
        sdkPlayerInterface2.setDefaultDefination(((Integer) obj).intValue());
        return "0";
    }

    public void setRequestPauseAd(boolean z) {
        this.requestPauseAd = z;
    }

    public void setScreenStatus(ScreenStatusFetcher screenStatusFetcher) {
        this.screenStatus = screenStatusFetcher;
    }

    public void setScreenStatusValue(boolean z) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.noticeAdScreenChange(z);
        }
    }

    public void setSourcePrepareListener(com.mgtv.ssp.c cVar) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.setOnSourcePrepareListener(cVar);
        }
    }

    public void setSspAccountCallback(MgSspAccountCallback mgSspAccountCallback) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.setSspAccountCallback(mgSspAccountCallback);
        }
    }

    public void setSspVipCallback(com.mgtv.ssp.authbase.c cVar) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.setSspVipCallback(cVar);
        }
    }

    public void setSubtitleBottomRatio(float f) {
        com.mgtv.thirdsdk.playcore.utils.c.a(f);
    }

    public void setSubtitleSizeRatio(float f) {
        com.mgtv.thirdsdk.playcore.utils.c.b(f);
    }

    public void setSupportChangeOrientation(boolean z) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.setSupportChangeOrientation(z);
        }
    }

    public void setSupportChangeScreenMode(boolean z) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.setSupportChangeScreenMode(z);
        }
    }

    public void setVideoController(@Nullable BaseVideoController baseVideoController) {
        ViewGroup viewGroup = (ViewGroup) getControlView();
        if (viewGroup == null) {
            return;
        }
        viewGroup.removeView(this.mVideoController);
        this.mVideoController = baseVideoController;
        if (baseVideoController != null) {
            baseVideoController.setMediaPlayer(this);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            viewGroup.addView(this.mVideoController, layoutParams);
        }
    }

    public void setViewRendType(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.mgtv.thirdsdk.playcore.utils.c.b(str);
    }

    @Override
    public void start() {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.start();
        }
    }

    public void startLivePlayer(String str) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.startLivePlayer(str, "");
            setReportData();
        }
    }

    public void startLocalPlayer(Activity activity, String str) {
        if (this.mMgtvMediaPlayer != null) {
            setPlayState(0);
            this.mMgtvMediaPlayer.setActivity(activity);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.isLocal = true;
            this.mContentid = str;
            VideoSDKReport.a().b();
            VideoSDKReport.a().i(1);
            com.hunantv.imgo.util.e.a();
            com.hunantv.imgo.util.e.a = System.currentTimeMillis();
            SspSdkConfig sspSdkConfigE = b.a().e();
            if (sspSdkConfigE != null && sspSdkConfigE.getShowLoading() == 0) {
                startLocalPlayer(str);
            } else if (sspSdkConfigE == null || sspSdkConfigE.getLoadingTime() <= 0) {
                startLocalPlayer(str);
            } else {
                setPlayState(17);
                this.mUIHandler.sendEmptyMessageDelayed(START_PLAY, sspSdkConfigE.getLoadingTime());
            }
        }
    }

    public void startPlayer(String str, String str2) {
        this.mMgtvMediaPlayer.startPlayer(str, str2);
        setReportData();
    }

    public void stop() {
        Handler handler = this.mUIHandler;
        if (handler != null) {
            handler.removeMessages(START_PLAY);
        }
        com.mgtv.ssp.e.c(getContext());
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.stop();
        }
    }

    @Override
    public void switchFullScreen(boolean z) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.switchFullScreen(z);
        }
    }

    public void switchFullScreenV2(boolean z) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.switchFullscreenByAd(z);
        }
    }

    public void switchResolution(int i) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.changeDefination(i);
        }
    }

    public void switchSubtitleSource(int i) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.switchSubtitleSource(i);
        }
    }

    @Override
    public void togglePlay() {
        if (isPlaying()) {
            this.isPausedByUser = true;
            pause();
        } else {
            this.isPausedByUser = false;
            playByUser();
        }
    }

    private a getAuthData(PlayerAuthDataEntity playerAuthDataEntity) {
        AuthInfo.PayInfo payInfo;
        a aVar = new a();
        if (playerAuthDataEntity != null) {
            aVar.e = playerAuthDataEntity.clipId;
            aVar.c = playerAuthDataEntity.videoId;
            aVar.d = playerAuthDataEntity.videoName;
            aVar.b = playerAuthDataEntity.fstlvlId;
            aVar.f = playerAuthDataEntity.plId;
            aVar.g = playerAuthDataEntity.default_quality;
            aVar.a = playerAuthDataEntity.time;
            AuthInfo authInfo = playerAuthDataEntity.auth_info;
            if (authInfo != null && (payInfo = authInfo.pay_info) != null) {
                aVar.h = payInfo.preview_end;
            }
        }
        return aVar;
    }

    public void startLocalPlayer(String str) {
        SdkPlayerInterface sdkPlayerInterface = this.mMgtvMediaPlayer;
        if (sdkPlayerInterface != null) {
            sdkPlayerInterface.startLocalPlayer(str);
        }
        setReportData();
    }
}
