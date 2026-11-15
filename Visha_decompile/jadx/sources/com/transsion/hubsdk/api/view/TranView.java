package com.transsion.hubsdk.api.view;

import android.graphics.Bitmap;
import android.view.View;
import android.view.Window;
import com.transsion.hubsdk.aosp.view.TranAospView;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubView;
import com.transsion.hubsdk.interfaces.view.ITranViewAdapter;
import java.util.function.Consumer;

public class TranView {
    public static final int STATUS_BAR_DISABLE_BACK = 4194304;
    public static final int STATUS_BAR_DISABLE_HOME = 2097152;
    public static final int STATUS_BAR_DISABLE_RECENT = 16777216;
    private static final String TAG = TranViewRootImpl.class.getSimpleName();
    private TranAospView mAospService;
    private TranThubView mThubService;

    public void clearHwuiLightSourceGeometry(View view) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33511).clearHwuiLightSourceGeometry(view);
    }

    public void clearUnionRenderEffect(View view) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33411).clearUnionRenderEffect(view);
    }

    public boolean enableBackdropBlurFilter(View view, boolean z, float f) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33311).enableBackdropBlurFilter(view, z, f);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public boolean forceRenderSdrUnderHdr(View view, boolean z) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33371).forceRenderSdrUnderHdr(view, z);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public float getDefaultLightZWhenAttached(View view) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33511).getDefaultLightZWhenAttached(view);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public boolean getForceClipOutShadow(View view) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33511).getForceClipOutShadow(view);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public boolean getLocalLightSourceTranslationEnabled(View view) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33511).getLocalLightSourceTranslationEnabled(view);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public float getLocalLightSourceTranslationX(View view) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33511).getLocalLightSourceTranslationX(view);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public float getLocalLightSourceTranslationY(View view) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33511).getLocalLightSourceTranslationY(view);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public long getRecordingFrameCount(View view) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33461).getRecordingFrameCount(view);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public ITranViewAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubView");
            TranThubView tranThubView = this.mThubService;
            if (tranThubView != null) {
                return tranThubView;
            }
            TranThubView tranThubView2 = new TranThubView();
            this.mThubService = tranThubView2;
            return tranThubView2;
        }
        TranSdkLog.i(TAG, "TranAospView");
        TranAospView tranAospView = this.mAospService;
        if (tranAospView != null) {
            return tranAospView;
        }
        TranAospView tranAospView2 = new TranAospView();
        this.mAospService = tranAospView2;
        return tranAospView2;
    }

    public TranUnionRenderEffectProxy getUnionRenderEffect(View view) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33411).getUnionRenderEffect(view);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public boolean hasSetKeyListener(View view) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        if (this.mAospService == null) {
            this.mAospService = new TranAospView();
        }
        return this.mAospService.hasSetKeyListener(view);
    }

    public boolean isRecreateDisplayList(View view) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        if (this.mAospService == null) {
            this.mAospService = new TranAospView();
        }
        return this.mAospService.isRecreateDisplayList(view);
    }

    public void setForceClipOutShadow(View view, boolean z) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33511).setForceClipOutShadow(view, z);
    }

    public void setHwuiLightSourceGeometry(View view, float f, float f2, float f3, float f4) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33511).setHwuiLightSourceGeometry(view, f, f2, f3, f4);
    }

    public void setLocalLightSourceTranslation(View view, float f, float f2) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33511).setLocalLightSourceTranslation(view, f, f2);
    }

    public void setLocalLightSourceTranslationEnabled(View view, boolean z) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33511).setLocalLightSourceTranslationEnabled(view, z);
    }

    public void setMaterialNoise(View view, Bitmap bitmap) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33411).setMaterialNoise(view, bitmap);
    }

    public boolean setOnUnionRenderFrameAvailableListener(View view, Consumer<View> consumer) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33431).setOnUnionRenderFrameAvailableListener(view, consumer);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public boolean setPromoteLayerEnabled(View view, boolean z) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33411).setPromoteLayerEnabled(view, z);
        }
        throw new IllegalArgumentException("view cannot be null");
    }

    public void setSystemUiVisibility(Window window, int i) {
        getService(TranVersion.Core.VERSION_33181).setSystemUiVisibility(window, i);
    }

    public void setUnionRenderEffect(View view, TranUnionRenderEffectProxy tranUnionRenderEffectProxy) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33411).setUnionRenderEffect(view, tranUnionRenderEffectProxy);
    }

    public boolean enableBackdropBlurFilter(View view, boolean z, float f, int i) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33341).enableBackdropBlurFilter(view, z, f, i);
        }
        throw new IllegalArgumentException("view cannot be null");
    }
}
