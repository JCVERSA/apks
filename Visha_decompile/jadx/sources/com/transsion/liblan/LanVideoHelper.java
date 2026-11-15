package com.transsion.liblan;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import com.transsion.liblan.interfaces.ITranLANVout;
import com.transsion.liblan.interfaces.ITranMedia;
import com.transsion.liblan.util.AndroidUtil;
import com.transsion.liblan.util.DisplayManager;
import com.transsion.liblan.util.LANVideoLayout;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

class LanVideoHelper implements ITranLANVout.OnNewLanVideoLayoutListener {
    private static final String TAG = "LibLAN/VideoHelper";
    private DisplayManager mDisplayManager;
    private TranMediaPlayer mTranMediaPlayer;
    private FrameLayout mVideoSurfaceFrame;
    private TranMediaPlayer.ScaleType mCurrentScaleType = TranMediaPlayer.ScaleType.SURFACE_ORIGINAL;
    private int mVideoHeight = 0;
    private int mVideoWidth = 0;
    private int mVideoVisibleHeight = 0;
    private int mVideoVisibleWidth = 0;
    private int mVideoSarNum = 0;
    private int mVideoSarDen = 0;
    private SurfaceView mVideoSurface = null;
    private SurfaceView mSubtitlesSurface = null;
    private TextureView mVideoTexture = null;
    private final Handler mHandler = new Handler();
    private View.OnLayoutChangeListener mOnLayoutChangeListener = null;

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType;

