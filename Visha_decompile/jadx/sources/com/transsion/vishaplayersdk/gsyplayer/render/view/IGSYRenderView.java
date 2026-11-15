package com.transsion.vishaplayersdk.gsyplayer.render.view;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.view.View;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoShotSaveListener;
import com.transsion.vishaplayersdk.gsyplayer.render.glrender.GSYVideoGLViewBaseRender;
import com.transsion.vishaplayersdk.gsyplayer.render.view.listener.IGSYSurfaceListener;
import com.transsion.vishaplayersdk.gsyplayer.utils.MeasureHelper;
import java.io.File;

public interface IGSYRenderView {
    IGSYSurfaceListener getIGSYSurfaceListener();

    View getRenderView();

    int getSizeH();

    int getSizeW();

    Bitmap initCover();

    Bitmap initCoverHigh();

    void onRenderPause();

    void onRenderResume();

    void releaseRenderAll();

    void saveFrame(File file, boolean z, GSYVideoShotSaveListener gSYVideoShotSaveListener);

    void setGLEffectFilter(GSYVideoGLView.ShaderInterface shaderInterface);

    void setGLMVPMatrix(float[] fArr);

    void setGLRenderer(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender);

    void setIGSYSurfaceListener(IGSYSurfaceListener iGSYSurfaceListener);

    void setRenderMode(int i);

    void setRenderTransform(Matrix matrix);

    void setVideoParamsListener(MeasureHelper.MeasureFormVideoParamsListener measureFormVideoParamsListener);

    void taskShotPic(GSYVideoShotListener gSYVideoShotListener, boolean z);
}
