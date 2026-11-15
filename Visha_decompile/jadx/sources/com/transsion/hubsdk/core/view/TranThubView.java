package com.transsion.hubsdk.core.view;

import android.graphics.Bitmap;
import android.view.View;
import android.view.Window;
import com.transsion.hubsdk.api.view.TranUnionRenderEffectProxy;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.view.ITranViewAdapter;
import com.transsion.hubsdk.view.TranUnionRenderEffect;
import com.transsion.hubsdk.view.TranView;
import java.util.function.Consumer;

public class TranThubView implements ITranViewAdapter {
    private TranView mTranView;

    private TranView getTranViewImpl() {
        if (this.mTranView == null) {
            this.mTranView = new TranView();
        }
        return this.mTranView;
    }

    @Override
    public void clearHwuiLightSourceGeometry(View view) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "clearHwuiLightSourceGeometry", View.class) == null) {
            return;
        }
        getTranViewImpl().clearHwuiLightSourceGeometry(view);
    }

    @Override
    public void clearUnionRenderEffect(View view) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "clearUnionRenderEffect", View.class) == null) {
            return;
        }
        getTranViewImpl().clearUnionRenderEffect(view);
    }

    @Override
    public boolean enableBackdropBlurFilter(View view, boolean z, float f) {
        return getTranViewImpl().enableBackdropBlurFilter(view, z, f);
    }

    @Override
    public boolean forceRenderSdrUnderHdr(View view, boolean z) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "forceRenderSdrUnderHdr", View.class, Boolean.TYPE) == null) {
            return false;
        }
        return getTranViewImpl().forceRenderSdrUnderHdr(view, z);
    }

    @Override
    public float getDefaultLightZWhenAttached(View view) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "getDefaultLightZWhenAttached", View.class) == null) {
            return 0.0f;
        }
        return getTranViewImpl().getDefaultLightZWhenAttached(view);
    }

    @Override
    public boolean getForceClipOutShadow(View view) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "getForceClipOutShadow", View.class) == null) {
            return false;
        }
        return getTranViewImpl().getForceClipOutShadow(view);
    }

    @Override
    public boolean getLocalLightSourceTranslationEnabled(View view) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "getLocalLightSourceTranslationEnabled", View.class) == null) {
            return false;
        }
        return getTranViewImpl().getLocalLightSourceTranslationEnabled(view);
    }

    @Override
    public float getLocalLightSourceTranslationX(View view) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "getLocalLightSourceTranslationX", View.class) == null) {
            return 0.0f;
        }
        return getTranViewImpl().getLocalLightSourceTranslationX(view);
    }

    @Override
    public float getLocalLightSourceTranslationY(View view) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "getLocalLightSourceTranslationY", View.class) == null) {
            return 0.0f;
        }
        return getTranViewImpl().getLocalLightSourceTranslationY(view);
    }

    @Override
    public long getRecordingFrameCount(View view) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "getRecordingFrameCount", View.class) == null) {
            return -5L;
        }
        return getTranViewImpl().getRecordingFrameCount(view);
    }

    @Override
    public TranUnionRenderEffectProxy getUnionRenderEffect(View view) {
        TranUnionRenderEffect unionRenderEffect;
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "getUnionRenderEffect", View.class) == null || (unionRenderEffect = getTranViewImpl().getUnionRenderEffect(view)) == null || unionRenderEffect.getUnionRenderObject() == null) {
            return null;
        }
        return new TranUnionRenderEffectProxy(unionRenderEffect);
    }

    @Override
    public boolean hasSetKeyListener(View view) {
        return false;
    }

    @Override
    public boolean isRecreateDisplayList(View view) {
        return false;
    }

    @Override
    public void setForceClipOutShadow(View view, boolean z) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "setForceClipOutShadow", View.class, Boolean.TYPE) == null) {
            return;
        }
        getTranViewImpl().setForceClipOutShadow(view, z);
    }

    @Override
    public void setHwuiLightSourceGeometry(View view, float f, float f2, float f3, float f4) {
        Class<?> cls = getTranViewImpl().getClass();
        Class cls2 = Float.TYPE;
        if (TranDoorMan.getMethod(cls, "setHwuiLightSourceGeometry", View.class, cls2, cls2, cls2, cls2) == null) {
            return;
        }
        getTranViewImpl().setHwuiLightSourceGeometry(view, f, f2, f3, f4);
    }

    @Override
    public void setLocalLightSourceTranslation(View view, float f, float f2) {
        Class<?> cls = getTranViewImpl().getClass();
        Class cls2 = Float.TYPE;
        if (TranDoorMan.getMethod(cls, "setLocalLightSourceTranslation", View.class, cls2, cls2) == null) {
            return;
        }
        getTranViewImpl().setLocalLightSourceTranslation(view, f, f2);
    }

    @Override
    public void setLocalLightSourceTranslationEnabled(View view, boolean z) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "setLocalLightSourceTranslationEnabled", View.class, Boolean.TYPE) == null) {
            return;
        }
        getTranViewImpl().setLocalLightSourceTranslationEnabled(view, z);
    }

    @Override
    public void setMaterialNoise(View view, Bitmap bitmap) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "setMaterialNoise", View.class, Bitmap.class) == null) {
            return;
        }
        getTranViewImpl().setMaterialNoise(view, bitmap);
    }

    @Override
    public boolean setOnUnionRenderFrameAvailableListener(View view, Consumer<View> consumer) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "setOnUnionRenderFrameAvailableListener", View.class, Consumer.class) == null) {
            return false;
        }
        return getTranViewImpl().setOnUnionRenderFrameAvailableListener(view, consumer);
    }

    @Override
    public boolean setPromoteLayerEnabled(View view, boolean z) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "setPromoteLayerEnabled", View.class, Boolean.TYPE) == null) {
            return false;
        }
        return getTranViewImpl().setPromoteLayerEnabled(view, z);
    }

    @Override
    public void setSystemUiVisibility(Window window, int i) {
        getTranViewImpl().setSystemUiVisibility(window, i);
    }

    @Override
    public void setUnionRenderEffect(View view, TranUnionRenderEffectProxy tranUnionRenderEffectProxy) {
        if (TranDoorMan.getMethod(getTranViewImpl().getClass(), "setUnionRenderEffect", View.class, TranUnionRenderEffect.class) == null) {
            return;
        }
        getTranViewImpl().setUnionRenderEffect(view, tranUnionRenderEffectProxy == null ? null : tranUnionRenderEffectProxy.getRealObject());
    }

    @Override
    public boolean enableBackdropBlurFilter(View view, boolean z, float f, int i) {
        return getTranViewImpl().enableBackdropBlurFilter(view, z, f, i);
    }
}
