package com.aliyun.player.nativeclass;

import android.content.Context;
import android.view.Surface;
import com.aliyun.player.ApasaraExternalPlayer;
import com.aliyun.player.IPlayer;
import com.aliyun.utils.NativeLoader;
import com.cicada.player.utils.NativeUsed;

@NativeUsed
public class NativeExternalPlayer {
    private static Context sContext;
    private ApasaraExternalPlayer mExternPlayer = null;
    private long mNativeInstance = 0;

    static {
        NativeLoader.loadPlayer();
        sContext = null;
    }

    private int getCurrentStreamIndex(int i10) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return -1;
        }
        ApasaraExternalPlayer.StreamType streamType = ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN;
        if (i10 == 0) {
            streamType = ApasaraExternalPlayer.StreamType.ST_TYPE_VIDEO;
        } else if (i10 == 1) {
            streamType = ApasaraExternalPlayer.StreamType.ST_TYPE_AUDIO;
        } else if (i10 == 2) {
            streamType = ApasaraExternalPlayer.StreamType.ST_TYPE_SUB;
        }
        return apasaraExternalPlayer.getCurrentStreamIndex(streamType);
    }

    private String getOption(String str) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return null;
        }
        return apasaraExternalPlayer.getOption(str);
    }

    private long getPropertyInt(ApasaraExternalPlayer.PropertyKey propertyKey) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return 0L;
        }
        return apasaraExternalPlayer.getPropertyInt(propertyKey);
    }

    private long getPropertyLong(ApasaraExternalPlayer.PropertyKey propertyKey) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return 0L;
        }
        return apasaraExternalPlayer.getPropertyLong(propertyKey);
    }

    private String getPropertyString(ApasaraExternalPlayer.PropertyKey propertyKey) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return null;
        }
        return apasaraExternalPlayer.getPropertyString(propertyKey);
    }

    private int invokeComponent(String str) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return -1;
        }
        return apasaraExternalPlayer.invokeComponent(str);
    }

    @NativeUsed
    public static boolean isSupport(Options options) {
        return ApasaraExternalPlayer.isSupportExternal(options) != null;
    }

    public native void nativeOnAutoPlayStart(long j10);

    public native void nativeOnBufferPositionUpdate(long j10, long j11);

    public native void nativeOnCaptureScreen(long j10, int i10, int i11, byte[] bArr);

    public native void nativeOnCompletion(long j10);

    public native void nativeOnErrorCallback(long j10, long j11, String str);

    public native void nativeOnEventCallback(long j10, long j11, String str);

    public native void nativeOnFirstFrameShow(long j10);

    public native void nativeOnLoadingEnd(long j10);

    public native void nativeOnLoadingProgress(long j10, long j11);

    public native void nativeOnLoadingStart(long j10);

    public native void nativeOnLoopingStart(long j10);

    public native void nativeOnPositionUpdate(long j10, long j11);

    public native void nativeOnPrepared(long j10);

    public native void nativeOnSeekEnd(long j10, boolean z10);

    public native void nativeOnSeeking(long j10, boolean z10);

    public native void nativeOnStatusChanged(long j10, int i10, int i11);

    public native void nativeOnStreamInfoGet(long j10, MediaInfo mediaInfo);

    public native void nativeOnStreamSwitchSuc(long j10, int i10, TrackInfo trackInfo);

    public native void nativeOnSubtitleExtAdd(long j10, long j11, String str);

    public native void nativeOnSubtitleHide(long j10, long j11, byte[] bArr);

    public native void nativeOnSubtitleShow(long j10, long j11, byte[] bArr);

    public native void nativeOnVideoRendered(long j10, long j11, long j12);

    public native void nativeOnVideoSizeChanged(long j10, int i10, int i11);

    public native byte[] nativeRequestKey(long j10, String str, byte[] bArr);

    public native byte[] nativeRequestProvision(long j10, String str, byte[] bArr);

    private int selectExtSubtitle(int i10, boolean z10) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return -1;
        }
        return apasaraExternalPlayer.selectExtSubtitle(i10, z10);
    }

    public static void setContext(Context context) {
        if (sContext != null || context == null) {
            return;
        }
        sContext = context.getApplicationContext();
    }

    private void setDecoderType(int i10) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return;
        }
        ApasaraExternalPlayer.DecoderType decoderType = ApasaraExternalPlayer.DecoderType.DT_SOFTWARE;
        if (i10 == 0 || i10 == 1) {
            decoderType = ApasaraExternalPlayer.DecoderType.DT_HARDWARE;
        }
        apasaraExternalPlayer.setDecoderType(decoderType);
    }

    private void setMirrorMode(int i10) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return;
        }
        IPlayer.MirrorMode mirrorMode = IPlayer.MirrorMode.MIRROR_MODE_NONE;
        if (i10 != 0) {
            if (i10 == 1) {
                mirrorMode = IPlayer.MirrorMode.MIRROR_MODE_HORIZONTAL;
            } else if (i10 == 2) {
                mirrorMode = IPlayer.MirrorMode.MIRROR_MODE_VERTICAL;
            }
        }
        apasaraExternalPlayer.setMirrorMode(mirrorMode);
    }

    private int setOption(String str, String str2) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return -1;
        }
        return apasaraExternalPlayer.setOption(str, str2);
    }

    private void setRotateMode(int i10) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return;
        }
        IPlayer.RotateMode rotateMode = IPlayer.RotateMode.ROTATE_0;
        if (i10 == 90) {
            rotateMode = IPlayer.RotateMode.ROTATE_90;
        } else if (i10 == 180) {
            rotateMode = IPlayer.RotateMode.ROTATE_180;
        } else if (i10 == 270) {
            rotateMode = IPlayer.RotateMode.ROTATE_270;
        }
        apasaraExternalPlayer.setRotateMode(rotateMode);
    }

    private void setScaleMode(int i10) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return;
        }
        IPlayer.ScaleMode scaleMode = IPlayer.ScaleMode.SCALE_ASPECT_FIT;
        if (i10 != 0) {
            if (i10 == 1) {
                scaleMode = IPlayer.ScaleMode.SCALE_ASPECT_FILL;
            } else if (i10 == 2) {
                scaleMode = IPlayer.ScaleMode.SCALE_TO_FILL;
            }
        }
        apasaraExternalPlayer.setScaleMode(scaleMode);
    }

    @NativeUsed
    ApasaraExternalPlayer.StreamType SwitchStream(int i10) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        return apasaraExternalPlayer == null ? ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN : apasaraExternalPlayer.switchStream(i10);
    }

    public boolean callRbPvD(String str, boolean z10) {
        if (this.mExternPlayer == null) {
            return z10;
        }
        if ("IsMute".equals(str)) {
            return this.mExternPlayer.isMute();
        }
        if ("isLooping".equals(str)) {
            return this.mExternPlayer.isLooping();
        }
        return "IsAutoPlay".equals(str) ? this.mExternPlayer.isAutoPlay() : z10;
    }

    public float callRfPvD(String str, float f10) {
        if (this.mExternPlayer == null) {
            return f10;
        }
        if ("GetVideoRenderFps".equals(str)) {
            return this.mExternPlayer.getVideoRenderFps();
        }
        if ("GetVolume".equals(str)) {
            return this.mExternPlayer.getVolume();
        }
        if ("getSpeed".equals(str)) {
            return this.mExternPlayer.getSpeed();
        }
        return "GetVideoDecodeFps".equals(str) ? this.mExternPlayer.getVideoDecodeFps() : f10;
    }

    public int callRiPiD(String str, int i10, int i11) {
        if (this.mExternPlayer == null) {
            return i11;
        }
        if ("GetCurrentStreamIndex".equals(str)) {
            return getCurrentStreamIndex(i10);
        }
        return "SwitchStream".equals(str) ? SwitchStream(i10).getValue() : i11;
    }

    public int callRiPvD(String str, int i10) {
        if (this.mExternPlayer == null) {
            return i10;
        }
        if ("Stop".equals(str)) {
            this.mExternPlayer.stop();
            return 0;
        }
        if ("GetScaleMode".equals(str)) {
            return this.mExternPlayer.getScaleMode().getValue();
        }
        if ("GetRotateMode".equals(str)) {
            return this.mExternPlayer.getRotateMode().getValue();
        }
        if ("GetMirrorMode".equals(str)) {
            return this.mExternPlayer.getMirrorMode().getValue();
        }
        if ("GetDecoderType".equals(str)) {
            return this.mExternPlayer.getDecoderType().getValue();
        }
        if ("getVideoWidth".equals(str)) {
            return this.mExternPlayer.getVideoWidth();
        }
        if ("getVideoHeight".equals(str)) {
            return this.mExternPlayer.getVideoHeight();
        }
        return "GetVideoRotation".equals(str) ? this.mExternPlayer.getVideoRotation() : i10;
    }

    public long callRlPvD(String str, long j10) {
        if (this.mExternPlayer == null) {
            return j10;
        }
        if ("GetDuration".equals(str)) {
            return this.mExternPlayer.getDuration();
        }
        if ("GetPlayingPosition".equals(str)) {
            return this.mExternPlayer.getPlayingPosition();
        }
        if ("GetBufferPosition".equals(str)) {
            return this.mExternPlayer.getBufferPosition();
        }
        return "GetMasterClockPts".equals(str) ? this.mExternPlayer.getMasterClockPts() : j10;
    }

    public Object callRoPi(String str, int i10) {
        if (this.mExternPlayer == null) {
            return null;
        }
        if ("GetCurrentStreamInfo".equals(str)) {
            return getCurrentStreamInfo(i10);
        }
        if ("getName".equals(str)) {
            return getName();
        }
        return null;
    }

    public void callRvPf(String str, float f10) {
        if (this.mExternPlayer == null) {
            return;
        }
        if ("SetVolume".equals(str)) {
            this.mExternPlayer.setVolume(f10);
        }
        if ("setSpeed".equals(str)) {
            this.mExternPlayer.setSpeed(f10);
        }
    }

    public void callRvPi(String str, int i10) {
        if (this.mExternPlayer == null) {
            return;
        }
        if ("SetVolume".equals(str)) {
            this.mExternPlayer.setVolume(i10);
            return;
        }
        if ("SetScaleMode".equals(str)) {
            setScaleMode(i10);
            return;
        }
        if ("SetRotateMode".equals(str)) {
            setRotateMode(i10);
            return;
        }
        if ("SetMirrorMode".equals(str)) {
            setMirrorMode(i10);
            return;
        }
        if ("SetTimeout".equals(str)) {
            this.mExternPlayer.setTimeout(i10);
        } else if ("SetDropBufferThreshold".equals(str)) {
            this.mExternPlayer.setDropBufferThreshold(i10);
        } else if ("SetDecoderType".equals(str)) {
            setDecoderType(i10);
        }
    }

    public void callRvPlb(String str, long j10, boolean z10) {
        if (this.mExternPlayer == null) {
            return;
        }
        if ("SeekTo".equals(str)) {
            this.mExternPlayer.seekTo(j10, z10);
            return;
        }
        if ("SetVideoBackgroundColor".equals(str)) {
            this.mExternPlayer.setVideoBackgroundColor(j10);
            return;
        }
        if ("Mute".equals(str)) {
            this.mExternPlayer.mute(z10);
            return;
        }
        if ("EnterBackGround".equals(str)) {
            this.mExternPlayer.enterBackGround(z10);
            return;
        }
        if ("SetLooping".equals(str)) {
            this.mExternPlayer.setLooping(z10);
        } else if ("SetAutoPlay".equals(str)) {
            this.mExternPlayer.setAutoPlay(z10);
        } else if ("selectExtSubtitle".equals(str)) {
            this.mExternPlayer.selectExtSubtitle((int) j10, z10);
        }
    }

    public void callRvPo(String str, Object obj) {
        if (this.mExternPlayer != null && "SetView".equals(str)) {
            this.mExternPlayer.setSurface((Surface) obj);
        }
    }

    public void callRvPs(String str, String str2) {
        if (this.mExternPlayer == null) {
            return;
        }
        if ("SetDataSource".equals(str)) {
            this.mExternPlayer.setDataSource(str2);
            return;
        }
        if ("addExtSubtitle".equals(str)) {
            this.mExternPlayer.addExtSubtitle(str2);
            return;
        }
        if ("AddCustomHttpHeader".equals(str)) {
            this.mExternPlayer.addCustomHttpHeader(str2);
        } else if ("SetUserAgent".equals(str)) {
            this.mExternPlayer.setUserAgent(str2);
        } else if ("SetRefer".equals(str)) {
            this.mExternPlayer.setRefer(str2);
        }
    }

    public void callRvPv(String str) {
        if (this.mExternPlayer == null) {
            return;
        }
        if ("Release".equals(str)) {
            this.mExternPlayer.release();
            this.mNativeInstance = 0L;
            this.mExternPlayer = null;
            return;
        }
        if ("Prepare".equals(str)) {
            this.mExternPlayer.prepare();
            return;
        }
        if ("Start".equals(str)) {
            this.mExternPlayer.start();
            return;
        }
        if ("Pause".equals(str)) {
            this.mExternPlayer.pause();
            return;
        }
        if ("CaptureScreen".equals(str)) {
            this.mExternPlayer.captureScreen();
        } else if ("reLoad".equals(str)) {
            this.mExternPlayer.reLoad();
        } else if ("RemoveAllCustomHttpHeader".equals(str)) {
            this.mExternPlayer.removeAllCustomHttpHeader();
        }
    }

    @NativeUsed
    public void create(long j10, Options options) {
        ApasaraExternalPlayer apasaraExternalPlayerIsSupportExternal = ApasaraExternalPlayer.isSupportExternal(options);
        if (apasaraExternalPlayerIsSupportExternal != null) {
            this.mExternPlayer = apasaraExternalPlayerIsSupportExternal.create(sContext, options);
        }
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return;
        }
        this.mNativeInstance = j10;
        apasaraExternalPlayer.setOnPreparedListener(new ApasaraExternalPlayer.OnPreparedListener() {
            @Override
            public void onPrepared() {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnPrepared(nativeExternalPlayer.mNativeInstance);
            }
        });
        this.mExternPlayer.setOnLoopingStartListener(new ApasaraExternalPlayer.OnLoopingStartListener() {
            @Override
            public void onLoopingStart() {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnLoopingStart(nativeExternalPlayer.mNativeInstance);
            }
        });
        this.mExternPlayer.setOnCompletionListener(new ApasaraExternalPlayer.OnCompletionListener() {
            @Override
            public void onCompletion() {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnCompletion(nativeExternalPlayer.mNativeInstance);
            }
        });
        this.mExternPlayer.setOnFirstFrameRenderListener(new ApasaraExternalPlayer.OnFirstFrameRenderListener() {
            @Override
            public void onFirstFrameRender() {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnFirstFrameShow(nativeExternalPlayer.mNativeInstance);
            }
        });
        this.mExternPlayer.setOnLoadStatusListener(new ApasaraExternalPlayer.OnLoadStatusListener() {
            @Override
            public void onLoadingEnd() {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnLoadingEnd(nativeExternalPlayer.mNativeInstance);
            }

            @Override
            public void onLoadingProgress(int i10) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnLoadingProgress(nativeExternalPlayer.mNativeInstance, i10);
            }

            @Override
            public void onLoadingStart() {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnLoadingStart(nativeExternalPlayer.mNativeInstance);
            }
        });
        this.mExternPlayer.setOnAutoPlayStartListener(new ApasaraExternalPlayer.OnAutoPlayStartListener() {
            @Override
            public void onAutoPlayStart() {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnAutoPlayStart(nativeExternalPlayer.mNativeInstance);
            }
        });
        this.mExternPlayer.setOnSeekStatusListener(new ApasaraExternalPlayer.OnSeekStatusListener() {
            @Override
            public void onSeekEnd(boolean z10) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnSeekEnd(nativeExternalPlayer.mNativeInstance, z10);
            }

            @Override
            public void onSeekStart(boolean z10) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnSeeking(nativeExternalPlayer.mNativeInstance, z10);
            }
        });
        this.mExternPlayer.setOnPositionUpdateListener(new ApasaraExternalPlayer.OnPositionUpdateListener() {
            @Override
            public void onPositionUpdate(long j11) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnPositionUpdate(nativeExternalPlayer.mNativeInstance, j11);
            }
        });
        this.mExternPlayer.setOnBufferPositionUpdateListener(new ApasaraExternalPlayer.OnBufferPositionUpdateListener() {
            @Override
            public void onBufferPositionUpdate(long j11) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnBufferPositionUpdate(nativeExternalPlayer.mNativeInstance, j11);
            }
        });
        this.mExternPlayer.setOnVideoSizeChangedListener(new ApasaraExternalPlayer.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i10, int i11) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnVideoSizeChanged(nativeExternalPlayer.mNativeInstance, i10, i11);
            }
        });
        this.mExternPlayer.setOnStatusChangedListener(new ApasaraExternalPlayer.OnStatusChangedListener() {
            @Override
            public void onStatusChanged(int i10, int i11) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnStatusChanged(nativeExternalPlayer.mNativeInstance, i10, i11);
            }
        });
        this.mExternPlayer.setOnVideoRenderedListener(new ApasaraExternalPlayer.OnVideoRenderedListener() {
            @Override
            public void onVideoRendered(long j11, long j12) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnVideoRendered(nativeExternalPlayer.mNativeInstance, j11, j12);
            }
        });
        this.mExternPlayer.setOnErrorListener(new ApasaraExternalPlayer.OnErrorListener() {
            @Override
            public void onError(int i10, String str) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnErrorCallback(nativeExternalPlayer.mNativeInstance, i10, str);
            }
        });
        this.mExternPlayer.setOnEventListener(new ApasaraExternalPlayer.OnEventListener() {
            @Override
            public void onEvent(int i10, String str) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnEventCallback(nativeExternalPlayer.mNativeInstance, i10, str);
            }
        });
        this.mExternPlayer.setOnStreamInfoGetListener(new ApasaraExternalPlayer.OnStreamInfoGetListener() {
            @Override
            public void OnStreamInfoGet(MediaInfo mediaInfo) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnStreamInfoGet(nativeExternalPlayer.mNativeInstance, mediaInfo);
            }
        });
        this.mExternPlayer.setOnStreamSwitchSucListener(new ApasaraExternalPlayer.OnStreamSwitchSucListener() {
            @Override
            public void onStreamSwitchSuc(ApasaraExternalPlayer.StreamType streamType, TrackInfo trackInfo) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnStreamSwitchSuc(nativeExternalPlayer.mNativeInstance, streamType.ordinal(), trackInfo);
            }
        });
        this.mExternPlayer.setOnCaptureScreenListener(new ApasaraExternalPlayer.OnCaptureScreenListener() {
            @Override
            public void onCaptureScreen(int i10, int i11, byte[] bArr) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnCaptureScreen(nativeExternalPlayer.mNativeInstance, i10, i11, bArr);
            }
        });
        this.mExternPlayer.setOnSubtitleListener(new ApasaraExternalPlayer.OnSubtitleListener() {
            @Override
            public void onSubtitleExtAdded(int i10, String str) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnSubtitleExtAdd(nativeExternalPlayer.mNativeInstance, i10, str);
            }

            @Override
            public void onSubtitleHide(int i10, long j11) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnSubtitleHide(nativeExternalPlayer.mNativeInstance, i10, null);
            }

            @Override
            public void onSubtitleShow(int i10, long j11, String str) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                nativeExternalPlayer.nativeOnSubtitleShow(nativeExternalPlayer.mNativeInstance, i10, str.getBytes());
            }
        });
        this.mExternPlayer.setDrmCallback(new ApasaraExternalPlayer.OnDRMCallback() {
            @Override
            public byte[] onRequestKey(String str, byte[] bArr) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                return nativeExternalPlayer.nativeRequestKey(nativeExternalPlayer.mNativeInstance, str, bArr);
            }

            @Override
            public byte[] onRequestProvision(String str, byte[] bArr) {
                NativeExternalPlayer nativeExternalPlayer = NativeExternalPlayer.this;
                return nativeExternalPlayer.nativeRequestProvision(nativeExternalPlayer.mNativeInstance, str, bArr);
            }
        });
    }

    public Object getCurrentStreamInfo(int i10) {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return null;
        }
        ApasaraExternalPlayer.StreamType streamType = ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN;
        if (i10 == 0) {
            streamType = ApasaraExternalPlayer.StreamType.ST_TYPE_VIDEO;
        } else if (i10 == 1) {
            streamType = ApasaraExternalPlayer.StreamType.ST_TYPE_AUDIO;
        } else if (i10 == 2) {
            streamType = ApasaraExternalPlayer.StreamType.ST_TYPE_SUB;
        }
        return apasaraExternalPlayer.getCurrentStreamInfo(streamType);
    }

    public String getName() {
        ApasaraExternalPlayer apasaraExternalPlayer = this.mExternPlayer;
        if (apasaraExternalPlayer == null) {
            return null;
        }
        return apasaraExternalPlayer.getName();
    }

    public static void loadClass() {
    }
}
