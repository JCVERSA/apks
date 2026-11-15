package com.transsion.vishaplayersdk.gsyplayer.video.base;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.AudioManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.LogUtils;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.base.config.PlayType;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.base.config.PlayerError;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import com.transsion.vishaplayersdk.base.config.PlayerType;
import com.transsion.vishaplayersdk.exo2player.Exo2PlayerManager;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoViewBridge;
import com.transsion.vishaplayersdk.gsyplayer.base.PlayerFactory;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoSubtitle;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYMediaPlayerListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.VideoAllCallBack;
import com.transsion.vishaplayersdk.gsyplayer.render.GSYRenderProxy;
import com.transsion.vishaplayersdk.gsyplayer.utils.CommonUtil;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import com.transsion.vishaplayersdk.gsyplayer.utils.GSYVideoType;
import com.transsion.vishaplayersdk.gsyplayer.utils.NetInfoModule;
import com.transsion.vishaplayersdk.gsyplayer.utils.NetworkUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.markpoint.MarkPlayerAction;
import com.transsion.vishaplayersdk.mgtvplayer.MgtvPlayerManager;
import com.transsion.vishaplayersdk.netservices.PlayerServiceConfig;
import com.transsion.vishaplayersdk.videoauth.VideoAuthManger;
import com.transsion.vishaplayersdk.vkPlayer.VkPlayerManager;
import com.transsion.vishaplayersdk.youtube.IParseYoutubeStreamInfo;
import com.transsion.vishaplayersdk.youtube.YoutubePlayData;
import com.transsion.vishaplayersdk.youtube.YoutubePlayUtil;
import defpackage.h27;
import defpackage.wz5;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.VideoStream;

public abstract class GSYVideoStateView extends GSYRenderView implements GSYMediaPlayerListener, VideoAuthManger.IVideoAuthResultCallback, IParseYoutubeStreamInfo {
    public static final int CHANGE_DELAY_TIME = 2000;
    public static final int CURRENT_STATE_AUTO_COMPLETE = 6;
    public static final int CURRENT_STATE_ERROR = 7;
    public static final int CURRENT_STATE_NORMAL = 0;
    public static final int CURRENT_STATE_PAUSE = 5;
    public static final int CURRENT_STATE_PLAYING = 2;
    public static final int CURRENT_STATE_PLAYING_BUFFERING_START = 3;
    public static final int CURRENT_STATE_PREPAREING = 1;
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + GSYVideoStateView.class.getSimpleName();
    protected AudioManager mAudioManager;
    protected int mBackUpPlayingBufferState;
    protected int mBufferPoint;
    protected boolean mCache;
    protected File mCachePath;
    public Context mContext;
    protected long mCurrentPosition;
    protected int mCurrentState;
    protected boolean mHadPlay;
    protected boolean mHadPrepared;
    protected boolean mIfCurrentIsFullscreen;
    private boolean mInflated;
    private boolean mInitCompleted;
    protected boolean mLooping;
    protected Map<String, String> mMapHeadData;
    protected Map<Integer, String> mMapPlayState;
    protected boolean mNetChanged;
    protected NetInfoModule mNetInfoModule;
    protected String mNetSate;
    protected String mOriginUrl;
    protected String mOverrideExtension;
    protected boolean mPauseBeforePrepared;
    protected int mPlayPosition;
    protected String mPlayTag;
    protected PlayType mPlayType;
    protected WeakReference<Activity> mPlayerActivity;
    protected String mPlayerErrMsg;
    protected PlayerInitConfig mPlayerInitConfig;
    protected PlayerType mPlayerType;
    protected boolean mReleaseWhenLossAudio;
    protected long mSaveChangeViewTIme;
    protected int mScreenHeight;
    protected int mScreenWidth;
    protected long mSeekOnStart;
    protected long mSerialID;
    protected boolean mShowPauseCover;
    protected boolean mSoundTouch;
    protected float mSpeed;
    protected boolean mStartAfterPrepared;
    protected String mTitle;
    protected String mUrl;
    protected VideoAllCallBack mVideoAllCallBack;
    protected VideoAuthManger mVideoAuthManger;
    protected long mVideoID;
    protected int mVideoSourceType;
    protected YoutubePlayData mYoutubePlayData;
    protected boolean mbBuffering;

    public GSYVideoStateView(@NonNull Context context) {
        super(context);
        this.mCurrentState = -1;
        this.mPlayPosition = -22;
        this.mBackUpPlayingBufferState = -1;
        this.mSeekOnStart = -1L;
        this.mSaveChangeViewTIme = 0L;
        this.mSpeed = 1.0f;
        this.mCache = false;
        this.mIfCurrentIsFullscreen = false;
        this.mLooping = false;
        this.mHadPlay = false;
        this.mNetChanged = false;
        this.mSoundTouch = false;
        this.mShowPauseCover = false;
        this.mPauseBeforePrepared = false;
        this.mStartAfterPrepared = true;
        this.mHadPrepared = false;
        this.mReleaseWhenLossAudio = false;
        this.mPlayTag = "";
        this.mNetSate = "NORMAL";
        this.mMapHeadData = new HashMap();
        this.mbBuffering = false;
        this.mPlayerErrMsg = "";
        this.mMapPlayState = new HashMap<Integer, String>() {
            {
                put(0, "CURRENT_STATE_NORMAL");
                put(1, "CURRENT_STATE_PREPAREING");
                put(2, "CURRENT_STATE_PLAYING");
                put(3, "CURRENT_STATE_PLAYING_BUFFERING_START");
                put(5, "CURRENT_STATE_PAUSE");
                put(6, "CURRENT_STATE_AUTO_COMPLETE");
                put(7, "CURRENT_STATE_ERROR");
            }
        };
        performInit(context);
    }

