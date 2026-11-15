package com.hunantv.media.player;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import com.hunantv.media.widget.IVideoView;

public interface IMgtvRenderView {
    public static final int AR_16_9_FIT_PARENT = 4;
    public static final int AR_4_3_FIT_PARENT = 5;
    public static final int AR_ASPECT_FILL_PARENT = 1;
    public static final int AR_ASPECT_FIT_PARENT = 0;
    public static final int AR_ASPECT_WRAP_CONTENT = 2;
    public static final int AR_MATCH_PARENT = 3;

    public static class Coordinate {
        public float x;
        public float y;

        public Coordinate(float f, float f2) {
            this.x = f;
            this.y = f2;
        }

        public String toString() {
            return "Coordinate{x=" + this.x + ", y=" + this.y + '}';
        }
    }

    public static class FloatRect {
        public Coordinate lt;
        public Coordinate rb;

        public String toString() {
            return "FloatRect{lt=" + this.lt + ", rb=" + this.rb + '}';
        }
    }

    public interface IRenderCallback {
        void onSurfaceChanged(ISurfaceHolder iSurfaceHolder, int i, int i2, int i3);

        void onSurfaceCreated(ISurfaceHolder iSurfaceHolder, int i, int i2);

        void onSurfaceDestroyed(ISurfaceHolder iSurfaceHolder, boolean z);
    }

    public interface ISurfaceHolder {
        void bindToMediaPlayer(h hVar);

        void bindToMediaPlayer(h hVar, int i);

        IMgtvRenderView getRenderView();

        SurfaceHolder getSurfaceHolder();

        SurfaceTexture getSurfaceTexture();

        Surface openSurface();

        void releaseSurface();
    }

    void addRenderCallback(IRenderCallback iRenderCallback);

    void bind(IVideoView iVideoView);

    void bindResizableFrameView(l lVar);

    FloatRect getDisplayFloatRect();

    int getFps();

    com.hunantv.media.player.d.a.d getRenderFilter();

    View getView();

    void releaseFilter();

    void removeRenderCallback(IRenderCallback iRenderCallback);

    void resetFilter();

    void setAntiAliasing(boolean z);

    void setAntiShake(boolean z);

    void setAspectRatio(int i);

    void setDisplayFloatRect(FloatRect floatRect);

    void setIsInScaleAnim(boolean z);

    void setManualRotation(int i, int i2, int i3, int i4, int i5);

    void setRenderFilter(int i);

    void setVideoRotation(int i);

    void setVideoSampleAspectRatio(int i, int i2);

    void setVideoSize(int i, int i2);

    boolean shouldWaitForResize();

    void startFps();

    void stopFps();
}
