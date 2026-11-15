package com.transsion.hubsdk.core.view;

import android.graphics.Bitmap;
import com.transsion.hubsdk.interfaces.view.ITranUnionRenderEffectAdapter;
import com.transsion.hubsdk.view.TranUnionRenderEffect;

public class TranThubUnionRenderEffect implements ITranUnionRenderEffectAdapter {
    private TranUnionRenderEffect mTranUnionRenderEffect;

    public TranThubUnionRenderEffect(boolean z) {
        if (z) {
            this.mTranUnionRenderEffect = new TranUnionRenderEffect();
        }
    }

    private TranUnionRenderEffect getTranUnionRenderEffectImpl() {
        return this.mTranUnionRenderEffect;
    }

    @Override
    public void disableAutoInvalidateWhenCrossWindowUpdate() {
        getTranUnionRenderEffectImpl().disableAutoInvalidateWhenCrossWindowUpdate();
    }

    @Override
    public void disableBackdropBlur() {
        getTranUnionRenderEffectImpl().disableBackdropBlur();
    }

    @Override
    public void disableBlendColorDark() {
        getTranUnionRenderEffectImpl().disableBlendColorDark();
    }

    @Override
    public void disableBlendColorLight() {
        getTranUnionRenderEffectImpl().disableBlendColorLight();
    }

    @Override
    public void disableCrossWindowBlur() {
        getTranUnionRenderEffectImpl().disableCrossWindowBlur();
    }

    @Override
    public void disableGlobalBlurRadius() {
        getTranUnionRenderEffectImpl().disableGlobalBlurRadius();
    }

    @Override
    public void disableLocalBlurRadius() {
        getTranUnionRenderEffectImpl().disableLocalBlurRadius();
    }

    @Override
    public void disableMaxCrossFadeRadius() {
        getTranUnionRenderEffectImpl().disableMaxCrossFadeRadius();
    }

    @Override
    public void disableMirrorScale() {
        getTranUnionRenderEffectImpl().disableMirrorScale();
    }

    @Override
    public void disableRoundCorner() {
        getTranUnionRenderEffectImpl().disableRoundCorner();
    }

    @Override
    public void disableStaticBlur() {
        getTranUnionRenderEffectImpl().disableStaticBlur();
    }

    @Override
    public void disableUnionBlur() {
        getTranUnionRenderEffectImpl().disableUnionBlur();
    }

    @Override
    public void enableAutoInvalidateWhenCrossWindowUpdate() {
        getTranUnionRenderEffectImpl().enableAutoInvalidateWhenCrossWindowUpdate();
    }

    @Override
    public void enableBackdropBlur() {
        getTranUnionRenderEffectImpl().enableBackdropBlur();
    }

    @Override
    public void enableBlendColorDark(TranUnionRenderEffect.TranBlendColor tranBlendColor) {
        getTranUnionRenderEffectImpl().enableBlendColorDark(tranBlendColor);
    }

    @Override
    public void enableBlendColorLight(TranUnionRenderEffect.TranBlendColor tranBlendColor) {
        getTranUnionRenderEffectImpl().enableBlendColorLight(tranBlendColor);
    }

    @Override
    public void enableCrossWindowBlur() {
        getTranUnionRenderEffectImpl().enableCrossWindowBlur();
    }

    @Override
    public void enableDynamicBlendColorDark(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        getTranUnionRenderEffectImpl().enableDynamicBlendColorDark(i, i2, i3, i4, i5, i6, i7, i8, i9);
    }

    @Override
    public void enableDynamicBlendColorLight(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        getTranUnionRenderEffectImpl().enableDynamicBlendColorLight(i, i2, i3, i4, i5, i6, i7, i8, i9);
    }

    @Override
    public void enableGlobalBlurRadius(float f) {
        getTranUnionRenderEffectImpl().enableGlobalBlurRadius(f);
    }

    @Override
    public void enableLocalBlurRadius(float f) {
        getTranUnionRenderEffectImpl().enableLocalBlurRadius(f);
    }

    @Override
    public void enableMaxCrossFadeRadius(float f) {
        getTranUnionRenderEffectImpl().enableMaxCrossFadeRadius(f);
    }

    @Override
    public void enableMirrorScale(float f) {
        getTranUnionRenderEffectImpl().enableMirrorScale(f);
    }

    @Override
    public void enableRoundCorner(float f, boolean z, float f2) {
        getTranUnionRenderEffectImpl().enableRoundCorner(f, z, f2);
    }

    @Override
    public void enableStaticBlur(Bitmap bitmap, boolean z, float f) {
        getTranUnionRenderEffectImpl().enableStaticBlur(bitmap, z, f);
    }

    @Override
    public void enableUnionBlur() {
        getTranUnionRenderEffectImpl().enableUnionBlur();
    }

    @Override
    public TranUnionRenderEffect getRealObject() {
        return this.mTranUnionRenderEffect;
    }

    @Override
    public boolean isAutoInvalidate() {
        return getTranUnionRenderEffectImpl().isAutoInvalidate();
    }

    @Override
    public boolean isBackdropBlur() {
        return getTranUnionRenderEffectImpl().isBackdropBlur();
    }

    @Override
    public boolean isStaticBlur() {
        return getTranUnionRenderEffectImpl().isStaticBlur();
    }

    @Override
    public boolean isUnionBlur() {
        return getTranUnionRenderEffectImpl().isUnionBlur();
    }

    @Override
    public boolean requestFrameSpacing(int i) {
        return getTranUnionRenderEffectImpl().requestFrameSpacing(i);
    }

    @Override
    public boolean requiresNoEffect() {
        return getTranUnionRenderEffectImpl().requiresNoEffect();
    }

    @Override
    public void setApiMode(int i) {
        getTranUnionRenderEffectImpl().setApiMode(i);
    }

    @Override
    public void setBlurAlgorithm(int i) {
        getTranUnionRenderEffectImpl().setBlurAlgorithm(i);
    }

    @Override
    public void setCustomBlender(Object obj) {
        getTranUnionRenderEffectImpl().setCustomBlender(obj);
    }

    @Override
    public void setOffscreenRenderingOptimization(boolean z) {
        getTranUnionRenderEffectImpl().setOffscreenRenderingOptimization(z);
    }

    public void setRealObject(TranUnionRenderEffect tranUnionRenderEffect) {
        this.mTranUnionRenderEffect = tranUnionRenderEffect;
    }

    @Override
    public void setRequestWindowType(int i) {
        getTranUnionRenderEffectImpl().setRequestWindowType(i);
    }

    @Override
    public void enableBlendColorDark(int i, int i2, int i3, int i4, int i5, int i6) {
        getTranUnionRenderEffectImpl().enableBlendColorDark(i, i2, i3, i4, i5, i6);
    }

    @Override
    public void enableBlendColorLight(int i, int i2, int i3, int i4, int i5, int i6) {
        getTranUnionRenderEffectImpl().enableBlendColorLight(i, i2, i3, i4, i5, i6);
    }
}
