package com.mgtv.thirdsdk.playcore.view;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.hunantv.imgo.log.e;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.t;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.player.MgtvByteBufferPlayerDataSource;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.player.MgtvPlayerLogger;
import com.hunantv.media.player.helper.BuildHelper;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.hunantv.media.player.subtitle.SubtitleConfig;
import com.hunantv.media.player.subtitle.SubtitleSource;
import com.hunantv.media.recoder.GifRecorder;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.widget.ISubtitle;
import com.hunantv.media.widget.IVideoView;
import com.hunantv.media.widget.MgtvVideoView;
import com.mgtv.thirdsdk.playcore.a.a;
import com.mgtv.thirdsdk.playcore.a.b;
import com.mgtv.thirdsdk.playcore.callback.ImgoPlayerReportInterface;
import com.mgtv.thirdsdk.playcore.callback.PlayerListener;
import com.mgtv.thirdsdk.playcore.utils.ExTicker;
import com.mgtv.thirdsdk.playcore.utils.c;
import com.mgtv.thirdsdk.playcore.utils.d;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.greenrobot.greendao.generator.Schema;

public class ImgoPlayerView extends FrameLayout implements ImgoPlayerReportInterface {
    public static final int DISMISS_BUFFERING_LAYOUT = 14;
    public static final int DISPLAY_TYPE_DEFAULT = 0;
    public static final int DISPLAY_TYPE_FULL_SCREEN = 1;
    public static final int DISPLAY_TYPE_FULL_VIDEO = 0;
    public static final int EXTRA_NORMAL_BUFFER = 1;
    public static final int EXTRA_SEEK_BUFFER = 2;
    public static final int GET_BUFFER_NETSPEED = 15;
    public static final int INFO_EXTRA_BUFFER_FIRST_LOAD = 0;
    public static final String LOGMSG_PLAYER_CALLBACK = "PlayerCallBack";
    public static final int MAX_LIST_SIZE = 20;
    public static final int RENDER_TYPE_SURFACE = 0;
    public static final int RENDER_TYPE_TEXTURE = 1;
    public static final String TAG = "[ImgoPlayerView]";
    public static final String TAG_PLAYER_ADSDK = "adsdk";
    public a breakPoint;
    public b breakPointDao;
    private boolean changeDefinition;
    public Context context;
    public Handler handler;
    public boolean isBufferStart;
    private boolean isEnableQualityEnhance;
    public boolean isFirstPlay;
    public boolean isLive;
    public boolean isPlayOK;
    public boolean isPosPlay;
    public boolean mAccurateSeekEnable;
    public boolean mBeforeFirstFrame;
    public PlayerListener.OnBufferListener mBufferListener;
    public int mBufferTimeoutMs;
    public boolean mBuffering;
    public int mBufferingNum;
    public long mBufferingTime;
    public View mBufferingView;
    public IVideoView.OnChangeSourceListener mChangeSourceListener;
    public IVideoView.OnCompletionListener mCompletionListener;
    public com.mgtv.thirdsdk.playcore.utils.a mCpuMonitor;
    public int mCurrentDisplayType;
    public int mDataReceiveMillis;
    public int mDataSourceType;
    public List<Integer> mDownloadSpeedList;
    public long mErrorCostMs;
    public IVideoView.OnErrorListener mErrorListener;
    public String mErrorMsg;
    public IVideoView.OnEventInfoListener mEventInfoListener;
    public long mFirstFrameCostMs;
    public boolean mFirstPlay;
    public View mGestureView;
    public boolean mHandPause;
    public IVideoView.OnInfoListener mInfoListener;
    public int mJustLookDuration;
    public BufferTime mLastBufferTime;
    public com.mgtv.thirdsdk.playcore.b.b mNetStatusMonitor;
    public int mNetworkConnectMillis;
    public OnBufferingListener mOnBufferingListener;
    public PlayerListener.OnChangeSourceListener mOnChangeSourceListener;
    public PlayerListener.OnCompletionListener mOnCompletionListener;
    public PlayerListener.OnErrorListener mOnErrorListener;
    public PlayerListener.onEventInfoListener mOnEventInfoListener;
    public PlayerListener.OnInfoListener mOnInfoListener;
    public PlayerListener.OnPauseListener mOnPauseListener;
    public PlayerListener.OnPreparedListener mOnPreparedListener;
    public PlayerListener.OnSeekCompleteListener mOnSeekCompleteListener;
    public PlayerListener.OnStartListener mOnStartListener;
    public PlayerListener.OnSubtitleCallback mOnSubtitlesCallback;
    public PlayerListener.OnTickListener mOnTickListener;
    public PlayerListener.OnUpdateStatusListener mOnUpdateStatusListener;
    public PlayerListener.OnVideoSizeChangedListener mOnVideoSizeChangedListener;
    public PlayerListener.OnWarningListener mOnWarningListener;
    public IVideoView.OnPauseListener mPauseListener;
    public int mPerformanceTimes;
    public boolean mPlayBreakPoint;
    public ExTicker mPlayerTick;
    public IVideoView.OnPreparedListener mPreparedListener;
    public int mRenderType;
    public ReportParams mReportParams;
    public IVideoView.OnSeekCompleteListener mSeekCompleteListener;
    public int mSeekingNum;
    public long mSeekingTime;
    public long mStartBufferingTime;
    public IVideoView.OnStartListener mStartListener;
    public long mStartPlayTime;
    public ISubtitle.SubtitleCallback mSubTitleCallback;
    public IVideoView.SurfaceHolderListener mSurfaceHolderListener;
    public int mTargetDisplayType;
    public int mTotalCPUAdd;
    public int mTotalRSSAdd;
    public IVideoView.OnUpdateStatusListener mUpdateStatusListener;
    public IVideoView.OnVideoSizeChangedListener mVideoSizeChangedListener;
    public IVideoView mVideoView;
    public MgtvPlayerListener.OnWarningListener mWaringListener;
    public String playerTag;
    public boolean showBufferingView;
    public String videoId;
    public String videoPath;

    public static class BufferTime {
        public static final int TYPE_NORMAL = 0;
        public static final int TYPE_SEEK = 1;
        public long buffertime;
        public int type;
    }

    public static class BufferingInfo {
        public int buffering_num;
        public long buffering_time;
    }

    public static class InternalHandler extends Handler {
        WeakReference<ImgoPlayerView> wrObj;

