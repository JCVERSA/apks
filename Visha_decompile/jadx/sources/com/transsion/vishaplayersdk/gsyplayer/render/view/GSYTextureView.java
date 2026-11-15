package com.transsion.vishaplayersdk.gsyplayer.render.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotSaveListener;
import com.transsion.vishaplayersdk.gsyplayer.render.GSYRenderProxy;
import com.transsion.vishaplayersdk.gsyplayer.render.glrender.GSYVideoGLViewBaseRender;
import com.transsion.vishaplayersdk.gsyplayer.render.view.listener.IGSYSurfaceListener;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import com.transsion.vishaplayersdk.gsyplayer.utils.FileUtils;
import com.transsion.vishaplayersdk.gsyplayer.utils.GSYVideoType;
import com.transsion.vishaplayersdk.gsyplayer.utils.MeasureHelper;
import java.io.File;

public class GSYTextureView extends TextureView implements TextureView.SurfaceTextureListener, IGSYRenderView, MeasureHelper.MeasureFormVideoParamsListener {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + GSYTextureView.class.getSimpleName();
    public static GSYTextureView gsyTextureView;
    private IGSYSurfaceListener mIGSYSurfaceListener;
    private SurfaceTexture mSaveTexture;
    private Surface mSurface;
    private MeasureHelper.MeasureFormVideoParamsListener mVideoParamsListener;
    private MeasureHelper measureHelper;

    public GSYTextureView(Context context) {
        super(context);
        init();
    }

    public static GSYTextureView addTextureView(Context context, ViewGroup viewGroup, int i, IGSYSurfaceListener iGSYSurfaceListener, MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        GSYTextureView gSYTextureView = new GSYTextureView(context);
        gSYTextureView.setIGSYSurfaceListener(iGSYSurfaceListener);
        gSYTextureView.setVideoParamsListener(measureFormVideoParamsListener);
        gSYTextureView.setRotation(i);
        GSYRenderProxy.addToParent(viewGroup, gSYTextureView);
        return gSYTextureView;
    }

    private void init() {
        this.measureHelper = new MeasureHelper(this, this);
    }

    @Override
    public int getCurrentVideoHeight() {
        MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mVideoParamsListener;
        if (measureFormVideoParamsListener != null) {
            return measureFormVideoParamsListener.getCurrentVideoHeight();
        }
        return 0;
    }

    @Override
    public int getCurrentVideoWidth() {
        MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mVideoParamsListener;
        if (measureFormVideoParamsListener != null) {
            return measureFormVideoParamsListener.getCurrentVideoWidth();
        }
        return 0;
    }

    @Override
    public IGSYSurfaceListener getIGSYSurfaceListener() {
        return this.mIGSYSurfaceListener;
    }

    @Override
    public View getRenderView() {
        return this;
    }

    @Override
    public int getSizeH() {
        return getHeight();
    }

    @Override
    public int getSizeW() {
        return getWidth();
    }

    @Override
    public int getVideoSarDen() {
        MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mVideoParamsListener;
        if (measureFormVideoParamsListener != null) {
            return measureFormVideoParamsListener.getVideoSarDen();
        }
        return 0;
    }

    @Override
    public int getVideoSarNum() {
        MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mVideoParamsListener;
        if (measureFormVideoParamsListener != null) {
            return measureFormVideoParamsListener.getVideoSarNum();
        }
        return 0;
    }

    @Override
    public Bitmap initCover() {
        return getBitmap(Bitmap.createBitmap(getSizeW(), getSizeH(), Bitmap.Config.RGB_565));
    }

    @Override
    public Bitmap initCoverHigh() {
        return getBitmap(Bitmap.createBitmap(getSizeW(), getSizeH(), Bitmap.Config.ARGB_8888));
    }

    @Override
    public void onMeasure(int i, int i2) {
        this.measureHelper.prepareMeasure(i, i2, (int) getRotation());
        setMeasuredDimension(this.measureHelper.getMeasuredWidth(), this.measureHelper.getMeasuredHeight());
    }

    @Override
    public void onRenderPause() {
        Debuger.printfLog(getClass().getSimpleName() + " not support onRenderPause now");
    }

