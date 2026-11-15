package com.transsion.vishaplayersdk.gsyplayer.render.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotSaveListener;
import com.transsion.vishaplayersdk.gsyplayer.render.GSYRenderProxy;
import com.transsion.vishaplayersdk.gsyplayer.render.effect.NoEffect;
import com.transsion.vishaplayersdk.gsyplayer.render.glrender.GSYVideoGLViewBaseRender;
import com.transsion.vishaplayersdk.gsyplayer.render.glrender.GSYVideoGLViewSimpleRender;
import com.transsion.vishaplayersdk.gsyplayer.render.view.listener.GLSurfaceListener;
import com.transsion.vishaplayersdk.gsyplayer.render.view.listener.GSYVideoGLRenderErrorListener;
import com.transsion.vishaplayersdk.gsyplayer.render.view.listener.IGSYSurfaceListener;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import com.transsion.vishaplayersdk.gsyplayer.utils.FileUtils;
import com.transsion.vishaplayersdk.gsyplayer.utils.MeasureHelper;
import java.io.File;

@SuppressLint({"ViewConstructor"})
public class GSYVideoGLView extends GLSurfaceView implements GLSurfaceListener, IGSYRenderView, MeasureHelper.MeasureFormVideoParamsListener {
    public static final int MODE_LAYOUT_SIZE = 0;
    public static final int MODE_RENDER_SIZE = 1;
    private static final String TAG = "com.transsion.vishaplayersdk.gsyplayer.render.view.GSYVideoGLView";
    private Context mContext;
    private ShaderInterface mEffect;
    private IGSYSurfaceListener mIGSYSurfaceListener;
    private float[] mMVPMatrix;
    private int mMode;
    private GLSurfaceListener mOnGSYSurfaceListener;
    private GSYVideoGLViewBaseRender mRenderer;
    private MeasureHelper.MeasureFormVideoParamsListener mVideoParamsListener;
    private MeasureHelper measureHelper;

    public interface ShaderInterface {
        String getShader(GLSurfaceView gLSurfaceView);
    }

    public GSYVideoGLView(Context context) {
        super(context);
        this.mEffect = new NoEffect();
        this.mMode = 0;
        init(context);
    }

