package com.mbridge.msdk.dycreator.baseview.videoview;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.dycreator.baseview.videoview.listener.VideoViewEventListener;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultRenderersFactory;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlayerFactory;
import com.mbridge.msdk.playercommon.exoplayer2.PlaybackParameters;
import com.mbridge.msdk.playercommon.exoplayer2.Player;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.source.ConcatenatingMediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.ExtractorMediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.DefaultTrackSelector;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DefaultDataSourceFactory;

public class MBVideoView extends FrameLayout implements Player.EventListener {

    private final String f33886a;

    private final int f33887b;

    private ExoPlayer f33888c;

    private final long f33889d;

    private String[] f33890e;

    private VideoViewEventListener f33891f;

    private final SurfaceHolder.Callback f33892g;

    private final Runnable f33893h;

    private final Runnable f33894i;

    class AnonymousClass1 implements Runnable {

        final MBVideoView f33895a;

        @Override
        public void run() {
            if (this.f33895a.f33891f != null) {
                this.f33895a.f33891f.onBufferingFail("Buffering timeout");
            }
        }
    }

    public MBVideoView(@NonNull Context context) {
        super(context);
        this.f33886a = "MBVideoView";
        this.f33887b = 1000;
        this.f33889d = 5000L;
        this.f33892g = new SurfaceHolder.Callback() {
            @Override
            public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            }

            @Override
            public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
                try {
                    Player.VideoComponent videoComponent = MBVideoView.this.f33888c.getVideoComponent();
                    if (videoComponent != null) {
                        videoComponent.setVideoSurfaceHolder(surfaceHolder);
                    }
                } catch (Throwable th2) {
                    o0.b("MBVideoView", th2.getMessage());
                }
            }

