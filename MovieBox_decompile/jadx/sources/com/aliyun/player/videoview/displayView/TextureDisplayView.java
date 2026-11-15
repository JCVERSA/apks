package com.aliyun.player.videoview.displayView;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import com.aliyun.player.IPlayer;
import com.cicada.player.utils.Logger;

public class TextureDisplayView extends IDisplayView {
    private static final String TAG = "AliDisplayView_" + TextureDisplayView.class.getSimpleName();
    private boolean mReuseSurface;
    private Surface mSurface;
    private SurfaceTexture mSurfaceTexture;
    private TextureView mTextureView;

    public TextureDisplayView(ViewGroup viewGroup) {
        super(viewGroup);
        this.mTextureView = null;
        this.mSurfaceTexture = null;
        this.mSurface = null;
        this.mReuseSurface = true;
    }

    private Bitmap adjustPhotoRotation(Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.preRotate(this.mTextureView.getRotation());
        matrix.preScale(this.mTextureView.getScaleX(), this.mTextureView.getScaleY());
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    @Override
    protected View getRenderView(Context context) {
        TextureView textureView = new TextureView(context);
        this.mTextureView = textureView;
        textureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() {
            @Override
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
                if (TextureDisplayView.this.mSurfaceTexture == null) {
                    TextureDisplayView.this.mSurfaceTexture = surfaceTexture;
                    TextureDisplayView.this.mSurface = new Surface(surfaceTexture);
                } else if (TextureDisplayView.this.mReuseSurface) {
                    TextureDisplayView.this.mTextureView.setSurfaceTexture(TextureDisplayView.this.mSurfaceTexture);
                } else {
                    TextureDisplayView.this.mSurface.release();
                    TextureDisplayView.this.mSurfaceTexture = surfaceTexture;
                    TextureDisplayView.this.mSurface = new Surface(surfaceTexture);
                }
                Logger.i(TextureDisplayView.TAG, TextureDisplayView.this.mTextureView + " onSurfaceTextureAvailable  " + surfaceTexture);
                TextureDisplayView textureDisplayView = TextureDisplayView.this;
                IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener = textureDisplayView.mOnViewStatusListener;
                if (onDisplayViewStatusListener != null) {
                    onDisplayViewStatusListener.onSurfaceCreated(textureDisplayView.mSurface);
                }
            }

            @Override
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                Logger.i(TextureDisplayView.TAG, TextureDisplayView.this.mTextureView + " onSurfaceTextureDestroyed  ");
                IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener = TextureDisplayView.this.mOnViewStatusListener;
                if (onDisplayViewStatusListener == null) {
                    return false;
                }
                onDisplayViewStatusListener.onSurfaceDestroy();
                return false;
            }

            @Override
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
                Logger.i(TextureDisplayView.TAG, TextureDisplayView.this.mTextureView + " onSurfaceTextureSizeChanged  ");
                IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener = TextureDisplayView.this.mOnViewStatusListener;
                if (onDisplayViewStatusListener != null) {
                    onDisplayViewStatusListener.onSurfaceSizeChanged();
                }
            }

            @Override
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        });
        return this.mTextureView;
    }

    @Override
    protected boolean mirrorRenderView(IPlayer.MirrorMode mirrorMode) {
        if (mirrorMode == IPlayer.MirrorMode.MIRROR_MODE_HORIZONTAL) {
            this.mTextureView.setScaleX(-1.0f);
            this.mTextureView.setScaleY(1.0f);
            return true;
        }
        if (mirrorMode == IPlayer.MirrorMode.MIRROR_MODE_VERTICAL) {
            this.mTextureView.setScaleY(-1.0f);
            this.mTextureView.setScaleX(1.0f);
            return true;
        }
        this.mTextureView.setScaleY(1.0f);
        this.mTextureView.setScaleX(1.0f);
        return true;
    }

    @Override
    protected boolean rotateRenderView(IPlayer.RotateMode rotateMode) {
        if (rotateMode == IPlayer.RotateMode.ROTATE_90) {
            this.mTextureView.setRotation(90.0f);
            return true;
        }
        if (rotateMode == IPlayer.RotateMode.ROTATE_180) {
            this.mTextureView.setRotation(180.0f);
            return true;
        }
        if (rotateMode == IPlayer.RotateMode.ROTATE_270) {
            this.mTextureView.setRotation(270.0f);
            return true;
        }
        this.mTextureView.setRotation(0.0f);
        return true;
    }

    @Override
    public void setSurfaceReuse(boolean z10) {
        this.mReuseSurface = z10;
    }

    @Override
    protected Bitmap snapRenderView() {
        Bitmap bitmap = this.mTextureView.getBitmap();
        Bitmap bitmapAdjustPhotoRotation = adjustPhotoRotation(bitmap);
        bitmap.recycle();
        return bitmapAdjustPhotoRotation;
    }
}
