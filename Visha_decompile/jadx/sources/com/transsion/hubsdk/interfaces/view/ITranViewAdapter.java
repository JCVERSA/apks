package com.transsion.hubsdk.interfaces.view;

import android.graphics.Bitmap;
import android.view.View;
import android.view.Window;
import com.transsion.hubsdk.api.view.TranUnionRenderEffectProxy;
import java.util.function.Consumer;

public interface ITranViewAdapter {
    void clearHwuiLightSourceGeometry(View view);

    void clearUnionRenderEffect(View view);

    boolean enableBackdropBlurFilter(View view, boolean z, float f);

    boolean enableBackdropBlurFilter(View view, boolean z, float f, int i);

    boolean forceRenderSdrUnderHdr(View view, boolean z);

    float getDefaultLightZWhenAttached(View view);

    boolean getForceClipOutShadow(View view);

    boolean getLocalLightSourceTranslationEnabled(View view);

    float getLocalLightSourceTranslationX(View view);

    float getLocalLightSourceTranslationY(View view);

    long getRecordingFrameCount(View view);

    TranUnionRenderEffectProxy getUnionRenderEffect(View view);

    boolean hasSetKeyListener(View view);

    boolean isRecreateDisplayList(View view);

    void setForceClipOutShadow(View view, boolean z);

    void setHwuiLightSourceGeometry(View view, float f, float f2, float f3, float f4);

    void setLocalLightSourceTranslation(View view, float f, float f2);

    void setLocalLightSourceTranslationEnabled(View view, boolean z);

    void setMaterialNoise(View view, Bitmap bitmap);

    boolean setOnUnionRenderFrameAvailableListener(View view, Consumer<View> consumer);

    boolean setPromoteLayerEnabled(View view, boolean z);

    void setSystemUiVisibility(Window window, int i);

    void setUnionRenderEffect(View view, TranUnionRenderEffectProxy tranUnionRenderEffectProxy);
}
