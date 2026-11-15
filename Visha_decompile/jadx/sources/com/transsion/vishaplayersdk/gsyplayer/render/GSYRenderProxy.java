package com.transsion.vishaplayersdk.gsyplayer.render;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotSaveListener;
import com.transsion.vishaplayersdk.gsyplayer.render.glrender.GSYVideoGLViewBaseRender;
import com.transsion.vishaplayersdk.gsyplayer.render.view.GSYSurfaceView;
import com.transsion.vishaplayersdk.gsyplayer.render.view.GSYTextureView;
import com.transsion.vishaplayersdk.gsyplayer.render.view.GSYVideoGLView;
import com.transsion.vishaplayersdk.gsyplayer.render.view.IGSYRenderView;
import com.transsion.vishaplayersdk.gsyplayer.render.view.listener.IGSYSurfaceListener;
import com.transsion.vishaplayersdk.gsyplayer.utils.GSYVideoType;
import com.transsion.vishaplayersdk.gsyplayer.utils.MeasureHelper;
import java.io.File;

public class GSYRenderProxy {
    protected IGSYRenderView mShowView;

    public static void addToParent(ViewGroup viewGroup, View view) {
        int textureParams = getTextureParams();
        if (viewGroup instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(textureParams, textureParams);
            layoutParams.addRule(13);
            viewGroup.addView(view, layoutParams);
        } else if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(textureParams, textureParams);
            layoutParams2.gravity = 17;
            viewGroup.addView(view, layoutParams2);
        }
    }

    public static int getTextureParams() {
        return GSYVideoType.getShowType() != 0 ? -2 : -1;
    }

    public void addView(Context context, ViewGroup viewGroup, int i, IGSYSurfaceListener iGSYSurfaceListener, MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener, GSYVideoGLView.ShaderInterface shaderInterface, float[] fArr, GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender, int i2) {
        if (GSYVideoType.getRenderType() == 1) {
            IGSYRenderView iGSYRenderView = this.mShowView;
            if (iGSYRenderView != null) {
                GSYSurfaceView.addSurfaceView(context, viewGroup, i, iGSYSurfaceListener, measureFormVideoParamsListener, (GSYSurfaceView) iGSYRenderView);
                return;
            } else {
                this.mShowView = GSYSurfaceView.addSurfaceView(context, viewGroup, i, iGSYSurfaceListener, measureFormVideoParamsListener);
                return;
            }
        }
        if (GSYVideoType.getRenderType() == 2) {
            IGSYRenderView iGSYRenderView2 = this.mShowView;
            if (iGSYRenderView2 != null) {
                this.mShowView = GSYVideoGLView.addGLView(context, viewGroup, i, iGSYSurfaceListener, measureFormVideoParamsListener, shaderInterface, fArr, gSYVideoGLViewBaseRender, i2, (GSYVideoGLView) iGSYRenderView2);
                return;
            } else {
                this.mShowView = GSYVideoGLView.addGLView(context, viewGroup, i, iGSYSurfaceListener, measureFormVideoParamsListener, shaderInterface, fArr, gSYVideoGLViewBaseRender, i2);
                return;
            }
        }
        if (GSYVideoType.getRenderType() != 0) {
            this.mShowView = null;
            return;
        }
        IGSYRenderView iGSYRenderView3 = this.mShowView;
        if (iGSYRenderView3 != null) {
            GSYTextureView.addTextureView(context, viewGroup, i, iGSYSurfaceListener, measureFormVideoParamsListener, (GSYTextureView) iGSYRenderView3);
        } else {
            this.mShowView = GSYTextureView.addTextureView(context, viewGroup, i, iGSYSurfaceListener, measureFormVideoParamsListener);
        }
    }

    public int getHeight() {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            return iGSYRenderView.getRenderView().getHeight();
        }
        return 0;
    }

    public ViewGroup.LayoutParams getLayoutParams() {
        return this.mShowView.getRenderView().getLayoutParams();
    }

    public float getRotation() {
        return this.mShowView.getRenderView().getRotation();
    }

    public View getShowView() {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            return iGSYRenderView.getRenderView();
        }
        return null;
    }

    public int getWidth() {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            return iGSYRenderView.getRenderView().getWidth();
        }
        return 0;
    }

    public Bitmap initCover() {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            return iGSYRenderView.initCover();
        }
        return null;
    }

    public Bitmap initCoverHigh() {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            return iGSYRenderView.initCoverHigh();
        }
        return null;
    }

    public void invalidate() {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.getRenderView().invalidate();
        }
    }

    public void onPause() {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.onRenderPause();
        }
    }

    public void onResume() {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.onRenderResume();
        }
    }

    public void releaseAll() {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.releaseRenderAll();
        }
    }

    public void requestLayout() {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.getRenderView().requestLayout();
        }
    }

    public void saveFrame(File file, GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        saveFrame(file, false, gSYVideoShotSaveListener);
    }

    public void setEffectFilter(GSYVideoGLView.ShaderInterface shaderInterface) {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.setGLEffectFilter(shaderInterface);
        }
    }

    public void setGLRenderMode(int i) {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.setRenderMode(i);
        }
    }

    public void setGLRenderer(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender) {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.setGLRenderer(gSYVideoGLViewBaseRender);
        }
    }

    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.getRenderView().setLayoutParams(layoutParams);
        }
    }

    public void setMatrixGL(float[] fArr) {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.setGLMVPMatrix(fArr);
        }
    }

    public void setRotation(float f) {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.getRenderView().setRotation(f);
        }
    }

    public void setTransform(Matrix matrix) {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.setRenderTransform(matrix);
        }
    }

    public void taskShotPic(GSYVideoShotListener gSYVideoShotListener) {
        taskShotPic(gSYVideoShotListener, false);
    }

    public void saveFrame(File file, boolean z, GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.saveFrame(file, z, gSYVideoShotSaveListener);
        }
    }

    public void taskShotPic(GSYVideoShotListener gSYVideoShotListener, boolean z) {
        IGSYRenderView iGSYRenderView = this.mShowView;
        if (iGSYRenderView != null) {
            iGSYRenderView.taskShotPic(gSYVideoShotListener, z);
        }
    }
}
