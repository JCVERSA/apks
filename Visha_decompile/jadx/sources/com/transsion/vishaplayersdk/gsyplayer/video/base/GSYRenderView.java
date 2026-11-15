package com.transsion.vishaplayersdk.gsyplayer.video.base;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.vishaplayersdk.gsyplayer.render.GSYRenderProxy;
import com.transsion.vishaplayersdk.gsyplayer.render.effect.NoEffect;
import com.transsion.vishaplayersdk.gsyplayer.render.glrender.GSYVideoGLViewBaseRender;
import com.transsion.vishaplayersdk.gsyplayer.render.view.GSYVideoGLView;
import com.transsion.vishaplayersdk.gsyplayer.render.view.listener.IGSYSurfaceListener;
import com.transsion.vishaplayersdk.gsyplayer.utils.GSYVideoType;
import com.transsion.vishaplayersdk.gsyplayer.utils.MeasureHelper;

public abstract class GSYRenderView extends FrameLayout implements IGSYSurfaceListener, MeasureHelper.MeasureFormVideoParamsListener {
    protected boolean bHardwareAccelerated;
    protected GSYVideoGLView.ShaderInterface mEffectFilter;
    protected Bitmap mFullPauseBitmap;
    protected float[] mMatrixGL;
    protected int mMode;
    protected GSYVideoGLViewBaseRender mRenderer;
    protected int mRotate;
    protected Surface mSurface;
    protected GSYRenderProxy mTextureView;
    protected ViewGroup mTextureViewContainer;

    public GSYRenderView(@NonNull Context context) {
        super(context);
        this.mEffectFilter = new NoEffect();
        this.mMatrixGL = null;
        this.bHardwareAccelerated = true;
        this.mMode = 0;
    }

    public void addTextureView() {
        if (GSYVideoType.getRenderType() == 3) {
            setCustomRender(this.mTextureViewContainer);
            return;
        }
        GSYRenderProxy gSYRenderProxy = this.mTextureView;
        if (gSYRenderProxy != null) {
            gSYRenderProxy.addView(getContext(), this.mTextureViewContainer, this.mRotate, this, this, this.mEffectFilter, this.mMatrixGL, this.mRenderer, this.mMode);
            return;
        }
        GSYRenderProxy gSYRenderProxy2 = new GSYRenderProxy();
        this.mTextureView = gSYRenderProxy2;
        gSYRenderProxy2.addView(getContext(), this.mTextureViewContainer, this.mRotate, this, this, this.mEffectFilter, this.mMatrixGL, this.mRenderer, this.mMode);
    }

    public void changeTextureViewShowType() {
        if (this.mTextureView != null) {
            int textureParams = getTextureParams();
            ViewGroup.LayoutParams layoutParams = this.mTextureView.getLayoutParams();
            layoutParams.width = textureParams;
            layoutParams.height = textureParams;
            this.mTextureView.setLayoutParams(layoutParams);
        }
    }

    public GSYRenderProxy getRenderProxy() {
        return this.mTextureView;
    }

    public int getTextureParams() {
        return GSYVideoType.getShowType() != 0 ? -2 : -1;
    }

    public void initCover() {
        GSYRenderProxy gSYRenderProxy = this.mTextureView;
        if (gSYRenderProxy != null) {
            this.mFullPauseBitmap = gSYRenderProxy.initCover();
        }
    }

    public boolean isbHardwareAccelerated() {
        return this.bHardwareAccelerated;
    }

    @Override
    public void onSurfaceAvailable(Surface surface) {
        GSYRenderProxy gSYRenderProxy = this.mTextureView;
        pauseLogic(surface, gSYRenderProxy != null && (gSYRenderProxy.getShowView() instanceof TextureView));
    }

    public boolean onSurfaceDestroyed(Surface surface) {
        setDisplay(null);
        releaseSurface(surface);
        return true;
    }

    @Override
    public void onSurfaceSizeChanged(Surface surface, int i, int i2) {
    }

    @Override
    public void onSurfaceUpdated(Surface surface) {
        releasePauseCover();
    }

    public void pauseLogic(Surface surface, boolean z) {
        this.mSurface = surface;
        if (z) {
            showPauseCover();
        }
        setDisplay(this.mSurface);
    }

    public abstract void releasePauseCover();

    public abstract void releaseSurface(Surface surface);

    public abstract void setCustomRender(ViewGroup viewGroup);

    public abstract void setDisplay(Surface surface);

    public void setEffectFilter(GSYVideoGLView.ShaderInterface shaderInterface) {
        this.mEffectFilter = shaderInterface;
        GSYRenderProxy gSYRenderProxy = this.mTextureView;
        if (gSYRenderProxy != null) {
            gSYRenderProxy.setEffectFilter(shaderInterface);
        }
    }

    public void setHardwareAccelerated(boolean z) {
        this.bHardwareAccelerated = z;
    }

    public abstract void setSmallVideoTextureView();

    public void setSmallVideoTextureView(View.OnTouchListener onTouchListener) {
        this.mTextureViewContainer.setOnTouchListener(onTouchListener);
        this.mTextureViewContainer.setOnClickListener(null);
        setSmallVideoTextureView();
    }

    public abstract void showPauseCover();

    public GSYRenderView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEffectFilter = new NoEffect();
        this.mMatrixGL = null;
        this.bHardwareAccelerated = true;
        this.mMode = 0;
    }

    public GSYRenderView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        this.mEffectFilter = new NoEffect();
        this.mMatrixGL = null;
        this.bHardwareAccelerated = true;
        this.mMode = 0;
    }
}
