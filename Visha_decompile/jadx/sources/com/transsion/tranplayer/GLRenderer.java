package com.transsion.tranplayer;

import android.graphics.Point;

public class GLRenderer {
    private MediaPlayer.SurfaceListener mListener;
    private int mLastTextureId = 0;
    private boolean mFrameUpdated = false;
    private boolean mSurfaceCreated = false;
    private long mInstance = 0;

    public GLRenderer(int i, MediaPlayer mediaPlayer, MediaPlayer.SurfaceListener surfaceListener) {
        if (surfaceListener == null) {
            throw new IllegalArgumentException("listener can't be null");
        }
        this.mListener = surfaceListener;
        nativeInit(mediaPlayer, i);
    }

    private native int nativeGetVideoTexture(Point point);

    private native void nativeInit(MediaPlayer mediaPlayer, int i);

    private native void nativeOnSurfaceCreated();

    private native void nativeOnSurfaceDestroyed();

    private native void nativeRelease();

    public int getVideoTexture(Point point) {
        int iNativeGetVideoTexture = nativeGetVideoTexture(point);
        if (iNativeGetVideoTexture == this.mLastTextureId) {
            this.mLastTextureId = iNativeGetVideoTexture;
            this.mFrameUpdated = false;
        } else if (iNativeGetVideoTexture != 0) {
            this.mFrameUpdated = true;
        }
        return iNativeGetVideoTexture;
    }

    public synchronized boolean isValid() {
        return this.mSurfaceCreated;
    }

    public boolean isVideoFrameUpdated() {
        return this.mFrameUpdated;
    }

    public synchronized void onSurfaceCreated() {
        nativeOnSurfaceCreated();
        if (!this.mSurfaceCreated) {
            this.mSurfaceCreated = true;
            this.mListener.onSurfaceCreated();
        }
    }

    public synchronized void onSurfaceDestroyed() {
        if (this.mSurfaceCreated) {
            this.mSurfaceCreated = false;
            this.mListener.onSurfaceDestroyed();
            nativeOnSurfaceDestroyed();
        }
    }

    public void release() {
        nativeRelease();
    }
}