        static {
            int[] iArr = new int[TranMediaPlayer.ScaleType.values().length];
            $SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType = iArr;
            try {
                iArr[TranMediaPlayer.ScaleType.SURFACE_BEST_FIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType[TranMediaPlayer.ScaleType.SURFACE_FIT_SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType[TranMediaPlayer.ScaleType.SURFACE_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType[TranMediaPlayer.ScaleType.SURFACE_16_9.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType[TranMediaPlayer.ScaleType.SURFACE_4_3.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType[TranMediaPlayer.ScaleType.SURFACE_ORIGINAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public LanVideoHelper(TranMediaPlayer tranMediaPlayer, LANVideoLayout lANVideoLayout, DisplayManager displayManager, boolean z, boolean z2) {
        init(tranMediaPlayer, lANVideoLayout, displayManager, z, !z2);
    }

    private void changeMediaPlayerLayout(int i, int i2) {
        if (this.mTranMediaPlayer.isReleased()) {
        }
        switch (AnonymousClass2.$SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType[this.mCurrentScaleType.ordinal()]) {
            case 1:
                this.mTranMediaPlayer.setAspectRatio(null);
                this.mTranMediaPlayer.setScale(0.0f);
                break;
            case 2:
            case 3:
                ITranMedia.VideoTrack currentVideoTrack = this.mTranMediaPlayer.getCurrentVideoTrack();
                if (currentVideoTrack != null) {
                    int i3 = currentVideoTrack.orientation;
                    boolean z = i3 == 5 || i3 == 6;
                    if (this.mCurrentScaleType != TranMediaPlayer.ScaleType.SURFACE_FIT_SCREEN) {
                        this.mTranMediaPlayer.setScale(0.0f);
                        this.mTranMediaPlayer.setAspectRatio(z ? "" + i2 + StringUtils.PROCESS_POSTFIX_DELIMITER + i : "" + i + StringUtils.PROCESS_POSTFIX_DELIMITER + i2);
                    } else {
                        int i4 = currentVideoTrack.width;
                        int i5 = currentVideoTrack.height;
                        if (z) {
                            i5 = i4;
                            i4 = i5;
                        }
                        int i6 = currentVideoTrack.sarNum;
                        int i7 = currentVideoTrack.sarDen;
                        if (i6 != i7) {
                            i4 = (i4 * i6) / i7;
                        }
                        float f = i4;
                        float f2 = i5;
                        float f3 = i;
                        float f4 = i2;
                        this.mTranMediaPlayer.setScale(f3 / f4 >= f / f2 ? f3 / f : f4 / f2);
                        this.mTranMediaPlayer.setAspectRatio(null);
                    }
                    break;
                }
                break;
            case 4:
                this.mTranMediaPlayer.setAspectRatio("16:9");
                this.mTranMediaPlayer.setScale(0.0f);
                break;
            case 5:
                this.mTranMediaPlayer.setAspectRatio("4:3");
                this.mTranMediaPlayer.setScale(0.0f);
                break;
            case 6:
                this.mTranMediaPlayer.setAspectRatio(null);
                this.mTranMediaPlayer.setScale(1.0f);
                break;
        }
    }

    private void init(TranMediaPlayer tranMediaPlayer, LANVideoLayout lANVideoLayout, DisplayManager displayManager, boolean z, boolean z2) {
        this.mTranMediaPlayer = tranMediaPlayer;
        this.mDisplayManager = displayManager;
        if (displayManager != null && !displayManager.isPrimary()) {
            if (this.mDisplayManager.getPresentation() != null) {
                this.mVideoSurfaceFrame = this.mDisplayManager.getPresentation().getSurfaceFrame();
                this.mVideoSurface = this.mDisplayManager.getPresentation().getSurfaceView();
                this.mSubtitlesSurface = this.mDisplayManager.getPresentation().getSubtitlesSurfaceView();
                return;
            }
            return;
        }
        FrameLayout frameLayout = (FrameLayout) lANVideoLayout.findViewById(R.id.player_surface_frame);
        this.mVideoSurfaceFrame = frameLayout;
        if (!z2) {
            ViewStub viewStub = (ViewStub) frameLayout.findViewById(R.id.texture_stub);
            this.mVideoTexture = (TextureView) (viewStub != null ? viewStub.inflate() : this.mVideoSurfaceFrame.findViewById(R.id.texture_video));
            return;
        }
        ViewStub viewStub2 = (ViewStub) frameLayout.findViewById(R.id.surface_stub);
        this.mVideoSurface = (SurfaceView) (viewStub2 != null ? viewStub2.inflate() : this.mVideoSurfaceFrame.findViewById(R.id.surface_video));
        if (z) {
            ViewStub viewStub3 = (ViewStub) this.mVideoSurfaceFrame.findViewById(R.id.subtitles_surface_stub);
            SurfaceView surfaceView = (SurfaceView) (viewStub3 != null ? viewStub3.inflate() : this.mVideoSurfaceFrame.findViewById(R.id.surface_subtitles));
            this.mSubtitlesSurface = surfaceView;
            surfaceView.setZOrderMediaOverlay(true);
            this.mSubtitlesSurface.getHolder().setFormat(-3);
        }
    }

    public void attachViews() {
        if (this.mVideoSurface == null && this.mVideoTexture == null) {
            return;
        }
        ITranLANVout tranLANVout = this.mTranMediaPlayer.getTranLANVout();
        SurfaceView surfaceView = this.mVideoSurface;
        if (surfaceView != null) {
            tranLANVout.setVideoView(surfaceView);
            SurfaceView surfaceView2 = this.mSubtitlesSurface;
            if (surfaceView2 != null) {
                tranLANVout.setSubtitlesView(surfaceView2);
            }
        } else {
            TextureView textureView = this.mVideoTexture;
            if (textureView == null) {
                return;
            } else {
                tranLANVout.setVideoView(textureView);
            }
        }
        tranLANVout.attachViews(this);
        if (this.mOnLayoutChangeListener == null) {
            this.mOnLayoutChangeListener = new View.OnLayoutChangeListener() {
                private final Runnable runnable = new Runnable() {
                    @Override
                    public void run() {
                        if (LanVideoHelper.this.mVideoSurfaceFrame == null || LanVideoHelper.this.mOnLayoutChangeListener == null) {
                            return;
                        }
                        LanVideoHelper.this.updateVideoSurfaces();
                    }
                };

                @Override
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
                        return;
                    }
                    LanVideoHelper.this.mHandler.removeCallbacks(this.runnable);
                    LanVideoHelper.this.mHandler.post(this.runnable);
                }
            };
        }
        this.mVideoSurfaceFrame.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
        this.mTranMediaPlayer.setVideoTrackEnabled(true);
    }

    public void detachViews() {
        FrameLayout frameLayout;
        View.OnLayoutChangeListener onLayoutChangeListener = this.mOnLayoutChangeListener;
        if (onLayoutChangeListener != null && (frameLayout = this.mVideoSurfaceFrame) != null) {
            frameLayout.removeOnLayoutChangeListener(onLayoutChangeListener);
            this.mOnLayoutChangeListener = null;
        }
        this.mTranMediaPlayer.setVideoTrackEnabled(false);
        this.mTranMediaPlayer.getTranLANVout().detachViews();
    }

    public TranMediaPlayer.ScaleType getVideoScale() {
        return this.mCurrentScaleType;
    }

    @Override
    @TargetApi(17)
    public void onLanNewVideoLayout(ITranLANVout iTranLANVout, int i, int i2, int i3, int i4, int i5, int i6) {
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
        this.mVideoVisibleWidth = i3;
        this.mVideoVisibleHeight = i4;
        this.mVideoSarNum = i5;
        this.mVideoSarDen = i6;
        updateVideoSurfaces();
    }

    public void release() {
        if (this.mTranMediaPlayer.getTranLANVout().areViewsAttached()) {
            detachViews();
        }
        this.mTranMediaPlayer = null;
        this.mVideoSurfaceFrame = null;
        this.mHandler.removeCallbacks(null);
        this.mVideoSurface = null;
        this.mSubtitlesSurface = null;
        this.mVideoTexture = null;
    }

    public void setVideoScale(TranMediaPlayer.ScaleType scaleType) {
        this.mCurrentScaleType = scaleType;
        updateVideoSurfaces();
    }

    /* JADX WARN: Code duplicated, block: B:76:0x012e A[PHI: r1
      0x012e: PHI (r1v20 double) = (r1v18 double), (r1v18 double), (r1v35 double), (r1v37 double) binds: [B:85:0x0145, B:82:0x0140, B:79:0x013b, B:75:0x012c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:77:0x0131 A[PHI: r1
      0x0131: PHI (r1v19 double) = (r1v18 double), (r1v18 double), (r1v35 double), (r1v37 double) binds: [B:85:0x0145, B:82:0x0140, B:79:0x013b, B:75:0x012c] A[DONT_GENERATE, DONT_INLINE]] */
    @TargetApi(24)
    public void updateVideoSurfaces() {
        int width;
        int height;
        double d;
        double d2;
        TranMediaPlayer tranMediaPlayer = this.mTranMediaPlayer;
        if (tranMediaPlayer == null || tranMediaPlayer.isReleased() || !this.mTranMediaPlayer.getTranLANVout().areViewsAttached()) {
            return;
        }
        DisplayManager displayManager = this.mDisplayManager;
        boolean z = false;
        boolean z2 = displayManager == null || displayManager.isPrimary();
        Activity activityResolveActivity = !z2 ? null : AndroidUtil.resolveActivity(this.mVideoSurfaceFrame.getContext());
        if (activityResolveActivity != null) {
            width = this.mVideoSurfaceFrame.getWidth();
            height = this.mVideoSurfaceFrame.getHeight();
        } else {
            DisplayManager displayManager2 = this.mDisplayManager;
            if (displayManager2 == null || displayManager2.getPresentation() == null || this.mDisplayManager.getPresentation().getWindow() == null) {
                return;
            }
            width = this.mDisplayManager.getPresentation().getWindow().getDecorView().getWidth();
            height = this.mDisplayManager.getPresentation().getWindow().getDecorView().getHeight();
        }
        if (width * height == 0) {
            Log.e(TAG, "Invalid surface size");
            return;
        }
        this.mTranMediaPlayer.getTranLANVout().setWindowSize(width, height);
        View view = this.mVideoSurface;
        if (view == null) {
            view = this.mVideoTexture;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (this.mVideoWidth * this.mVideoHeight == 0 || (AndroidUtil.IS_NOUGAT_OR_LATER && activityResolveActivity != null && activityResolveActivity.isInPictureInPictureMode())) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            view.setLayoutParams(layoutParams);
            SurfaceView surfaceView = this.mSubtitlesSurface;
            if (surfaceView != null) {
                surfaceView.setLayoutParams(layoutParams);
            }
            ViewGroup.LayoutParams layoutParams2 = this.mVideoSurfaceFrame.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = -1;
            this.mVideoSurfaceFrame.setLayoutParams(layoutParams2);
            if (this.mVideoWidth * this.mVideoHeight == 0) {
                changeMediaPlayerLayout(width, height);
                return;
            }
            return;
        }
        int i = layoutParams.width;
        if (i == layoutParams.height && i == -1) {
            this.mTranMediaPlayer.setAspectRatio(null);
            this.mTranMediaPlayer.setScale(0.0f);
        }
        double d3 = width;
        double d4 = height;
        if (z2 && this.mVideoSurfaceFrame.getResources().getConfiguration().orientation == 1) {
            z = true;
        }
        if ((width > height && z) || (width < height && !z)) {
            d3 = d4;
            d4 = d3;
        }
        int i2 = this.mVideoSarDen;
        int i3 = this.mVideoSarNum;
        if (i2 == i3) {
            int i4 = this.mVideoVisibleWidth;
            d = i4;
            d2 = ((double) i4) / ((double) this.mVideoVisibleHeight);
        } else {
            d = (((double) this.mVideoVisibleWidth) * ((double) i3)) / ((double) i2);
            d2 = d / ((double) this.mVideoVisibleHeight);
        }
        double d5 = d3 / d4;
        int i5 = AnonymousClass2.$SwitchMap$com$transsion$liblan$TranMediaPlayer$ScaleType[this.mCurrentScaleType.ordinal()];
        if (i5 != 1) {
            if (i5 != 2) {
                if (i5 == 4) {
                    d2 = 1.7777777777777777d;
                    if (d5 < 1.7777777777777777d) {
                        d4 = d3 / d2;
                    } else {
                        d3 = d4 * d2;
                    }
                } else if (i5 == 5) {
                    d2 = 1.3333333333333333d;
                    if (d5 < 1.3333333333333333d) {
                        d4 = d3 / d2;
                    } else {
                        d3 = d4 * d2;
                    }
                } else if (i5 == 6) {
                    d4 = this.mVideoVisibleHeight;
                    d3 = d;
                }
            } else if (d5 >= d2) {
                d4 = d3 / d2;
            } else {
                d3 = d4 * d2;
            }
        } else if (d5 < d2) {
            d4 = d3 / d2;
        } else {
            d3 = d4 * d2;
        }
        layoutParams.width = (int) Math.ceil((d3 * ((double) this.mVideoWidth)) / ((double) this.mVideoVisibleWidth));
        layoutParams.height = (int) Math.ceil((d4 * ((double) this.mVideoHeight)) / ((double) this.mVideoVisibleHeight));
        view.setLayoutParams(layoutParams);
        SurfaceView surfaceView2 = this.mSubtitlesSurface;
        if (surfaceView2 != null) {
            surfaceView2.setLayoutParams(layoutParams);
        }
        view.invalidate();
        SurfaceView surfaceView3 = this.mSubtitlesSurface;
        if (surfaceView3 != null) {
            surfaceView3.invalidate();
        }
    }
}
