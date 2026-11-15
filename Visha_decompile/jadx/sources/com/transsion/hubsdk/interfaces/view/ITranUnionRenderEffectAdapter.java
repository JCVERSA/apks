package com.transsion.hubsdk.interfaces.view;

import android.graphics.Bitmap;
import com.transsion.hubsdk.view.TranUnionRenderEffect;

public interface ITranUnionRenderEffectAdapter {
    void disableAutoInvalidateWhenCrossWindowUpdate();

    void disableBackdropBlur();

    void disableBlendColorDark();

    void disableBlendColorLight();

    void disableCrossWindowBlur();

    void disableGlobalBlurRadius();

    void disableLocalBlurRadius();

    void disableMaxCrossFadeRadius();

    void disableMirrorScale();

    void disableRoundCorner();

    void disableStaticBlur();

    void disableUnionBlur();

    void enableAutoInvalidateWhenCrossWindowUpdate();

    void enableBackdropBlur();

    void enableBlendColorDark(int i, int i2, int i3, int i4, int i5, int i6);

    void enableBlendColorDark(TranUnionRenderEffect.TranBlendColor tranBlendColor);

    void enableBlendColorLight(int i, int i2, int i3, int i4, int i5, int i6);

    void enableBlendColorLight(TranUnionRenderEffect.TranBlendColor tranBlendColor);

    void enableCrossWindowBlur();

    void enableDynamicBlendColorDark(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    void enableDynamicBlendColorLight(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    void enableGlobalBlurRadius(float f);

    void enableLocalBlurRadius(float f);

    void enableMaxCrossFadeRadius(float f);

    void enableMirrorScale(float f);

    void enableRoundCorner(float f, boolean z, float f2);

    void enableStaticBlur(Bitmap bitmap, boolean z, float f);

    void enableUnionBlur();

    TranUnionRenderEffect getRealObject();

    boolean isAutoInvalidate();

    boolean isBackdropBlur();

    boolean isStaticBlur();

    boolean isUnionBlur();

    boolean requestFrameSpacing(int i);

    boolean requiresNoEffect();

    void setApiMode(int i);

    void setBlurAlgorithm(int i);

    void setCustomBlender(Object obj);

    void setOffscreenRenderingOptimization(boolean z);

    void setRequestWindowType(int i);
}