    private void cleanupLocalPlayerState() {
        ensureInflated();
        ViewGroup viewGroup = this.mTextureViewContainer;
        if (viewGroup != null && viewGroup.getChildCount() > 0) {
            this.mTextureViewContainer.removeAllViews();
        }
        releaseNetWorkState();
    }

    private void getYoutubeStreamInfo() {
        YoutubePlayUtil.getYoutubeStreamInfo(this.mUrl, this);
    }

    private boolean isOrphanBackendOwner(GSYVideoViewBridge gSYVideoViewBridge) {
        return (gSYVideoViewBridge.getPlayer() == null || TextUtils.isEmpty(this.mPlayTag) || !TextUtils.equals(this.mPlayTag, gSYVideoViewBridge.getPlayTag())) ? false : true;
    }

    public void lambda$createNetWorkState$1(String str) {
        if (!this.mNetSate.equals(str)) {
            Debuger.printfError("******* change network state ******* " + str);
            this.mNetChanged = true;
        }
        this.mNetSate = str;
        if (this.mNetChanged) {
            onNetworkStateChanged(str);
        }
    }

    public void lambda$netWorkErrorLogic$0(long j) {
        setSeekOnStart(j);
        startPlay();
    }

    private void performInit(Context context) {
        if (this.mInitCompleted) {
            return;
        }
        this.mInitCompleted = true;
        init(context);
    }

    private void playDispatch() {
        VideoStream videoStream;
        String str = TAG;
        LogUtils.j(str, "onDispatchPlay:" + this.mUrl);
        if (needVishaVideoAuth()) {
            videoAuth();
            return;
        }
        if (!isYoutubeVideo()) {
            preparePlayer();
            return;
        }
        YoutubePlayData youtubePlayData = this.mYoutubePlayData;
        if (youtubePlayData == null || (videoStream = youtubePlayData.mVideoStream) == null) {
            LogUtils.j(str, "onDispatchPlay getYoutubeStreamInfo:" + this.mUrl);
            getYoutubeStreamInfo();
            return;
        }
        this.mUrl = videoStream.getContent();
        LogUtils.j(str, "onDispatchPlay youtube switch resolution:" + this.mUrl);
        GSYVideoManager gSYVideoManagerInstance = GSYVideoManager.instance();
        YoutubePlayData youtubePlayData2 = this.mYoutubePlayData;
        gSYVideoManagerInstance.setVideoDefinitions(YoutubePlayUtil.getStreamsDefinition(youtubePlayData2.mStreamInfo, youtubePlayData2.mVideoStream));
        preparePlayer();
    }

    private void preparePlayer() {
        GSYVideoViewBridge gSYVideoManager = getGSYVideoManager();
        String str = this.mUrl;
        Map<String, String> map = this.mMapHeadData;
        if (map == null) {
            map = new HashMap<>();
        }
        gSYVideoManager.prepare(str, map, this.mLooping, this.mSpeed, this.mCache, this.mCachePath, this.mOverrideExtension, (int) getSeekOnStart(), isbHardwareAccelerated(), this.mPlayerInitConfig);
    }

    private void videoAuth() {
        if (this.mVideoAuthManger == null) {
            this.mVideoAuthManger = new VideoAuthManger();
        }
        this.mVideoAuthManger.videoAuth(this.mVideoID, this.mSerialID, this);
    }

    public abstract boolean backFromFull(Context context);

    public void clearCurrentCache() {
        if (!getGSYVideoManager().isCacheFile() || !this.mCache) {
            String str = this.mUrl;
            if (str == null || !str.contains(ImgoP2pConstants.LOCAL_HOST)) {
                return;
            }
            getGSYVideoManager().clearCache(getContext(), this.mCachePath, this.mOriginUrl);
            return;
        }
        Debuger.printfError("Play Error " + this.mUrl);
        this.mUrl = this.mOriginUrl;
        getGSYVideoManager().clearCache(this.mContext, this.mCachePath, this.mOriginUrl);
    }

    public void createNetWorkState() {
        Context context;
        if (this.mNetInfoModule != null || (context = this.mContext) == null) {
            return;
        }
        NetInfoModule netInfoModule = new NetInfoModule(context.getApplicationContext());
        this.mNetInfoModule = netInfoModule;
        netInfoModule.setNetChangeListener(new NetInfoModule.NetChangeListener() {
            @Override
            public final void changed(String str) {
                this.a.lambda$createNetWorkState$1(str);
            }
        });
        this.mNetSate = this.mNetInfoModule.getCurrentConnectionType();
    }

    public void deleteCacheFileWhenError() {
        clearCurrentCache();
        Debuger.printfError("Link Or mCache Error, Please Try Again " + this.mOriginUrl);
        if (this.mCache) {
            Debuger.printfError("mCache Link " + this.mUrl);
        }
        this.mUrl = this.mOriginUrl;
    }