    public static GSYVideoGLView addGLView(final Context context, final ViewGroup viewGroup, final int i, final IGSYSurfaceListener iGSYSurfaceListener, final MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener, ShaderInterface shaderInterface, float[] fArr, GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender, final int i2) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        GSYVideoGLView gSYVideoGLView = new GSYVideoGLView(context);
        if (gSYVideoGLViewBaseRender != null) {
            gSYVideoGLView.setCustomRenderer(gSYVideoGLViewBaseRender);
        }
        gSYVideoGLView.setEffect(shaderInterface);
        gSYVideoGLView.setVideoParamsListener(measureFormVideoParamsListener);
        gSYVideoGLView.setRenderMode(i2);
        gSYVideoGLView.setIGSYSurfaceListener(iGSYSurfaceListener);
        gSYVideoGLView.setRotation(i);
        gSYVideoGLView.initRender();
        gSYVideoGLView.setGSYVideoGLRenderErrorListener(new GSYVideoGLRenderErrorListener() {
            @Override
            public void onError(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender2, String str, int i3, boolean z) {
                if (z) {
                    GSYVideoGLView.addGLView(context, viewGroup, i, iGSYSurfaceListener, measureFormVideoParamsListener, gSYVideoGLViewBaseRender2.getEffect(), gSYVideoGLViewBaseRender2.getMVPMatrix(), gSYVideoGLViewBaseRender2, i2);
                }
            }
        });
        if (fArr != null && fArr.length == 16) {
            gSYVideoGLView.setMVPMatrix(fArr);
        }
        GSYRenderProxy.addToParent(viewGroup, gSYVideoGLView);
        return gSYVideoGLView;
    }

    private void init(Context context) {
        this.mContext = context;
        setEGLContextClientVersion(2);
        this.mRenderer = new GSYVideoGLViewSimpleRender();
        this.measureHelper = new MeasureHelper(this, this);
        this.mRenderer.setSurfaceView(this);
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

    public ShaderInterface getEffect() {
        return this.mEffect;
    }

    @Override
    public IGSYSurfaceListener getIGSYSurfaceListener() {
        return this.mIGSYSurfaceListener;
    }

    public float[] getMVPMatrix() {
        return this.mMVPMatrix;
    }

    public int getMode() {
        return this.mMode;
    }

    @Override
    public View getRenderView() {
        return this;
    }

    public GSYVideoGLViewBaseRender getRenderer() {
        return this.mRenderer;
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

    public void initRender() {
        setRenderer(this.mRenderer);
    }

    public void initRenderMeasure() {
        MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mVideoParamsListener;
        if (measureFormVideoParamsListener == null || this.mMode != 1) {
            return;
        }
        try {
            int currentVideoWidth = measureFormVideoParamsListener.getCurrentVideoWidth();
            int currentVideoHeight = this.mVideoParamsListener.getCurrentVideoHeight();
            GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender = this.mRenderer;
            if (gSYVideoGLViewBaseRender != null) {
                gSYVideoGLViewBaseRender.setCurrentViewWidth(this.measureHelper.getMeasuredWidth());
                this.mRenderer.setCurrentViewHeight(this.measureHelper.getMeasuredHeight());
                this.mRenderer.setCurrentVideoWidth(currentVideoWidth);
                this.mRenderer.setCurrentVideoHeight(currentVideoHeight);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        if (this.mMode != 1) {
            this.measureHelper.prepareMeasure(i, i2, (int) getRotation());
            setMeasuredDimension(this.measureHelper.getMeasuredWidth(), this.measureHelper.getMeasuredHeight());
        } else {
            super.onMeasure(i, i2);
            this.measureHelper.prepareMeasure(i, i2, (int) getRotation());
            initRenderMeasure();
        }
    }

    @Override
    public void onRenderPause() {
        requestLayout();
        onPause();
    }

    @Override
    public void onRenderResume() {
        requestLayout();
        onResume();
    }

    @Override
    public void onResume() {
        super.onResume();
        GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender = this.mRenderer;
        if (gSYVideoGLViewBaseRender != null) {
            gSYVideoGLViewBaseRender.initRenderSize();
        }
    }

    @Override
    public void onSurfaceAvailable(Surface surface) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceAvailable(surface);
        }
    }

    public void releaseAll() {
        GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender = this.mRenderer;
        if (gSYVideoGLViewBaseRender != null) {
            gSYVideoGLViewBaseRender.releaseAll();
        }
    }

    @Override
    public void releaseRenderAll() {
        requestLayout();
        releaseAll();
    }

    @Override
    public void saveFrame(final File file, boolean z, final GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        setGSYVideoShotListener(new GSYVideoShotListener() {
            @Override
            public void getBitmap(Bitmap bitmap) {
                if (bitmap == null) {
                    gSYVideoShotSaveListener.result(false, file);
                } else {
                    FileUtils.saveBitmap(bitmap, file);
                    gSYVideoShotSaveListener.result(true, file);
                }
            }
        }, z);
        takeShotPic();
    }

    public void setCustomRenderer(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender) {
        this.mRenderer = gSYVideoGLViewBaseRender;
        gSYVideoGLViewBaseRender.setSurfaceView(this);
        initRenderMeasure();
    }

    public void setEffect(ShaderInterface shaderInterface) {
        if (shaderInterface != null) {
            this.mEffect = shaderInterface;
            this.mRenderer.setEffect(shaderInterface);
        }
    }

    @Override
    public void setGLEffectFilter(ShaderInterface shaderInterface) {
        setEffect(shaderInterface);
    }

    @Override
    public void setGLMVPMatrix(float[] fArr) {
        setMVPMatrix(fArr);
    }

    @Override
    public void setGLRenderer(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender) {
        setCustomRenderer(gSYVideoGLViewBaseRender);
    }

    public void setGSYVideoGLRenderErrorListener(GSYVideoGLRenderErrorListener gSYVideoGLRenderErrorListener) {
        this.mRenderer.setGSYVideoGLRenderErrorListener(gSYVideoGLRenderErrorListener);
    }

    public void setGSYVideoShotListener(GSYVideoShotListener gSYVideoShotListener, boolean z) {
        this.mRenderer.setGSYVideoShotListener(gSYVideoShotListener, z);
    }

    @Override
    public void setIGSYSurfaceListener(IGSYSurfaceListener iGSYSurfaceListener) {
        setOnGSYSurfaceListener(this);
        this.mIGSYSurfaceListener = iGSYSurfaceListener;
    }

    public void setMVPMatrix(float[] fArr) {
        if (fArr != null) {
            this.mMVPMatrix = fArr;
            this.mRenderer.setMVPMatrix(fArr);
        }
    }

    public void setMode(int i) {
        this.mMode = i;
    }

    public void setOnGSYSurfaceListener(GLSurfaceListener gLSurfaceListener) {
        this.mOnGSYSurfaceListener = gLSurfaceListener;
        this.mRenderer.setGSYSurfaceListener(gLSurfaceListener);
    }

    @Override
    public void setRenderMode(int i) {
        setMode(i);
    }

    @Override
    public void setRenderTransform(Matrix matrix) {
        Debuger.printfLog(getClass().getSimpleName() + " not support setRenderTransform now");
    }

    @Override
    public void setVideoParamsListener(MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener) {
        this.mVideoParamsListener = measureFormVideoParamsListener;
    }

    public void takeShotPic() {
        this.mRenderer.takeShotPic();
    }

    @Override
    public void taskShotPic(GSYVideoShotListener gSYVideoShotListener, boolean z) {
        if (gSYVideoShotListener != null) {
            setGSYVideoShotListener(gSYVideoShotListener, z);
            takeShotPic();
        }
    }

    public GSYVideoGLView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEffect = new NoEffect();
        this.mMode = 0;
        init(context);
    }

    public static GSYVideoGLView addGLView(final Context context, final ViewGroup viewGroup, final int i, final IGSYSurfaceListener iGSYSurfaceListener, final MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener, ShaderInterface shaderInterface, float[] fArr, GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender, final int i2, GSYVideoGLView gSYVideoGLView) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        GSYVideoGLView gSYVideoGLView2 = gSYVideoGLView == null ? new GSYVideoGLView(context) : gSYVideoGLView;
        if (gSYVideoGLView2.getParent() != null) {
            ((ViewGroup) gSYVideoGLView2.getParent()).removeAllViews();
        }
        if (gSYVideoGLViewBaseRender != null) {
            gSYVideoGLView2.setCustomRenderer(gSYVideoGLViewBaseRender);
        }
        gSYVideoGLView2.setEffect(shaderInterface);
        gSYVideoGLView2.setVideoParamsListener(measureFormVideoParamsListener);
        gSYVideoGLView2.setRenderMode(i2);
        gSYVideoGLView2.setIGSYSurfaceListener(iGSYSurfaceListener);
        gSYVideoGLView2.setRotation(i);
        gSYVideoGLView2.initRender();
        gSYVideoGLView2.setGSYVideoGLRenderErrorListener(new GSYVideoGLRenderErrorListener() {
            @Override
            public void onError(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender2, String str, int i3, boolean z) {
                if (z) {
                    GSYVideoGLView.addGLView(context, viewGroup, i, iGSYSurfaceListener, measureFormVideoParamsListener, gSYVideoGLViewBaseRender2.getEffect(), gSYVideoGLViewBaseRender2.getMVPMatrix(), gSYVideoGLViewBaseRender2, i2);
                }
            }
        });
        if (fArr != null && fArr.length == 16) {
            gSYVideoGLView2.setMVPMatrix(fArr);
        }
        GSYRenderProxy.addToParent(viewGroup, gSYVideoGLView2);
        return gSYVideoGLView2;
    }
}
