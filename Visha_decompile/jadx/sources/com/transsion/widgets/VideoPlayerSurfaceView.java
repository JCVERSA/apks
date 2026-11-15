package com.transsion.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;

public class VideoPlayerSurfaceView extends SurfaceView implements SurfaceHolder.Callback {
    static final boolean DEBUG = false;
    public static final int RESIZE_MODE_FILL = 3;
    public static final int RESIZE_MODE_FIT = 0;
    public static final int RESIZE_MODE_FIXED_HEIGHT = 2;
    public static final int RESIZE_MODE_FIXED_WIDTH = 1;
    public static final int RESIZE_MODE_ZOOM = 4;
    private static final String TAG = "VideoPlayerSurfaceView";
    private int mResizeMode;
    private SurfaceHolder mSurfaceHolder;
    private SurfaceCallback mSurfaceListener;
    private float mVideoAspectRatio;
    private int mVideoHeight;
    private int mVideoWidth;

    public interface SurfaceCallback {
        void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3);

        void onSurfaceCreated(SurfaceHolder surfaceHolder);

        void onSurfaceDestroyed(SurfaceHolder surfaceHolder);
    }

    public VideoPlayerSurfaceView(Context context) {
        this(context, null, 0);
    }

    private void initVideoView() {
        getHolder().addCallback(this);
    }

    public int getResizeMode() {
        return this.mResizeMode;
    }

    public SurfaceHolder getSurfaceHolder() {
        return this.mSurfaceHolder;
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mVideoAspectRatio <= 0.0f) {
            return;
        }
        int defaultSize = View.getDefaultSize(this.mVideoWidth, i);
        int defaultSize2 = View.getDefaultSize(this.mVideoHeight, i2);
        float f = defaultSize;
        float f2 = defaultSize2;
        float f3 = f / f2;
        float f4 = this.mVideoAspectRatio;
        float f5 = (f4 / f3) - 1.0f;
        int i3 = this.mResizeMode;
        if (i3 != 0) {
            if (i3 == 4) {
                if (f3 < 1.0f && f4 > 0.0f) {
                    defaultSize = Math.round(f4 * f2);
                } else if (f3 > 1.0f && f4 > 0.0f) {
                    defaultSize2 = Math.round(f * (1.0f / f4));
                }
            }
        } else if (f4 != 0.0f) {
            if (f5 > 0.0f) {
                defaultSize2 = Math.round(f / f4);
            } else {
                defaultSize = Math.round(f2 * f4);
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public void onVideoSizeChanged(int i, int i2) {
        int i3;
        SurfaceHolder surfaceHolder;
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
        Log.v(TAG, "onVideoSizeChanged, width = " + i + ", height = " + i2 + ",mVideoWidth=" + this.mVideoWidth + ",mVideoHeight=" + this.mVideoHeight + ",mSurfaceHolder:" + this.mSurfaceHolder);
        int i4 = this.mVideoWidth;
        if (i4 == 0 || (i3 = this.mVideoHeight) == 0 || (surfaceHolder = this.mSurfaceHolder) == null) {
            return;
        }
        this.mVideoAspectRatio = i4 / i3;
        surfaceHolder.setFixedSize(i4, i3);
    }

    public void setResizeMode(int i) {
        Log.i(TAG, "setResizeMode " + i);
        this.mResizeMode = i;
        requestLayout();
    }

    public void setSurfaceListener(SurfaceCallback surfaceCallback) {
        this.mSurfaceListener = surfaceCallback;
    }

    @Override
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Log.v(TAG, "surfaceChanged(" + surfaceHolder + ",width:" + i2 + ",height:" + i3 + ")");
        SurfaceCallback surfaceCallback = this.mSurfaceListener;
        if (surfaceCallback != null) {
            surfaceCallback.onSurfaceChanged(surfaceHolder, i, i2, i3);
        }
    }

    @Override
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.v(TAG, "surfaceCreated(" + surfaceHolder + ")");
        this.mSurfaceHolder = surfaceHolder;
        SurfaceCallback surfaceCallback = this.mSurfaceListener;
        if (surfaceCallback != null) {
            surfaceCallback.onSurfaceCreated(surfaceHolder);
        }
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        SurfaceCallback surfaceCallback = this.mSurfaceListener;
        if (surfaceCallback != null) {
            surfaceCallback.onSurfaceDestroyed(surfaceHolder);
        }
        Log.v(TAG, "surfaceDestroyed(" + surfaceHolder + ")");
        this.mSurfaceHolder = null;
    }

    public VideoPlayerSurfaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoPlayerSurfaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initVideoView();
    }
}
