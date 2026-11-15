package com.transsion.hubsdk.api.view;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.IBinder;
import android.view.SurfaceControl;
import android.view.View;
import com.transsion.hubsdk.aosp.view.TranAospSurfaceControl;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubSurfaceControl;
import com.transsion.hubsdk.interfaces.view.ITranSurfaceControlAdapter;

public class TranSurfaceControl {
    private static final float ROUND_RATIO = 1.4f;
    private static final String TAG = "TranSurfaceControl";
    private TranAospSurfaceControl mAospService;
    private TranThubSurfaceControl mThubService;

    public void apply(SurfaceControl.Transaction transaction, boolean z) {
        if (transaction == null) {
            throw new IllegalArgumentException("Illegal parameter, transaction cannot be null");
        }
        getService(TranVersion.Core.VERSION_33181).apply(transaction, z);
    }

    public Bitmap captureDisplayAsBitmap(Rect rect) {
        return getService(TranVersion.Core.VERSION_33131).captureDisplayAsBitmap(rect);
    }

    public boolean checkProtectedContent(SurfaceControl surfaceControl) {
        if (surfaceControl == null) {
            throw new IllegalArgumentException("surfaceControl should not be null");
        }
        if (TranThubVersionUtil.isRecentAndroidT()) {
            return getService(TranVersion.Core.VERSION_33311).checkProtectedContent(surfaceControl);
        }
        return false;
    }

    public SurfaceControl createSfWithContainerLayer(String str, boolean z, SurfaceControl surfaceControl, String str2) {
        if (str == null || surfaceControl == null) {
            throw new IllegalArgumentException("name or parent should not be null");
        }
        return getService(TranVersion.Core.VERSION_33181).createSfWithContainerLayer(str, z, surfaceControl, str2);
    }

    public SurfaceControl createSfWithEffectLayer(String str, SurfaceControl surfaceControl, String str2) {
        if (str != null) {
            return getService(TranVersion.Core.VERSION_33181).createSfWithEffectLayer(str, surfaceControl, str2);
        }
        throw new IllegalArgumentException("name cannot be null");
    }

    public IBinder getDefaultApplyToken(SurfaceControl.Transaction transaction) {
        if (!TranThubVersionUtil.isRecentAndroidT()) {
            return null;
        }
        if (transaction != null) {
            return getService(TranVersion.Core.VERSION_33441).getDefaultApplyToken(transaction);
        }
        throw new IllegalArgumentException("transaction should not be null");
    }

    public IBinder getPhysicalDisplayToken(long j) {
        return getService(TranVersion.Core.VERSION_33171).getPhysicalDisplayToken(j);
    }

    public ITranSurfaceControlAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubSurfaceControl");
            TranThubSurfaceControl tranThubSurfaceControl = this.mThubService;
            if (tranThubSurfaceControl != null) {
                return tranThubSurfaceControl;
            }
            TranThubSurfaceControl tranThubSurfaceControl2 = new TranThubSurfaceControl();
            this.mThubService = tranThubSurfaceControl2;
            return tranThubSurfaceControl2;
        }
        TranSdkLog.i(TAG, "TranAospSurfaceControl");
        TranAospSurfaceControl tranAospSurfaceControl = this.mAospService;
        if (tranAospSurfaceControl != null) {
            return tranAospSurfaceControl;
        }
        TranAospSurfaceControl tranAospSurfaceControl2 = new TranAospSurfaceControl();
        this.mAospService = tranAospSurfaceControl2;
        return tranAospSurfaceControl2;
    }

    public void isRequestChangeScale(String str, String str2) {
        getService(TranVersion.Core.VERSION_33141).isRequestChangeScale(str, str2);
    }

    public SurfaceControl.Transaction remove(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        if (transaction == null || surfaceControl == null) {
            throw new IllegalArgumentException("Illegal parameters with remove");
        }
        return getService(TranVersion.Core.VERSION_33441).remove(transaction, surfaceControl);
    }

    public void setDefaultApplyToken(SurfaceControl.Transaction transaction, IBinder iBinder) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            if (transaction == null || iBinder == null) {
                throw new IllegalArgumentException("transaction or token should not be null");
            }
            getService(TranVersion.Core.VERSION_33371).setDefaultApplyToken(transaction, iBinder);
        }
    }

    public SurfaceControl.Transaction setMatrix(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Matrix matrix, float[] fArr) {
        if (transaction == null || surfaceControl == null || matrix == null || fArr == null) {
            throw new IllegalArgumentException("Illegal parameters with setMatrix");
        }
        return getService(TranVersion.Core.VERSION_33181).setMatrix(transaction, surfaceControl, matrix, fArr);
    }

    public SurfaceControl.Transaction setMultiWindowLayer(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, boolean z) {
        if (transaction == null || surfaceControl == null) {
            throw new IllegalArgumentException("Illegal parameters with setMultiWindowLayer, params cannot be null");
        }
        return getService(TranVersion.Core.VERSION_33171).setMultiWindowLayer(transaction, surfaceControl, z);
    }

    public SurfaceControl.Transaction setRelativeLayer(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, SurfaceControl surfaceControl2, int i) {
        if (transaction == null || surfaceControl == null || surfaceControl2 == null) {
            throw new IllegalArgumentException("Illegal parameters, params should not be null");
        }
        return getService(TranVersion.Core.VERSION_33171).setRelativeLayer(transaction, surfaceControl, surfaceControl2, i);
    }

    public SurfaceControl.Transaction setShadowRadius(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f) {
        if (transaction == null || surfaceControl == null) {
            throw new IllegalArgumentException("illegal setShadowRadius parameters, params cannot be null");
        }
        return getService(TranVersion.Core.VERSION_33181).setShadowRadius(transaction, surfaceControl, f);
    }

    public void setSmoothCornerRadius(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, float f) {
        if (surfaceControl == null) {
            throw new IllegalArgumentException("Illegal parameters with setSmoothCornerRadius surfaceControl == null");
        }
        getService(TranVersion.Core.VERSION_33421).setSmoothCornerRadius(transaction, surfaceControl, f * ROUND_RATIO);
    }

    public void setTranSmoothCorner(View view, float f, float f2) {
        if (view == null) {
            throw new IllegalArgumentException("Illegal parameters with setTranSmoothCorner view == null");
        }
        getService(TranVersion.Core.VERSION_33391).setTranSmoothCorner(view, f, f2);
    }

    public SurfaceControl.Transaction setTrustedOverlay(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, boolean z) {
        if (transaction == null || surfaceControl == null) {
            throw new IllegalArgumentException("Illegal setTrustedOverlay parameters");
        }
        return getService(TranVersion.Core.VERSION_33171).setTrustedOverlay(transaction, surfaceControl, z);
    }

    public SurfaceControl.Transaction setWindowCrop(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Rect rect) {
        if (transaction == null || surfaceControl == null || rect == null) {
            throw new IllegalArgumentException("illegal parameters with setWindowCrop");
        }
        return getService(TranVersion.Core.VERSION_33181).setWindowCrop(transaction, surfaceControl, rect);
    }

    public boolean smoothcornerCubicEdgeEnabled() {
        return getService(TranVersion.Core.VERSION_33431).smoothcornerCubicEdgeEnabled();
    }

    public void startVfxAnimation(View view, int i, float f, float[] fArr, float f2, float f3) {
        if (view == null || fArr.length < 2) {
            throw new IllegalArgumentException("Illegal parameters with startVfxAnimation view == null");
        }
        getService(TranVersion.Core.VERSION_33391).startVfxAnimation(view, i, f, fArr, f2, f3);
    }
}