            @Override
            public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            }
        };
        this.f33893h = new Runnable() {
            @Override
            public void run() {
                if (MBVideoView.this.f33891f != null) {
                    MBVideoView.this.f33891f.onBufferingFail("Buffering fail.");
                }
            }
        };
        this.f33894i = new Runnable() {
            @Override
            public void run() {
                try {
                    if (MBVideoView.this.f33888c == null || !MBVideoView.this.isPlaying()) {
                        return;
                    }
                    long currentPosition = MBVideoView.this.f33888c.getCurrentPosition();
                    long duration = MBVideoView.this.f33888c.getDuration();
                    int iRound = Math.round(currentPosition / 1000.0f);
                    int iRound2 = Math.round(duration / 1000.0f);
                    o0.c("MBVideoView", "currentPosition:" + iRound + " duration:" + duration);
                    if (MBVideoView.this.f33891f != null) {
                        MBVideoView.this.f33891f.onPlayProgress(iRound, iRound2);
                    }
                    MBVideoView.this.getHandler().postDelayed(this, 1000L);
                } catch (Exception e10) {
                    o0.b("MBVideoView", e10.getMessage());
                }
            }
        };
    }

    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.f33888c;
        return exoPlayer != null && exoPlayer.getPlaybackState() == 3 && this.f33888c.getPlayWhenReady();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    public void onLoadingChanged(boolean z10) {
    }

    @Override
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        o0.b("MBVideoView", "onPlaybackParametersChanged : " + playbackParameters.speed);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override
    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        String message;
        if (exoPlaybackException == null) {
            message = "Play error and ExoPlayer have not message.";
        } else {
            int i10 = exoPlaybackException.type;
            if (i10 == 0) {
                message = "Play error, because have a SourceException.";
            } else if (i10 == 1) {
                message = "Play error, because have a RendererException.";
            } else if (i10 != 2) {
                message = "Play error and ExoPlayer have not message.";
            } else {
                message = "Play error, because have a UnexpectedException.";
            }
        }
        if (exoPlaybackException.getCause() != null && !TextUtils.isEmpty(exoPlaybackException.getCause().getMessage())) {
            message = exoPlaybackException.getCause().getMessage();
        }
        o0.b("MBVideoView", "onPlayerError : " + message);
        VideoViewEventListener videoViewEventListener = this.f33891f;
        if (videoViewEventListener != null) {
            videoViewEventListener.onPlayerError(exoPlaybackException.type, message);
        }
    }

    @Override
    public void onPlayerStateChanged(boolean z10, int i10) {
        o0.b("MBVideoView", "onPlaybackStateChanged : " + i10);
        if (i10 == 1) {
            o0.b("MBVideoView", "onPlaybackStateChanged : IDLE");
            return;
        }
        if (i10 == 2) {
            o0.b("MBVideoView", "onPlaybackStateChanged : Buffering");
        } else if (i10 == 3) {
            o0.b("MBVideoView", "onPlaybackStateChanged : READY");
        } else {
            if (i10 != 4) {
                return;
            }
            o0.b("MBVideoView", "onPlaybackStateChanged : Ended : PLAY ENDED");
        }
    }

    @Override
    public void onPositionDiscontinuity(int i10) {
        this.f33888c.getCurrentWindowIndex();
    }

    @Override
    public void onRepeatModeChanged(int i10) {
    }

    @Override
    public void onSeekProcessed() {
    }

    @Override
    public void onShuffleModeEnabledChanged(boolean z10) {
    }

    @Override
    public void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i10) {
    }

    @Override
    public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
    }

    public void pause() {
    }

    public void play() {
    }

    public void setVideoUrl(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        this.f33890e = strArr;
        a();
    }

    public void setVideoViewEventLister(VideoViewEventListener videoViewEventListener) {
        this.f33891f = videoViewEventListener;
    }

    public void stop() {
    }

    private void a() {
        try {
            this.f33888c = ExoPlayerFactory.newSimpleInstance(new DefaultRenderersFactory(getContext()), new DefaultTrackSelector(), new DefaultLoadControl());
            ConcatenatingMediaSource concatenatingMediaSource = new ConcatenatingMediaSource();
            for (String str : this.f33890e) {
                concatenatingMediaSource.addMediaSource(new ExtractorMediaSource.Factory(new DefaultDataSourceFactory(getContext(), "MBridge_ExoPlayer")).createMediaSource(Uri.parse(str)));
            }
            this.f33888c.setRepeatMode(0);
            this.f33888c.prepare(concatenatingMediaSource);
            this.f33888c.addListener(this);
        } catch (Throwable th2) {
            o0.b("MBVideoView", th2.getMessage());
            th2.toString();
        }
    }

    public MBVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33886a = "MBVideoView";
        this.f33887b = 1000;
        this.f33889d = 5000L;
        this.f33892g = new SurfaceHolder.Callback() {
            @Override
            public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            }

            @Override
            public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
                try {
                    Player.VideoComponent videoComponent = MBVideoView.this.f33888c.getVideoComponent();
                    if (videoComponent != null) {
                        videoComponent.setVideoSurfaceHolder(surfaceHolder);
                    }
                } catch (Throwable th2) {
                    o0.b("MBVideoView", th2.getMessage());
                }
            }

            @Override
            public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            }
        };
        this.f33893h = new Runnable() {
            @Override
            public void run() {
                if (MBVideoView.this.f33891f != null) {
                    MBVideoView.this.f33891f.onBufferingFail("Buffering fail.");
                }
            }
        };
        this.f33894i = new Runnable() {
            @Override
            public void run() {
                try {
                    if (MBVideoView.this.f33888c == null || !MBVideoView.this.isPlaying()) {
                        return;
                    }
                    long currentPosition = MBVideoView.this.f33888c.getCurrentPosition();
                    long duration = MBVideoView.this.f33888c.getDuration();
                    int iRound = Math.round(currentPosition / 1000.0f);
                    int iRound2 = Math.round(duration / 1000.0f);
                    o0.c("MBVideoView", "currentPosition:" + iRound + " duration:" + duration);
                    if (MBVideoView.this.f33891f != null) {
                        MBVideoView.this.f33891f.onPlayProgress(iRound, iRound2);
                    }
                    MBVideoView.this.getHandler().postDelayed(this, 1000L);
                } catch (Exception e10) {
                    o0.b("MBVideoView", e10.getMessage());
                }
            }
        };
    }

    public MBVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33886a = "MBVideoView";
        this.f33887b = 1000;
        this.f33889d = 5000L;
        this.f33892g = new SurfaceHolder.Callback() {
            @Override
            public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i11, int i12, int i13) {
            }

            @Override
            public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
                try {
                    Player.VideoComponent videoComponent = MBVideoView.this.f33888c.getVideoComponent();
                    if (videoComponent != null) {
                        videoComponent.setVideoSurfaceHolder(surfaceHolder);
                    }
                } catch (Throwable th2) {
                    o0.b("MBVideoView", th2.getMessage());
                }
            }

            @Override
            public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            }
        };
        this.f33893h = new Runnable() {
            @Override
            public void run() {
                if (MBVideoView.this.f33891f != null) {
                    MBVideoView.this.f33891f.onBufferingFail("Buffering fail.");
                }
            }
        };
        this.f33894i = new Runnable() {
            @Override
            public void run() {
                try {
                    if (MBVideoView.this.f33888c == null || !MBVideoView.this.isPlaying()) {
                        return;
                    }
                    long currentPosition = MBVideoView.this.f33888c.getCurrentPosition();
                    long duration = MBVideoView.this.f33888c.getDuration();
                    int iRound = Math.round(currentPosition / 1000.0f);
                    int iRound2 = Math.round(duration / 1000.0f);
                    o0.c("MBVideoView", "currentPosition:" + iRound + " duration:" + duration);
                    if (MBVideoView.this.f33891f != null) {
                        MBVideoView.this.f33891f.onPlayProgress(iRound, iRound2);
                    }
                    MBVideoView.this.getHandler().postDelayed(this, 1000L);
                } catch (Exception e10) {
                    o0.b("MBVideoView", e10.getMessage());
                }
            }
        };
    }

    public MBVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f33886a = "MBVideoView";
        this.f33887b = 1000;
        this.f33889d = 5000L;
        this.f33892g = new SurfaceHolder.Callback() {
            @Override
            public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i12, int i13, int i14) {
            }

            @Override
            public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
                try {
                    Player.VideoComponent videoComponent = MBVideoView.this.f33888c.getVideoComponent();
                    if (videoComponent != null) {
                        videoComponent.setVideoSurfaceHolder(surfaceHolder);
                    }
                } catch (Throwable th2) {
                    o0.b("MBVideoView", th2.getMessage());
                }
            }

            @Override
            public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            }
        };
        this.f33893h = new Runnable() {
            @Override
            public void run() {
                if (MBVideoView.this.f33891f != null) {
                    MBVideoView.this.f33891f.onBufferingFail("Buffering fail.");
                }
            }
        };
        this.f33894i = new Runnable() {
            @Override
            public void run() {
                try {
                    if (MBVideoView.this.f33888c == null || !MBVideoView.this.isPlaying()) {
                        return;
                    }
                    long currentPosition = MBVideoView.this.f33888c.getCurrentPosition();
                    long duration = MBVideoView.this.f33888c.getDuration();
                    int iRound = Math.round(currentPosition / 1000.0f);
                    int iRound2 = Math.round(duration / 1000.0f);
                    o0.c("MBVideoView", "currentPosition:" + iRound + " duration:" + duration);
                    if (MBVideoView.this.f33891f != null) {
                        MBVideoView.this.f33891f.onPlayProgress(iRound, iRound2);
                    }
                    MBVideoView.this.getHandler().postDelayed(this, 1000L);
                } catch (Exception e10) {
                    o0.b("MBVideoView", e10.getMessage());
                }
            }
        };
    }
}