    public void ensureInflated() {
        if (this.mInflated) {
            return;
        }
        Context context = this.mContext;
        if (context == null) {
            context = getContext();
        }
        initInflate(context);
        this.mTextureViewContainer = (ViewGroup) findViewById(R.id.surface_container);
        this.mInflated = true;
    }

    public void ensureInitCompleted() {
        Context context = this.mContext;
        if (context == null) {
            context = getContext();
        }
        performInit(context);
    }

    public Context getActivityContext() {
        return CommonUtil.getActivityContext(getContext());
    }

    public int getBuffterPoint() {
        return this.mBufferPoint;
    }

    public int getCurrentPositionWhenPlaying() {
        int i = this.mCurrentState;
        int currentPositionInMainThread = 0;
        if (i == 2 || i == 5) {
            try {
                currentPositionInMainThread = (int) getGSYVideoManager().getCurrentPositionInMainThread();
            } catch (Exception e) {
                e.printStackTrace();
                return 0;
            }
        }
        if (currentPositionInMainThread == 0) {
            long j = this.mCurrentPosition;
            if (j > 0) {
                return (int) j;
            }
        }
        return currentPositionInMainThread;
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    @Override
    public int getCurrentVideoHeight() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoHeight();
        }
        return 0;
    }

    @Override
    public int getCurrentVideoWidth() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoWidth();
        }
        return 0;
    }

    public int getDuration() {
        if (isLive() && this.mPlayerType != PlayerType.MGTV_PLAYER) {
            return 0;
        }
        try {
            long duration = getGSYVideoManager().getDuration();
            if (duration <= 0) {
                return 0;
            }
            if (duration > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) duration;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public abstract GSYVideoViewBridge getGSYVideoManager();

    public abstract int getLayoutId();

    public Map<String, String> getMapHeadData() {
        return this.mMapHeadData;
    }

    public long getNetSpeed() {
        return getGSYVideoManager().getNetSpeed();
    }

    public String getNetSpeedText() {
        return CommonUtil.getTextSpeed(getNetSpeed());
    }

    public String getOverrideExtension() {
        return this.mOverrideExtension;
    }

    public int getPlayPosition() {
        return this.mPlayPosition;
    }

    public String getPlayTag() {
        return this.mPlayTag;
    }

    public PlayType getPlayType() {
        return this.mPlayType;
    }

    public PlayerInitConfig getPlayerInitConfig() {
        return this.mPlayerInitConfig;
    }

    public PlayerType getPlayerType() {
        return this.mPlayerType;
    }

    public long getSeekOnStart() {
        return this.mSeekOnStart;
    }

    public float getSpeed() {
        return this.mSpeed;
    }

    @Override
    public int getVideoSarDen() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoSarDen();
        }
        return 0;
    }

    @Override
    public int getVideoSarNum() {
        if (getGSYVideoManager() != null) {
            return getGSYVideoManager().getVideoSarNum();
        }
        return 0;
    }

    public abstract void hideLoadingView();

    public void init(Context context) {
        LogUtils.j(TAG, "init context =" + context);
        if (getActivityContext() != null) {
            this.mContext = getActivityContext();
        } else {
            this.mContext = context;
        }
        ensureInflated();
        if (isInEditMode()) {
            return;
        }
        this.mScreenWidth = this.mContext.getResources().getDisplayMetrics().widthPixels;
        this.mScreenHeight = this.mContext.getResources().getDisplayMetrics().heightPixels;
        this.mAudioManager = (AudioManager) this.mContext.getApplicationContext().getSystemService("audio");
    }

    public void initInflate(Context context) {
        try {
            View.inflate(context, getLayoutId(), this);
        } catch (InflateException e) {
            if (!e.toString().contains("GSYImageCover")) {
                e.printStackTrace();
            } else {
                Debuger.printfError("********************\n*****   注意   *************************\n*该版本需要清除布局文件中的GSYImageCover\n****  Attention  ***\n*Please remove GSYImageCover from Layout in this Version\n********************\n");
                e.printStackTrace();
                throw new InflateException("该版本需要清除布局文件中的GSYImageCover，please remove GSYImageCover from your layout");
            }
        }
    }

    public boolean isCurrentMediaListener() {
        return getGSYVideoManager().listener() != null && getGSYVideoManager().listener() == this;
    }

    public boolean isIfCurrentIsFullscreen() {
        return this.mIfCurrentIsFullscreen;
    }

    public boolean isInPlayingState() {
        int i = this.mCurrentState;
        return (i < 0 || i == 0 || i == 6 || i == 7) ? false : true;
    }

    public boolean isLive() {
        return this.mPlayType == PlayType.PLAY_TYPE_LIVE;
    }

    public boolean isLiveFullscreen() {
        return this.mPlayType == PlayType.PLAY_TYPE_LIVE && this.mIfCurrentIsFullscreen;
    }

    public boolean isLooping() {
        return this.mLooping;
    }

    public boolean isPlaying() {
        return this.mCurrentState == 2;
    }

    public boolean isReleaseWhenLossAudio() {
        return this.mReleaseWhenLossAudio;
    }

    public boolean isShortVideo() {
        return this.mPlayType == PlayType.PLAY_TYPE_SHORT_VIDEO;
    }

    public boolean isShowPauseCover() {
        return this.mShowPauseCover;
    }

    public boolean isStartAfterPrepared() {
        return this.mStartAfterPrepared;
    }

    public boolean isTtShortVideo() {
        return this.mVideoSourceType == 6;
    }

    public boolean isVkVideo() {
        return this.mPlayerType == PlayerType.VK_PLAYER;
    }

    public boolean isYoutubeVideo() {
        return this.mVideoSourceType == 4;
    }

    public void listenerNetWorkState() {
        NetInfoModule netInfoModule = this.mNetInfoModule;
        if (netInfoModule != null) {
            netInfoModule.onHostResume();
        }
    }

    public boolean needVishaVideoAuth() {
        return this.mVideoSourceType == 2;
    }

    public void netWorkErrorLogic() {
        if (NetworkUtils.isAvailable(getActivityContext())) {
            final long currentPositionWhenPlaying = getCurrentPositionWhenPlaying();
            LogUtils.j(TAG, "Net State Changed. renew player to connect releaseMediaPlayer");
            getGSYVideoManager().releaseMediaPlayer();
            postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$netWorkErrorLogic$0(currentPositionWhenPlaying);
                }
            }, 500L);
        }
    }

    public void onAdComplete(IMediaPlayer iMediaPlayer) {
    }

    public void onAdCountdown(IMediaPlayer iMediaPlayer, int i) {
    }

    public void onAdPrepared(IMediaPlayer iMediaPlayer) {
    }

    public void onAdStartPlaying(IMediaPlayer iMediaPlayer) {
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ensureInitCompleted();
    }

    @Override
    public void onAuthFailure(int i, String str) {
        h27.c().e(1000, Boolean.TRUE, Integer.valueOf(i));
        h27.c().e(1034, Integer.valueOf(i));
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onVideoAuthFailed(this.mUrl, new Object[0]);
        }
    }

    @Override
    public void onAuthSuccess() {
        preparePlayer();
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onVideoAuthSuccess(this.mUrl, new Object[0]);
        }
    }

    @Override
    public void onAuthVideoPreview(long j) {
    }

    public void onAuthorizeResult(String str, String str2, Object obj) {
    }

    public void onAutoCompletion() {
        setStateAndUi(6);
        this.mSaveChangeViewTIme = 0L;
        this.mCurrentPosition = 0L;
        releaseNetWorkState();
        if (this.mVideoAllCallBack == null || !isCurrentMediaListener()) {
            return;
        }
        Debuger.printfLog("onAutoComplete");
        this.mVideoAllCallBack.onAutoComplete(this.mOriginUrl, this.mTitle, this);
    }

    @Override
    public void onBackFullscreen() {
    }

    public void onBufferingUpdate(int i) {
    }

    @Override
    public void onCompletion() {
        setStateAndUi(0);
        this.mSaveChangeViewTIme = 0L;
        this.mCurrentPosition = 0L;
        ensureInflated();
        ViewGroup viewGroup = this.mTextureViewContainer;
        if (viewGroup != null && viewGroup.getChildCount() > 0) {
            this.mTextureViewContainer.removeAllViews();
        }
        if (!this.mIfCurrentIsFullscreen) {
            getGSYVideoManager().setListener(null);
            getGSYVideoManager().setLastListener(null);
        }
        getGSYVideoManager().setCurrentVideoHeight(0);
        getGSYVideoManager().setCurrentVideoWidth(0);
        Context context = this.mContext;
        if (context instanceof Activity) {
            try {
                ((Activity) context).getWindow().clearFlags(128);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        releaseNetWorkState();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        releaseNetWorkState();
    }

    public void onError(int i, int i2) {
        if (this.mNetChanged) {
            this.mNetChanged = false;
            netWorkErrorLogic();
            VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
            if (videoAllCallBack != null) {
                videoAllCallBack.onPlayError(this.mOriginUrl, this.mTitle, this);
                return;
            }
            return;
        }
        if (i == 38 || i == -38) {
            return;
        }
        this.mPlayerErrMsg = i + "";
        setStateAndUi(7);
        deleteCacheFileWhenError();
        VideoAllCallBack videoAllCallBack2 = this.mVideoAllCallBack;
        if (videoAllCallBack2 != null) {
            videoAllCallBack2.onPlayError(this.mOriginUrl, this.mTitle, this);
        }
    }

    @Override
    public void onInfo(int i, int i2) {
        if (i == 701) {
            this.mBackUpPlayingBufferState = this.mCurrentState;
            showLoadingView(true);
            VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
            if (videoAllCallBack != null) {
                videoAllCallBack.onBufferingUpdate(true, new Object[0]);
            }
            this.mbBuffering = true;
            return;
        }
        if (i == 702) {
            hideLoadingView();
            VideoAllCallBack videoAllCallBack2 = this.mVideoAllCallBack;
            if (videoAllCallBack2 != null) {
                videoAllCallBack2.onBufferingUpdate(false, new Object[0]);
            }
            this.mbBuffering = false;
            return;
        }
        if (i == getGSYVideoManager().getRotateInfoFlag()) {
            this.mRotate = i2;
            Debuger.printfLog("Video Rotate Info " + i2);
            GSYRenderProxy gSYRenderProxy = this.mTextureView;
            if (gSYRenderProxy != null) {
                gSYRenderProxy.setRotation(this.mRotate);
            }
        }
    }

    public void onNetworkStateChanged(String str) {
    }

    @Override
    public void onParseFailure(String str) {
        h27 h27VarC = h27.c();
        Boolean bool = Boolean.TRUE;
        Long lValueOf = Long.valueOf(PlayerError.TRANSSION_PLAYER_ERROR_PARSER_YOUTUBE_STREAM_FAILED);
        h27VarC.e(1000, bool, lValueOf);
        h27.c().e(1034, lValueOf);
    }

    @Override
    public void onParseSuccess(String str, StreamInfo streamInfo) {
        YoutubePlayData youtubePlayData = new YoutubePlayData();
        this.mYoutubePlayData = youtubePlayData;
        youtubePlayData.mVideoId = this.mUrl;
        youtubePlayData.mVideoUrl = str;
        youtubePlayData.mStreamInfo = streamInfo;
        VideoStream highResolutionVideoStream = YoutubePlayUtil.getHighResolutionVideoStream(streamInfo);
        this.mYoutubePlayData.mVideoStream = highResolutionVideoStream;
        this.mUrl = highResolutionVideoStream.getContent();
        Log.i(TAG, "[Youtube] youtube onParseSuccess: " + this.mUrl);
        GSYVideoManager.instance().setVideoDefinitions(YoutubePlayUtil.getStreamsDefinition(streamInfo, highResolutionVideoStream));
        preparePlayer();
    }

    @Override
    public void onPlayPayVideoNormalUser() {
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onVideoAuthFailed(this.mUrl, new Object[0]);
        }
        h27.c().e(1046, new Object[0]);
    }

    @Override
    public void onPlayPayVideoNotLogin() {
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onVideoAuthFailed(this.mUrl, new Object[0]);
        }
        h27.c().e(1046, new Object[0]);
    }

    public void onPlayerInitResult(IMediaPlayer iMediaPlayer, GSYModel gSYModel) {
    }

    public void onPrepared() {
        if (this.mCurrentState != 1) {
            return;
        }
        this.mHadPrepared = true;
        if (this.mVideoAllCallBack != null && isCurrentMediaListener()) {
            Debuger.printfLog("onPrepared");
            this.mVideoAllCallBack.onPrepared(this.mOriginUrl, this.mTitle, this);
        }
        if (this.mStartAfterPrepared) {
            startAfterPrepared();
        } else {
            setStateAndUi(5);
            onVideoPause();
        }
    }

    @Override
    public void onSeekComplete() {
        Debuger.printfLog("onSeekComplete");
    }

    public void onSetSubtitlesFailed(String str) {
    }

    public void onSetSubtitlesSuccess(String str) {
    }

    public void onSubtitlesAvailable(List<VideoSubtitle> list) {
    }

    @Override
    public void onUserAuthFailed() {
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null) {
            videoAllCallBack.onVideoAuthFailed(this.mUrl, new Object[0]);
        }
        h27.c().e(1046, new Object[0]);
    }

    @Override
    public void onVideoFirstFrameShow() {
        MarkPlayerAction.markPlayerFirstFrameShow(this.mVideoSourceType + "");
    }

    @Override
    public void onVideoPause() {
        LogUtils.j(TAG, "onVideoPause");
        if (this.mCurrentState == 1) {
            this.mPauseBeforePrepared = true;
        }
        try {
            if (getGSYVideoManager() == null || !getGSYVideoManager().isPlaying()) {
                return;
            }
            setStateAndUi(5);
            if (!isLive()) {
                this.mCurrentPosition = getGSYVideoManager().getCurrentPosition();
            }
            VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
            if (videoAllCallBack != null) {
                videoAllCallBack.onVideoPause(this.mUrl, new Object[0]);
            }
            if (getGSYVideoManager() != null) {
                getGSYVideoManager().pause();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onVideoReset() {
        setStateAndUi(0);
    }

    @Override
    public void onVideoResume() {
        onVideoResume(true);
    }

    @Override
    public void onVideoSizeChanged() {
        GSYRenderProxy gSYRenderProxy;
        int currentVideoWidth = getGSYVideoManager().getCurrentVideoWidth();
        int currentVideoHeight = getGSYVideoManager().getCurrentVideoHeight();
        if (currentVideoWidth == 0 || currentVideoHeight == 0 || (gSYRenderProxy = this.mTextureView) == null) {
            return;
        }
        gSYRenderProxy.requestLayout();
    }

    public void onVideoStart() {
    }

    public void prepareVideo() {
        startPrepare();
    }

    public void refreshBottomContainer() {
    }

    public void release() {
        this.mSaveChangeViewTIme = 0L;
        GSYVideoViewBridge gSYVideoManager = getGSYVideoManager();
        GSYMediaPlayerListener gSYMediaPlayerListenerListener = gSYVideoManager.listener();
        if (isCurrentMediaListener()) {
            releaseVideos();
        } else {
            if (gSYMediaPlayerListenerListener == null && isOrphanBackendOwner(gSYVideoManager)) {
                LogUtils.j(TAG, "Player: release orphan backend owner");
                gSYVideoManager.releaseMediaPlayer();
            }
            cleanupLocalPlayerState();
        }
        this.mContext = null;
    }

    public void releaseNetWorkState() {
        NetInfoModule netInfoModule = this.mNetInfoModule;
        if (netInfoModule != null) {
            netInfoModule.onHostPause();
            this.mNetInfoModule.setNetChangeListener(null);
            this.mNetInfoModule = null;
        }
    }

    @Override
    public void releasePauseCover() {
        Bitmap bitmap;
        try {
            if (this.mCurrentState == 5 || (bitmap = this.mFullPauseBitmap) == null || bitmap.isRecycled() || !this.mShowPauseCover) {
                return;
            }
            this.mFullPauseBitmap.recycle();
            this.mFullPauseBitmap = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void releaseSurface(Surface surface) {
        getGSYVideoManager().releaseSurface(surface);
    }

    public abstract void releaseVideos();

    public void seekTo(long j) {
        try {
            if (getGSYVideoManager() == null || j < 0 || isLive()) {
                return;
            }
            getGSYVideoManager().seekTo(j);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void setCustomRender(ViewGroup viewGroup) {
        getGSYVideoManager().setCustomRenderer(viewGroup);
    }

    @Override
    public void setDisplay(Surface surface) {
        getGSYVideoManager().setDisplay(surface);
    }

    public void setIfCurrentIsFullscreen(boolean z) {
        this.mIfCurrentIsFullscreen = z;
    }

    public void setLooping(boolean z) {
        this.mLooping = z;
    }

    public void setMapHeadData(Map<String, String> map) {
        if (map != null) {
            this.mMapHeadData = map;
        }
    }

    public void setOverrideExtension(String str) {
        this.mOverrideExtension = str;
    }

    public void setPlayPosition(int i) {
        this.mPlayPosition = i;
    }

    public void setPlayTag(String str) {
        this.mPlayTag = str;
    }

    public void setPlayType(PlayType playType) {
        LogUtils.j(TAG, "setPlayType: : " + playType);
        this.mPlayType = playType;
        PlayHandler.getInstance().mIsLiveShow = this.mPlayType == PlayType.PLAY_TYPE_LIVE;
    }

    public void setPlayerInitConfig(PlayerInitConfig playerInitConfig) {
        this.mPlayerInitConfig = playerInitConfig;
        PlayerServiceConfig.initConfigParameter(playerInitConfig);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0047  */
    public void setPlayerType(int i) {
        String str = TAG;
        LogUtils.j(str, "setPlayerType: sourceType: " + i);
        this.mPlayerType = PlayerType.NO_SUPPORT_PLAYER;
        this.mVideoSourceType = i;
        if (i == 1) {
            this.mPlayerType = PlayerType.MGTV_PLAYER;
            GSYVideoType.setRenderType(3);
            PlayerFactory.setPlayManager(MgtvPlayerManager.class);
        } else if (i == 2 || i == 4) {
            this.mPlayerType = PlayerType.ANDROID_MEDIA_PLAYER;
            GSYVideoType.setRenderType(0);
            GSYVideoType.enableMediaCodecTexture();
            PlayerFactory.setPlayManager(Exo2PlayerManager.class);
        } else if (i == 5) {
            this.mPlayerType = PlayerType.VK_PLAYER;
            GSYVideoType.setRenderType(3);
            PlayerFactory.setPlayManager(VkPlayerManager.class);
        } else if (i != 6) {
            LogUtils.m(str, "unsupported player type,please tell me you want use which player");
        } else {
            this.mPlayerType = PlayerType.ANDROID_MEDIA_PLAYER;
            GSYVideoType.setRenderType(0);
            GSYVideoType.enableMediaCodecTexture();
            PlayerFactory.setPlayManager(Exo2PlayerManager.class);
        }
        refreshBottomContainer();
    }

    public void setReleaseWhenLossAudio(boolean z) {
        this.mReleaseWhenLossAudio = z;
    }

    public void setSeekOnStart(long j) {
        this.mSeekOnStart = j;
    }

    public void setShowPauseCover(boolean z) {
        this.mShowPauseCover = z;
    }

    @Override
    public void setSmallVideoTextureView() {
    }

    public void setSpeed(float f) {
        setSpeed(f, false);
    }

    public void setSpeedPlaying(float f, boolean z) {
        setSpeed(f, z);
    }

    public void setStartAfterPrepared(boolean z) {
        this.mStartAfterPrepared = z;
        Log.d(TAG, "setStartAfterPrepared " + z);
    }

    public abstract void setStateAndUi(int i);

    public boolean setUp(String str, boolean z, String str2) {
        return setUp(str, z, null, str2);
    }

    public void setUserInfo(boolean z, String str, String str2, String str3, String str4, boolean z2) {
        PlayerInitConfig playerInitConfig = this.mPlayerInitConfig;
        if (playerInitConfig == null) {
            LogUtils.m(TAG, "set user info before must init player config");
            return;
        }
        playerInitConfig.setLoginState(z);
        this.mPlayerInitConfig.setUserToken(str);
        this.mPlayerInitConfig.setTokenType(str2);
        this.mPlayerInitConfig.setPalmToken(str3);
        this.mPlayerInitConfig.setOpenid(str4);
        this.mPlayerInitConfig.setVIP(z2);
        PlayerServiceConfig.initConfigParameter(this.mPlayerInitConfig);
    }

    public void setVideoAllCallBack(VideoAllCallBack videoAllCallBack) {
        this.mVideoAllCallBack = videoAllCallBack;
    }

    public abstract void showLoadingView(boolean z);

    @Override
    public void showPauseCover() {
        Bitmap bitmap;
        Surface surface;
        if (this.mCurrentState == 5 && (bitmap = this.mFullPauseBitmap) != null && !bitmap.isRecycled() && this.mShowPauseCover && (surface = this.mSurface) != null && surface.isValid() && getGSYVideoManager().isSurfaceSupportLockCanvas()) {
            try {
                RectF rectF = new RectF(0.0f, 0.0f, this.mTextureView.getWidth(), this.mTextureView.getHeight());
                Canvas canvasLockCanvas = this.mSurface.lockCanvas(new Rect(0, 0, this.mTextureView.getWidth(), this.mTextureView.getHeight()));
                if (canvasLockCanvas != null) {
                    canvasLockCanvas.drawBitmap(this.mFullPauseBitmap, (Rect) null, rectF, (Paint) null);
                    this.mSurface.unlockCanvasAndPost(canvasLockCanvas);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void startAfterPrepared() {
        ensureInitCompleted();
        LogUtils.j(TAG, "startAfterPrepared");
        if (!this.mHadPrepared) {
            prepareVideo();
        }
        addTextureView();
        createNetWorkState();
        listenerNetWorkState();
        try {
            if (getGSYVideoManager() != null) {
                getGSYVideoManager().start();
            }
            setStateAndUi(2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mHadPlay = true;
        GSYRenderProxy gSYRenderProxy = this.mTextureView;
        if (gSYRenderProxy != null) {
            gSYRenderProxy.onResume();
        }
        if (this.mPauseBeforePrepared) {
            onVideoPause();
            this.mPauseBeforePrepared = false;
        }
    }

    public void startButtonLogic() {
        ensureInitCompleted();
        wz5.N(PlayAudioData.TAG_NEED_PLAY);
        VideoAllCallBack videoAllCallBack = this.mVideoAllCallBack;
        if (videoAllCallBack != null && this.mCurrentState == 0) {
            Debuger.printfLog("onClickStartIcon");
            this.mVideoAllCallBack.onClickStartIcon(this.mOriginUrl, this.mTitle, this);
        } else if (videoAllCallBack != null) {
            Debuger.printfLog("onClickStartError");
            this.mVideoAllCallBack.onClickStartError(this.mOriginUrl, this.mTitle, this);
        }
        prepareVideo();
    }

    public abstract void startPlay();

    public void startPrepare() {
        ensureInitCompleted();
        String str = TAG;
        LogUtils.j(str, "Player: startPrepare");
        GSYVideoViewBridge gSYVideoManager = getGSYVideoManager();
        if (gSYVideoManager.listener() != null) {
            gSYVideoManager.listener().onCompletion();
        } else if (gSYVideoManager.getPlayer() != null) {
            LogUtils.j(str, "Player: startPrepare orphan backend release");
            gSYVideoManager.releaseMediaPlayer();
        }
        if (this.mVideoAllCallBack != null) {
            Debuger.printfLog("onStartPrepared");
            this.mVideoAllCallBack.onStartPrepared(this.mOriginUrl, this.mTitle, this);
        }
        getGSYVideoManager().setListener(this);
        getGSYVideoManager().setPlayTag(this.mPlayTag);
        getGSYVideoManager().setPlayPosition(this.mPlayPosition);
        try {
            Context context = this.mContext;
            if (context instanceof Activity) {
                ((Activity) context).getWindow().addFlags(128);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mBackUpPlayingBufferState = -1;
        setStateAndUi(1);
        playDispatch();
    }

    public abstract void stopPlay();

    public void unListenerNetWorkState() {
        NetInfoModule netInfoModule = this.mNetInfoModule;
        if (netInfoModule != null) {
            netInfoModule.onHostPause();
        }
    }

    public void updatePauseCover() {
        Bitmap bitmap = this.mFullPauseBitmap;
        if ((bitmap == null || bitmap.isRecycled()) && this.mShowPauseCover) {
            try {
                initCover();
            } catch (Exception e) {
                e.printStackTrace();
                this.mFullPauseBitmap = null;
            }
        }
    }

    public void onVideoResume(boolean z) {
        LogUtils.j(TAG, "onVideoResume");
        this.mPauseBeforePrepared = false;
        if (this.mCurrentState == 5) {
            try {
                if (this.mCurrentPosition < 0 || getGSYVideoManager() == null) {
                    return;
                }
                if (z) {
                    seekTo(this.mCurrentPosition);
                }
                getGSYVideoManager().start();
                setStateAndUi(2);
                this.mCurrentPosition = 0L;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setSpeed(float f, boolean z) {
        this.mSpeed = f;
        this.mSoundTouch = z;
        if (getGSYVideoManager() != null) {
            getGSYVideoManager().setSpeed(f, z);
        }
    }

    public boolean setUp(String str, long j, long j2, boolean z, String str2) {
        this.mVideoID = j;
        this.mSerialID = j2;
        this.mYoutubePlayData = null;
        return setUp(str, z, null, str2);
    }

    public boolean setUp(String str, long j, long j2, boolean z, String str2, boolean z2) {
        this.mVideoID = j;
        this.mSerialID = j2;
        return setUp(str, z, (File) null, str2, z2);
    }

    public boolean setUp(String str, boolean z, File file, Map<String, String> map, String str2) {
        if (!setUp(str, z, file, str2)) {
            return false;
        }
        Map<String, String> map2 = this.mMapHeadData;
        if (map2 != null) {
            map2.clear();
        } else {
            this.mMapHeadData = new HashMap();
        }
        if (map == null) {
            return true;
        }
        this.mMapHeadData.putAll(map);
        return true;
    }

    public boolean setUp(String str, boolean z, File file, String str2) {
        return setUp(str, z, file, str2, true);
    }

    public boolean setUp(String str, boolean z, File file, String str2, boolean z2) {
        this.mCache = z;
        this.mCachePath = file;
        this.mOriginUrl = str;
        this.mCurrentState = 0;
        this.mUrl = str;
        this.mTitle = str2;
        if (!z2 || PlayHandler.getInstance().mIsTaskAutoPlay) {
            return true;
        }
        setStateAndUi(0);
        return true;
    }

    public GSYVideoStateView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentState = -1;
        this.mPlayPosition = -22;
        this.mBackUpPlayingBufferState = -1;
        this.mSeekOnStart = -1L;
        this.mSaveChangeViewTIme = 0L;
        this.mSpeed = 1.0f;
        this.mCache = false;
        this.mIfCurrentIsFullscreen = false;
        this.mLooping = false;
        this.mHadPlay = false;
        this.mNetChanged = false;
        this.mSoundTouch = false;
        this.mShowPauseCover = false;
        this.mPauseBeforePrepared = false;
        this.mStartAfterPrepared = true;
        this.mHadPrepared = false;
        this.mReleaseWhenLossAudio = false;
        this.mPlayTag = "";
        this.mNetSate = "NORMAL";
        this.mMapHeadData = new HashMap();
        this.mbBuffering = false;
        this.mPlayerErrMsg = "";
        this.mMapPlayState = new HashMap<Integer, String>() {
            {
                put(0, "CURRENT_STATE_NORMAL");
                put(1, "CURRENT_STATE_PREPAREING");
                put(2, "CURRENT_STATE_PLAYING");
                put(3, "CURRENT_STATE_PLAYING_BUFFERING_START");
                put(5, "CURRENT_STATE_PAUSE");
                put(6, "CURRENT_STATE_AUTO_COMPLETE");
                put(7, "CURRENT_STATE_ERROR");
            }
        };
        performInit(context);
    }

    public GSYVideoStateView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        this.mCurrentState = -1;
        this.mPlayPosition = -22;
        this.mBackUpPlayingBufferState = -1;
        this.mSeekOnStart = -1L;
        this.mSaveChangeViewTIme = 0L;
        this.mSpeed = 1.0f;
        this.mCache = false;
        this.mIfCurrentIsFullscreen = false;
        this.mLooping = false;
        this.mHadPlay = false;
        this.mNetChanged = false;
        this.mSoundTouch = false;
        this.mShowPauseCover = false;
        this.mPauseBeforePrepared = false;
        this.mStartAfterPrepared = true;
        this.mHadPrepared = false;
        this.mReleaseWhenLossAudio = false;
        this.mPlayTag = "";
        this.mNetSate = "NORMAL";
        this.mMapHeadData = new HashMap();
        this.mbBuffering = false;
        this.mPlayerErrMsg = "";
        this.mMapPlayState = new HashMap<Integer, String>() {
            {
                put(0, "CURRENT_STATE_NORMAL");
                put(1, "CURRENT_STATE_PREPAREING");
                put(2, "CURRENT_STATE_PLAYING");
                put(3, "CURRENT_STATE_PLAYING_BUFFERING_START");
                put(5, "CURRENT_STATE_PAUSE");
                put(6, "CURRENT_STATE_AUTO_COMPLETE");
                put(7, "CURRENT_STATE_ERROR");
            }
        };
        performInit(context);
    }

    public GSYVideoStateView(Context context, Boolean bool) {
        super(context);
        this.mCurrentState = -1;
        this.mPlayPosition = -22;
        this.mBackUpPlayingBufferState = -1;
        this.mSeekOnStart = -1L;
        this.mSaveChangeViewTIme = 0L;
        this.mSpeed = 1.0f;
        this.mCache = false;
        this.mIfCurrentIsFullscreen = false;
        this.mLooping = false;
        this.mHadPlay = false;
        this.mNetChanged = false;
        this.mSoundTouch = false;
        this.mShowPauseCover = false;
        this.mPauseBeforePrepared = false;
        this.mStartAfterPrepared = true;
        this.mHadPrepared = false;
        this.mReleaseWhenLossAudio = false;
        this.mPlayTag = "";
        this.mNetSate = "NORMAL";
        this.mMapHeadData = new HashMap();
        this.mbBuffering = false;
        this.mPlayerErrMsg = "";
        this.mMapPlayState = new HashMap<Integer, String>() {
            {
                put(0, "CURRENT_STATE_NORMAL");
                put(1, "CURRENT_STATE_PREPAREING");
                put(2, "CURRENT_STATE_PLAYING");
                put(3, "CURRENT_STATE_PLAYING_BUFFERING_START");
                put(5, "CURRENT_STATE_PAUSE");
                put(6, "CURRENT_STATE_AUTO_COMPLETE");
                put(7, "CURRENT_STATE_ERROR");
            }
        };
        this.mIfCurrentIsFullscreen = bool.booleanValue();
        performInit(context);
    }
}
