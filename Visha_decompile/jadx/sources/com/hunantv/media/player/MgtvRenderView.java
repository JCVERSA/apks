package com.hunantv.media.player;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.TextureView;
import android.view.View;
import com.hunantv.media.widget.IVideoView;

public class MgtvRenderView {
    public static final int MGTV_AR_16_9_FIT_PARENT = 4;
    public static final int MGTV_AR_4_3_FIT_PARENT = 5;
    public static final int MGTV_AR_ASPECT_FILL_PARENT = 1;
    public static final int MGTV_AR_ASPECT_FIT_PARENT = 0;
    public static final int MGTV_AR_ASPECT_WRAP_CONTENT = 2;
    public static final int MGTV_AR_MATCH_PARENT = 3;
    public static final int MGTV_RENDER_SURFACE_VIEW = 0;
    public static final int MGTV_RENDER_TEXTURE_VIEW = 1;
    private c mFakeFrameView;
    private j mRenderView;

    public MgtvRenderView(Context context) {
        this.mRenderView = new j(context);
    }

    private boolean checkLastFrameValid(TextureView textureView, int i, int i2) {
        if (textureView == null) {
            return false;
        }
        int i3 = i * i2;
        int[] iArr = new int[i3];
        try {
            Bitmap bitmap = textureView.getBitmap(i, i2);
            if (bitmap == null) {
                return false;
            }
            bitmap.getPixels(iArr, 0, i, 0, 0, i, i2);
            for (int i4 = 0; i4 < i3; i4++) {
                if (iArr[i4] != iArr[0]) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String getAspectRatioName(int i) {
        if (i == 0) {
            return "FIT_PARENT";
        }
        if (i == 1) {
            return "FILL_PARENT";
        }
        if (i == 2) {
            return "WRAP_CONTENT";
        }
        if (i == 3) {
            return "MATCH_PARENT";
        }
        if (i != 4) {
            return i != 5 ? "unknown" : "4_3";
        }
        return "16_9";
    }

    public static String getRenderTypeName(int i) {
        if (i != 0) {
            return i != 1 ? "unknown" : "TextureView";
        }
        return "SurfaceView";
    }

    public void addRenderCallback(IMgtvRenderView.IRenderCallback iRenderCallback) {
        this.mRenderView.a(iRenderCallback);
    }

    public void bind(IVideoView iVideoView) {
        this.mRenderView.a(iVideoView);
    }

    public void bindFakeFrameView(c cVar) {
        this.mFakeFrameView = cVar;
    }

    public void bindResizableFrameView(l lVar) {
        this.mRenderView.a(lVar);
    }

    public IMgtvRenderView.FloatRect getDisplayCoordinate() {
        return this.mRenderView.e();
    }

    public IMgtvRenderView getRenderView() {
        return this.mRenderView.a();
    }

    public int getRenderViewType() {
        return this.mRenderView.b();
    }

    public View getView() {
        return this.mRenderView.c();
    }

    public void release() {
        j jVar = this.mRenderView;
        if (jVar != null) {
            jVar.f();
        }
    }

    public void removeRenderCallback(IMgtvRenderView.IRenderCallback iRenderCallback) {
        this.mRenderView.b(iRenderCallback);
    }

    public void reset() {
        j jVar = this.mRenderView;
        if (jVar != null) {
            jVar.g();
        }
    }

    public void saveLastValidFrame() {
        View view = getView();
        if (this.mFakeFrameView == null || view == null || !(view instanceof TextureView) || !checkLastFrameValid((TextureView) view, 160, 90)) {
            return;
        }
        this.mFakeFrameView.setImageBitmap(((TextureView) this.mRenderView.c()).getBitmap());
    }

    public void setAntiAliasing(boolean z) {
        j jVar = this.mRenderView;
        if (jVar != null) {
            jVar.a(z);
        }
    }

    public void setAntiShake(boolean z) {
        j jVar = this.mRenderView;
        if (jVar != null) {
            jVar.b(z);
        }
    }

    public void setAspectRatio(int i) {
        this.mRenderView.b(i);
        c cVar = this.mFakeFrameView;
        if (cVar != null) {
            cVar.setAspectRatio(i);
        }
    }

    public void setDisplayFloatRect(IMgtvRenderView.FloatRect floatRect) {
        this.mRenderView.a(floatRect);
    }

    public void setIsInScaleAnim(boolean z) {
        j jVar = this.mRenderView;
        if (jVar != null) {
            jVar.c(z);
        }
    }

    public void setManualRotation(int i, int i2, int i3, int i4, int i5) {
        this.mRenderView.a(i, i2, i3, i4, i5);
    }

    public void setRenderFilter(int i) {
        this.mRenderView.c(i);
    }

    public void setVideoRotation(int i) {
        this.mRenderView.a(i);
        c cVar = this.mFakeFrameView;
        if (cVar != null) {
            cVar.setVideoRotation(i);
        }
    }

    public void setVideoSampleAspectRatio(int i, int i2) {
        this.mRenderView.b(i, i2);
    }

    public void setVideoSize(int i, int i2) {
        this.mRenderView.a(i, i2);
        c cVar = this.mFakeFrameView;
        if (cVar != null) {
            cVar.a(i, i2);
        }
    }

    public boolean shouldWaitForResize() {
        return this.mRenderView.d();
    }

    public MgtvRenderView(Context context, int i, boolean z, MgtvPlayerListener.OnWarningListener onWarningListener, com.hunantv.media.player.d.f.a aVar) {
        if (!com.hunantv.media.player.d.d.a && com.hunantv.media.player.d.d.a(com.hunantv.media.report.c.h.e())) {
            z = false;
        }
        this.mRenderView = new j(context, i, z, onWarningListener, aVar);
    }
}
