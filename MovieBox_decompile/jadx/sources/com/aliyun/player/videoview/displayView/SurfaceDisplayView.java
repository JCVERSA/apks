package com.aliyun.player.videoview.displayView;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import com.aliyun.player.IPlayer;
import com.cicada.player.utils.Logger;

public class SurfaceDisplayView extends IDisplayView {
    private static final String TAG = "AliDisplayView_" + SurfaceDisplayView.class.getSimpleName();
    private SurfaceView surfaceView;

    public SurfaceDisplayView(ViewGroup viewGroup) {
        super(viewGroup);
        this.surfaceView = null;
    }

    @Override
    protected View getRenderView(Context context) {
        SurfaceView surfaceView = new SurfaceView(context);
        this.surfaceView = surfaceView;
        surfaceView.getHolder().addCallback(new SurfaceHolder.Callback2() {
            @Override
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
                Logger.i(SurfaceDisplayView.TAG, "surfaceChanged ");
                IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener = SurfaceDisplayView.this.mOnViewStatusListener;
                if (onDisplayViewStatusListener != null) {
                    onDisplayViewStatusListener.onSurfaceSizeChanged();
                }
            }

            @Override
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                Surface surface = surfaceHolder.getSurface();
                Logger.i(SurfaceDisplayView.TAG, "onSurfaceCreated  " + surface);
                IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener = SurfaceDisplayView.this.mOnViewStatusListener;
                if (onDisplayViewStatusListener != null) {
                    onDisplayViewStatusListener.onSurfaceCreated(surface);
                }
            }

            @Override
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                Logger.i(SurfaceDisplayView.TAG, "surfaceDestroyed ");
                IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener = SurfaceDisplayView.this.mOnViewStatusListener;
                if (onDisplayViewStatusListener != null) {
                    onDisplayViewStatusListener.onSurfaceDestroy();
                }
            }

            @Override
            public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
                Logger.i(SurfaceDisplayView.TAG, "surfaceRedrawNeeded ");
            }
        });
        return this.surfaceView;
    }

    @Override
    protected boolean mirrorRenderView(IPlayer.MirrorMode mirrorMode) {
        return false;
    }

    @Override
    protected boolean rotateRenderView(IPlayer.RotateMode rotateMode) {
        return false;
    }

    @Override
    protected Bitmap snapRenderView() {
        return null;
    }

    @Override
    public void setSurfaceReuse(boolean z10) {
    }
}