        public InternalHandler(ImgoPlayerView imgoPlayerView) {
            this.wrObj = new WeakReference<>(imgoPlayerView);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<ImgoPlayerView> weakReference = this.wrObj;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            ImgoPlayerView imgoPlayerView = this.wrObj.get();
            int i = message.what;
            if (i == 14) {
                if (imgoPlayerView.mBuffering) {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(imgoPlayerView.context, R.anim.fade_in);
                    animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() {
                        @Override
                        public void onAnimationEnd(Animation animation) {
                            ImgoPlayerView imgoPlayerView2 = InternalHandler.this.wrObj.get();
                            if (imgoPlayerView2 != null) {
                                if (imgoPlayerView2.mBuffering) {
                                    imgoPlayerView2.mBufferingView.setVisibility(0);
                                } else {
                                    imgoPlayerView2.mBufferingView.startAnimation(AnimationUtils.loadAnimation(imgoPlayerView2.context, R.anim.fade_out));
                                }
                            }
                        }

                        @Override
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override
                        public void onAnimationStart(Animation animation) {
                        }
                    });
                    imgoPlayerView.mBufferingView.startAnimation(animationLoadAnimation);
                    return;
                }
                return;
            }
            if (i == 15 && imgoPlayerView.mBuffering) {
                PlayerListener.OnBufferListener onBufferListener = imgoPlayerView.mBufferListener;
                if (onBufferListener != null) {
                    IVideoView iVideoView = imgoPlayerView.mVideoView;
                    onBufferListener.onBuffering(iVideoView != null ? iVideoView.getDLSpeedB() : 0);
                }
                PlayerListener.OnBufferListener onBufferListener2 = imgoPlayerView.mBufferListener;
                if (onBufferListener2 != null) {
                    IVideoView iVideoView2 = imgoPlayerView.mVideoView;
                    onBufferListener2.onBufferUpdate(iVideoView2 != null ? String.valueOf(iVideoView2.getBufferingPercentage()) : "0");
                }
                imgoPlayerView.handler.sendEmptyMessageDelayed(15, 100L);
            }
        }
    }

    public interface OnBufferingListener {
        void onBuffering(String str);
    }

    public static class PerformanceInfo {
        public int RSS;
        public int cpuRatio;
        public int pos_play;
    }

    public static class SeekingInfo {
        public int seeking_num;
        public long seeking_time;
    }

    public static class StreamInfo {
        public int bitRate;
        public int fps;
        public int videoH;
        public int videoW;
    }

    public static class TimeCostInfo {
        public long error_cost_ms;
        public long first_frame_cost_ms;
    }

    static {
        MgtvPlayerLogger.setLogCallback(new MgtvPlayerLogger.OnLogCallback() {
            @Override
            public void onLogCb(int i, String str, String str2, String str3) {
                if (i == 0) {
                    e.a(str2, "(debug)" + str3, true);
                    return;
                }
                if (i == 1) {
                    e.b(str2, "(info)" + str3, true);
                    return;
                }
                if (i == 2) {
                    e.c(str2, "(warn)" + str3, true);
                    return;
                }
                if (i != 3) {
                    return;
                }
                e.d(str2, "(error)" + str3, true);
            }
        });
    }

    public ImgoPlayerView(Context context) {
        super(context);
        this.showBufferingView = true;
        this.handler = new InternalHandler(this);
        this.mBeforeFirstFrame = true;
        this.mLastBufferTime = new BufferTime();
        this.mErrorMsg = "";
        this.isBufferStart = false;
        this.mCurrentDisplayType = 0;
        this.mTargetDisplayType = 0;
        this.mCpuMonitor = new com.mgtv.thirdsdk.playcore.utils.a();
        this.mFirstPlay = true;
        this.mPlayBreakPoint = true;
        this.mVideoSizeChangedListener = new IVideoView.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i, int i2) {
                e.b(ImgoPlayerView.TAG, "onVideoSizeChanged: w:" + i + "; h:" + i2, true);
                PlayerListener.OnVideoSizeChangedListener onVideoSizeChangedListener = ImgoPlayerView.this.mOnVideoSizeChangedListener;
                if (onVideoSizeChangedListener != null) {
                    onVideoSizeChangedListener.onVideoSizeChanged(i, i2);
                }
            }
        };
        this.mUpdateStatusListener = new IVideoView.OnUpdateStatusListener() {
            @Override
            public void onUpdateStatus() {
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                PlayerListener.OnUpdateStatusListener onUpdateStatusListener = imgoPlayerView.mOnUpdateStatusListener;
                if (onUpdateStatusListener == null || imgoPlayerView.mVideoView == null) {
                    return;
                }
                onUpdateStatusListener.onUpdateStatus(imgoPlayerView.isPlaying(), ImgoPlayerView.this.mVideoView.isPrepared(), ImgoPlayerView.this.mVideoView.isCompletion());
            }
        };
        this.mPreparedListener = new IVideoView.OnPreparedListener() {
            @Override
            public void onPrepared() {
                a aVar;
                a aVar2;
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (imgoPlayerView.isFirstPlay) {
                    if (imgoPlayerView.mFirstPlay) {
                        imgoPlayerView.mFirstPlay = false;
                    }
                    if (c.i()) {
                        ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                        imgoPlayerView2.breakPoint = c.a(imgoPlayerView2.breakPointDao, imgoPlayerView2.videoId);
                    }
                    if (c.i() && (aVar2 = ImgoPlayerView.this.breakPoint) != null && aVar2.e() != 0) {
                        ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                        if (imgoPlayerView3.mPlayBreakPoint) {
                            ImgoPlayerView.this.seekTo(imgoPlayerView3.breakPoint.e());
                        }
                        ImgoPlayerView.this.isPosPlay = true;
                    } else if (ImgoPlayerView.this.changeDefinition) {
                        ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                        if (!imgoPlayerView4.isLive && imgoPlayerView4.mPlayBreakPoint && (aVar = imgoPlayerView4.breakPoint) != null) {
                            ImgoPlayerView.this.seekTo(aVar.e());
                        }
                    }
                    PlayerListener.OnPreparedListener onPreparedListener = ImgoPlayerView.this.mOnPreparedListener;
                    if (onPreparedListener != null) {
                        onPreparedListener.onPrepared();
                    }
                }
            }
        };
        this.mEventInfoListener = new IVideoView.OnEventInfoListener() {
            @Override
            public void onInfo(int i, int i2) {
                PlayerListener.onEventInfoListener oneventinfolistener = ImgoPlayerView.this.mOnEventInfoListener;
                if (oneventinfolistener != null) {
                    oneventinfolistener.onInfo(i, i2);
                }
            }
        };
        this.mStartListener = new IVideoView.OnStartListener() {
            @Override
            public void onStart() {
                ExTicker exTicker;
                ImgoPlayerView.this.mNetStatusMonitor.c();
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (!imgoPlayerView.isBufferStart && (exTicker = imgoPlayerView.mPlayerTick) != null) {
                    exTicker.c();
                }
                ImgoPlayerView.this.mCpuMonitor.b();
                PlayerListener.OnStartListener onStartListener = ImgoPlayerView.this.mOnStartListener;
                if (onStartListener != null) {
                    onStartListener.onStart();
                }
            }
        };
        this.mPauseListener = new IVideoView.OnPauseListener() {
            @Override
            public void onPause() {
                ImgoPlayerView.this.mNetStatusMonitor.a();
                ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                if (exTicker != null) {
                    exTicker.b();
                }
                ImgoPlayerView.this.mCpuMonitor.a();
                PlayerListener.OnPauseListener onPauseListener = ImgoPlayerView.this.mOnPauseListener;
                if (onPauseListener != null) {
                    onPauseListener.onPause();
                }
            }
        };
        this.mCompletionListener = new IVideoView.OnCompletionListener() {
            @Override
            public void onCompletion(int i, int i2) {
                ImgoPlayerView.this.onInnerCompletion(i, i2);
            }
        };
        this.mErrorListener = new IVideoView.OnErrorListener() {
            @Override
            public boolean onError(int i, int i2) {
                if (ImgoPlayerView.this.mVideoView != null) {
                    StringBuilder sb = new StringBuilder();
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    sb.append(imgoPlayerView.mErrorMsg);
                    sb.append("_ErrorUrl_");
                    sb.append(ImgoPlayerView.this.mVideoView.getErrorUrl());
                    sb.append("/n");
                    imgoPlayerView.mErrorMsg = sb.toString();
                }
                ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                if (imgoPlayerView2.mVideoView != null && imgoPlayerView2.isMgtvPlayer()) {
                    new DecimalFormat(".00");
                }
                ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                if (exTicker != null) {
                    exTicker.d();
                }
                ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                if (imgoPlayerView3.isPlayOK) {
                    try {
                        c.a(imgoPlayerView3.breakPointDao, imgoPlayerView3.videoId, imgoPlayerView3.videoPath, imgoPlayerView3.getCurrentPosition(), ImgoPlayerView.this.getDuration());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ImgoPlayerView.this.callbackError(i, i2);
                ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                imgoPlayerView4.mNetStatusMonitor.b(imgoPlayerView4.context);
                return true;
            }
        };
        this.mSeekCompleteListener = new IVideoView.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete() {
                ImgoPlayerView.this.getCurrentPosition();
                PlayerListener.OnSeekCompleteListener onSeekCompleteListener = ImgoPlayerView.this.mOnSeekCompleteListener;
                if (onSeekCompleteListener != null) {
                    onSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mInfoListener = new IVideoView.OnInfoListener() {
            @Override
            public boolean onInfo(int i, int i2) {
                if (i == 900) {
                    ImgoPlayerView.this.isPlayOK = true;
                }
                System.out.println("onInfo what = " + i);
                if (i == 701) {
                    e.b(ImgoPlayerView.this.getLogTag(), "start buffering:what" + i + "extra:" + i2, true);
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    imgoPlayerView.isBufferStart = true;
                    imgoPlayerView.mStartBufferingTime = System.currentTimeMillis();
                    ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                    if (exTicker != null) {
                        exTicker.b();
                    }
                    ImgoPlayerView.this.mCpuMonitor.a();
                    ImgoPlayerView.this.startBuffering(i2);
                } else if (i == 702) {
                    e.b(ImgoPlayerView.this.getLogTag(), "end buffering:what" + i + "extra:" + i2, true);
                    ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                    if (imgoPlayerView2.isBufferStart) {
                        if (imgoPlayerView2.mStartBufferingTime > 0) {
                            imgoPlayerView2.mLastBufferTime.buffertime = System.currentTimeMillis() - ImgoPlayerView.this.mStartBufferingTime;
                        } else {
                            imgoPlayerView2.mLastBufferTime.buffertime = 0L;
                        }
                        ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                        BufferTime bufferTime = imgoPlayerView3.mLastBufferTime;
                        bufferTime.type = 0;
                        if (i2 == 2) {
                            bufferTime.type = 1;
                            imgoPlayerView3.mSeekingNum++;
                            imgoPlayerView3.mSeekingTime += bufferTime.buffertime;
                        } else {
                            bufferTime.type = 0;
                            imgoPlayerView3.mBufferingNum++;
                            imgoPlayerView3.mBufferingTime += bufferTime.buffertime;
                        }
                        e.a(imgoPlayerView3.getLogTag(), "buffering cost(ms):" + ImgoPlayerView.this.mLastBufferTime.buffertime + ",type:" + i2, true);
                        e.a(ImgoPlayerView.this.getLogTag(), "buffering_end(ms) mBufferingNum:" + ImgoPlayerView.this.mBufferingNum + ",mBufferingTime:" + ImgoPlayerView.this.mBufferingTime, true);
                        e.a(ImgoPlayerView.this.getLogTag(), "buffering_end(ms) mSeekingTime:" + ImgoPlayerView.this.mSeekingNum + ",mSeekingTime:" + ImgoPlayerView.this.mSeekingTime, true);
                        PlayerListener.OnBufferListener onBufferListener = ImgoPlayerView.this.mBufferListener;
                        if (onBufferListener != null) {
                            onBufferListener.onBufferUpdate("100");
                        }
                        ImgoPlayerView.this.isBufferStart = false;
                    }
                    ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                    if (imgoPlayerView4.mPlayerTick != null && imgoPlayerView4.isPlaying()) {
                        ImgoPlayerView.this.mPlayerTick.c();
                    }
                    ImgoPlayerView.this.mCpuMonitor.b();
                    ImgoPlayerView.this.endBuffering(i2);
                } else {
                    if (i == 900) {
                        ImgoPlayerView imgoPlayerView5 = ImgoPlayerView.this;
                        if (imgoPlayerView5.mBeforeFirstFrame) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            ImgoPlayerView imgoPlayerView6 = ImgoPlayerView.this;
                            imgoPlayerView5.mFirstFrameCostMs = jCurrentTimeMillis - imgoPlayerView6.mStartPlayTime;
                            imgoPlayerView6.mBeforeFirstFrame = false;
                            e.a(imgoPlayerView6.getLogTag(), "MEDIA_INFO_RENDERING_START cost(ms):" + ImgoPlayerView.this.mFirstFrameCostMs, true);
                        }
                        ImgoPlayerView imgoPlayerView7 = ImgoPlayerView.this;
                        if (imgoPlayerView7.isFirstPlay) {
                            ExTicker exTicker2 = imgoPlayerView7.mPlayerTick;
                            if (exTicker2 != null) {
                                exTicker2.a();
                            }
                            PlayerListener.OnInfoListener onInfoListener = ImgoPlayerView.this.mOnInfoListener;
                            if (onInfoListener != null) {
                                onInfoListener.onInfo(i, i2);
                            }
                            ImgoPlayerView imgoPlayerView8 = ImgoPlayerView.this;
                            IVideoView iVideoView = imgoPlayerView8.mVideoView;
                            imgoPlayerView8.isFirstPlay = false;
                        }
                        return true;
                    }
                    if (i == 2803) {
                        ImgoPlayerView.this.mDataSourceType = i2;
                    } else if (i == 700001) {
                        try {
                            List<Integer> list = ImgoPlayerView.this.mDownloadSpeedList;
                            if (list != null) {
                                if (list.size() >= 20) {
                                    ImgoPlayerView.this.mDownloadSpeedList.remove(0);
                                }
                                ImgoPlayerView.this.mDownloadSpeedList.add(Integer.valueOf(i2));
                            }
                        } catch (Exception unused) {
                        }
                        return true;
                    }
                }
                PlayerListener.OnInfoListener onInfoListener2 = ImgoPlayerView.this.mOnInfoListener;
                if (onInfoListener2 != null) {
                    onInfoListener2.onInfo(i, i2);
                }
                return true;
            }
        };
        this.mWaringListener = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i, int i2) {
                PlayerListener.OnWarningListener onWarningListener;
                if (ImgoPlayerView.this.isBeforeFirstFrame() || (onWarningListener = ImgoPlayerView.this.mOnWarningListener) == null) {
                    return;
                }
                onWarningListener.onTsSkip(str, i, i2);
            }

            @Override
            public void onWarning(int i, String str, String str2, Object obj) {
                PlayerListener.OnWarningListener onWarningListener = ImgoPlayerView.this.mOnWarningListener;
                if (onWarningListener != null) {
                    onWarningListener.onWarning(i, str, str2);
                }
            }
        };
        this.mSurfaceHolderListener = new IVideoView.SurfaceHolderListener() {
            @Override
            public void surfaceChanged() {
                System.out.println("mSurfaceHolderListener surfaceChanged ");
            }

            @Override
            public void surfaceCreated() {
                System.out.println("mSurfaceHolderListener surfaceCreated ");
            }

            @Override
            public void surfaceDestroyed() {
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (imgoPlayerView.isPlayOK && !imgoPlayerView.mVideoView.isCompletion()) {
                    ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                    c.a(imgoPlayerView2.breakPointDao, imgoPlayerView2.videoId, imgoPlayerView2.videoPath, imgoPlayerView2.getCurrentPosition(), ImgoPlayerView.this.getDuration());
                }
                System.out.println("mSurfaceHolderListener surfaceDestroyed ");
            }
        };
        this.mChangeSourceListener = new IVideoView.OnChangeSourceListener() {
            @Override
            public void onChangeSourceFailed(String str, int i, int i2) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceFailed(str, i, i2);
                }
            }

            @Override
            public void onChangeSourceInfo(String str, int i, int i2) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceInfo(str, i, i2);
                }
            }

            @Override
            public void onChangeSourceSuccess(String str, int i, int i2) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceSuccess(str, i, i2);
                }
            }
        };
        this.playerTag = Schema.DEFAULT_NAME;
        this.mSubTitleCallback = new ISubtitle.SubtitleCallback() {
            @Override
            public void onError(SubtitleSource subtitleSource) {
                PlayerListener.OnSubtitleCallback onSubtitleCallback = ImgoPlayerView.this.mOnSubtitlesCallback;
                if (onSubtitleCallback != null) {
                    onSubtitleCallback.onError(subtitleSource);
                }
            }

            @Override
            public void onSuccess(SubtitleSource subtitleSource) {
                PlayerListener.OnSubtitleCallback onSubtitleCallback = ImgoPlayerView.this.mOnSubtitlesCallback;
                if (onSubtitleCallback != null) {
                    onSubtitleCallback.onSuccess(subtitleSource);
                }
            }
        };
        initContent(context, 0, true);
    }

    public static String getH264Decoder() {
        try {
            return BuildHelper.isApi16_JellyBeanOrLater() ? MediaCodecHelp.getH264Decoder() : "unknown";
        } catch (Exception unused) {
            return "unknown";
        }
    }

    public static String getVersion() {
        return MgtvVideoView.getVersion();
    }

    private void setSubtitlesConfig() {
        SubtitleConfig subtitleConfig = new SubtitleConfig();
        subtitleConfig.setBackgroundColor(2130706432);
        subtitleConfig.setPaddingBottomRatio(c.m());
        subtitleConfig.setTextSizeRatio(c.n());
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setSubtitleConfig(subtitleConfig);
        }
    }

    public void attachVideoView(int i) {
        Object obj = this.mVideoView;
        if (obj != null) {
            d.a(this, (View) obj);
        }
        if (!isTextureViewValid()) {
            i = 0;
        }
        if (this.isEnableQualityEnhance) {
            this.mVideoView = new MgtvVideoView(this.context, i, true, true);
        } else {
            this.mVideoView = new MgtvVideoView(this.context, i);
        }
        this.mRenderType = i;
        e.b(TAG, "mRenderType:" + this.mRenderType, true);
        if (c.i()) {
            this.breakPointDao = c.a(this.context);
        }
        this.mVideoView.setOnCompletionListener(this.mCompletionListener);
        this.mVideoView.setOnPreparedListener(this.mPreparedListener);
        this.mVideoView.setOnStartListener(this.mStartListener);
        this.mVideoView.setOnPauseListener(this.mPauseListener);
        this.mVideoView.setOnSeekCompleteListener(this.mSeekCompleteListener);
        this.mVideoView.setSurfaceHolderListener(this.mSurfaceHolderListener);
        this.mVideoView.setOnInfoListener(this.mInfoListener);
        this.mVideoView.setOnErrorListener(this.mErrorListener);
        this.mVideoView.setOnWarningListener(this.mWaringListener);
        this.mVideoView.setOnChangeSourceListener(this.mChangeSourceListener);
        this.mVideoView.setOnUpdateStatusListener(this.mUpdateStatusListener);
        this.mVideoView.setOnEventInfoListener(this.mEventInfoListener);
        setLastFrameRecovery(false);
        this.mVideoView.setOnVideoSizeChangedListener(this.mVideoSizeChangedListener);
        this.mVideoView.setDisableAudioFocus(true);
        d.a(this, (View) this.mVideoView, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public void callbackError(int i, int i2) {
        this.mErrorCostMs = System.currentTimeMillis() - this.mStartPlayTime;
        PlayerListener.OnErrorListener onErrorListener = this.mOnErrorListener;
        if (onErrorListener != null) {
            onErrorListener.onError(i, i2);
        }
    }

    public void changeSourceAsync(String str, int i, int i2, int i3) {
        if (this.mVideoView == null || !isMgtvPlayer()) {
            return;
        }
        if (supportChangeSourceAsync() && c.f(str)) {
            this.mVideoView.changeSourceAsync(str, i, i2, i3);
            return;
        }
        PlayerListener.OnChangeSourceListener onChangeSourceListener = this.mOnChangeSourceListener;
        if (onChangeSourceListener != null) {
            onChangeSourceListener.onChangeSourceFailed(str, 7000013, 0);
        }
        openImgoSourceModule(false);
    }

    public void cleanUp() {
        this.mCpuMonitor.c();
        this.mFirstPlay = true;
        this.isBufferStart = false;
        e.b(getLogTag(), "cleanup", true);
        endBuffering(1);
        ExTicker exTicker = this.mPlayerTick;
        if (exTicker != null) {
            exTicker.d();
        }
        View view = this.mBufferingView;
        if (view != null) {
            view.clearAnimation();
        }
        List<Integer> list = this.mDownloadSpeedList;
        if (list != null) {
            list.clear();
            this.mDownloadSpeedList = null;
        }
        try {
            this.mVideoView.release();
            this.mVideoView.reset();
            b bVar = this.breakPointDao;
            if (bVar != null) {
                bVar.a();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mNetStatusMonitor.b(this.context);
    }

    public void configLoadMaxRetryTime(int i) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.configLoadMaxRetryTime(i);
        }
    }

    public void configTsNotSkip(boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.configTsNotSkip(z);
        }
    }

    public void configWeakNetSpeed(int i) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.configWeakNetSpeed(i);
        }
    }

    public void doubleClick() {
        if (this.mVideoView.isPrepared()) {
            if (isPlaying()) {
                pause();
                e.b(TAG, "doubleClick():pause", true);
            } else {
                play();
                e.b(TAG, "doubleClick():play", true);
            }
        }
    }

    public void endBuffering(int i) {
        if (this.mBuffering) {
            PlayerListener.OnBufferListener onBufferListener = this.mBufferListener;
            if (onBufferListener != null) {
                onBufferListener.onEndBuffer(i);
            }
            hideBufferingView();
        }
    }

    public void exPause() {
        e.b(TAG, "exPause", true);
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.pause();
            if (isMgtvPlayer()) {
                if (this.mVideoView.isPrepared()) {
                    this.mVideoView.pauseLoadData();
                } else {
                    this.mVideoView.release();
                }
            }
        }
    }

    @Override
    public BufferingInfo getBufferingInfo() {
        BufferingInfo bufferingInfo = new BufferingInfo();
        bufferingInfo.buffering_num = this.mBufferingNum;
        bufferingInfo.buffering_time = this.mBufferingTime;
        return bufferingInfo;
    }

    @Override
    public int getCurrentPosition() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.getCurrentPosition();
        }
        return 0;
    }

    @Override
    public int getDataSourceType() {
        return this.mDataSourceType;
    }

    @Override
    public int getDuration() {
        int i = this.mJustLookDuration;
        if (i > 0) {
            return i;
        }
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.getDuration();
        }
        return 0;
    }

    @Override
    public String getErrorMsg() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView == null) {
            return this.mErrorMsg;
        }
        String errorMsg = iVideoView.getErrorMsg();
        this.mErrorMsg = errorMsg;
        return errorMsg;
    }

    public GifRecorder getGifRecorder() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.getGifRecorder();
        }
        return null;
    }

    public boolean getIsChangeDefinition() {
        return this.changeDefinition;
    }

    @Override
    public BufferTime getLastBufferTime() {
        return this.mLastBufferTime;
    }

    public long getLoadingSpeed() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.getDLSpeedB();
        }
        return 0L;
    }

    public String getLogTag() {
        if (this.mVideoView == null) {
            return TAG;
        }
        return "[" + this.mVideoView.getLogTagKey() + "]" + TAG;
    }

    public int getMemoryPlayType() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.getMemoryPlayType();
        }
        return 0;
    }

    @Override
    public PerformanceInfo getPerformanceInfo() {
        PerformanceInfo performanceInfo = new PerformanceInfo();
        int i = this.mPerformanceTimes;
        if (i != 0) {
            performanceInfo.cpuRatio = this.mTotalCPUAdd / i;
            performanceInfo.RSS = this.mTotalRSSAdd / i;
        }
        if (this.isPosPlay) {
            performanceInfo.pos_play = 1;
        } else {
            performanceInfo.pos_play = 0;
        }
        return performanceInfo;
    }

    public MgtvMediaPlayer.PlayerExtraInfo getPlayerExtraInfo() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.getPlayerExtraInfo();
        }
        return null;
    }

    @Override
    public String getPlayerVersion() {
        IVideoView iVideoView = this.mVideoView;
        return iVideoView != null ? iVideoView.getPlayerVersion() : Schema.DEFAULT_NAME;
    }

    public int getRealDuration() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.getDuration();
        }
        return 0;
    }

    public float getRecentDownloadSpeed() {
        List<Integer> list = this.mDownloadSpeedList;
        if (list != null && list.size() > 0) {
            try {
                LinkedList linkedList = new LinkedList(this.mDownloadSpeedList);
                Iterator it = linkedList.iterator();
                long jIntValue = 0;
                while (it.hasNext()) {
                    jIntValue += (long) ((Integer) it.next()).intValue();
                }
                return jIntValue / (linkedList.size() * 1000);
            } catch (Exception unused) {
            }
        }
        return 0.0f;
    }

    @Override
    public int getRenderType() {
        return this.mRenderType != 1 ? 0 : 1;
    }

    @Override
    public ReportParams getReportParams() {
        return this.mReportParams;
    }

    @Override
    public SeekingInfo getSeekingInfo() {
        SeekingInfo seekingInfo = new SeekingInfo();
        seekingInfo.seeking_num = this.mSeekingNum;
        seekingInfo.seeking_time = this.mSeekingTime;
        return seekingInfo;
    }

    public Bitmap getSnapshot(int i, int i2) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView == null || !iVideoView.isSupportedSnapshot()) {
            return null;
        }
        return this.mVideoView.getSnapshot(i, i2);
    }

    @Override
    public StreamInfo getStreamInfo() {
        StreamInfo streamInfo = new StreamInfo();
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView == null) {
            return streamInfo;
        }
        streamInfo.videoW = iVideoView.getVideoWidth();
        streamInfo.videoH = this.mVideoView.getVideoHeight();
        streamInfo.bitRate = this.mVideoView.getBitRate();
        streamInfo.fps = this.mVideoView.getFPS();
        return streamInfo;
    }

    @Override
    public TimeCostInfo getTimeCostInfo() {
        TimeCostInfo timeCostInfo = new TimeCostInfo();
        timeCostInfo.first_frame_cost_ms = this.mFirstFrameCostMs;
        timeCostInfo.error_cost_ms = this.mErrorCostMs;
        return timeCostInfo;
    }

    public int getTotalBuffering() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return (iVideoView.getTotalBuffering() * this.mVideoView.getDuration()) / 100;
        }
        return 0;
    }

    public int getVideoHeight() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.getRenderView() != null ? this.mVideoView.getRenderView().getHeight() : this.mVideoView.getVideoHeight();
        }
        return 0;
    }

    public String getVideoId() {
        return this.videoId;
    }

    public int getVideoWidth() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.getRenderView() != null ? this.mVideoView.getRenderView().getWidth() : this.mVideoView.getVideoWidth();
        }
        return 0;
    }

    public void hideBufferingView() {
        this.handler.removeMessages(14);
        View view = this.mBufferingView;
        if (view != null && view.getVisibility() == 0 && this.mBuffering) {
            this.mBufferingView.startAnimation(AnimationUtils.loadAnimation(this.context, R.anim.fade_out));
            this.mBufferingView.setVisibility(4);
        }
        this.mBuffering = false;
    }

    public void initContent(Context context, int i, boolean z) {
        if ((context instanceof Activity) && i == 1) {
            t.a((Activity) context);
        }
        this.context = context;
        if (isInEditMode()) {
            return;
        }
        attachVideoView(i);
        this.mNetStatusMonitor = new com.mgtv.thirdsdk.playcore.b.b();
        initGlobalLayoutListener();
    }

    public void initGlobalLayoutListener() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public void onGlobalLayout() {
                PlayerListener.OnWarningListener onWarningListener;
                PlayerListener.OnWarningListener onWarningListener2;
                if (!PreferencesUtil.b("pref_player_hardware_render_open", true) && ImgoPlayerView.this.isHardwareAccelerated() && (onWarningListener2 = ImgoPlayerView.this.mOnWarningListener) != null) {
                    onWarningListener2.onWarning(PlayerListener.MEDIA_WARNING_UNSUPPORT_HW_RENDER_FAILED_THEN_SUCCESS, "0", "");
                }
                if (!ImgoPlayerView.this.isHardwareAccelerated()) {
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    if (imgoPlayerView.mRenderType == 1 && imgoPlayerView.isTextureViewValid()) {
                        IVideoView iVideoView = ImgoPlayerView.this.mVideoView;
                        if (iVideoView != null) {
                            iVideoView.stop();
                        }
                        ImgoPlayerView.this.attachVideoView(0);
                    }
                }
                PreferencesUtil.a("pref_player_hardware_render_open", ImgoPlayerView.this.isHardwareAccelerated());
                if (!ImgoPlayerView.this.isHardwareAccelerated() && !PreferencesUtil.b("pref_player_hardware_render_unsupport_reported", false) && (onWarningListener = ImgoPlayerView.this.mOnWarningListener) != null) {
                    onWarningListener.onWarning(80000002, "0", "");
                    PreferencesUtil.a("pref_player_hardware_render_unsupport_reported", true);
                }
                e.b(ImgoPlayerView.this.getLogTag(), "onGlobalLayout PREF_PLAYER_HARDWARE_RENDER_OPEN:" + PreferencesUtil.b("pref_player_hardware_render_open", true), true);
                ImgoPlayerView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        });
    }

    @Override
    public boolean isAccurateSeekEnable() {
        return this.mAccurateSeekEnable;
    }

    @Override
    public boolean isBeforeFirstFrame() {
        return this.mBeforeFirstFrame;
    }

    @Override
    public boolean isCompletion() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.isCompletion();
        }
        return true;
    }

    public boolean isDataLoaderPaused() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.isDataLoadPaused();
        }
        return false;
    }

    @Override
    public boolean isHardware() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.isHardware();
        }
        return true;
    }

    @Override
    public boolean isImgoSourceModuleOpen() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.isImgoSourceModuleOpen();
        }
        return false;
    }

    public boolean isMgtvPlayer() {
        return true;
    }

    public boolean isPlaying() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.isPlaying();
        }
        return false;
    }

    public boolean isSupport3X() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.support3X();
        }
        return false;
    }

    public boolean isSupportedSnapshot() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            return iVideoView.isSupportedSnapshot();
        }
        return false;
    }

    public boolean isTextureViewValid() {
        return PreferencesUtil.b("pref_player_hardware_render_open", true);
    }

    public void netMonitorNotPause() {
        com.mgtv.thirdsdk.playcore.b.b bVar = this.mNetStatusMonitor;
        if (bVar != null) {
            bVar.b();
        }
    }

    public void onInnerCompletion(int i, int i2) {
        if (i == 0) {
            removeRecordPoint();
        }
        ExTicker exTicker = this.mPlayerTick;
        if (exTicker != null) {
            exTicker.d();
        }
        this.breakPoint = null;
        PlayerListener.OnCompletionListener onCompletionListener = this.mOnCompletionListener;
        if (onCompletionListener != null) {
            onCompletionListener.onCompletion(i, i2);
        }
        this.mNetStatusMonitor.b(this.context);
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null && iVideoView.isPrepared() && i != 4 && i != 24 && i != 25 && i != 82 && i != 5 && i != 6) {
            if (i == 79 || i == 85) {
                if (isPlaying()) {
                    pause();
                    e.b(TAG, "onKeyDown():pause", true);
                } else {
                    play();
                    e.b(TAG, "onKeyDown():play", true);
                }
                return true;
            }
            if (i == 86 && isPlaying()) {
                pause();
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    public void openImgoSourceModule(boolean z) {
        if (z) {
            this.mDataSourceType = 1;
        } else {
            this.mDataSourceType = 0;
        }
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.openImgoDSModule(z);
        }
    }

    public void pause() {
        this.mHandPause = true;
        System.out.println("mPlayerControl pause2  ");
        pauseInner();
        e.b(TAG, "pause()", true);
    }

    public void pauseInner() {
        System.out.println("mPlayerControl pauseInner  " + this.mVideoView);
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.pause();
        }
        e.b(TAG, "pauseInner()", true);
    }

    public void pauseLoadData() {
        if (this.mVideoView == null || !isMgtvPlayer()) {
            return;
        }
        if (this.mVideoView.isPrepared()) {
            this.mVideoView.pauseLoadData();
        } else {
            this.mVideoView.release();
        }
    }

    public void play() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.start();
        }
        this.mHandPause = false;
        e.b(TAG, "play()", true);
    }

    public void reBindTexture() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.reBindTexture();
        }
    }

    public void release() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.release();
        }
    }

    public void removeRecordPoint() {
        String str;
        if (this.breakPointDao == null || (str = this.videoId) == null || str.trim().equals("")) {
            return;
        }
        e.b(getLogTag(), "saveRecordPoint videoId:" + this.videoId, true);
        c.a(getContext(), this.videoId);
    }

    public void removeSubtitle() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.removeSubtitleSource();
            this.mVideoView.enableSubtitle(false);
        }
    }

    public void reset(boolean z) {
        reset(z, false);
        e.b(TAG, "reset(" + z + ")", true);
    }

    public void saveBreakPoint() {
        String str;
        if (getCurrentPosition() == 0 || !this.mPlayBreakPoint || this.mVideoView == null || (str = this.videoId) == null || str.trim().equals("") || this.mVideoView.isCompletion()) {
            return;
        }
        e.b(getLogTag(), "saveBreakPoint videoId:" + this.videoId, true);
        c.a(this.breakPointDao, this.videoId, this.videoPath, getCurrentPosition(), getDuration());
    }

    public void seekTo(int i) {
        if (i < 0) {
            return;
        }
        e.b(TAG, "mJustLookDuration:" + this.mJustLookDuration + "   realDuration:" + getRealDuration() + "    position:" + i, true);
        if (this.mJustLookDuration > 0 && i >= getRealDuration()) {
            stop();
            onInnerCompletion(0, 0);
        } else {
            IVideoView iVideoView = this.mVideoView;
            if (iVideoView != null) {
                iVideoView.seekTo(i);
            }
        }
    }

    public void setAccurateSeekEnable(boolean z) {
        this.mAccurateSeekEnable = z;
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setAccurateSeekEnable(z);
        }
    }

    public void setAspectRatio(int i) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setAspectRatio(i);
        }
    }

    public void setBackgroundStatus(boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setBackground(z);
        }
    }

    public void setBufferStatus(boolean z) {
        if (this.mVideoView != null) {
            if (z) {
                if (isMgtvPlayer() && this.mVideoView.isPrepared()) {
                    this.mVideoView.resumeLoadData();
                    return;
                }
                return;
            }
            if (isMgtvPlayer() && this.mVideoView.isPrepared()) {
                this.mVideoView.pauseLoadData();
            }
        }
    }

    public void setBufferTimeout(int i) {
        this.mBufferTimeoutMs = i;
    }

    public void setDataReceiveTimeout(int i) {
        this.mDataReceiveMillis = i;
    }

    public void setDataSourceInfo(MgtvMediaPlayer.DataSourceInfo dataSourceInfo) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setDataSourceInfo(dataSourceInfo);
        }
    }

    public void setDisplayType(int i, boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            if (this.mCurrentDisplayType != i || z) {
                this.mTargetDisplayType = i;
                int videoWidth = iVideoView.getVideoWidth();
                int videoHeight = this.mVideoView.getVideoHeight();
                if (videoWidth <= 0 || videoHeight <= 0) {
                    return;
                }
                if (this.mTargetDisplayType != 1) {
                    ((View) this.mVideoView).setLayoutParams(((View) this.mVideoView).getParent() != null ? new FrameLayout.LayoutParams((((View) ((View) this.mVideoView).getParent()).getHeight() * 16) / 9, -1, 17) : new FrameLayout.LayoutParams(1920, -1, 17));
                } else {
                    Point pointD = t.d(this.context);
                    if (pointD == null) {
                        return;
                    }
                    int i2 = pointD.x;
                    ((View) this.mVideoView).setLayoutParams(new FrameLayout.LayoutParams(i2, (videoHeight * i2) / videoWidth, 17));
                }
                this.mCurrentDisplayType = this.mTargetDisplayType;
            }
        }
    }

    public void setFileStartTimeMs(float f) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setFileStartTimeFloatS(f);
        }
    }

    public void setForceDecodeMode(boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setForceDecodeMode(z);
        }
    }

    public void setImgoPlayerDebug(boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setPlayerDebug(z);
        }
    }

    public void setIsChangeDefinition(boolean z) {
        this.changeDefinition = z;
    }

    public void setIsLive(boolean z) {
        this.isLive = z;
    }

    public void setJustLookDuration(int i) {
        this.mJustLookDuration = i;
    }

    public void setLastFrameRecovery(boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setLastFrameRecovery(z);
        }
    }

    public void setLiveMode(boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setLiveMode(z);
        }
    }

    public void setNetAddrinfo(int i, int i2) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setNetAddrinfo(i, i2);
        }
    }

    public void setNetConfig(NetPlayConfig netPlayConfig) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setNetPlayConfig(netPlayConfig);
        }
    }

    public void setNetWorkConnectTimeout(int i) {
        this.mNetworkConnectMillis = i;
    }

    public void setOnBufferListener(PlayerListener.OnBufferListener onBufferListener) {
        this.mBufferListener = onBufferListener;
    }

    public void setOnChangeSourceListener(PlayerListener.OnChangeSourceListener onChangeSourceListener) {
        this.mOnChangeSourceListener = onChangeSourceListener;
    }

    public void setOnCompletionListener(PlayerListener.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(PlayerListener.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnEventInfoListener(PlayerListener.onEventInfoListener oneventinfolistener) {
        this.mOnEventInfoListener = oneventinfolistener;
    }

    public void setOnInfoListener(PlayerListener.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnNetStatusChangedListener(com.mgtv.thirdsdk.playcore.b.c cVar) {
        this.mNetStatusMonitor.a(cVar);
    }

    public void setOnPauseListener(PlayerListener.OnPauseListener onPauseListener) {
        this.mOnPauseListener = onPauseListener;
    }

    public void setOnPreparedListener(PlayerListener.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnSeekCompleteListener(PlayerListener.OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnStartListener(PlayerListener.OnStartListener onStartListener) {
        this.mOnStartListener = onStartListener;
    }

    public void setOnSubtitlesCallback(PlayerListener.OnSubtitleCallback onSubtitleCallback) {
        this.mOnSubtitlesCallback = onSubtitleCallback;
    }

    public void setOnTickListener(PlayerListener.OnTickListener onTickListener, int i) {
        this.mOnTickListener = onTickListener;
        ExTicker exTicker = this.mPlayerTick;
        if (exTicker != null) {
            exTicker.d();
            this.mPlayerTick = null;
        }
        ExTicker exTicker2 = new ExTicker(i);
        this.mPlayerTick = exTicker2;
        exTicker2.a(new ExTicker.b() {
            @Override
            public void onTick(int i2) {
                e.b(ImgoPlayerView.this.getLogTag(), "onTick :" + i2, true);
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                PlayerListener.OnTickListener onTickListener2 = imgoPlayerView.mOnTickListener;
                if (onTickListener2 != null) {
                    onTickListener2.onTick(imgoPlayerView.getCurrentPosition(), i2, ImgoPlayerView.this.mPlayerTick.e());
                }
            }
        });
    }

    public void setOnUpdateStatusListener(PlayerListener.OnUpdateStatusListener onUpdateStatusListener) {
        this.mOnUpdateStatusListener = onUpdateStatusListener;
    }

    public void setOnVideoSizeChangedListener(PlayerListener.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public void setOnWarningListener(PlayerListener.OnWarningListener onWarningListener) {
        this.mOnWarningListener = onWarningListener;
    }

    public void setPlayBackSpeed(float f) {
        if (this.mVideoView == null || !isMgtvPlayer()) {
            return;
        }
        this.mVideoView.setPlaybackSpeed(f);
    }

    public void setPlayerHardwareMode(boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setPlayerHardwareMode(z);
        }
    }

    public void setPrepareStartMode(MgtvMediaPlayer.Prepared4StartMode prepared4StartMode) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setPrepared4StartMode(prepared4StartMode);
        }
    }

    public void setRenderFilter(IVideoView.RenderFilter renderFilter) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setRenderFilter(renderFilter);
        }
    }

    public void setRenderViewVisible(int i) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setRenderViewVisible(i);
        }
    }

    public void setReportParams(ReportParams reportParams) {
        this.mReportParams = reportParams;
    }

    public void setSecure(boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setSecure(z);
        }
    }

    public void setStartPosMs(int i) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setStartPosMs(i);
        }
    }

    public void setStreamKey(int i) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setStreamKey(i);
        }
    }

    public void setSubtitleSource(byte[] bArr) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.enableSubtitle(true);
            this.mVideoView.removeSubtitleSource();
            setSubtitlesConfig();
            this.mVideoView.setSubtitleCallback(this.mSubTitleCallback);
            this.mVideoView.setSubtitleSource(new SubtitleSource(bArr, MediaFormat.createSubtitleFormat("application/x-subrip", com.mgtv.ssp.utils.language.c.a().b().getLanguage())));
        }
    }

    public void setTag(String str) {
        this.playerTag = str;
    }

    public void setTsFlowTag(String str) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setTsFlowTag(str);
        }
    }

    public void setVolume(float f) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setVolume(f, f);
        }
    }

    public void setZOrderMediaOverlay(boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setZOrderMediaOverlay(z);
        }
    }

    public void showBufferingView() {
        View view;
        hideBufferingView();
        if (this.showBufferingView && (view = this.mBufferingView) != null && view.getVisibility() == 4) {
            this.handler.removeMessages(14);
            this.handler.sendEmptyMessageDelayed(14, 500L);
        }
        this.mBuffering = true;
        this.handler.sendEmptyMessage(15);
    }

    public void startBuffering(int i) {
        PlayerListener.OnBufferListener onBufferListener = this.mBufferListener;
        if (onBufferListener != null) {
            onBufferListener.onStartBuffer(i);
        }
        if (isDataLoaderPaused()) {
            return;
        }
        showBufferingView();
    }

    public void startPlayer(String str, String str2, String str3, String str4, String str5) {
        if (this.mVideoView == null) {
            callbackError(110000, 0);
        }
        this.mErrorMsg = "";
        endBuffering(1);
        ExTicker exTicker = this.mPlayerTick;
        if (exTicker != null) {
            exTicker.d();
        }
        if (str3 == null || "".equals(str3.trim())) {
            callbackError(7000011, 0);
            this.mNetStatusMonitor.b(this.context);
            return;
        }
        int iB = com.mgtv.thirdsdk.playcore.utils.b.b(str3);
        if (iB != 0 || (!TextUtils.isEmpty(str4) && (iB = com.mgtv.thirdsdk.playcore.utils.b.b(str4)) != 0)) {
            callbackError(7000011, iB);
            this.mNetStatusMonitor.b(this.context);
            return;
        }
        List<Integer> list = this.mDownloadSpeedList;
        if (list != null) {
            list.clear();
            this.mDownloadSpeedList = null;
        }
        saveBreakPoint();
        this.mDownloadSpeedList = new LinkedList();
        this.isBufferStart = false;
        this.isPlayOK = false;
        this.isFirstPlay = true;
        this.videoId = str5;
        this.mBeforeFirstFrame = true;
        this.mFirstFrameCostMs = 0L;
        this.mErrorCostMs = 0L;
        this.mStartPlayTime = System.currentTimeMillis();
        this.isPosPlay = false;
        this.mPerformanceTimes = 0;
        this.mTotalCPUAdd = 0;
        this.mTotalRSSAdd = 0;
        this.mBufferingNum = 0;
        this.mBufferingTime = 0L;
        this.mSeekingNum = 0;
        this.mSeekingTime = 0L;
        this.mVideoView.setTimeout(this.mNetworkConnectMillis, this.mDataReceiveMillis);
        this.mVideoView.setBufferTimeout(this.mBufferTimeoutMs);
        if (!supportChangeSourceAsync() || !c.f(str4)) {
            openImgoSourceModule(false);
        }
        this.mVideoView.setReportParams(this.mReportParams);
        if (!TextUtils.isEmpty(str2)) {
            this.mVideoView.setVideoDataSource(new MgtvByteBufferPlayerDataSource(str2.getBytes()));
        } else if (this.isFirstPlay) {
            this.mVideoView.setVideoPath(str4);
        } else {
            this.mVideoView.resetVideoPath(str4);
        }
        this.videoPath = str3;
        this.mNetStatusMonitor.a(this.context);
    }

    public void stop() {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.stop();
        }
        e.b(TAG, "stop()", true);
    }

    public boolean supportChangeSourceAsync() {
        IVideoView iVideoView = this.mVideoView;
        return iVideoView != null && iVideoView.isImgoSourceModuleOpen() && !BuildHelper.supportX86() && this.mDataSourceType == 1;
    }

    public void toPause() {
        pause();
        e.b(TAG, "toPause():", true);
    }

    public void toPlay() {
        play();
        e.b(TAG, "toPlay():", true);
    }

    @Override
    public String getTag() {
        return this.playerTag;
    }

    public void reset(boolean z, boolean z2) {
        if (z) {
            saveBreakPoint();
        }
        this.mBeforeFirstFrame = true;
        this.isBufferStart = false;
        this.isLive = false;
        ExTicker exTicker = this.mPlayerTick;
        if (exTicker != null) {
            exTicker.d();
        }
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.cleanUri();
            this.mVideoView.reset();
            if (z2) {
                this.mVideoView.resetRender();
            }
        }
        e.b(TAG, "reset(" + z + StringUtils.COMMA + z2 + ")", true);
    }

    public void setNetAddrinfo(int i, int i2, boolean z) {
        IVideoView iVideoView = this.mVideoView;
        if (iVideoView != null) {
            iVideoView.setNetAddrinfo(i, i2, z);
        }
    }

    public ImgoPlayerView(Context context, int i) {
        super(context);
        this.showBufferingView = true;
        this.handler = new InternalHandler(this);
        this.mBeforeFirstFrame = true;
        this.mLastBufferTime = new BufferTime();
        this.mErrorMsg = "";
        this.isBufferStart = false;
        this.mCurrentDisplayType = 0;
        this.mTargetDisplayType = 0;
        this.mCpuMonitor = new com.mgtv.thirdsdk.playcore.utils.a();
        this.mFirstPlay = true;
        this.mPlayBreakPoint = true;
        this.mVideoSizeChangedListener = new IVideoView.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                e.b(ImgoPlayerView.TAG, "onVideoSizeChanged: w:" + i2 + "; h:" + i3, true);
                PlayerListener.OnVideoSizeChangedListener onVideoSizeChangedListener = ImgoPlayerView.this.mOnVideoSizeChangedListener;
                if (onVideoSizeChangedListener != null) {
                    onVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mUpdateStatusListener = new IVideoView.OnUpdateStatusListener() {
            @Override
            public void onUpdateStatus() {
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                PlayerListener.OnUpdateStatusListener onUpdateStatusListener = imgoPlayerView.mOnUpdateStatusListener;
                if (onUpdateStatusListener == null || imgoPlayerView.mVideoView == null) {
                    return;
                }
                onUpdateStatusListener.onUpdateStatus(imgoPlayerView.isPlaying(), ImgoPlayerView.this.mVideoView.isPrepared(), ImgoPlayerView.this.mVideoView.isCompletion());
            }
        };
        this.mPreparedListener = new IVideoView.OnPreparedListener() {
            @Override
            public void onPrepared() {
                a aVar;
                a aVar2;
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (imgoPlayerView.isFirstPlay) {
                    if (imgoPlayerView.mFirstPlay) {
                        imgoPlayerView.mFirstPlay = false;
                    }
                    if (c.i()) {
                        ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                        imgoPlayerView2.breakPoint = c.a(imgoPlayerView2.breakPointDao, imgoPlayerView2.videoId);
                    }
                    if (c.i() && (aVar2 = ImgoPlayerView.this.breakPoint) != null && aVar2.e() != 0) {
                        ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                        if (imgoPlayerView3.mPlayBreakPoint) {
                            ImgoPlayerView.this.seekTo(imgoPlayerView3.breakPoint.e());
                        }
                        ImgoPlayerView.this.isPosPlay = true;
                    } else if (ImgoPlayerView.this.changeDefinition) {
                        ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                        if (!imgoPlayerView4.isLive && imgoPlayerView4.mPlayBreakPoint && (aVar = imgoPlayerView4.breakPoint) != null) {
                            ImgoPlayerView.this.seekTo(aVar.e());
                        }
                    }
                    PlayerListener.OnPreparedListener onPreparedListener = ImgoPlayerView.this.mOnPreparedListener;
                    if (onPreparedListener != null) {
                        onPreparedListener.onPrepared();
                    }
                }
            }
        };
        this.mEventInfoListener = new IVideoView.OnEventInfoListener() {
            @Override
            public void onInfo(int i2, int i3) {
                PlayerListener.onEventInfoListener oneventinfolistener = ImgoPlayerView.this.mOnEventInfoListener;
                if (oneventinfolistener != null) {
                    oneventinfolistener.onInfo(i2, i3);
                }
            }
        };
        this.mStartListener = new IVideoView.OnStartListener() {
            @Override
            public void onStart() {
                ExTicker exTicker;
                ImgoPlayerView.this.mNetStatusMonitor.c();
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (!imgoPlayerView.isBufferStart && (exTicker = imgoPlayerView.mPlayerTick) != null) {
                    exTicker.c();
                }
                ImgoPlayerView.this.mCpuMonitor.b();
                PlayerListener.OnStartListener onStartListener = ImgoPlayerView.this.mOnStartListener;
                if (onStartListener != null) {
                    onStartListener.onStart();
                }
            }
        };
        this.mPauseListener = new IVideoView.OnPauseListener() {
            @Override
            public void onPause() {
                ImgoPlayerView.this.mNetStatusMonitor.a();
                ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                if (exTicker != null) {
                    exTicker.b();
                }
                ImgoPlayerView.this.mCpuMonitor.a();
                PlayerListener.OnPauseListener onPauseListener = ImgoPlayerView.this.mOnPauseListener;
                if (onPauseListener != null) {
                    onPauseListener.onPause();
                }
            }
        };
        this.mCompletionListener = new IVideoView.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                ImgoPlayerView.this.onInnerCompletion(i2, i3);
            }
        };
        this.mErrorListener = new IVideoView.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                if (ImgoPlayerView.this.mVideoView != null) {
                    StringBuilder sb = new StringBuilder();
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    sb.append(imgoPlayerView.mErrorMsg);
                    sb.append("_ErrorUrl_");
                    sb.append(ImgoPlayerView.this.mVideoView.getErrorUrl());
                    sb.append("/n");
                    imgoPlayerView.mErrorMsg = sb.toString();
                }
                ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                if (imgoPlayerView2.mVideoView != null && imgoPlayerView2.isMgtvPlayer()) {
                    new DecimalFormat(".00");
                }
                ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                if (exTicker != null) {
                    exTicker.d();
                }
                ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                if (imgoPlayerView3.isPlayOK) {
                    try {
                        c.a(imgoPlayerView3.breakPointDao, imgoPlayerView3.videoId, imgoPlayerView3.videoPath, imgoPlayerView3.getCurrentPosition(), ImgoPlayerView.this.getDuration());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ImgoPlayerView.this.callbackError(i2, i3);
                ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                imgoPlayerView4.mNetStatusMonitor.b(imgoPlayerView4.context);
                return true;
            }
        };
        this.mSeekCompleteListener = new IVideoView.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete() {
                ImgoPlayerView.this.getCurrentPosition();
                PlayerListener.OnSeekCompleteListener onSeekCompleteListener = ImgoPlayerView.this.mOnSeekCompleteListener;
                if (onSeekCompleteListener != null) {
                    onSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mInfoListener = new IVideoView.OnInfoListener() {
            @Override
            public boolean onInfo(int i2, int i3) {
                if (i2 == 900) {
                    ImgoPlayerView.this.isPlayOK = true;
                }
                System.out.println("onInfo what = " + i2);
                if (i2 == 701) {
                    e.b(ImgoPlayerView.this.getLogTag(), "start buffering:what" + i2 + "extra:" + i3, true);
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    imgoPlayerView.isBufferStart = true;
                    imgoPlayerView.mStartBufferingTime = System.currentTimeMillis();
                    ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                    if (exTicker != null) {
                        exTicker.b();
                    }
                    ImgoPlayerView.this.mCpuMonitor.a();
                    ImgoPlayerView.this.startBuffering(i3);
                } else if (i2 == 702) {
                    e.b(ImgoPlayerView.this.getLogTag(), "end buffering:what" + i2 + "extra:" + i3, true);
                    ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                    if (imgoPlayerView2.isBufferStart) {
                        if (imgoPlayerView2.mStartBufferingTime > 0) {
                            imgoPlayerView2.mLastBufferTime.buffertime = System.currentTimeMillis() - ImgoPlayerView.this.mStartBufferingTime;
                        } else {
                            imgoPlayerView2.mLastBufferTime.buffertime = 0L;
                        }
                        ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                        BufferTime bufferTime = imgoPlayerView3.mLastBufferTime;
                        bufferTime.type = 0;
                        if (i3 == 2) {
                            bufferTime.type = 1;
                            imgoPlayerView3.mSeekingNum++;
                            imgoPlayerView3.mSeekingTime += bufferTime.buffertime;
                        } else {
                            bufferTime.type = 0;
                            imgoPlayerView3.mBufferingNum++;
                            imgoPlayerView3.mBufferingTime += bufferTime.buffertime;
                        }
                        e.a(imgoPlayerView3.getLogTag(), "buffering cost(ms):" + ImgoPlayerView.this.mLastBufferTime.buffertime + ",type:" + i3, true);
                        e.a(ImgoPlayerView.this.getLogTag(), "buffering_end(ms) mBufferingNum:" + ImgoPlayerView.this.mBufferingNum + ",mBufferingTime:" + ImgoPlayerView.this.mBufferingTime, true);
                        e.a(ImgoPlayerView.this.getLogTag(), "buffering_end(ms) mSeekingTime:" + ImgoPlayerView.this.mSeekingNum + ",mSeekingTime:" + ImgoPlayerView.this.mSeekingTime, true);
                        PlayerListener.OnBufferListener onBufferListener = ImgoPlayerView.this.mBufferListener;
                        if (onBufferListener != null) {
                            onBufferListener.onBufferUpdate("100");
                        }
                        ImgoPlayerView.this.isBufferStart = false;
                    }
                    ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                    if (imgoPlayerView4.mPlayerTick != null && imgoPlayerView4.isPlaying()) {
                        ImgoPlayerView.this.mPlayerTick.c();
                    }
                    ImgoPlayerView.this.mCpuMonitor.b();
                    ImgoPlayerView.this.endBuffering(i3);
                } else {
                    if (i2 == 900) {
                        ImgoPlayerView imgoPlayerView5 = ImgoPlayerView.this;
                        if (imgoPlayerView5.mBeforeFirstFrame) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            ImgoPlayerView imgoPlayerView6 = ImgoPlayerView.this;
                            imgoPlayerView5.mFirstFrameCostMs = jCurrentTimeMillis - imgoPlayerView6.mStartPlayTime;
                            imgoPlayerView6.mBeforeFirstFrame = false;
                            e.a(imgoPlayerView6.getLogTag(), "MEDIA_INFO_RENDERING_START cost(ms):" + ImgoPlayerView.this.mFirstFrameCostMs, true);
                        }
                        ImgoPlayerView imgoPlayerView7 = ImgoPlayerView.this;
                        if (imgoPlayerView7.isFirstPlay) {
                            ExTicker exTicker2 = imgoPlayerView7.mPlayerTick;
                            if (exTicker2 != null) {
                                exTicker2.a();
                            }
                            PlayerListener.OnInfoListener onInfoListener = ImgoPlayerView.this.mOnInfoListener;
                            if (onInfoListener != null) {
                                onInfoListener.onInfo(i2, i3);
                            }
                            ImgoPlayerView imgoPlayerView8 = ImgoPlayerView.this;
                            IVideoView iVideoView = imgoPlayerView8.mVideoView;
                            imgoPlayerView8.isFirstPlay = false;
                        }
                        return true;
                    }
                    if (i2 == 2803) {
                        ImgoPlayerView.this.mDataSourceType = i3;
                    } else if (i2 == 700001) {
                        try {
                            List<Integer> list = ImgoPlayerView.this.mDownloadSpeedList;
                            if (list != null) {
                                if (list.size() >= 20) {
                                    ImgoPlayerView.this.mDownloadSpeedList.remove(0);
                                }
                                ImgoPlayerView.this.mDownloadSpeedList.add(Integer.valueOf(i3));
                            }
                        } catch (Exception unused) {
                        }
                        return true;
                    }
                }
                PlayerListener.OnInfoListener onInfoListener2 = ImgoPlayerView.this.mOnInfoListener;
                if (onInfoListener2 != null) {
                    onInfoListener2.onInfo(i2, i3);
                }
                return true;
            }
        };
        this.mWaringListener = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                PlayerListener.OnWarningListener onWarningListener;
                if (ImgoPlayerView.this.isBeforeFirstFrame() || (onWarningListener = ImgoPlayerView.this.mOnWarningListener) == null) {
                    return;
                }
                onWarningListener.onTsSkip(str, i2, i3);
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                PlayerListener.OnWarningListener onWarningListener = ImgoPlayerView.this.mOnWarningListener;
                if (onWarningListener != null) {
                    onWarningListener.onWarning(i2, str, str2);
                }
            }
        };
        this.mSurfaceHolderListener = new IVideoView.SurfaceHolderListener() {
            @Override
            public void surfaceChanged() {
                System.out.println("mSurfaceHolderListener surfaceChanged ");
            }

            @Override
            public void surfaceCreated() {
                System.out.println("mSurfaceHolderListener surfaceCreated ");
            }

            @Override
            public void surfaceDestroyed() {
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (imgoPlayerView.isPlayOK && !imgoPlayerView.mVideoView.isCompletion()) {
                    ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                    c.a(imgoPlayerView2.breakPointDao, imgoPlayerView2.videoId, imgoPlayerView2.videoPath, imgoPlayerView2.getCurrentPosition(), ImgoPlayerView.this.getDuration());
                }
                System.out.println("mSurfaceHolderListener surfaceDestroyed ");
            }
        };
        this.mChangeSourceListener = new IVideoView.OnChangeSourceListener() {
            @Override
            public void onChangeSourceFailed(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onChangeSourceInfo(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }

            @Override
            public void onChangeSourceSuccess(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }
        };
        this.playerTag = Schema.DEFAULT_NAME;
        this.mSubTitleCallback = new ISubtitle.SubtitleCallback() {
            @Override
            public void onError(SubtitleSource subtitleSource) {
                PlayerListener.OnSubtitleCallback onSubtitleCallback = ImgoPlayerView.this.mOnSubtitlesCallback;
                if (onSubtitleCallback != null) {
                    onSubtitleCallback.onError(subtitleSource);
                }
            }

            @Override
            public void onSuccess(SubtitleSource subtitleSource) {
                PlayerListener.OnSubtitleCallback onSubtitleCallback = ImgoPlayerView.this.mOnSubtitlesCallback;
                if (onSubtitleCallback != null) {
                    onSubtitleCallback.onSuccess(subtitleSource);
                }
            }
        };
        initContent(context, i, true);
    }

    public ImgoPlayerView(Context context, int i, boolean z) {
        super(context);
        this.showBufferingView = true;
        this.handler = new InternalHandler(this);
        this.mBeforeFirstFrame = true;
        this.mLastBufferTime = new BufferTime();
        this.mErrorMsg = "";
        this.isBufferStart = false;
        this.mCurrentDisplayType = 0;
        this.mTargetDisplayType = 0;
        this.mCpuMonitor = new com.mgtv.thirdsdk.playcore.utils.a();
        this.mFirstPlay = true;
        this.mPlayBreakPoint = true;
        this.mVideoSizeChangedListener = new IVideoView.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                e.b(ImgoPlayerView.TAG, "onVideoSizeChanged: w:" + i2 + "; h:" + i3, true);
                PlayerListener.OnVideoSizeChangedListener onVideoSizeChangedListener = ImgoPlayerView.this.mOnVideoSizeChangedListener;
                if (onVideoSizeChangedListener != null) {
                    onVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mUpdateStatusListener = new IVideoView.OnUpdateStatusListener() {
            @Override
            public void onUpdateStatus() {
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                PlayerListener.OnUpdateStatusListener onUpdateStatusListener = imgoPlayerView.mOnUpdateStatusListener;
                if (onUpdateStatusListener == null || imgoPlayerView.mVideoView == null) {
                    return;
                }
                onUpdateStatusListener.onUpdateStatus(imgoPlayerView.isPlaying(), ImgoPlayerView.this.mVideoView.isPrepared(), ImgoPlayerView.this.mVideoView.isCompletion());
            }
        };
        this.mPreparedListener = new IVideoView.OnPreparedListener() {
            @Override
            public void onPrepared() {
                a aVar;
                a aVar2;
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (imgoPlayerView.isFirstPlay) {
                    if (imgoPlayerView.mFirstPlay) {
                        imgoPlayerView.mFirstPlay = false;
                    }
                    if (c.i()) {
                        ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                        imgoPlayerView2.breakPoint = c.a(imgoPlayerView2.breakPointDao, imgoPlayerView2.videoId);
                    }
                    if (c.i() && (aVar2 = ImgoPlayerView.this.breakPoint) != null && aVar2.e() != 0) {
                        ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                        if (imgoPlayerView3.mPlayBreakPoint) {
                            ImgoPlayerView.this.seekTo(imgoPlayerView3.breakPoint.e());
                        }
                        ImgoPlayerView.this.isPosPlay = true;
                    } else if (ImgoPlayerView.this.changeDefinition) {
                        ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                        if (!imgoPlayerView4.isLive && imgoPlayerView4.mPlayBreakPoint && (aVar = imgoPlayerView4.breakPoint) != null) {
                            ImgoPlayerView.this.seekTo(aVar.e());
                        }
                    }
                    PlayerListener.OnPreparedListener onPreparedListener = ImgoPlayerView.this.mOnPreparedListener;
                    if (onPreparedListener != null) {
                        onPreparedListener.onPrepared();
                    }
                }
            }
        };
        this.mEventInfoListener = new IVideoView.OnEventInfoListener() {
            @Override
            public void onInfo(int i2, int i3) {
                PlayerListener.onEventInfoListener oneventinfolistener = ImgoPlayerView.this.mOnEventInfoListener;
                if (oneventinfolistener != null) {
                    oneventinfolistener.onInfo(i2, i3);
                }
            }
        };
        this.mStartListener = new IVideoView.OnStartListener() {
            @Override
            public void onStart() {
                ExTicker exTicker;
                ImgoPlayerView.this.mNetStatusMonitor.c();
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (!imgoPlayerView.isBufferStart && (exTicker = imgoPlayerView.mPlayerTick) != null) {
                    exTicker.c();
                }
                ImgoPlayerView.this.mCpuMonitor.b();
                PlayerListener.OnStartListener onStartListener = ImgoPlayerView.this.mOnStartListener;
                if (onStartListener != null) {
                    onStartListener.onStart();
                }
            }
        };
        this.mPauseListener = new IVideoView.OnPauseListener() {
            @Override
            public void onPause() {
                ImgoPlayerView.this.mNetStatusMonitor.a();
                ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                if (exTicker != null) {
                    exTicker.b();
                }
                ImgoPlayerView.this.mCpuMonitor.a();
                PlayerListener.OnPauseListener onPauseListener = ImgoPlayerView.this.mOnPauseListener;
                if (onPauseListener != null) {
                    onPauseListener.onPause();
                }
            }
        };
        this.mCompletionListener = new IVideoView.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                ImgoPlayerView.this.onInnerCompletion(i2, i3);
            }
        };
        this.mErrorListener = new IVideoView.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                if (ImgoPlayerView.this.mVideoView != null) {
                    StringBuilder sb = new StringBuilder();
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    sb.append(imgoPlayerView.mErrorMsg);
                    sb.append("_ErrorUrl_");
                    sb.append(ImgoPlayerView.this.mVideoView.getErrorUrl());
                    sb.append("/n");
                    imgoPlayerView.mErrorMsg = sb.toString();
                }
                ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                if (imgoPlayerView2.mVideoView != null && imgoPlayerView2.isMgtvPlayer()) {
                    new DecimalFormat(".00");
                }
                ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                if (exTicker != null) {
                    exTicker.d();
                }
                ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                if (imgoPlayerView3.isPlayOK) {
                    try {
                        c.a(imgoPlayerView3.breakPointDao, imgoPlayerView3.videoId, imgoPlayerView3.videoPath, imgoPlayerView3.getCurrentPosition(), ImgoPlayerView.this.getDuration());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ImgoPlayerView.this.callbackError(i2, i3);
                ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                imgoPlayerView4.mNetStatusMonitor.b(imgoPlayerView4.context);
                return true;
            }
        };
        this.mSeekCompleteListener = new IVideoView.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete() {
                ImgoPlayerView.this.getCurrentPosition();
                PlayerListener.OnSeekCompleteListener onSeekCompleteListener = ImgoPlayerView.this.mOnSeekCompleteListener;
                if (onSeekCompleteListener != null) {
                    onSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mInfoListener = new IVideoView.OnInfoListener() {
            @Override
            public boolean onInfo(int i2, int i3) {
                if (i2 == 900) {
                    ImgoPlayerView.this.isPlayOK = true;
                }
                System.out.println("onInfo what = " + i2);
                if (i2 == 701) {
                    e.b(ImgoPlayerView.this.getLogTag(), "start buffering:what" + i2 + "extra:" + i3, true);
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    imgoPlayerView.isBufferStart = true;
                    imgoPlayerView.mStartBufferingTime = System.currentTimeMillis();
                    ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                    if (exTicker != null) {
                        exTicker.b();
                    }
                    ImgoPlayerView.this.mCpuMonitor.a();
                    ImgoPlayerView.this.startBuffering(i3);
                } else if (i2 == 702) {
                    e.b(ImgoPlayerView.this.getLogTag(), "end buffering:what" + i2 + "extra:" + i3, true);
                    ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                    if (imgoPlayerView2.isBufferStart) {
                        if (imgoPlayerView2.mStartBufferingTime > 0) {
                            imgoPlayerView2.mLastBufferTime.buffertime = System.currentTimeMillis() - ImgoPlayerView.this.mStartBufferingTime;
                        } else {
                            imgoPlayerView2.mLastBufferTime.buffertime = 0L;
                        }
                        ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                        BufferTime bufferTime = imgoPlayerView3.mLastBufferTime;
                        bufferTime.type = 0;
                        if (i3 == 2) {
                            bufferTime.type = 1;
                            imgoPlayerView3.mSeekingNum++;
                            imgoPlayerView3.mSeekingTime += bufferTime.buffertime;
                        } else {
                            bufferTime.type = 0;
                            imgoPlayerView3.mBufferingNum++;
                            imgoPlayerView3.mBufferingTime += bufferTime.buffertime;
                        }
                        e.a(imgoPlayerView3.getLogTag(), "buffering cost(ms):" + ImgoPlayerView.this.mLastBufferTime.buffertime + ",type:" + i3, true);
                        e.a(ImgoPlayerView.this.getLogTag(), "buffering_end(ms) mBufferingNum:" + ImgoPlayerView.this.mBufferingNum + ",mBufferingTime:" + ImgoPlayerView.this.mBufferingTime, true);
                        e.a(ImgoPlayerView.this.getLogTag(), "buffering_end(ms) mSeekingTime:" + ImgoPlayerView.this.mSeekingNum + ",mSeekingTime:" + ImgoPlayerView.this.mSeekingTime, true);
                        PlayerListener.OnBufferListener onBufferListener = ImgoPlayerView.this.mBufferListener;
                        if (onBufferListener != null) {
                            onBufferListener.onBufferUpdate("100");
                        }
                        ImgoPlayerView.this.isBufferStart = false;
                    }
                    ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                    if (imgoPlayerView4.mPlayerTick != null && imgoPlayerView4.isPlaying()) {
                        ImgoPlayerView.this.mPlayerTick.c();
                    }
                    ImgoPlayerView.this.mCpuMonitor.b();
                    ImgoPlayerView.this.endBuffering(i3);
                } else {
                    if (i2 == 900) {
                        ImgoPlayerView imgoPlayerView5 = ImgoPlayerView.this;
                        if (imgoPlayerView5.mBeforeFirstFrame) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            ImgoPlayerView imgoPlayerView6 = ImgoPlayerView.this;
                            imgoPlayerView5.mFirstFrameCostMs = jCurrentTimeMillis - imgoPlayerView6.mStartPlayTime;
                            imgoPlayerView6.mBeforeFirstFrame = false;
                            e.a(imgoPlayerView6.getLogTag(), "MEDIA_INFO_RENDERING_START cost(ms):" + ImgoPlayerView.this.mFirstFrameCostMs, true);
                        }
                        ImgoPlayerView imgoPlayerView7 = ImgoPlayerView.this;
                        if (imgoPlayerView7.isFirstPlay) {
                            ExTicker exTicker2 = imgoPlayerView7.mPlayerTick;
                            if (exTicker2 != null) {
                                exTicker2.a();
                            }
                            PlayerListener.OnInfoListener onInfoListener = ImgoPlayerView.this.mOnInfoListener;
                            if (onInfoListener != null) {
                                onInfoListener.onInfo(i2, i3);
                            }
                            ImgoPlayerView imgoPlayerView8 = ImgoPlayerView.this;
                            IVideoView iVideoView = imgoPlayerView8.mVideoView;
                            imgoPlayerView8.isFirstPlay = false;
                        }
                        return true;
                    }
                    if (i2 == 2803) {
                        ImgoPlayerView.this.mDataSourceType = i3;
                    } else if (i2 == 700001) {
                        try {
                            List<Integer> list = ImgoPlayerView.this.mDownloadSpeedList;
                            if (list != null) {
                                if (list.size() >= 20) {
                                    ImgoPlayerView.this.mDownloadSpeedList.remove(0);
                                }
                                ImgoPlayerView.this.mDownloadSpeedList.add(Integer.valueOf(i3));
                            }
                        } catch (Exception unused) {
                        }
                        return true;
                    }
                }
                PlayerListener.OnInfoListener onInfoListener2 = ImgoPlayerView.this.mOnInfoListener;
                if (onInfoListener2 != null) {
                    onInfoListener2.onInfo(i2, i3);
                }
                return true;
            }
        };
        this.mWaringListener = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                PlayerListener.OnWarningListener onWarningListener;
                if (ImgoPlayerView.this.isBeforeFirstFrame() || (onWarningListener = ImgoPlayerView.this.mOnWarningListener) == null) {
                    return;
                }
                onWarningListener.onTsSkip(str, i2, i3);
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                PlayerListener.OnWarningListener onWarningListener = ImgoPlayerView.this.mOnWarningListener;
                if (onWarningListener != null) {
                    onWarningListener.onWarning(i2, str, str2);
                }
            }
        };
        this.mSurfaceHolderListener = new IVideoView.SurfaceHolderListener() {
            @Override
            public void surfaceChanged() {
                System.out.println("mSurfaceHolderListener surfaceChanged ");
            }

            @Override
            public void surfaceCreated() {
                System.out.println("mSurfaceHolderListener surfaceCreated ");
            }

            @Override
            public void surfaceDestroyed() {
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (imgoPlayerView.isPlayOK && !imgoPlayerView.mVideoView.isCompletion()) {
                    ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                    c.a(imgoPlayerView2.breakPointDao, imgoPlayerView2.videoId, imgoPlayerView2.videoPath, imgoPlayerView2.getCurrentPosition(), ImgoPlayerView.this.getDuration());
                }
                System.out.println("mSurfaceHolderListener surfaceDestroyed ");
            }
        };
        this.mChangeSourceListener = new IVideoView.OnChangeSourceListener() {
            @Override
            public void onChangeSourceFailed(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onChangeSourceInfo(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }

            @Override
            public void onChangeSourceSuccess(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }
        };
        this.playerTag = Schema.DEFAULT_NAME;
        this.mSubTitleCallback = new ISubtitle.SubtitleCallback() {
            @Override
            public void onError(SubtitleSource subtitleSource) {
                PlayerListener.OnSubtitleCallback onSubtitleCallback = ImgoPlayerView.this.mOnSubtitlesCallback;
                if (onSubtitleCallback != null) {
                    onSubtitleCallback.onError(subtitleSource);
                }
            }

            @Override
            public void onSuccess(SubtitleSource subtitleSource) {
                PlayerListener.OnSubtitleCallback onSubtitleCallback = ImgoPlayerView.this.mOnSubtitlesCallback;
                if (onSubtitleCallback != null) {
                    onSubtitleCallback.onSuccess(subtitleSource);
                }
            }
        };
        this.isEnableQualityEnhance = z;
        initContent(context, i, true);
    }

    public ImgoPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.showBufferingView = true;
        this.handler = new InternalHandler(this);
        this.mBeforeFirstFrame = true;
        this.mLastBufferTime = new BufferTime();
        this.mErrorMsg = "";
        this.isBufferStart = false;
        this.mCurrentDisplayType = 0;
        this.mTargetDisplayType = 0;
        this.mCpuMonitor = new com.mgtv.thirdsdk.playcore.utils.a();
        this.mFirstPlay = true;
        this.mPlayBreakPoint = true;
        this.mVideoSizeChangedListener = new IVideoView.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                e.b(ImgoPlayerView.TAG, "onVideoSizeChanged: w:" + i2 + "; h:" + i3, true);
                PlayerListener.OnVideoSizeChangedListener onVideoSizeChangedListener = ImgoPlayerView.this.mOnVideoSizeChangedListener;
                if (onVideoSizeChangedListener != null) {
                    onVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mUpdateStatusListener = new IVideoView.OnUpdateStatusListener() {
            @Override
            public void onUpdateStatus() {
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                PlayerListener.OnUpdateStatusListener onUpdateStatusListener = imgoPlayerView.mOnUpdateStatusListener;
                if (onUpdateStatusListener == null || imgoPlayerView.mVideoView == null) {
                    return;
                }
                onUpdateStatusListener.onUpdateStatus(imgoPlayerView.isPlaying(), ImgoPlayerView.this.mVideoView.isPrepared(), ImgoPlayerView.this.mVideoView.isCompletion());
            }
        };
        this.mPreparedListener = new IVideoView.OnPreparedListener() {
            @Override
            public void onPrepared() {
                a aVar;
                a aVar2;
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (imgoPlayerView.isFirstPlay) {
                    if (imgoPlayerView.mFirstPlay) {
                        imgoPlayerView.mFirstPlay = false;
                    }
                    if (c.i()) {
                        ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                        imgoPlayerView2.breakPoint = c.a(imgoPlayerView2.breakPointDao, imgoPlayerView2.videoId);
                    }
                    if (c.i() && (aVar2 = ImgoPlayerView.this.breakPoint) != null && aVar2.e() != 0) {
                        ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                        if (imgoPlayerView3.mPlayBreakPoint) {
                            ImgoPlayerView.this.seekTo(imgoPlayerView3.breakPoint.e());
                        }
                        ImgoPlayerView.this.isPosPlay = true;
                    } else if (ImgoPlayerView.this.changeDefinition) {
                        ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                        if (!imgoPlayerView4.isLive && imgoPlayerView4.mPlayBreakPoint && (aVar = imgoPlayerView4.breakPoint) != null) {
                            ImgoPlayerView.this.seekTo(aVar.e());
                        }
                    }
                    PlayerListener.OnPreparedListener onPreparedListener = ImgoPlayerView.this.mOnPreparedListener;
                    if (onPreparedListener != null) {
                        onPreparedListener.onPrepared();
                    }
                }
            }
        };
        this.mEventInfoListener = new IVideoView.OnEventInfoListener() {
            @Override
            public void onInfo(int i2, int i3) {
                PlayerListener.onEventInfoListener oneventinfolistener = ImgoPlayerView.this.mOnEventInfoListener;
                if (oneventinfolistener != null) {
                    oneventinfolistener.onInfo(i2, i3);
                }
            }
        };
        this.mStartListener = new IVideoView.OnStartListener() {
            @Override
            public void onStart() {
                ExTicker exTicker;
                ImgoPlayerView.this.mNetStatusMonitor.c();
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (!imgoPlayerView.isBufferStart && (exTicker = imgoPlayerView.mPlayerTick) != null) {
                    exTicker.c();
                }
                ImgoPlayerView.this.mCpuMonitor.b();
                PlayerListener.OnStartListener onStartListener = ImgoPlayerView.this.mOnStartListener;
                if (onStartListener != null) {
                    onStartListener.onStart();
                }
            }
        };
        this.mPauseListener = new IVideoView.OnPauseListener() {
            @Override
            public void onPause() {
                ImgoPlayerView.this.mNetStatusMonitor.a();
                ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                if (exTicker != null) {
                    exTicker.b();
                }
                ImgoPlayerView.this.mCpuMonitor.a();
                PlayerListener.OnPauseListener onPauseListener = ImgoPlayerView.this.mOnPauseListener;
                if (onPauseListener != null) {
                    onPauseListener.onPause();
                }
            }
        };
        this.mCompletionListener = new IVideoView.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                ImgoPlayerView.this.onInnerCompletion(i2, i3);
            }
        };
        this.mErrorListener = new IVideoView.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                if (ImgoPlayerView.this.mVideoView != null) {
                    StringBuilder sb = new StringBuilder();
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    sb.append(imgoPlayerView.mErrorMsg);
                    sb.append("_ErrorUrl_");
                    sb.append(ImgoPlayerView.this.mVideoView.getErrorUrl());
                    sb.append("/n");
                    imgoPlayerView.mErrorMsg = sb.toString();
                }
                ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                if (imgoPlayerView2.mVideoView != null && imgoPlayerView2.isMgtvPlayer()) {
                    new DecimalFormat(".00");
                }
                ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                if (exTicker != null) {
                    exTicker.d();
                }
                ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                if (imgoPlayerView3.isPlayOK) {
                    try {
                        c.a(imgoPlayerView3.breakPointDao, imgoPlayerView3.videoId, imgoPlayerView3.videoPath, imgoPlayerView3.getCurrentPosition(), ImgoPlayerView.this.getDuration());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ImgoPlayerView.this.callbackError(i2, i3);
                ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                imgoPlayerView4.mNetStatusMonitor.b(imgoPlayerView4.context);
                return true;
            }
        };
        this.mSeekCompleteListener = new IVideoView.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete() {
                ImgoPlayerView.this.getCurrentPosition();
                PlayerListener.OnSeekCompleteListener onSeekCompleteListener = ImgoPlayerView.this.mOnSeekCompleteListener;
                if (onSeekCompleteListener != null) {
                    onSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mInfoListener = new IVideoView.OnInfoListener() {
            @Override
            public boolean onInfo(int i2, int i3) {
                if (i2 == 900) {
                    ImgoPlayerView.this.isPlayOK = true;
                }
                System.out.println("onInfo what = " + i2);
                if (i2 == 701) {
                    e.b(ImgoPlayerView.this.getLogTag(), "start buffering:what" + i2 + "extra:" + i3, true);
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    imgoPlayerView.isBufferStart = true;
                    imgoPlayerView.mStartBufferingTime = System.currentTimeMillis();
                    ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                    if (exTicker != null) {
                        exTicker.b();
                    }
                    ImgoPlayerView.this.mCpuMonitor.a();
                    ImgoPlayerView.this.startBuffering(i3);
                } else if (i2 == 702) {
                    e.b(ImgoPlayerView.this.getLogTag(), "end buffering:what" + i2 + "extra:" + i3, true);
                    ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                    if (imgoPlayerView2.isBufferStart) {
                        if (imgoPlayerView2.mStartBufferingTime > 0) {
                            imgoPlayerView2.mLastBufferTime.buffertime = System.currentTimeMillis() - ImgoPlayerView.this.mStartBufferingTime;
                        } else {
                            imgoPlayerView2.mLastBufferTime.buffertime = 0L;
                        }
                        ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                        BufferTime bufferTime = imgoPlayerView3.mLastBufferTime;
                        bufferTime.type = 0;
                        if (i3 == 2) {
                            bufferTime.type = 1;
                            imgoPlayerView3.mSeekingNum++;
                            imgoPlayerView3.mSeekingTime += bufferTime.buffertime;
                        } else {
                            bufferTime.type = 0;
                            imgoPlayerView3.mBufferingNum++;
                            imgoPlayerView3.mBufferingTime += bufferTime.buffertime;
                        }
                        e.a(imgoPlayerView3.getLogTag(), "buffering cost(ms):" + ImgoPlayerView.this.mLastBufferTime.buffertime + ",type:" + i3, true);
                        e.a(ImgoPlayerView.this.getLogTag(), "buffering_end(ms) mBufferingNum:" + ImgoPlayerView.this.mBufferingNum + ",mBufferingTime:" + ImgoPlayerView.this.mBufferingTime, true);
                        e.a(ImgoPlayerView.this.getLogTag(), "buffering_end(ms) mSeekingTime:" + ImgoPlayerView.this.mSeekingNum + ",mSeekingTime:" + ImgoPlayerView.this.mSeekingTime, true);
                        PlayerListener.OnBufferListener onBufferListener = ImgoPlayerView.this.mBufferListener;
                        if (onBufferListener != null) {
                            onBufferListener.onBufferUpdate("100");
                        }
                        ImgoPlayerView.this.isBufferStart = false;
                    }
                    ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                    if (imgoPlayerView4.mPlayerTick != null && imgoPlayerView4.isPlaying()) {
                        ImgoPlayerView.this.mPlayerTick.c();
                    }
                    ImgoPlayerView.this.mCpuMonitor.b();
                    ImgoPlayerView.this.endBuffering(i3);
                } else {
                    if (i2 == 900) {
                        ImgoPlayerView imgoPlayerView5 = ImgoPlayerView.this;
                        if (imgoPlayerView5.mBeforeFirstFrame) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            ImgoPlayerView imgoPlayerView6 = ImgoPlayerView.this;
                            imgoPlayerView5.mFirstFrameCostMs = jCurrentTimeMillis - imgoPlayerView6.mStartPlayTime;
                            imgoPlayerView6.mBeforeFirstFrame = false;
                            e.a(imgoPlayerView6.getLogTag(), "MEDIA_INFO_RENDERING_START cost(ms):" + ImgoPlayerView.this.mFirstFrameCostMs, true);
                        }
                        ImgoPlayerView imgoPlayerView7 = ImgoPlayerView.this;
                        if (imgoPlayerView7.isFirstPlay) {
                            ExTicker exTicker2 = imgoPlayerView7.mPlayerTick;
                            if (exTicker2 != null) {
                                exTicker2.a();
                            }
                            PlayerListener.OnInfoListener onInfoListener = ImgoPlayerView.this.mOnInfoListener;
                            if (onInfoListener != null) {
                                onInfoListener.onInfo(i2, i3);
                            }
                            ImgoPlayerView imgoPlayerView8 = ImgoPlayerView.this;
                            IVideoView iVideoView = imgoPlayerView8.mVideoView;
                            imgoPlayerView8.isFirstPlay = false;
                        }
                        return true;
                    }
                    if (i2 == 2803) {
                        ImgoPlayerView.this.mDataSourceType = i3;
                    } else if (i2 == 700001) {
                        try {
                            List<Integer> list = ImgoPlayerView.this.mDownloadSpeedList;
                            if (list != null) {
                                if (list.size() >= 20) {
                                    ImgoPlayerView.this.mDownloadSpeedList.remove(0);
                                }
                                ImgoPlayerView.this.mDownloadSpeedList.add(Integer.valueOf(i3));
                            }
                        } catch (Exception unused) {
                        }
                        return true;
                    }
                }
                PlayerListener.OnInfoListener onInfoListener2 = ImgoPlayerView.this.mOnInfoListener;
                if (onInfoListener2 != null) {
                    onInfoListener2.onInfo(i2, i3);
                }
                return true;
            }
        };
        this.mWaringListener = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                PlayerListener.OnWarningListener onWarningListener;
                if (ImgoPlayerView.this.isBeforeFirstFrame() || (onWarningListener = ImgoPlayerView.this.mOnWarningListener) == null) {
                    return;
                }
                onWarningListener.onTsSkip(str, i2, i3);
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                PlayerListener.OnWarningListener onWarningListener = ImgoPlayerView.this.mOnWarningListener;
                if (onWarningListener != null) {
                    onWarningListener.onWarning(i2, str, str2);
                }
            }
        };
        this.mSurfaceHolderListener = new IVideoView.SurfaceHolderListener() {
            @Override
            public void surfaceChanged() {
                System.out.println("mSurfaceHolderListener surfaceChanged ");
            }

            @Override
            public void surfaceCreated() {
                System.out.println("mSurfaceHolderListener surfaceCreated ");
            }

            @Override
            public void surfaceDestroyed() {
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (imgoPlayerView.isPlayOK && !imgoPlayerView.mVideoView.isCompletion()) {
                    ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                    c.a(imgoPlayerView2.breakPointDao, imgoPlayerView2.videoId, imgoPlayerView2.videoPath, imgoPlayerView2.getCurrentPosition(), ImgoPlayerView.this.getDuration());
                }
                System.out.println("mSurfaceHolderListener surfaceDestroyed ");
            }
        };
        this.mChangeSourceListener = new IVideoView.OnChangeSourceListener() {
            @Override
            public void onChangeSourceFailed(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onChangeSourceInfo(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }

            @Override
            public void onChangeSourceSuccess(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }
        };
        this.playerTag = Schema.DEFAULT_NAME;
        this.mSubTitleCallback = new ISubtitle.SubtitleCallback() {
            @Override
            public void onError(SubtitleSource subtitleSource) {
                PlayerListener.OnSubtitleCallback onSubtitleCallback = ImgoPlayerView.this.mOnSubtitlesCallback;
                if (onSubtitleCallback != null) {
                    onSubtitleCallback.onError(subtitleSource);
                }
            }

            @Override
            public void onSuccess(SubtitleSource subtitleSource) {
                PlayerListener.OnSubtitleCallback onSubtitleCallback = ImgoPlayerView.this.mOnSubtitlesCallback;
                if (onSubtitleCallback != null) {
                    onSubtitleCallback.onSuccess(subtitleSource);
                }
            }
        };
        initContent(context, 0, true);
    }

    public ImgoPlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.showBufferingView = true;
        this.handler = new InternalHandler(this);
        this.mBeforeFirstFrame = true;
        this.mLastBufferTime = new BufferTime();
        this.mErrorMsg = "";
        this.isBufferStart = false;
        this.mCurrentDisplayType = 0;
        this.mTargetDisplayType = 0;
        this.mCpuMonitor = new com.mgtv.thirdsdk.playcore.utils.a();
        this.mFirstPlay = true;
        this.mPlayBreakPoint = true;
        this.mVideoSizeChangedListener = new IVideoView.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                e.b(ImgoPlayerView.TAG, "onVideoSizeChanged: w:" + i2 + "; h:" + i3, true);
                PlayerListener.OnVideoSizeChangedListener onVideoSizeChangedListener = ImgoPlayerView.this.mOnVideoSizeChangedListener;
                if (onVideoSizeChangedListener != null) {
                    onVideoSizeChangedListener.onVideoSizeChanged(i2, i3);
                }
            }
        };
        this.mUpdateStatusListener = new IVideoView.OnUpdateStatusListener() {
            @Override
            public void onUpdateStatus() {
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                PlayerListener.OnUpdateStatusListener onUpdateStatusListener = imgoPlayerView.mOnUpdateStatusListener;
                if (onUpdateStatusListener == null || imgoPlayerView.mVideoView == null) {
                    return;
                }
                onUpdateStatusListener.onUpdateStatus(imgoPlayerView.isPlaying(), ImgoPlayerView.this.mVideoView.isPrepared(), ImgoPlayerView.this.mVideoView.isCompletion());
            }
        };
        this.mPreparedListener = new IVideoView.OnPreparedListener() {
            @Override
            public void onPrepared() {
                a aVar;
                a aVar2;
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (imgoPlayerView.isFirstPlay) {
                    if (imgoPlayerView.mFirstPlay) {
                        imgoPlayerView.mFirstPlay = false;
                    }
                    if (c.i()) {
                        ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                        imgoPlayerView2.breakPoint = c.a(imgoPlayerView2.breakPointDao, imgoPlayerView2.videoId);
                    }
                    if (c.i() && (aVar2 = ImgoPlayerView.this.breakPoint) != null && aVar2.e() != 0) {
                        ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                        if (imgoPlayerView3.mPlayBreakPoint) {
                            ImgoPlayerView.this.seekTo(imgoPlayerView3.breakPoint.e());
                        }
                        ImgoPlayerView.this.isPosPlay = true;
                    } else if (ImgoPlayerView.this.changeDefinition) {
                        ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                        if (!imgoPlayerView4.isLive && imgoPlayerView4.mPlayBreakPoint && (aVar = imgoPlayerView4.breakPoint) != null) {
                            ImgoPlayerView.this.seekTo(aVar.e());
                        }
                    }
                    PlayerListener.OnPreparedListener onPreparedListener = ImgoPlayerView.this.mOnPreparedListener;
                    if (onPreparedListener != null) {
                        onPreparedListener.onPrepared();
                    }
                }
            }
        };
        this.mEventInfoListener = new IVideoView.OnEventInfoListener() {
            @Override
            public void onInfo(int i2, int i3) {
                PlayerListener.onEventInfoListener oneventinfolistener = ImgoPlayerView.this.mOnEventInfoListener;
                if (oneventinfolistener != null) {
                    oneventinfolistener.onInfo(i2, i3);
                }
            }
        };
        this.mStartListener = new IVideoView.OnStartListener() {
            @Override
            public void onStart() {
                ExTicker exTicker;
                ImgoPlayerView.this.mNetStatusMonitor.c();
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (!imgoPlayerView.isBufferStart && (exTicker = imgoPlayerView.mPlayerTick) != null) {
                    exTicker.c();
                }
                ImgoPlayerView.this.mCpuMonitor.b();
                PlayerListener.OnStartListener onStartListener = ImgoPlayerView.this.mOnStartListener;
                if (onStartListener != null) {
                    onStartListener.onStart();
                }
            }
        };
        this.mPauseListener = new IVideoView.OnPauseListener() {
            @Override
            public void onPause() {
                ImgoPlayerView.this.mNetStatusMonitor.a();
                ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                if (exTicker != null) {
                    exTicker.b();
                }
                ImgoPlayerView.this.mCpuMonitor.a();
                PlayerListener.OnPauseListener onPauseListener = ImgoPlayerView.this.mOnPauseListener;
                if (onPauseListener != null) {
                    onPauseListener.onPause();
                }
            }
        };
        this.mCompletionListener = new IVideoView.OnCompletionListener() {
            @Override
            public void onCompletion(int i2, int i3) {
                ImgoPlayerView.this.onInnerCompletion(i2, i3);
            }
        };
        this.mErrorListener = new IVideoView.OnErrorListener() {
            @Override
            public boolean onError(int i2, int i3) {
                if (ImgoPlayerView.this.mVideoView != null) {
                    StringBuilder sb = new StringBuilder();
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    sb.append(imgoPlayerView.mErrorMsg);
                    sb.append("_ErrorUrl_");
                    sb.append(ImgoPlayerView.this.mVideoView.getErrorUrl());
                    sb.append("/n");
                    imgoPlayerView.mErrorMsg = sb.toString();
                }
                ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                if (imgoPlayerView2.mVideoView != null && imgoPlayerView2.isMgtvPlayer()) {
                    new DecimalFormat(".00");
                }
                ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                if (exTicker != null) {
                    exTicker.d();
                }
                ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                if (imgoPlayerView3.isPlayOK) {
                    try {
                        c.a(imgoPlayerView3.breakPointDao, imgoPlayerView3.videoId, imgoPlayerView3.videoPath, imgoPlayerView3.getCurrentPosition(), ImgoPlayerView.this.getDuration());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                ImgoPlayerView.this.callbackError(i2, i3);
                ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                imgoPlayerView4.mNetStatusMonitor.b(imgoPlayerView4.context);
                return true;
            }
        };
        this.mSeekCompleteListener = new IVideoView.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete() {
                ImgoPlayerView.this.getCurrentPosition();
                PlayerListener.OnSeekCompleteListener onSeekCompleteListener = ImgoPlayerView.this.mOnSeekCompleteListener;
                if (onSeekCompleteListener != null) {
                    onSeekCompleteListener.onSeekComplete();
                }
            }
        };
        this.mInfoListener = new IVideoView.OnInfoListener() {
            @Override
            public boolean onInfo(int i2, int i3) {
                if (i2 == 900) {
                    ImgoPlayerView.this.isPlayOK = true;
                }
                System.out.println("onInfo what = " + i2);
                if (i2 == 701) {
                    e.b(ImgoPlayerView.this.getLogTag(), "start buffering:what" + i2 + "extra:" + i3, true);
                    ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                    imgoPlayerView.isBufferStart = true;
                    imgoPlayerView.mStartBufferingTime = System.currentTimeMillis();
                    ExTicker exTicker = ImgoPlayerView.this.mPlayerTick;
                    if (exTicker != null) {
                        exTicker.b();
                    }
                    ImgoPlayerView.this.mCpuMonitor.a();
                    ImgoPlayerView.this.startBuffering(i3);
                } else if (i2 == 702) {
                    e.b(ImgoPlayerView.this.getLogTag(), "end buffering:what" + i2 + "extra:" + i3, true);
                    ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                    if (imgoPlayerView2.isBufferStart) {
                        if (imgoPlayerView2.mStartBufferingTime > 0) {
                            imgoPlayerView2.mLastBufferTime.buffertime = System.currentTimeMillis() - ImgoPlayerView.this.mStartBufferingTime;
                        } else {
                            imgoPlayerView2.mLastBufferTime.buffertime = 0L;
                        }
                        ImgoPlayerView imgoPlayerView3 = ImgoPlayerView.this;
                        BufferTime bufferTime = imgoPlayerView3.mLastBufferTime;
                        bufferTime.type = 0;
                        if (i3 == 2) {
                            bufferTime.type = 1;
                            imgoPlayerView3.mSeekingNum++;
                            imgoPlayerView3.mSeekingTime += bufferTime.buffertime;
                        } else {
                            bufferTime.type = 0;
                            imgoPlayerView3.mBufferingNum++;
                            imgoPlayerView3.mBufferingTime += bufferTime.buffertime;
                        }
                        e.a(imgoPlayerView3.getLogTag(), "buffering cost(ms):" + ImgoPlayerView.this.mLastBufferTime.buffertime + ",type:" + i3, true);
                        e.a(ImgoPlayerView.this.getLogTag(), "buffering_end(ms) mBufferingNum:" + ImgoPlayerView.this.mBufferingNum + ",mBufferingTime:" + ImgoPlayerView.this.mBufferingTime, true);
                        e.a(ImgoPlayerView.this.getLogTag(), "buffering_end(ms) mSeekingTime:" + ImgoPlayerView.this.mSeekingNum + ",mSeekingTime:" + ImgoPlayerView.this.mSeekingTime, true);
                        PlayerListener.OnBufferListener onBufferListener = ImgoPlayerView.this.mBufferListener;
                        if (onBufferListener != null) {
                            onBufferListener.onBufferUpdate("100");
                        }
                        ImgoPlayerView.this.isBufferStart = false;
                    }
                    ImgoPlayerView imgoPlayerView4 = ImgoPlayerView.this;
                    if (imgoPlayerView4.mPlayerTick != null && imgoPlayerView4.isPlaying()) {
                        ImgoPlayerView.this.mPlayerTick.c();
                    }
                    ImgoPlayerView.this.mCpuMonitor.b();
                    ImgoPlayerView.this.endBuffering(i3);
                } else {
                    if (i2 == 900) {
                        ImgoPlayerView imgoPlayerView5 = ImgoPlayerView.this;
                        if (imgoPlayerView5.mBeforeFirstFrame) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            ImgoPlayerView imgoPlayerView6 = ImgoPlayerView.this;
                            imgoPlayerView5.mFirstFrameCostMs = jCurrentTimeMillis - imgoPlayerView6.mStartPlayTime;
                            imgoPlayerView6.mBeforeFirstFrame = false;
                            e.a(imgoPlayerView6.getLogTag(), "MEDIA_INFO_RENDERING_START cost(ms):" + ImgoPlayerView.this.mFirstFrameCostMs, true);
                        }
                        ImgoPlayerView imgoPlayerView7 = ImgoPlayerView.this;
                        if (imgoPlayerView7.isFirstPlay) {
                            ExTicker exTicker2 = imgoPlayerView7.mPlayerTick;
                            if (exTicker2 != null) {
                                exTicker2.a();
                            }
                            PlayerListener.OnInfoListener onInfoListener = ImgoPlayerView.this.mOnInfoListener;
                            if (onInfoListener != null) {
                                onInfoListener.onInfo(i2, i3);
                            }
                            ImgoPlayerView imgoPlayerView8 = ImgoPlayerView.this;
                            IVideoView iVideoView = imgoPlayerView8.mVideoView;
                            imgoPlayerView8.isFirstPlay = false;
                        }
                        return true;
                    }
                    if (i2 == 2803) {
                        ImgoPlayerView.this.mDataSourceType = i3;
                    } else if (i2 == 700001) {
                        try {
                            List<Integer> list = ImgoPlayerView.this.mDownloadSpeedList;
                            if (list != null) {
                                if (list.size() >= 20) {
                                    ImgoPlayerView.this.mDownloadSpeedList.remove(0);
                                }
                                ImgoPlayerView.this.mDownloadSpeedList.add(Integer.valueOf(i3));
                            }
                        } catch (Exception unused) {
                        }
                        return true;
                    }
                }
                PlayerListener.OnInfoListener onInfoListener2 = ImgoPlayerView.this.mOnInfoListener;
                if (onInfoListener2 != null) {
                    onInfoListener2.onInfo(i2, i3);
                }
                return true;
            }
        };
        this.mWaringListener = new MgtvPlayerListener.OnWarningListener() {
            @Override
            public void onTsSkip(String str, int i2, int i3) {
                PlayerListener.OnWarningListener onWarningListener;
                if (ImgoPlayerView.this.isBeforeFirstFrame() || (onWarningListener = ImgoPlayerView.this.mOnWarningListener) == null) {
                    return;
                }
                onWarningListener.onTsSkip(str, i2, i3);
            }

            @Override
            public void onWarning(int i2, String str, String str2, Object obj) {
                PlayerListener.OnWarningListener onWarningListener = ImgoPlayerView.this.mOnWarningListener;
                if (onWarningListener != null) {
                    onWarningListener.onWarning(i2, str, str2);
                }
            }
        };
        this.mSurfaceHolderListener = new IVideoView.SurfaceHolderListener() {
            @Override
            public void surfaceChanged() {
                System.out.println("mSurfaceHolderListener surfaceChanged ");
            }

            @Override
            public void surfaceCreated() {
                System.out.println("mSurfaceHolderListener surfaceCreated ");
            }

            @Override
            public void surfaceDestroyed() {
                ImgoPlayerView imgoPlayerView = ImgoPlayerView.this;
                if (imgoPlayerView.isPlayOK && !imgoPlayerView.mVideoView.isCompletion()) {
                    ImgoPlayerView imgoPlayerView2 = ImgoPlayerView.this;
                    c.a(imgoPlayerView2.breakPointDao, imgoPlayerView2.videoId, imgoPlayerView2.videoPath, imgoPlayerView2.getCurrentPosition(), ImgoPlayerView.this.getDuration());
                }
                System.out.println("mSurfaceHolderListener surfaceDestroyed ");
            }
        };
        this.mChangeSourceListener = new IVideoView.OnChangeSourceListener() {
            @Override
            public void onChangeSourceFailed(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceFailed(str, i2, i3);
                }
            }

            @Override
            public void onChangeSourceInfo(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceInfo(str, i2, i3);
                }
            }

            @Override
            public void onChangeSourceSuccess(String str, int i2, int i3) {
                PlayerListener.OnChangeSourceListener onChangeSourceListener = ImgoPlayerView.this.mOnChangeSourceListener;
                if (onChangeSourceListener != null) {
                    onChangeSourceListener.onChangeSourceSuccess(str, i2, i3);
                }
            }
        };
        this.playerTag = Schema.DEFAULT_NAME;
        this.mSubTitleCallback = new ISubtitle.SubtitleCallback() {
            @Override
            public void onError(SubtitleSource subtitleSource) {
                PlayerListener.OnSubtitleCallback onSubtitleCallback = ImgoPlayerView.this.mOnSubtitlesCallback;
                if (onSubtitleCallback != null) {
                    onSubtitleCallback.onError(subtitleSource);
                }
            }

            @Override
            public void onSuccess(SubtitleSource subtitleSource) {
                PlayerListener.OnSubtitleCallback onSubtitleCallback = ImgoPlayerView.this.mOnSubtitlesCallback;
                if (onSubtitleCallback != null) {
                    onSubtitleCallback.onSuccess(subtitleSource);
                }
            }
        };
        initContent(context, 0, true);
    }
}
