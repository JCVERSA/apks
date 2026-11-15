package com.transsion.hubsdk.interfaces.view;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.IBinder;
import android.view.SurfaceControl;
import android.view.View;

public interface ITranSurfaceControlAdapter {
    void apply(SurfaceControl.Transaction transaction, boolean z);

    Bitmap captureDisplayAsBitmap(Rect rect);

    boolean checkProtectedContent(SurfaceControl surfaceControl);

    SurfaceControl createSfWithContainerLayer(String str, boolean z, SurfaceControl surfaceControl, String str2);

    SurfaceControl createSfWithEffectLayer(String str, SurfaceControl surfaceControl, String str2);

    IBinder getDefaultApplyToken(SurfaceControl.Transaction transaction);

    IBinder getPhysicalDisplayToken(long j);

    void isRequestChangeScale(String str, String str2);

    SurfaceControl.Transaction remove(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl);

    void setDefaultApplyToken(SurfaceControl.Transaction transaction, IBinder iBinder);

    SurfaceControl.Transaction setMatrix(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Matrix matrix, float[] fArr);

    SurfaceControl.Transaction setMultiWindowLayer(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, boolean z);

    SurfaceControl.Transaction setRelativeLayer(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, SurfaceControl surfaceControl2, int i);

    SurfaceControl.Transaction setShadowRadius(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f);

    void setSmoothCornerRadius(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f);

    void setTranSmoothCorner(View view, float f, float f2);

    SurfaceControl.Transaction setTrustedOverlay(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, boolean z);

    SurfaceControl.Transaction setWindowCrop(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Rect rect);

    boolean smoothcornerCubicEdgeEnabled();

    void startVfxAnimation(View view, int i, float f, float[] fArr, float f2, float f3);
}