    @Override
    public void onRenderResume() {
        Debuger.printfLog(getClass().getSimpleName() + " not support onRenderResume now");
    }

    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        LogUtils.j(TAG, "onSurfaceTextureAvailable " + GSYVideoType.isMediaCodecTexture());
        if (GSYVideoType.isMediaCodecTexture()) {
            SurfaceTexture surfaceTexture2 = this.mSaveTexture;
            if (surfaceTexture2 == null) {
                this.mSaveTexture = surfaceTexture;
                this.mSurface = new Surface(surfaceTexture);
            } else {
                setSurfaceTexture(surfaceTexture2);
            }
        } else {
            this.mSurface = new Surface(surfaceTexture);
        }
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceAvailable(this.mSurface);
        }
    }

    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceDestroyed(this.mSurface);
        }
        return !GSYVideoType.isMediaCodecTexture() || this.mSaveTexture == null;
    }

    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceSizeChanged(this.mSurface, i, i2);
        }
    }

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceUpdated(this.mSurface);
        }
    }

    @Override
    public void releaseRenderAll() {
        Debuger.printfLog(getClass().getSimpleName() + " not support releaseRenderAll now");
    }

    @Override
    public void saveFrame(final File file, boolean z, final GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        GSYVideoShotListener gSYVideoShotListener = new GSYVideoShotListener() {
            @Override
            public void getBitmap(Bitmap bitmap) {
                if (bitmap == null) {
                    gSYVideoShotSaveListener.result(false, file);
                } else {
                    FileUtils.saveBitmap(bitmap, file);
                    gSYVideoShotSaveListener.result(true, file);
                }
            }
        };
        if (z) {
            gSYVideoShotListener.getBitmap(initCoverHigh());
        } else {
            gSYVideoShotListener.getBitmap(initCover());
        }
    }

    @Override
    public void setGLEffectFilter(GSYVideoGLView.ShaderInterface shaderInterface) {
        Debuger.printfLog(getClass().getSimpleName() + " not support setGLEffectFilter now");
    }

    @Override
    public void setGLMVPMatrix(float[] fArr) {
        Debuger.printfLog(getClass().getSimpleName() + " not support setGLMVPMatrix now");
    }

    @Override
    public void setGLRenderer(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender) {
        Debuger.printfLog(getClass().getSimpleName() + " not support setGLRenderer now");
    }

    @Override
    public void setIGSYSurfaceListener(IGSYSurfaceListener iGSYSurfaceListener) {
        setSurfaceTextureListener(this);
        this.mIGSYSurfaceListener = iGSYSurfaceListener;
    }

    @Override
    public void setRenderMode(int i) {
        Debuger.printfLog(getClass().getSimpleName() + " not support setRenderMode now");
    }

    @Override
    public void setRenderTransform(Matrix matrix) {
        setTransform(matrix);
    }

    @Override
    public void setVideoParamsListener(MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener) {
        this.mVideoParamsListener = measureFormVideoParamsListener;
    }

    @Override
    public void taskShotPic(GSYVideoShotListener gSYVideoShotListener, boolean z) {
        if (z) {
            gSYVideoShotListener.getBitmap(initCoverHigh());
        } else {
            gSYVideoShotListener.getBitmap(initCover());
        }
    }

    public GSYTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public static GSYTextureView addTextureView(Context context, ViewGroup viewGroup, int i, IGSYSurfaceListener iGSYSurfaceListener, MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener, GSYTextureView gSYTextureView) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        if (gSYTextureView == null) {
            gSYTextureView = new GSYTextureView(context);
        }
        LogUtils.j(TAG, "addTextureView:" + gSYTextureView);
        if (gSYTextureView.getParent() != null) {
            ((ViewGroup) gSYTextureView.getParent()).removeAllViews();
        }
        gSYTextureView.setIGSYSurfaceListener(iGSYSurfaceListener);
        gSYTextureView.setVideoParamsListener(measureFormVideoParamsListener);
        gSYTextureView.setRotation(i);
        GSYRenderProxy.addToParent(viewGroup, gSYTextureView);
        return gSYTextureView;
    }
}
