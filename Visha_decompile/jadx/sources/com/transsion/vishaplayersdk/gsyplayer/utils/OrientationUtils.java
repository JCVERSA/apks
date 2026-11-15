package com.transsion.vishaplayersdk.gsyplayer.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.provider.Settings;
import android.util.Log;
import android.view.OrientationEventListener;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView;
import java.lang.ref.WeakReference;

public class OrientationUtils {
    private static final int LAND_TYPE_NORMAL = 1;
    private static final int LAND_TYPE_NULL = 0;
    private static final int LAND_TYPE_REVERSE = 2;
    private static final String TAG = "visha_playersdk_OrientationUtils";
    private WeakReference<Activity> mActivityWR;
    private boolean mClickPort;
    private OrientationEventListener mOrientationEventListener;
    private WeakReference<GSYVideoWndView> mVideoPlayer;
    private int mScreenType = 1;
    private int mIsLand = 0;
    private boolean mClick = false;
    private boolean mClickLand = false;
    private boolean mEnable = true;
    private boolean mRotateWithSystem = true;
    private boolean mIsPause = false;
    public boolean mOrientationLandWhenPip = false;

    public OrientationUtils(Activity activity, GSYVideoWndView gSYVideoWndView) {
        this.mActivityWR = new WeakReference<>(activity);
        this.mVideoPlayer = new WeakReference<>(gSYVideoWndView);
        init();
    }

