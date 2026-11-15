package com.cicada.player.utils;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import java.util.concurrent.CountDownLatch;

@NativeUsed
public class DecoderSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener {
    private static final int CREATE_SURFACE_MSG = 12345;
    private int mTextureId = 0;
    private long mDecoderHandler = 0;
    private SurfaceTexture mSurfaceTexture = null;
    private Surface mSurface = null;
    private HandlerThread mHandleThread = new HandlerThread("DecoderSurfaceTexture");
    private Handler mHandler = null;
    private CountDownLatch mCountDown = new CountDownLatch(1);

    public DecoderSurfaceTexture() {
        this.mHandleThread.start();
    }

    private native void onFrameAvailable(long j10);

    @NativeUsed
    public Surface createSurface(int i10, long j10) {
        if (i10 <= 0) {
            return null;
        }
        this.mTextureId = i10;
        this.mDecoderHandler = j10;
        try {
            this.mHandler = new Handler(this.mHandleThread.getLooper()) {
                @Override
                public void handleMessage(Message message) {
                    if (message.what != DecoderSurfaceTexture.CREATE_SURFACE_MSG) {
                        super.handleMessage(message);
                        return;
                    }
                    DecoderSurfaceTexture.this.mSurfaceTexture = new SurfaceTexture(DecoderSurfaceTexture.this.mTextureId);
                    DecoderSurfaceTexture.this.mSurfaceTexture.setOnFrameAvailableListener((DecoderSurfaceTexture) message.obj);
                    DecoderSurfaceTexture.this.mSurface = new Surface(DecoderSurfaceTexture.this.mSurfaceTexture);
                    DecoderSurfaceTexture.this.mCountDown.countDown();
                }
            };
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        Message message = new Message();
        message.what = CREATE_SURFACE_MSG;
        message.obj = this;
        this.mHandler.sendMessage(message);
        try {
            this.mCountDown.await();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return this.mSurface;
    }

    @NativeUsed
    public void dispose() {
        this.mSurface.release();
        this.mHandleThread.quit();
    }

    @NativeUsed
    public void getTransformMatrix(float[] fArr) {
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture == null) {
            return;
        }
        surfaceTexture.getTransformMatrix(fArr);
    }

    @Override
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        onFrameAvailable(this.mDecoderHandler);
    }

    @NativeUsed
    public void updateTexImage() {
        this.mSurfaceTexture.updateTexImage();
    }
}
