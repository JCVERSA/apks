package com.transsion.vishaplayersdk.gsyplayer.render.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotSaveListener;
import com.transsion.vishaplayersdk.gsyplayer.render.GSYRenderProxy;
import com.transsion.vishaplayersdk.gsyplayer.render.glrender.GSYVideoGLViewBaseRender;
import com.transsion.vishaplayersdk.gsyplayer.render.view.listener.IGSYSurfaceListener;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import com.transsion.vishaplayersdk.gsyplayer.utils.MeasureHelper;
import java.io.File;

public class GSYSurfaceView extends SurfaceView implements SurfaceHolder.Callback2, IGSYRenderView, MeasureHelper.MeasureFormVideoParamsListener {
    private IGSYSurfaceListener mIGSYSurfaceListener;
    private MeasureHelper.MeasureFormVideoParamsListener mVideoParamsListener;
    private MeasureHelper measureHelper;

    public GSYSurfaceView(Context context) {
        super(context);
        init();
    }

    public static GSYSurfaceView addSurfaceView(Context context, ViewGroup viewGroup, int i, IGSYSurfaceListener iGSYSurfaceListener, MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        GSYSurfaceView gSYSurfaceView = new GSYSurfaceView(context);
        gSYSurfaceView.setIGSYSurfaceListener(iGSYSurfaceListener);
        gSYSurfaceView.setVideoParamsListener(measureFormVideoParamsListener);
        gSYSurfaceView.setRotation(i);
        GSYRenderProxy.addToParent(viewGroup, gSYSurfaceView);
        return gSYSurfaceView;
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
        Debuger.printfLog(getClass().getSimpleName() + " not support initCover now");
        return null;
    }

    @Override
    public Bitmap initCoverHigh() {
        Debuger.printfLog(getClass().getSimpleName() + " not support initCoverHigh now");
        return null;
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
    public void releaseRenderAll() {
        Debuger.printfLog(getClass().getSimpleName() + " not support releaseRenderAll now");
    }

    @Override
    public void saveFrame(File file, boolean z, GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        Debuger.printfLog(getClass().getSimpleName() + " not support saveFrame now");
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
        getHolder().addCallback(this);
        this.mIGSYSurfaceListener = iGSYSurfaceListener;
    }

    @Override
    public void setRenderMode(int i) {
        Debuger.printfLog(getClass().getSimpleName() + " not support setRenderMode now");
    }

    @Override
    public void setRenderTransform(Matrix matrix) {
        Debuger.printfLog(getClass().getSimpleName() + " not support setRenderTransform now");
    }

    @Override
    public void setVideoParamsListener(MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener) {
        this.mVideoParamsListener = measureFormVideoParamsListener;
    }

    @Override
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceSizeChanged(surfaceHolder.getSurface(), i2, i3);
        }
    }

    @Override
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceAvailable(surfaceHolder.getSurface());
        }
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceDestroyed(surfaceHolder.getSurface());
        }
    }

    @Override
    public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
    }

    @Override
    public void taskShotPic(GSYVideoShotListener gSYVideoShotListener, boolean z) {
        Debuger.printfLog(getClass().getSimpleName() + " not support taskShotPic now");
    }

    public GSYSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public static GSYSurfaceView addSurfaceView(Context context, ViewGroup viewGroup, int i, IGSYSurfaceListener iGSYSurfaceListener, MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener, GSYSurfaceView gSYSurfaceView) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        if (gSYSurfaceView == null) {
            gSYSurfaceView = new GSYSurfaceView(context);
        }
        if (gSYSurfaceView.getParent() != null) {
            ((ViewGroup) gSYSurfaceView.getParent()).removeAllViews();
        }
        GSYSurfaceView gSYSurfaceView2 = new GSYSurfaceView(context);
        gSYSurfaceView2.setIGSYSurfaceListener(iGSYSurfaceListener);
        gSYSurfaceView2.setVideoParamsListener(measureFormVideoParamsListener);
        gSYSurfaceView2.setRotation(i);
        GSYRenderProxy.addToParent(viewGroup, gSYSurfaceView2);
        return gSYSurfaceView2;
    }
}