    private void init() {
        WeakReference<Activity> weakReference = this.mActivityWR;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        OrientationEventListener orientationEventListener = new OrientationEventListener(this.mActivityWR.get().getApplicationContext()) {
            @Override
            @SuppressLint({"SourceLockedOrientationActivity"})
            public void onOrientationChanged(int i) {
                if (OrientationUtils.this.mActivityWR.get() == null) {
                    return;
                }
                if (Settings.System.getInt(((Activity) OrientationUtils.this.mActivityWR.get()).getContentResolver(), "accelerometer_rotation", 0) != 1 && OrientationUtils.this.mRotateWithSystem) {
                    return;
                }
                if ((OrientationUtils.this.mVideoPlayer == null || OrientationUtils.this.mVideoPlayer.get() == null || !((GSYVideoWndView) OrientationUtils.this.mVideoPlayer.get()).isVerticalFullByVideoSize()) && !OrientationUtils.this.mIsPause) {
                    if ((i >= 0 && i <= 30) || i >= 330) {
                        if (OrientationUtils.this.mClick) {
                            if (OrientationUtils.this.mIsLand <= 0 || OrientationUtils.this.mClickLand) {
                                OrientationUtils.this.mClickPort = true;
                                OrientationUtils.this.mClick = false;
                                OrientationUtils.this.mIsLand = 0;
                                return;
                            }
                            return;
                        }
                        if (OrientationUtils.this.mIsLand > 0) {
                            OrientationUtils.this.mScreenType = 1;
                            ((Activity) OrientationUtils.this.mActivityWR.get()).setRequestedOrientation(1);
                            GSYVideoWndView gSYVideoWndView = (GSYVideoWndView) OrientationUtils.this.mVideoPlayer.get();
                            if (gSYVideoWndView != null && gSYVideoWndView.getFullscreenButton() != null) {
                                if (gSYVideoWndView.isIfCurrentIsFullscreen()) {
                                    gSYVideoWndView.getFullscreenButton().setImageResource(gSYVideoWndView.getShrinkImageRes());
                                } else {
                                    gSYVideoWndView.getFullscreenButton().setImageResource(gSYVideoWndView.getEnlargeImageRes());
                                }
                            }
                            OrientationUtils.this.mIsLand = 0;
                            OrientationUtils.this.mClick = false;
                            return;
                        }
                        return;
                    }
                    if (i >= 240 && i <= 300) {
                        if (OrientationUtils.this.mClick) {
                            if (OrientationUtils.this.mIsLand == 1 || OrientationUtils.this.mClickPort) {
                                OrientationUtils.this.mClickLand = true;
                                OrientationUtils.this.mClick = false;
                                OrientationUtils.this.mIsLand = 1;
                                return;
                            }
                            return;
                        }
                        if (OrientationUtils.this.mIsLand != 1) {
                            OrientationUtils.this.mScreenType = 0;
                            ((Activity) OrientationUtils.this.mActivityWR.get()).setRequestedOrientation(0);
                            GSYVideoWndView gSYVideoWndView2 = (GSYVideoWndView) OrientationUtils.this.mVideoPlayer.get();
                            if (gSYVideoWndView2 != null && gSYVideoWndView2.getFullscreenButton() != null) {
                                gSYVideoWndView2.getFullscreenButton().setImageResource(gSYVideoWndView2.getShrinkImageRes());
                            }
                            OrientationUtils.this.mIsLand = 1;
                            OrientationUtils.this.mClick = false;
                            return;
                        }
                        return;
                    }
                    if (i <= 70 || i >= 95) {
                        return;
                    }
                    if (OrientationUtils.this.mClick) {
                        if (OrientationUtils.this.mIsLand == 2 || OrientationUtils.this.mClickPort) {
                            OrientationUtils.this.mClickLand = true;
                            OrientationUtils.this.mClick = false;
                            OrientationUtils.this.mIsLand = 2;
                            return;
                        }
                        return;
                    }
                    if (OrientationUtils.this.mIsLand != 2) {
                        OrientationUtils.this.mScreenType = 0;
                        ((Activity) OrientationUtils.this.mActivityWR.get()).setRequestedOrientation(8);
                        if (((GSYVideoWndView) OrientationUtils.this.mVideoPlayer.get()).getFullscreenButton() != null) {
                            ((GSYVideoWndView) OrientationUtils.this.mVideoPlayer.get()).getFullscreenButton().setImageResource(((GSYVideoWndView) OrientationUtils.this.mVideoPlayer.get()).getShrinkImageRes());
                        }
                        OrientationUtils.this.mIsLand = 2;
                        OrientationUtils.this.mClick = false;
                    }
                }
            }
        };
        this.mOrientationEventListener = orientationEventListener;
        try {
            orientationEventListener.enable();
        } catch (IllegalStateException e) {
            Log.e(TAG, "IllegalStateException: " + e.getMessage());
        }
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    public int backToProtVideo() {
        if (this.mIsLand <= 0) {
            return 0;
        }
        this.mClick = true;
        this.mActivityWR.get().setRequestedOrientation(1);
        GSYVideoWndView gSYVideoWndView = this.mVideoPlayer.get();
        if (gSYVideoWndView != null && gSYVideoWndView.getFullscreenButton() != null) {
            gSYVideoWndView.getFullscreenButton().setImageResource(gSYVideoWndView.getEnlargeImageRes());
        }
        this.mIsLand = 0;
        this.mClickPort = false;
        return 500;
    }

    public int getIsLand() {
        return this.mIsLand;
    }

    public int getScreenType() {
        return this.mScreenType;
    }

    public boolean isClick() {
        return this.mClick;
    }

    public boolean isClickLand() {
        return this.mClickLand;
    }

    public boolean isClickPort() {
        return this.mClickPort;
    }

    public boolean isEnable() {
        return this.mEnable;
    }

    public boolean isPause() {
        return this.mIsPause;
    }

    public boolean isRotateWithSystem() {
        return this.mRotateWithSystem;
    }

    public void releaseListener() {
        OrientationEventListener orientationEventListener = this.mOrientationEventListener;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    public void resolveByClick() {
        WeakReference<GSYVideoWndView> weakReference;
        if (this.mIsLand != 0 || (weakReference = this.mVideoPlayer) == null || weakReference.get() == null || !this.mVideoPlayer.get().isVerticalFullByVideoSize()) {
            this.mClick = true;
            if (this.mIsLand == 0) {
                if (this.mActivityWR.get().getRequestedOrientation() == 8) {
                    this.mScreenType = 8;
                } else {
                    this.mScreenType = 0;
                }
                this.mActivityWR.get().setRequestedOrientation(this.mScreenType);
                GSYVideoWndView gSYVideoWndView = this.mVideoPlayer.get();
                if (gSYVideoWndView != null && gSYVideoWndView.getFullscreenButton() != null) {
                    gSYVideoWndView.getFullscreenButton().setImageResource(gSYVideoWndView.getShrinkImageRes());
                }
                this.mIsLand = 1;
                this.mClickLand = false;
                return;
            }
            this.mScreenType = 1;
            this.mActivityWR.get().setRequestedOrientation(1);
            GSYVideoWndView gSYVideoWndView2 = this.mVideoPlayer.get();
            if (gSYVideoWndView2 != null && gSYVideoWndView2.getFullscreenButton() != null) {
                if (gSYVideoWndView2.isIfCurrentIsFullscreen()) {
                    gSYVideoWndView2.getFullscreenButton().setImageResource(gSYVideoWndView2.getShrinkImageRes());
                } else {
                    gSYVideoWndView2.getFullscreenButton().setImageResource(gSYVideoWndView2.getEnlargeImageRes());
                }
            }
            this.mIsLand = 0;
            this.mClickPort = false;
        }
    }

    public void restoreOrientation() {
        WeakReference<GSYVideoWndView> weakReference = this.mVideoPlayer;
        if ((weakReference == null || weakReference.get() == null || !this.mVideoPlayer.get().isVerticalFullByVideoSize()) && this.mOrientationLandWhenPip) {
            if (this.mActivityWR.get().getRequestedOrientation() == 8) {
                this.mScreenType = 8;
            } else {
                this.mScreenType = 0;
            }
            this.mActivityWR.get().setRequestedOrientation(this.mScreenType);
            GSYVideoWndView gSYVideoWndView = this.mVideoPlayer.get();
            if (gSYVideoWndView != null && gSYVideoWndView.getFullscreenButton() != null) {
                gSYVideoWndView.getFullscreenButton().setImageResource(gSYVideoWndView.getShrinkImageRes());
            }
            this.mOrientationLandWhenPip = false;
        }
    }

    public void setClick(boolean z) {
        this.mClick = z;
    }

    public void setClickLand(boolean z) {
        this.mClickLand = z;
    }

    public void setClickPort(boolean z) {
        this.mClickPort = z;
    }

    public void setEnable(boolean z) {
        try {
            if (z) {
                if (!isEnable()) {
                    this.mOrientationEventListener.enable();
                    this.mEnable = true;
                }
            } else if (isEnable()) {
                this.mOrientationEventListener.disable();
                this.mEnable = false;
            }
        } catch (IllegalStateException e) {
            Log.e(TAG, "IllegalStateException: " + e.getMessage());
        }
    }

    public void setIsLand(int i) {
        this.mIsLand = i;
    }

    public void setIsPause(boolean z) {
        this.mIsPause = z;
    }

    public void setRotateWithSystem(boolean z) {
        this.mRotateWithSystem = z;
    }

    public void setScreenType(int i) {
        this.mScreenType = i;
    }

    public void updateLandStatusWhenPip() {
        WeakReference<GSYVideoWndView> weakReference = this.mVideoPlayer;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.mOrientationLandWhenPip = this.mVideoPlayer.get().isIfCurrentIsFullscreen();
    }
}
