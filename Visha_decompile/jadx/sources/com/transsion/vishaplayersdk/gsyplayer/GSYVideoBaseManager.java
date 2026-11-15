package com.transsion.vishaplayersdk.gsyplayer;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.rtsp.RtspMediaSource;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.audiofocus.AudioFocusManager;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import com.transsion.vishaplayersdk.gsyplayer.base.BasePlayerManager;
import com.transsion.vishaplayersdk.gsyplayer.base.IPlayerManager;
import com.transsion.vishaplayersdk.gsyplayer.base.IPlayerManagerListener;
import com.transsion.vishaplayersdk.gsyplayer.base.PlayerFactory;
import com.transsion.vishaplayersdk.gsyplayer.base.cache.ICacheManager;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoOptionModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoSubtitle;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYMediaPlayerListener;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import defpackage.h27;
import defpackage.se;
import defpackage.xz5;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

public abstract class GSYVideoBaseManager implements IMediaPlayer.OnPreparedListener, IMediaPlayer.OnCompletionListener, IMediaPlayer.OnBufferingUpdateListener, IMediaPlayer.OnSeekCompleteListener, IMediaPlayer.OnErrorListener, IMediaPlayer.OnVideoSizeChangedListener, IMediaPlayer.OnInfoListener, IMediaPlayer.OnSubtitlesListener, ICacheManager.ICacheAvailableListener, IPlayerManagerListener, IMediaPlayer.OnVideoFirstFrameShowListener, GSYVideoViewBridge {
    protected static final int BUFFER_TIME_OUT_ERROR = -192;
    protected static final int HANDLER_PREPARE = 0;
    protected static final int HANDLER_RELEASE = 2;
    protected static final int HANDLER_RELEASE_SURFACE = 3;
    protected static final int HANDLER_SETDISPLAY = 1;
    public static String TAG = "GSYVideoBaseManager";
    protected static final int TIME_OUT = 8000;
    protected AudioFocusManager mAudioFocusManager;
    protected int mBufferPoint;
    protected ICacheManager mCacheManager;
    protected Context mContext;
    protected WeakReference<GSYMediaPlayerListener> mLastListener;
    protected int mLastState;
    protected WeakReference<GSYMediaPlayerListener> mListener;
    protected Handler mMainThreadHandler;
    protected MediaHandler mMediaHandler;
    protected boolean mNeedTimeOutOther;
    protected List<VideoOptionModel> mOptionModelList;
    protected IPlayerManager mPlayerManager;
    protected List<VideoDefinition> mVideoDefinitions;
    protected String mPlayTag = "";
    protected int mCurrentVideoWidth = 0;
    protected int mCurrentVideoHeight = 0;
    protected int mPlayPosition = -22;
    protected volatile boolean mNeedMute = false;
    protected volatile boolean mHasUserMuteIntent = false;
    protected volatile boolean mUserWantsMute = false;
    protected volatile boolean mSystemTemporarilyMuted = false;
    protected volatile boolean mPageDefaultMute = false;
    protected volatile boolean mPauseOnAudioFocusLoss = false;
    private final Runnable mTimeOutRunnable = new Runnable() {
        @Override
        public void run() {
            if (GSYVideoBaseManager.this.mListener != null) {
                Debuger.printfError("time out for error listener");
                GSYVideoBaseManager.this.listener().onError(GSYVideoBaseManager.BUFFER_TIME_OUT_ERROR, GSYVideoBaseManager.BUFFER_TIME_OUT_ERROR);
            }
        }
    };
    protected final AudioManager.OnAudioFocusChangeListener mOnAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() {
        @Override
        public final void onAudioFocusChange(int i) {
            this.b.lambda$new$17(i);
        }
    };

