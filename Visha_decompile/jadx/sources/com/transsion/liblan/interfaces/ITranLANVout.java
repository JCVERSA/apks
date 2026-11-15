package com.transsion.liblan.interfaces;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.MainThread;

public interface ITranLANVout {

    public interface OnNewLanVideoLayoutListener {
        @MainThread
        void onLanNewVideoLayout(ITranLANVout iTranLANVout, int i, int i2, int i3, int i4, int i5, int i6);
    }

    public interface VoutCallback {
        @MainThread
        void onSurfacesCreated(ITranLANVout iTranLANVout);

        @MainThread
        void onSurfacesDestroyed(ITranLANVout iTranLANVout);
    }

    @MainThread
    void addCallback(VoutCallback voutCallback);

    @MainThread
    boolean areViewsAttached();

    @MainThread
    void attachViews();

    @MainThread
    void attachViews(OnNewLanVideoLayoutListener onNewLanVideoLayoutListener);

    @MainThread
    void detachViews();

    boolean existSurface(Surface surface, SurfaceHolder surfaceHolder);

    @MainThread
    void removeCallback(VoutCallback voutCallback);

    @MainThread
    void sendMouseEvent(int i, int i2, int i3, int i4);

    @TargetApi(14)
    @MainThread
    void setSubtitlesSurface(SurfaceTexture surfaceTexture);

    @MainThread
    void setSubtitlesSurface(Surface surface, SurfaceHolder surfaceHolder);

    @MainThread
    void setSubtitlesView(SurfaceView surfaceView);

    @TargetApi(14)
    @MainThread
    void setSubtitlesView(TextureView textureView);

    @TargetApi(14)
    @MainThread
    void setVideoSurface(SurfaceTexture surfaceTexture);

    @MainThread
    void setVideoSurface(Surface surface, SurfaceHolder surfaceHolder);

    @MainThread
    void setVideoView(SurfaceView surfaceView);

    @TargetApi(14)
    @MainThread
    void setVideoView(TextureView textureView);

    @MainThread
    void setWindowSize(int i, int i2);
}
