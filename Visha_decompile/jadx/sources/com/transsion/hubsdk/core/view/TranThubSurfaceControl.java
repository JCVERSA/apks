package com.transsion.hubsdk.core.view;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.SurfaceControl;
import android.view.View;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranSurfaceControlAdapter;
import com.transsion.hubsdk.view.ITranSurfaceControl;
import com.transsion.hubsdk.view.TranSurfaceControl;

public class TranThubSurfaceControl implements ITranSurfaceControlAdapter {
    private static final String TAG = "TranThubSurfaceControl";
    private ITranSurfaceControl mService = ITranSurfaceControl.Stub.asInterface(TranServiceManager.getServiceIBinder("surface"));
    private TranSurfaceControl mSurfaceControl;

    private TranSurfaceControl getTranSurfaceControl() {
        if (this.mSurfaceControl == null) {
            this.mSurfaceControl = new TranSurfaceControl();
        }
        return this.mSurfaceControl;
    }

    @Override
    public void apply(SurfaceControl.Transaction transaction, boolean z) {
        getTranSurfaceControl().apply(transaction, z);
    }

    @Override
    public Bitmap captureDisplayAsBitmap(Rect rect) {
        ITranSurfaceControl iTranSurfaceControl = this.mService;
        if (iTranSurfaceControl == null) {
            return null;
        }
        try {
            return iTranSurfaceControl.captureDisplayAsBitmap(rect);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "captureDisplayAsBitmap: e = " + e);
            return null;
        }
    }

    @Override
    public boolean checkProtectedContent(SurfaceControl surfaceControl) {
        return getTranSurfaceControl().checkProtectedContent(surfaceControl);
    }

    @Override
    public SurfaceControl createSfWithContainerLayer(String str, boolean z, SurfaceControl surfaceControl, String str2) {
        return getTranSurfaceControl().createSfWithContainerLayer(str, z, surfaceControl, str2);
    }

    @Override
    public SurfaceControl createSfWithEffectLayer(String str, SurfaceControl surfaceControl, String str2) {
        return getTranSurfaceControl().createSfWithEffectLayer(str, surfaceControl, str2);
    }

    @Override
    public IBinder getDefaultApplyToken(SurfaceControl.Transaction transaction) {
        return getTranSurfaceControl().getDefaultApplyToken(transaction);
    }

    @Override
    public IBinder getPhysicalDisplayToken(long j) {
        return null;
    }

    @Override
    public void isRequestChangeScale(String str, String str2) {
        ITranSurfaceControl iTranSurfaceControl = this.mService;
        if (iTranSurfaceControl != null) {
            try {
                iTranSurfaceControl.isRequestChangeScale(str, str2);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "isRequestChangeScale: e = " + e);
            }
        }
    }

    @Override
    public SurfaceControl.Transaction remove(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        return getTranSurfaceControl().remove(transaction, surfaceControl);
    }

    @Override
    public void setDefaultApplyToken(SurfaceControl.Transaction transaction, IBinder iBinder) {
        getTranSurfaceControl().setDefaultApplyToken(transaction, iBinder);
    }

    @Override
    public SurfaceControl.Transaction setMatrix(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Matrix matrix, float[] fArr) {
        return getTranSurfaceControl().setMatrix(transaction, surfaceControl, matrix, fArr);
    }

    @Override
    public SurfaceControl.Transaction setMultiWindowLayer(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, boolean z) {
        return getTranSurfaceControl().setMultiWindowLayer(transaction, surfaceControl, z);
    }

    @Override
    public SurfaceControl.Transaction setRelativeLayer(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, SurfaceControl surfaceControl2, int i) {
        return getTranSurfaceControl().setRelativeLayer(transaction, surfaceControl, surfaceControl2, i);
    }

    @VisibleForTesting
    public void setService(ITranSurfaceControl iTranSurfaceControl) {
        this.mService = iTranSurfaceControl;
    }

    @Override
    public SurfaceControl.Transaction setShadowRadius(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f) {
        return getTranSurfaceControl().setShadowRadius(transaction, surfaceControl, f);
    }

    @Override
    public void setSmoothCornerRadius(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f) {
        getTranSurfaceControl().setSmoothCornerRadius(transaction, surfaceControl, f);
    }

    @Override
    public void setTranSmoothCorner(View view, float f, float f2) {
        getTranSurfaceControl().setTranSmoothCorner(view, f, f2);
    }

    @Override
    public SurfaceControl.Transaction setTrustedOverlay(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, boolean z) {
        return getTranSurfaceControl().setTrustedOverlay(transaction, surfaceControl, z);
    }

    @Override
    public SurfaceControl.Transaction setWindowCrop(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Rect rect) {
        return getTranSurfaceControl().setWindowCrop(transaction, surfaceControl, rect);
    }

    @Override
    public boolean smoothcornerCubicEdgeEnabled() {
        return getTranSurfaceControl().smoothcornerCubicEdgeEnabled();
    }

    @Override
    public void startVfxAnimation(View view, int i, float f, float[] fArr, float f2, float f3) {
        getTranSurfaceControl().startVfxAnimation(view, i, f, fArr, f2, f3);
    }
}