    public class MediaHandler extends Handler {
        public MediaHandler(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 0) {
                GSYVideoBaseManager.this.initVideo(message);
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                GSYVideoBaseManager.this.releaseSurface(message);
                return;
            }
            IPlayerManager iPlayerManager = GSYVideoBaseManager.this.mPlayerManager;
            if (iPlayerManager != null) {
                iPlayerManager.release();
            }
            ICacheManager iCacheManager = GSYVideoBaseManager.this.mCacheManager;
            if (iCacheManager != null) {
                iCacheManager.release();
            }
            GSYVideoBaseManager gSYVideoBaseManager = GSYVideoBaseManager.this;
            gSYVideoBaseManager.mBufferPoint = 0;
            gSYVideoBaseManager.resetMuteState();
            GSYVideoBaseManager.this.cancelTimeOutBuffer();
        }
    }

    public void initVideo(Message message) {
        try {
            this.mCurrentVideoWidth = 0;
            this.mCurrentVideoHeight = 0;
            IPlayerManager iPlayerManager = this.mPlayerManager;
            if (iPlayerManager != null) {
                iPlayerManager.release();
            }
            this.mPlayerManager = getPlayManager();
            ICacheManager cacheManager = getCacheManager();
            this.mCacheManager = cacheManager;
            if (cacheManager != null) {
                cacheManager.setCacheAvailableListener(this);
            }
            IPlayerManager iPlayerManager2 = this.mPlayerManager;
            if (iPlayerManager2 instanceof BasePlayerManager) {
                iPlayerManager2.setPlayerManagerListener(this);
            }
            this.mPlayerManager.initVideoPlayer(this.mContext, message, this.mOptionModelList, this.mCacheManager);
            refreshMuteOutput();
            IMediaPlayer mediaPlayer = this.mPlayerManager.getMediaPlayer();
            mediaPlayer.setOnCompletionListener(this);
            mediaPlayer.setOnBufferingUpdateListener(this);
            mediaPlayer.setScreenOnWhilePlaying(true);
            mediaPlayer.setOnPreparedListener(this);
            mediaPlayer.setOnSeekCompleteListener(this);
            mediaPlayer.setOnErrorListener(this);
            mediaPlayer.setOnInfoListener(this);
            mediaPlayer.setOnVideoSizeChangedListener(this);
            mediaPlayer.prepareAsync();
            mediaPlayer.setOnSubtitlesListener(this);
            mediaPlayer.setOnVideoFirstFrameListener(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void lambda$new$16(int i) {
        if (i == -3) {
            onLossTransientCanDuck();
            return;
        }
        if (i == -2) {
            onLossTransientAudio();
            return;
        }
        if (i == -1) {
            if (!this.mPauseOnAudioFocusLoss) {
                setSystemTemporarilyMuted(true);
            }
            onLossAudio();
        } else {
            if (i != 1) {
                return;
            }
            setSystemTemporarilyMuted(false);
            onGankAudio();
        }
    }

    public void lambda$new$17(final int i) {
        Log.e(TAG, "onAudioFocusChange " + i);
        runOnMainThread(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$new$16(i);
            }
        });
    }

    public void lambda$onAdComplete$15(IMediaPlayer iMediaPlayer) {
        if (listener() != null) {
            listener().onAdComplete(iMediaPlayer);
        }
    }

    public void lambda$onAdCountdown$14(IMediaPlayer iMediaPlayer, int i) {
        if (listener() != null) {
            listener().onAdCountdown(iMediaPlayer, i);
        }
    }

    public void lambda$onAdPrepared$13(IMediaPlayer iMediaPlayer) {
        if (listener() != null) {
            listener().onAdPrepared(iMediaPlayer);
        }
    }

    public void lambda$onAdStartPlaying$12(IMediaPlayer iMediaPlayer) {
        if (listener() != null) {
            listener().onAdStartPlaying(iMediaPlayer);
        }
    }

    public void lambda$onAuthorizeResult$10(String str, String str2, Object obj) {
        if (listener() != null) {
            listener().onAuthorizeResult(str, str2, obj);
        }
    }

    public void lambda$onBufferingUpdate$2(int i) {
        if (listener() != null) {
            listener().onBufferingUpdate(Math.max(i, this.mBufferPoint));
        }
    }

    public void lambda$onCompletion$1() {
        cancelTimeOutBuffer();
        if (listener() != null) {
            listener().onAutoCompletion();
        }
    }

    public void lambda$onError$4(int i, int i2) {
        cancelTimeOutBuffer();
        if (listener() != null) {
            listener().onError(i, i2);
        }
    }

    public void lambda$onInfo$5(int i, int i2) {
        if (this.mNeedTimeOutOther) {
            if (i == 701) {
                startTimeOutBuffer();
            } else if (i == 702) {
                cancelTimeOutBuffer();
            }
        }
        if (listener() != null) {
            listener().onInfo(i, i2);
        }
    }

    public void lambda$onPlayerInitResult$11(IMediaPlayer iMediaPlayer, GSYModel gSYModel) {
        if (listener() != null) {
            listener().onPlayerInitResult(iMediaPlayer, gSYModel);
        }
    }

    public void lambda$onPrepared$0() {
        cancelTimeOutBuffer();
        if (listener() != null) {
            listener().onPrepared();
        }
    }

    public void lambda$onSeekComplete$3() {
        cancelTimeOutBuffer();
        if (listener() != null) {
            listener().onSeekComplete();
        }
    }

    public void lambda$onSetSubtitlesFailed$9(String str) {
        if (listener() != null) {
            listener().onSetSubtitlesFailed(str);
        }
    }

    public void lambda$onSetSubtitlesSuccess$8(String str) {
        if (listener() != null) {
            listener().onSetSubtitlesSuccess(str);
        }
    }

    public void lambda$onSubtitlesAvailable$7(List list) {
        if (listener() != null) {
            listener().onSubtitlesAvailable(list);
        }
    }

    public void lambda$onVideoSizeChanged$6() {
        if (listener() != null) {
            listener().onVideoSizeChanged();
        }
    }

    private void runOnMainThread(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
            return;
        }
        Handler handler = this.mMainThreadHandler;
        if (handler != null) {
            handler.post(runnable);
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    private void showCustomDisplay(Message message) {
        Log.i("GSYVideoManager", "showCustomDisplay: " + this.mPlayerManager);
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.setCustomRenderer(message);
        }
    }

    private void showDisplay(Message message) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.showDisplay(message);
        }
    }

    public void backToFront() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.backToFront();
        }
    }

    public void cancelTimeOutBuffer() {
        if (this.mNeedTimeOutOther) {
            this.mMainThreadHandler.removeCallbacks(this.mTimeOutRunnable);
        }
    }

    public void changeAreaLanguage(int i, boolean z) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.changeAreaLanguage(i, z);
        }
    }

    @Override
    public void clearCache(Context context, File file, String str) {
        clearDefaultCache(context, file, str);
    }

    public void clearDefaultCache(Context context, @Nullable File file, @Nullable String str) {
        ICacheManager iCacheManager = this.mCacheManager;
        if (iCacheManager != null) {
            iCacheManager.clearCache(context, file, str);
        } else if (getCacheManager() != null) {
            getCacheManager().clearCache(context, file, str);
        }
    }

    public void clearUserMuteIntent() {
        this.mHasUserMuteIntent = false;
        this.mUserWantsMute = false;
        refreshMuteOutput();
    }

    @Override
    public int getBufferedPercentage() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getBufferedPercentage();
        }
        return 0;
    }

    public ICacheManager getCacheManager() {
        return null;
    }

    @Override
    public long getCurrentPosition() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getCurrentPosition();
        }
        return 0L;
    }

    @Override
    public long getCurrentPositionInMainThread() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getCurrentPositionInMainThread();
        }
        return 0L;
    }

    public float getCurrentSpeed() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getCurrentSpeed();
        }
        return 0.0f;
    }

    @Override
    public int getCurrentVideoHeight() {
        return this.mCurrentVideoHeight;
    }

    @Override
    public int getCurrentVideoWidth() {
        return this.mCurrentVideoWidth;
    }

    @Override
    public long getDuration() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getDuration();
        }
        return 0L;
    }

    @Override
    public boolean getIsPausedByUser() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getIsPausedByUser();
        }
        return false;
    }

    @Override
    public int getLastState() {
        return this.mLastState;
    }

    @Override
    public long getNetSpeed() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getNetSpeed();
        }
        return 0L;
    }

    public IPlayerManager getPlayManager() {
        return PlayerFactory.getPlayManager();
    }

    @Override
    public int getPlayPosition() {
        return this.mPlayPosition;
    }

    @Override
    public String getPlayTag() {
        return this.mPlayTag;
    }

    @Override
    public IPlayerManager getPlayer() {
        return this.mPlayerManager;
    }

    @Override
    public int getRotateInfoFlag() {
        return 10001;
    }

    public List<VideoDefinition> getVideoDefinitions() {
        List<VideoDefinition> list = this.mVideoDefinitions;
        if (list != null && list.size() > 0) {
            return this.mVideoDefinitions;
        }
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getVideoDefinitions();
        }
        return null;
    }

    @Override
    public int getVideoHeight() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getVideoHeight();
        }
        return 0;
    }

    @Override
    public int getVideoSarDen() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getVideoSarDen();
        }
        return 0;
    }

    @Override
    public int getVideoSarNum() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getVideoSarNum();
        }
        return 0;
    }

    @Override
    public int getVideoWidth() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.getVideoWidth();
        }
        return 0;
    }

    public void gotoBackground() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.gotoBackground();
        }
    }

    public void init() {
        this.mMediaHandler = new MediaHandler(Looper.getMainLooper());
        this.mMainThreadHandler = new Handler();
        this.mAudioFocusManager = new AudioFocusManager(se.a(), this.mOnAudioFocusChangeListener);
    }

    public void initContext(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override
    public boolean isCacheFile() {
        ICacheManager iCacheManager = this.mCacheManager;
        return iCacheManager != null && iCacheManager.hadCached();
    }

    public boolean isNeedMute() {
        return this.mNeedMute;
    }

    @Override
    public boolean isPlaying() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isSurfaceSupportLockCanvas() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            return iPlayerManager.isSurfaceSupportLockCanvas();
        }
        return false;
    }

    @Override
    public GSYMediaPlayerListener lastListener() {
        WeakReference<GSYMediaPlayerListener> weakReference = this.mLastListener;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override
    public GSYMediaPlayerListener listener() {
        WeakReference<GSYMediaPlayerListener> weakReference = this.mListener;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void noticePlayViewMode(int i) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.noticePlayViewMode(i);
        }
    }

    public void onActivityStart(boolean z) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.onActivityStart(z);
        }
    }

    public void onActivityStop() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.onActivityStop();
        }
    }

    @Override
    public void onAdComplete(final IMediaPlayer iMediaPlayer) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onAdComplete$15(iMediaPlayer);
            }
        });
    }

    @Override
    public void onAdCountdown(final IMediaPlayer iMediaPlayer, final int i) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onAdCountdown$14(iMediaPlayer, i);
            }
        });
    }

    @Override
    public void onAdPrepared(final IMediaPlayer iMediaPlayer) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onAdPrepared$13(iMediaPlayer);
            }
        });
    }

    @Override
    public void onAdStartPlaying(final IMediaPlayer iMediaPlayer) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onAdStartPlaying$12(iMediaPlayer);
            }
        });
    }

    @Override
    public void onAuthorizeResult(final String str, final String str2, final Object obj) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onAuthorizeResult$10(str, str2, obj);
            }
        });
    }

    @Override
    public void onBufferingUpdate(IMediaPlayer iMediaPlayer, final int i) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onBufferingUpdate$2(i);
            }
        });
    }

    @Override
    public void onCacheAvailable(File file, String str, int i) {
        this.mBufferPoint = i;
    }

    @Override
    public void onCompletion(IMediaPlayer iMediaPlayer) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onCompletion$1();
            }
        });
    }

    @Override
    public boolean onError(IMediaPlayer iMediaPlayer, final int i, final int i2) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onError$4(i, i2);
            }
        });
        return true;
    }

    public void onGankAudio() {
    }

    @Override
    public boolean onInfo(IMediaPlayer iMediaPlayer, final int i, final int i2) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onInfo$5(i, i2);
            }
        });
        return false;
    }

    public void onLossAudio() {
    }

    public void onLossTransientAudio() {
    }

    public void onLossTransientCanDuck() {
    }

    @Override
    public void onPlayerInitResult(final IMediaPlayer iMediaPlayer, final GSYModel gSYModel) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onPlayerInitResult$11(iMediaPlayer, gSYModel);
            }
        });
    }

    @Override
    public void onPrepared(IMediaPlayer iMediaPlayer) {
        requestAudioFocusIfUnmuted("onPrepared");
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onPrepared$0();
            }
        });
        xz5.b();
    }

    @Override
    public void onSeekComplete(IMediaPlayer iMediaPlayer) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onSeekComplete$3();
            }
        });
    }

    @Override
    public void onSetSubtitlesFailed(IMediaPlayer iMediaPlayer, final String str) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onSetSubtitlesFailed$9(str);
            }
        });
    }

    @Override
    public void onSetSubtitlesSuccess(IMediaPlayer iMediaPlayer, final String str) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onSetSubtitlesSuccess$8(str);
            }
        });
    }

    @Override
    public void onSubtitlesAvailable(IMediaPlayer iMediaPlayer, final List<VideoSubtitle> list) {
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onSubtitlesAvailable$7(list);
            }
        });
    }

    @Override
    public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i, int i2, int i3, int i4) {
        this.mCurrentVideoWidth = iMediaPlayer.getVideoWidth();
        this.mCurrentVideoHeight = iMediaPlayer.getVideoHeight();
        this.mMainThreadHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onVideoSizeChanged$6();
            }
        });
    }

    @Override
    public void pause() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.pause();
        }
        xz5.d();
    }

    @Override
    public void prepare(String str, Map<String, String> map, boolean z, float f, boolean z2, File file, String str2, int i, boolean z3, PlayerInitConfig playerInitConfig) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Message message = new Message();
        message.what = 0;
        GSYModel gSYModel = new GSYModel(str, map, z, f, z2, file, str2, i);
        gSYModel.setHardwareAccelerated(z3);
        gSYModel.setInitConfig(playerInitConfig);
        message.obj = gSYModel;
        sendMessage(message);
        if (this.mNeedTimeOutOther) {
            startTimeOutBuffer();
        }
    }

    public void refreshMuteOutput() {
        this.mNeedMute = MuteStateResolver.resolveMute(this.mHasUserMuteIntent, this.mUserWantsMute, this.mSystemTemporarilyMuted, this.mPageDefaultMute);
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.setNeedMute(this.mNeedMute);
        }
    }

    @Override
    public void releaseMediaPlayer() {
        Message message = new Message();
        message.what = 2;
        sendMessage(message);
        this.mPlayTag = "";
        this.mPlayPosition = -22;
        List<VideoDefinition> list = this.mVideoDefinitions;
        if (list != null) {
            list.clear();
            this.mVideoDefinitions = null;
        }
    }

    @Override
    public void releaseSurface(Surface surface) {
        Message message = new Message();
        message.what = 3;
        message.obj = surface;
        sendMessage(message);
    }

    @Override
    public void replay() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.replay();
        }
    }

    public void requestAudioFocusIfUnmuted(String str) {
        if (this.mAudioFocusManager == null || isNeedMute()) {
            return;
        }
        LogUtils.P(TAG, str + " requestAudioFocus");
        this.mAudioFocusManager.requestAudioFocus();
    }

    public void resetMuteState() {
        this.mHasUserMuteIntent = false;
        this.mUserWantsMute = false;
        this.mSystemTemporarilyMuted = false;
        this.mPageDefaultMute = false;
        this.mPauseOnAudioFocusLoss = false;
        refreshMuteOutput();
    }

    @Override
    public void seekTo(long j) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.seekTo(j);
        }
    }

    public void sendMessage(Message message) {
        this.mMediaHandler.sendMessage(message);
    }

    public void setAspectRatio(int i) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.setAspectRatio(i);
        }
    }

    @Override
    public void setCurrentVideoHeight(int i) {
        this.mCurrentVideoHeight = i;
    }

    @Override
    public void setCurrentVideoWidth(int i) {
        this.mCurrentVideoWidth = i;
    }

    @Override
    public void setCustomRenderer(ViewGroup viewGroup) {
        Message message = new Message();
        message.what = 1;
        message.obj = viewGroup;
        showCustomDisplay(message);
    }

    @Override
    public void setDisplay(Surface surface) {
        Message message = new Message();
        message.what = 1;
        message.obj = surface;
        showDisplay(message);
    }

    @Override
    public void setFullScreen(boolean z) {
        try {
            IPlayerManager iPlayerManager = this.mPlayerManager;
            if (iPlayerManager != null) {
                iPlayerManager.setFullScreen(z);
            }
        } catch (IllegalStateException e) {
            Log.e(TAG, "IllegalStateException: " + e.getMessage());
        }
    }

    @Override
    public void setLastListener(GSYMediaPlayerListener gSYMediaPlayerListener) {
        if (gSYMediaPlayerListener == null) {
            this.mLastListener = null;
        } else {
            this.mLastListener = new WeakReference<>(gSYMediaPlayerListener);
        }
    }

    @Override
    public void setLastState(int i) {
        if (i != this.mLastState) {
            this.mLastState = i;
            h27.c().e(1076, Integer.valueOf(i));
            if (i == 2) {
                requestAudioFocusIfUnmuted("setLastState");
            }
        }
    }

    @Override
    public void setListener(GSYMediaPlayerListener gSYMediaPlayerListener) {
        if (gSYMediaPlayerListener == null) {
            this.mListener = null;
        } else {
            this.mListener = new WeakReference<>(gSYMediaPlayerListener);
        }
    }

    public void setNeedMute(boolean z) {
        this.mHasUserMuteIntent = true;
        this.mUserWantsMute = z;
        refreshMuteOutput();
    }

    public void setPageDefaultMute(boolean z) {
        this.mPageDefaultMute = z;
        refreshMuteOutput();
    }

    public void setPauseOnAudioFocusLoss(boolean z) {
        this.mPauseOnAudioFocusLoss = z;
        if (z) {
            return;
        }
        setSystemTemporarilyMuted(false);
    }

    @Override
    public void setPlayPosition(int i) {
        this.mPlayPosition = i;
    }

    @Override
    public void setPlayTag(String str) {
        this.mPlayTag = str;
    }

    @Override
    public void setSpeed(float f, boolean z) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.setSpeed(f, z);
        }
    }

    @Override
    public void setSubtitleBottomRatio(float f) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.setSubtitleBottomRatio(f);
        }
    }

    @Override
    public void setSubtitleSizeRatio(float f) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.setSubtitleSizeRatio(f);
        }
    }

    public void setSystemTemporarilyMuted(boolean z) {
        this.mSystemTemporarilyMuted = z;
        refreshMuteOutput();
    }

    @Override
    public void setUserAccountInfo(VishaAccountInfo vishaAccountInfo) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.setUserAccountInfo(vishaAccountInfo);
        }
    }

    @Override
    public void start() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.start();
        }
        requestAudioFocusIfUnmuted(TtmlNode.START);
        xz5.e();
    }

    public void startTimeOutBuffer() {
        Debuger.printfError("startTimeOutBuffer");
        this.mMainThreadHandler.postDelayed(this.mTimeOutRunnable, RtspMediaSource.DEFAULT_TIMEOUT_MS);
    }

    @Override
    public void stop() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.stop();
        }
    }

    public void switchResolution(int i) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.switchResolution(i);
        }
    }

    public void switchSubtitleSource(int i) {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.switchSubtitleSource(i);
        }
    }

    @Override
    public void togglePlay() {
        IPlayerManager iPlayerManager = this.mPlayerManager;
        if (iPlayerManager != null) {
            iPlayerManager.togglePlay();
        }
    }

    public void releaseSurface(Message message) {
        IPlayerManager iPlayerManager;
        if (message.obj == null || (iPlayerManager = this.mPlayerManager) == null) {
            return;
        }
        iPlayerManager.releaseSurface();
    }
}
